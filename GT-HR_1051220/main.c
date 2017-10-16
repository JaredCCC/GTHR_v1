
 //author::Jared_CCC

#include <stdio.h>
//#include "stdint.h"
#include <stdlib.h>
#include "M051Series.h"
#include "gpio.h"
#include "fmc.h"
#include <math.h>
#define PLLCON_SETTING      CLK_PLLCON_50MHz_HXT
#define PLL_CLOCK           50000000
#define _ADS8320_
//#define LCM_W12864S
//#define _LTC2328_
/*---------------------------------------------------------------------------------------------------------*/
/* Global variables                                                                                        */
/*---------------------------------------------------------------------------------------------------------*/
float uiAdc8320Value_Hz_mean,gain_uiAdc8320Value_stain_e;
uint8_t AC_counter,Page_1_1_,button_update;
uint8_t	gucOutputVoltageType,gucOutputVoltagePeak,counter_a=0;
float uiAdc8320Value_Hz,gain_uiAdc8320Value,g_au32ADCCount[10]={0},uiAdc8320Value_f,uiAdc8320Value_ac,uiAdc8320Value_f_offset,uiAdc8320Value_Hz_1,gain_uiAdc8320Value_f3,previous_data;
// gain table
uint8_t gucGainTableIndex;
float 				gfloatGainTable[6]
										={0.33333,	1.0,	3.6,	10.804,	33.01,	99.04},time_ms,stain_e,strain_coeffic=1,Tem_V;
volatile float Temper,typeSgain_uiAdc8320Value;
double uiAdc8320Value_Hz_mean_STD;										
uint8_t gucGainTable[8]
										={0x02,		0x0e,	0x03,	0x0f,		0x00,		0x0c,0x07,0x80};
uint32_t guiTimer0Period[57] = {__HXT/800,__HXT/1000,__HXT/1200,__HXT/1400,__HXT/1600,__HXT/1800,__HXT/2000,__HXT/2200,__HXT/2400,__HXT/2600,__HXT/2800,__HXT/3000,__HXT/3200,__HXT/3400,__HXT/3600,__HXT/3800,__HXT/4000,
	__HXT/4200,__HXT/4400,__HXT/4600,__HXT/4800,__HXT/5000,__HXT/5200,__HXT/5400,__HXT/5600,__HXT/5800,__HXT/6000,__HXT/6200,__HXT/6400,__HXT/6600,__HXT/6800,__HXT/7000,__HXT/7200,__HXT/7400,__HXT/7600,__HXT/7800,__HXT/8000,
	__HXT/8200,	__HXT/8400,__HXT/8600,__HXT/8800,__HXT/9000,__HXT/9200,__HXT/9400,__HXT/9600,__HXT/9800,__HXT/10000,__HXT/10200,__HXT/10400,__HXT/10600,__HXT/10800,__HXT/11000,__HXT/11200,__HXT/11400,__HXT/11600,__HXT/11800,__HXT/12000};
	//0~28=400~6000,0~4 = 400~1200,10~15=2400~3400;
	//400,600,800,1000,1200Hz,1400.1600.1800.2000.2200.2400,2600,2800,3000,3200,3400
	//__HXT/7200,__HXT/7600,__HXT/8000,__HXT/8400,__HXT/8800,__HXT/9200,__HXT/9600,__HXT/10000,__HXT/10400,__HXT/10800,__HXT/11200,__HXT/11600,__HXT/12000
	//3600,3800,4000,4200,4400,4600,4800,5000,5200,5400,5600,5800,6000
volatile uint32_t stri_counter=100,ADC_check_Count[8]={0},bat_AD_data,Hz_data;
volatile uint32_t gucT0Index=0,gucindex_range=4,button_range_min=0,button_range_max=56,bat_data;//freqency_range
uint32_t u32Addr = 0x1f000,language_addr=0x1f300,unit_addr=0x1f600;
 uint32_t uiAdc8320Value,typeS_uiAdc8320Value,uiAdc8320Value_offset;
 uint32_t u32iPortStatus,uiTimerCounter,while_counter,while_counter1,current_count=0,current_value=0,current_total=0;
volatile uint32_t u32iOutputVoltage;
										
volatile uint32_t g_au32TMRINTCount[4] = {0};

float g_au32TMR1Count[200],gucOutputVoltage,uiAdc8320Value_ff;
volatile uint32_t u32InitCount,g_u32AdcIntFlag;
 float min_freq_timer,max_freq_timer,min_freq,max_freq;
uint32_t g_au32HzMaxMin[2]={0};
volatile uint8_t interrupt_left=0,select_freq_range=0,select_freq_range2,interrupt_right,select_command=0,interrupt_enter_command[3],Hz_thou,Hz_hun,Hz_tens,Hz_ones,uE_thou,uE_hun,uE_tens,uE_ones,mS_thou,mS_hun,mS_tens,mS_ones,gain_coe,Hz_pointone,uE_pointone,mS_pointone;//button_command
volatile uint8_t enter_i,select_command_success,select_type,timer0_check,dig3_hun,dig3_ten,dig3_one,dig3_pointone,dig3_pointtwo,dig3_pointthree,dig_thou,dig_hun,dig_tens,dig_ones,dig_zeros,dig_pointzeros,dig_pointones,dig2_thouthou,dig2_hunthou,dig2_tenthou,dig2_thou,dig2_hun,dig2_tens,dig2_ones,dig2_zeros,Temper_tens,Temper_ones,Temper_point,language_select=0,language=0;

//volatile uint8_t bat_data,bat_hun,bat_ten,bat_one;
//self-define
#ifdef _ADS8320_
#define ADS8320_CLK		P14
#define ADS8320_CS		P15
#define ADS8320_DOUT	P41
#endif
//#define Temp_sw		P17

#define ANALOG_POWERMOS_PIN	P13
#ifdef LCM_W12864S
#define LCM_CS P21				//定?CS接在P2.1端口
#define LCM_SID P22			  //定?SDA接在P2.2端口
#define LCM_SCLK P23			//定?SCK接在P2.3端口

#else 
#define LCM_CS P21				//定?CS接在P2.1端口
#define LCM_SID P22			  //定?SDA接在P2.2端口
#define LCM_SCLK P23			//定?SCK接在P2.3端口
#endif
#define MUX_CLK P17
#ifdef _LTC2328_

#define ADC_2328_SCK P14
#define ADC_2328_BUSY P42
#define ADC_2328_CNV P15
#define ADC_2328_DO P41
#define read_ext_adc LTC2328_data_ac
#define init_ext_ad LTC2328_Ini
#endif

int ADC_data_ac(void);
void electronic(char select_type,char gucOutputVoltagePeak);
void display_select(char dis_i);
void Write_one_bit(char d);
void WriteData(char instruction,char hdata,char ldata);
void Clear_button(char button);
void button_select(void);
void Clear_CGROM(void);
void Clear_GDRAM(void);
void AdcSingleModeTest(void);
void bat_dis(void);

/////////////////////////////////////////////

//  delay_time

void delay_time(int timer)
{
	int delay_i;
	for(delay_i=0;delay_i<timer;delay_i++){};
}

//////////////////////////////////////////////////////////////////
//LCM
unsigned char pic2[64][16]=
{
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x03,0xf0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0f,0xfe,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1f,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

0x00,0x00,0x00,0x7f,0xff,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0xff,0xff,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x01,0xc0,0x7f,0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x03,0x00,0x1f,0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x04,0x00,0x0f,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x18,0x00,0x07,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x38,0x00,0x07,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x20,0x00,0x03,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

0x00,0x00,0x00,0x00,0x03,0xc0,0xfe,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x03,0xc1,0xff,0x80,0x00,0x00,0x10,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x01,0xfc,0x03,0xc3,0x00,0xc0,0x03,0x80,0x70,0x00,0x00,0x7f,0x80,0x00,
0x00,0x00,0x03,0xfc,0x03,0x86,0x00,0x7f,0xcf,0xe1,0xf0,0x00,0x00,0x7f,0x80,0x00,
0x00,0x00,0x07,0xf8,0x03,0x8c,0x00,0x3f,0xff,0xf3,0xd0,0x00,0x00,0x71,0x80,0x00,
0x00,0x00,0x0f,0xf0,0x03,0x0c,0x3c,0x60,0x70,0x1f,0x10,0xf0,0x1f,0x71,0xf0,0x00,
0x00,0x00,0x19,0xe0,0x03,0x18,0x3f,0x80,0x20,0x0c,0x11,0xfc,0x3f,0xf1,0xf8,0x00,
0x00,0x00,0x10,0x5f,0xff,0xf8,0x7f,0x8e,0x21,0x04,0x1f,0x06,0x70,0xf1,0x8c,0x00,

0x00,0x00,0x30,0x3f,0xff,0xf8,0x40,0x00,0x03,0x84,0x1e,0x03,0x80,0x71,0x06,0x00,
0x00,0x00,0x70,0x7f,0xfc,0x00,0x40,0x00,0x03,0x80,0x00,0x01,0x84,0x30,0x06,0x00,
0x00,0x00,0x71,0xff,0xff,0xf8,0x3c,0x0f,0xe3,0x8c,0x18,0x71,0x0e,0x30,0x86,0x00,
0x00,0x00,0xf3,0xff,0xff,0xfc,0x18,0x04,0x21,0x0c,0x18,0x01,0x0f,0xf1,0xc6,0x00,
0x00,0x3f,0xff,0xff,0xf0,0x0c,0x00,0x00,0x20,0x1c,0x18,0x01,0x0f,0xf1,0xc6,0x00,
0x00,0x00,0xf8,0x00,0x00,0x06,0x00,0x60,0xf8,0x7c,0x18,0x7f,0x8f,0xf1,0xc6,0x00,
0x00,0x00,0xfc,0x00,0x40,0x03,0x83,0xff,0xdf,0xf6,0x00,0x00,0x84,0x01,0xc7,0xe0,
0x00,0x00,0xfe,0x01,0x80,0x01,0xff,0x80,0x03,0x06,0x00,0x00,0x00,0x01,0xc7,0xe0,

0x00,0x00,0xff,0x03,0x00,0x00,0x7c,0x00,0x00,0x07,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0xff,0xfe,0x00,0x00,0x00,0x00,0x00,0x03,0xff,0xff,0xff,0xff,0xff,0xe0,
0x00,0x00,0x7f,0xfc,0x00,0x00,0x00,0x00,0x00,0x00,0xff,0xff,0xff,0xff,0xff,0xe0,
0x00,0x00,0x3f,0xf0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x1f,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x0f,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
};

//=================================================

void CGROM()
{
	unsigned char i,j,x=0,c=0,d=0; 

	//ST7920-0C(GB, GB5 and Japanese code)
	WriteData(0xf8,0x80,0x00); //set DDRAM Addr.
	for(j=0;j<2;j++)
	{
	for(i=1;i<=8;i++)
 		{
 			WriteData(0xfa,0xa0,0x60);
			c=(0xD0+x)&0xf0;
			d=((0xD0+x)<<4)&0xf0;
			WriteData(0xfa,c,d);

			x++;
		}
	}
	WriteData(0xf8,0x90,0x00);
		for(j=0;j<2;j++)
	{
	x=0;
	for(i=1;i<=8;i++)
 		{
 			WriteData(0xfa,0xd0,0x10);


			c=(0x40+x)&0xf0;
			d=((0x40+x)<<4)&0xf0;
			WriteData(0xfa,c,d);
			x++;
		}
	}
}



void HCGROM()
{
	
	
    WriteData(0xf8,0x90,0x10); //set DDRAM Addr.
	
		WriteData(0xfa,0x40,0x20);
		WriteData(0xfa,0x40,0x90);
		WriteData(0xfa,0x40,0x70);
		WriteData(0xfa,0x30,0x50);
	
}




void Show_Graphic()
{
	unsigned char i,j,c,d;
	
	//GDRAM	
	WriteData(0xf8,0x30,0xe0); //set extended instruction
	delay_time(800);
	Clear_GDRAM();
	for (j=0;j<32;j++)
	{	
	c=(0x80+j)&0xf0;
	d=((0x80+j)<<4)&0xf0;
	WriteData(0xf8,c,d);
		delay_time(800);
	WriteData(0xf8,0x80,0x00);
		delay_time(800);
		for (i=0;i<16;i++)
	  {
	
		c=pic2[j][i]&0xf0;
		d=(pic2[j][i]<<4)&0xf0;
		WriteData(0xfa,c,d);
			delay_time(800);
	  }
		for (i=0;i<16;i++)
 	  {
			
			c=pic2[32+j][i]&0xf0;
		    d=(pic2[32+j][i]<<4)&0xf0;
		    WriteData(0xfa,c,d);
			delay_time(800);
	  }
	}

}
void electronic(char select_type,char gucOutputVoltagePeak)
{
	Clear_CGROM();
	delay_time(10000);
	if(language_select==0)
	{
	if(select_type=='A')
	{
		
		WriteData(0xf8,0x80,0x00); //set DDRAM Addr.
	delay_time(800);
		  WriteData(0xfa,0x40,0x50);//E
	delay_time(800);
			WriteData(0xfa,0x70,0x80);//x
	delay_time(800);
			WriteData(0xfa,0x60,0x30);//c
	delay_time(800);
			WriteData(0xfa,0x60,0x80);//h
	delay_time(800);
			WriteData(0xfa,0x60,0x10);//a
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x60,0x70);//g
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
		if(gucOutputVoltagePeak==0x66)
		{
	WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x4E)
		{
	WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}	
		else if(select_type=='C')
	{
		WriteData(0xf8,0x80,0x00); //set DDRAM Addr.
	delay_time(800);
		WriteData(0xfa,0x30,0x40);//4
	delay_time(800); 
		 WriteData(0xfa,0x20,0xd0);//-
	delay_time(800);	
			WriteData(0xfa,0x30,0x20);//2
	delay_time(800);
			WriteData(0xfa,0x30,0x00);//0
	delay_time(800);
			WriteData(0xfa,0x60,0xd0);//m
	delay_time(800);
			WriteData(0xfa,0x40,0x10);//A
	delay_time(800);
		if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}
	else if(select_type=='D')
	{
		WriteData(0xf8,0x80,0x00); //set DDRAM Addr.
	delay_time(800);
		WriteData(0xfa,0x40,0x50);//E
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);//l
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
			WriteData(0xfa,0x60,0x30);//c
	delay_time(800);
			WriteData(0xfa,0x70,0x40);//t
	delay_time(800);
			WriteData(0xfa,0x70,0x20);//r
	delay_time(800);	
			WriteData(0xfa,0x60,0xf0);//o
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x60,0x90);//i
	delay_time(800);
			WriteData(0xfa,0x60,0x30);//c
	delay_time(800);
		if(gucOutputVoltagePeak==0x66)
		{
	WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x4E)
		{
	WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}
}
	if(language_select==1)
	{
	if(select_type=='A')
	{
		
		WriteData(0xf8,0x80,0x20); //set DDRAM Addr.
	delay_time(800);
		  WriteData(0xfa,0xa0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x70,0x00);//afa3
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);
	delay_time(800);
			WriteData(0xfa,0x40,0x70);//c17d
	delay_time(800);
 			WriteData(0xfa,0xa0,0xd0);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);//d0d9
	delay_time(800);
		if(gucOutputVoltagePeak==0x66)
		{
	WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x4E)
		{
	WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}	
	else if(select_type=='C')
	{
		WriteData(0xf8,0x80,0x00); //set DDRAM Addr.
	delay_time(800);
		WriteData(0xfa,0x30,0x40);//4
	delay_time(800); 
		 WriteData(0xfa,0x20,0xd0);//-
	delay_time(800);	
			WriteData(0xfa,0x30,0x20);//2
	delay_time(800);
			WriteData(0xfa,0x30,0x00);//0
	delay_time(800);
			WriteData(0xfa,0x60,0xd0);//m
	delay_time(800);
			WriteData(0xfa,0x40,0x10);//A
	delay_time(800);
		if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}
	else if(select_type=='D')
	{
		WriteData(0xf8,0x80,0x20); //set DDRAM Addr.
	delay_time(800);
		WriteData(0xfa,0xd0,0x30);
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);//d3d2
	delay_time(800);
			WriteData(0xfa,0xa0,0xc0);
	delay_time(800);
			WriteData(0xfa,0xe0,0xf0);//acef
	delay_time(800);
			WriteData(0xfa,0xa0,0xd0);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);//ad6c
	delay_time(800);
		if(gucOutputVoltagePeak==0x66)
		{
	WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x4E)
		{
	WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); //set DDRAM Addr.
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}
}
}

void vibrating_wire(char ss)
{
	if(ss==0){//A
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xc0,0xf0);
	delay_time(800);
	}
	if(ss==1){//B
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	}
	if(ss==2){//C
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x10);
	delay_time(800);
	}
	if(ss==3){//D
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x20);
	delay_time(800);
	}
	if(ss==4){//E
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x30);
	delay_time(800);
	}
	if(ss==5){//F
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x40);
	delay_time(800);
	}
}


void Page_1()
{
		
	Page_1_1_=0;
	if(language_select==0)//english
		{
	WriteData(0xf8,0x30,0x00); //set mode
	delay_time(800);
	
  WriteData(0xf8,0x80,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
		WriteData(0xf8,0x80,0x60);
				delay_time(800);
		WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);	
	WriteData(0xf8,0x80,0x10); //set DDRAM Addr.
	delay_time(800);
 			WriteData(0xfa,0x40,0x50);//E
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);//l
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
			WriteData(0xfa,0x60,0x30);//c
	delay_time(800);
			WriteData(0xfa,0x70,0x40);//t
	delay_time(800);
			WriteData(0xfa,0x70,0x20);//r
	delay_time(800);	
			WriteData(0xfa,0x60,0xf0);//o
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x60,0x90);//i
	delay_time(800);
			WriteData(0xfa,0x60,0x30);//c
	delay_time(800);
	
	WriteData(0xf8,0x90,0x10); //set DDRAM Addr.
	delay_time(800);
 			WriteData(0xfa,0x40,0x50);//E
	delay_time(800);
			WriteData(0xfa,0x70,0x80);//x
	delay_time(800);
			WriteData(0xfa,0x60,0x30);//c
	delay_time(800);
			WriteData(0xfa,0x60,0x80);//h
	delay_time(800);
			WriteData(0xfa,0x60,0x10);//a
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x60,0x70);//g
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
			
			
	WriteData(0xf8,0x80,0x90);
	delay_time(800);	  
	    WriteData(0xfa,0x50,0x60);//V
	delay_time(800);
			WriteData(0xfa,0x50,0x70);//W
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x50,0x30);//S
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x70,0x30);//s
	delay_time(800);
			WriteData(0xfa,0x60,0xf0);//o
	delay_time(800);
			WriteData(0xfa,0x70,0x20);//r
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			
			
 	WriteData(0xf8,0x90,0x90);
  delay_time(800);	
      WriteData(0xfa,0x30,0x40);//4
	delay_time(800); 
		 WriteData(0xfa,0x20,0xd0);//-
	delay_time(800);	
			WriteData(0xfa,0x30,0x20);//2
	delay_time(800);
			WriteData(0xfa,0x30,0x00);//0
	delay_time(800);
			WriteData(0xfa,0x60,0xd0);//m
	delay_time(800);
			WriteData(0xfa,0x40,0x10);//A
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x10,0xf0);//down
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			
			
	
	}		
	//ST7920-0C(GB, GB5 and Japanese code)CGROM
	if(language_select==1)
		{
	WriteData(0xf8,0x30,0x00); //set mode
	delay_time(800);
	WriteData(0xf8,0x80,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
		WriteData(0xf8,0x80,0x60);
				delay_time(800);
		WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
	WriteData(0xf8,0x80,0x10); //set DDRAM Addr.
	delay_time(800);
 			WriteData(0xfa,0xd0,0x30);//d3d2
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x50);//c5ce
	delay_time(800);
			WriteData(0xfa,0xc0,0xe0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);//c27e
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			
	WriteData(0xf8,0x90,0x10);
	delay_time(800);	  
	    WriteData(0xfa,0xc0,0xd0);//bf7a
	delay_time(800);
			WriteData(0xfa,0x60,0x10);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);//~
	delay_time(800);
			WriteData(0xfa,0x40,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
 			WriteData(0xfa,0xc0,0x20);//c27e
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			
			
 	WriteData(0xf8,0x80,0x90);
  delay_time(800);	
      WriteData(0xfa,0xa0,0xf0);//af52
	delay_time(800);
			WriteData(0xfa,0x50,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xa0,0xa0);//aaf6
	delay_time(800);
			WriteData(0xfa,0xf0,0x60);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);//c27e
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
	
	
	WriteData(0xf8,0x90,0x90);
  delay_time(800);
			 	
      WriteData(0xfa,0xd0,0x30);//4
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);//~
	delay_time(800);
			WriteData(0xfa,0x40,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);//2
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			
			
			WriteData(0xfa,0x10,0xf0);//down
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
	}		
			
}void Page_1_1()
{
		
	Page_1_1_=1;
	if(language_select==0)//english
		{
	WriteData(0xf8,0x30,0x00); //set mode
	delay_time(800);
					
  WriteData(0xf8,0x90,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x80,0x10); //set DDRAM Addr.
	delay_time(800);
 			WriteData(0xfa,0x40,0x50);//E
	delay_time(800);
			WriteData(0xfa,0x70,0x80);//x
	delay_time(800);
			WriteData(0xfa,0x60,0x30);//c
	delay_time(800);
			WriteData(0xfa,0x60,0x80);//h
	delay_time(800);
			WriteData(0xfa,0x60,0x10);//a
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x60,0x70);//g
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
		
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x10,0xe0);//up
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
	
	
	WriteData(0xf8,0x90,0x10); //set DDRAM Addr.
	delay_time(800);
 			WriteData(0xfa,0x50,0x60);//V
	delay_time(800);
			WriteData(0xfa,0x50,0x70);//W
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x50,0x30);//S
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x70,0x30);//s
	delay_time(800);
			WriteData(0xfa,0x60,0xf0);//o
	delay_time(800);
			WriteData(0xfa,0x70,0x20);//r
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			
			
	WriteData(0xf8,0x80,0x90);
	delay_time(800);	  
	   WriteData(0xfa,0x30,0x40);//4
	delay_time(800); 
		 WriteData(0xfa,0x20,0xd0);//-
	delay_time(800);	
			WriteData(0xfa,0x30,0x20);//2
	delay_time(800);
			WriteData(0xfa,0x30,0x00);//0
	delay_time(800);
			WriteData(0xfa,0x60,0xd0);//m
	delay_time(800);
			WriteData(0xfa,0x40,0x10);//A
	delay_time(800);
			
 	WriteData(0xf8,0x90,0x90);
  delay_time(800);	
      WriteData(0xfa,0x40,0xc0);//L
	delay_time(800);
			WriteData(0xfa,0x60,0x10);//a
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x60,0x70);//g
	delay_time(800);
			WriteData(0xfa,0x70,0x50);//u
	delay_time(800);
			WriteData(0xfa,0x60,0x10);//a
	delay_time(800);
			WriteData(0xfa,0x60,0x70);//g
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
	}		
	//ST7920-0C(GB, GB5 and Japanese code)CGROM
	if(language_select==1)
		{
	WriteData(0xf8,0x30,0x00); //set mode
	delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x80,0x10); //set DDRAM Addr.
	delay_time(800);
				
      WriteData(0xfa,0xb0,0xf0);//bf7a
	delay_time(800);
			WriteData(0xfa,0x70,0xa0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);//~
	delay_time(800);
			WriteData(0xfa,0x40,0x70);
	delay_time(800);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
 			WriteData(0xfa,0xc0,0x20);//c27e
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0x10,0xe0);//up
	delay_time(800);
			WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
			
	WriteData(0xf8,0x90,0x10);
	delay_time(800);	  
	    WriteData(0xfa,0xa0,0xf0);//af52
	delay_time(800);
			WriteData(0xfa,0x50,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xa0,0xa0);//aaf6
	delay_time(800);
			WriteData(0xfa,0xf0,0x60);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);//c27e
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			
			
 	WriteData(0xf8,0x80,0x90);
  delay_time(800);	
      WriteData(0xfa,0xd0,0x30);//4
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);//~
	delay_time(800);
			WriteData(0xfa,0x40,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);//2
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);			
			
	
	
	WriteData(0xf8,0x90,0xa0);
  delay_time(800);
			WriteData(0xfa,0xd0,0x40);//ab6a
	delay_time(800);
			WriteData(0xfa,0x50,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//null
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x40);//c462
	delay_time(800);
			WriteData(0xfa,0x60,0x20);
	delay_time(800);
	}		
			
}
void Page_2()
{
	//ST7920-0C(GB, GB5 and Japanese code)
	
	if(language_select==0)
	{
		
	WriteData(0xf8,0x30,0x00); //set mode
	delay_time(800);
	WriteData(0xf8,0x80,0x10);
	delay_time(800);
WriteData(0xfa,0x50,0x60);//V
	delay_time(800);
WriteData(0xfa,0x60,0xf0);//o
	delay_time(800);
WriteData(0xfa,0x60,0xc0);//l
	delay_time(800);
WriteData(0xfa,0x70,0x40);//t
	delay_time(800);
WriteData(0xfa,0x60,0x10);//a
	delay_time(800);
WriteData(0xfa,0x60,0x70);//g
	delay_time(800);
WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
WriteData(0xfa,0x20,0x00);//null
	delay_time(800);
WriteData(0xfa,0x70,0x30);//s
	delay_time(800);
WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
WriteData(0xfa,0x60,0xc0);//l
	delay_time(800);
WriteData(0xfa,0x60,0x50);//e
	delay_time(800);	
WriteData(0xfa,0x60,0x30);//c
	delay_time(800);
WriteData(0xfa,0x70,0x40);//t
	delay_time(800);		
WriteData(0xf8,0x90,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x90,0x10); //set DDRAM Addr.
	delay_time(800);
	if(interrupt_enter_command[0]==1)
	{
		WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x40,0xc0);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x70,0x30);
	delay_time(800);
		WriteData(0xfa,0x60,0x50);
	delay_time(800);
		WriteData(0xfa,0x60,0xe0);
	delay_time(800);
		WriteData(0xfa,0x70,0x30);
	delay_time(800);
		WriteData(0xfa,0x60,0xf0);
	delay_time(800);
		WriteData(0xfa,0x70,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
}
		else{
 			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
	WriteData(0xf8,0x80,0x90);
	delay_time(800);	  
	    WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
	
			
 	WriteData(0xf8,0x90,0x90);	
	delay_time(800);
      WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
	}
	if(language_select==1)
	{
	  WriteData(0xf8,0x30,0x00); //set mode
	delay_time(800);
	WriteData(0xf8,0x80,0x20);
	delay_time(800);
WriteData(0xfa,0xb0,0xe0);
	delay_time(800);
WriteData(0xfa,0xf0,0x90);//bef9
	delay_time(800);
WriteData(0xfa,0xd0,0x20);
	delay_time(800);
WriteData(0xfa,0xc0,0x80);//d2c8
	delay_time(800);
WriteData(0xfa,0xd0,0x50);
	delay_time(800);
WriteData(0xfa,0x50,0xf0);//d55f
	delay_time(800);
WriteData(0xfa,0xa0,0xd0);
	delay_time(800);
WriteData(0xfa,0xc0,0x60);//adc6
	delay_time(800);
	
WriteData(0xf8,0x90,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x90,0x10); //set DDRAM Addr.
	delay_time(800);
 			if(interrupt_enter_command[0]==1)
	{
		WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x40,0xc0);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x70,0x30);
	delay_time(800);
		WriteData(0xfa,0x60,0x50);
	delay_time(800);
		WriteData(0xfa,0x60,0xe0);
	delay_time(800);
		WriteData(0xfa,0x70,0x30);
	delay_time(800);
		WriteData(0xfa,0x60,0xf0);
	delay_time(800);
		WriteData(0xfa,0x70,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
	}
		else{
 			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
	
	WriteData(0xf8,0x80,0x90);
	delay_time(800);	  
	    WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
	
			
 	WriteData(0xf8,0x90,0x90);	
	delay_time(800);
      WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);	
	}
}
void Page_set()
{
	//ST7920-0C(GB, GB5 and Japanese code)
	if(language_select==0)
	{
	WriteData(0xf8,0x30,0x00); //set mode
	delay_time(800);
	WriteData(0xf8,0x80,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x80,0x20); //set DDRAM Addr.
	delay_time(800);
 			WriteData(0xfa,0x40,0x50);//E
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x60,0x70);//g
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);//l
	delay_time(800);
	    WriteData(0xfa,0x60,0x90);//i
	delay_time(800);
			WriteData(0xfa,0x70,0x30);//s
	delay_time(800);
			WriteData(0xfa,0x60,0x80);//h
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			
 	WriteData(0xf8,0x90,0x20);
	delay_time(800);	 
      WriteData(0xfa,0x40,0x30);//C
	delay_time(800);
			WriteData(0xfa,0x60,0x80);//h
	delay_time(800);
			WriteData(0xfa,0x60,0x90);//i
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);//n
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
			WriteData(0xfa,0x70,0x30);//s
	delay_time(800);
			WriteData(0xfa,0x60,0x50);//e
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
	}
	if(language_select==1)
	{
	WriteData(0xf8,0x30,0x00); //set mode
	delay_time(800);
	WriteData(0xf8,0x80,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x80,0x20); //set DDRAM Addr.
	delay_time(800);
 			WriteData(0xfa,0xc0,0x40);//c4c5
	delay_time(800);
			WriteData(0xfa,0xc0,0x50);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
			WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x50);//b5d2
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
			WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	  
			
 	WriteData(0xf8,0x90,0x20);
	delay_time(800);	 
      WriteData(0xfa,0xb0,0x10);//b1e2
	delay_time(800);
			WriteData(0xfa,0xe0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
			WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x50);//b5d2
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			
	}
}

void Clear_CGROM(void)
{
	unsigned char j;
	
	WriteData(0xf8,0x80,0x00);//set DDRAM Addr.
	delay_time(800);
	for (j=0;j<32;j++)
	{	
		WriteData(0xfa,0xa0,0x10);
		delay_time(800);
		WriteData(0xfa,0xd0,0x00);
		delay_time(800);
		//
	}
}
void button_select(void)
{
		if(enter_i==0)
		{
			if(select_command==0)
			{
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
				WriteData(0xf8,0x80,0x60);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//a174
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x80,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				
			}
			else if(select_command==1)
			{
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
				WriteData(0xf8,0x90,0x60);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
				
				WriteData(0xf8,0x80,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
			}
			else if(select_command==2)
			{
	
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x80,0x80);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
			}
			else if(select_command==3)
			{
	WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x80,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x80);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
				WriteData(0xf8,0x90,0xe0);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//a173
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
			}
		}
			if(enter_i==1)
			{
				if(select_command==0)
			{
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//c9f7
				delay_time(800);
				WriteData(0xfa,0xb0,0xb0);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
	WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x80,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			}
			else if(select_command==1)
			{
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);//c9f7
				delay_time(800);
				WriteData(0xfa,0xb0,0xb0);
				delay_time(800);
	WriteData(0xf8,0x80,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			}
			else if(select_command==2)
			{
	
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
	WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x80,0x80);
	delay_time(800);
				WriteData(0xfa,0xb0,0x90);//c9f7
				delay_time(800);
				WriteData(0xfa,0xb0,0xb0);
				delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			}
			else if(select_command==3)
			{
	
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);//null
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
	WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x80,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);//null
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
				WriteData(0xfa,0xb0,0x90);//c9f7
				delay_time(800);
				WriteData(0xfa,0xb0,0xb0);
				delay_time(800);
			}
					
			}
	
}


//=================================
void Write_one_bit(char d)
{
	
         unsigned char spi_i=0;
		 for (spi_i = 0; spi_i < 8; spi_i++)
         {
         
         	LCM_SCLK = 0;
						delay_time(0);
					
		  if( ((d <<spi_i )& 0x80))LCM_SID =1;
        else LCM_SID =0;		
						delay_time(0);
					LCM_SCLK = 1;
					  delay_time(0);
		}
		
}
//=================================
//=================================
void WriteData(char instruction,char hdata,char ldata)
{
		LCM_CS=1;

		Write_one_bit(instruction);
	  Write_one_bit(hdata);
	  Write_one_bit(ldata);
	
		LCM_CS=0;
   

	 
}
//=================================

//=================================
void Initial_st7920()
{
	
	WriteData(0xf8,0x30,0x00);//FUNCTION_SET DL=1->8bit
	delay_time(450);
	WriteData(0xf8,0x30,0x00);
	delay_time(450);
	WriteData(0xf8,0x00,0xc0);//display_status D=1->display on
	delay_time(450);
	WriteData(0xf8,0x00,0x60);//Entry mode set I/D=1->move right,AC add by 1
	delay_time(450);
	WriteData(0xf8,0x00,0x20);//Home
	delay_time(450);
	WriteData(0xf8,0x00,0x10);
	delay_time(450000);
	
}
//====================================
//clear GDRAM
void Clear_GDRAM()
{
	unsigned char i,j,a,b;
	
	for (j=0;j<32;j++)
	{	
	   a=(0x80+j);
       b=a&0xf0;
	   WriteData(0xf8,b,(a<<4)&0xf0);
	   WriteData(0xf8,0x80,0x00);
		 for (i=0;i<16;i++)
	 	{	
		 	WriteData(0xfa,0x00,0x00);
			WriteData(0xfa,0x00,0x00);
			//delay_time(250);
		}
	}
}

void display_dig(void)//elec
{ 
	
	unsigned char dig_ii,dig_jj,dig_kk,dig_ll,dig_mm,dig_mmm,dig_mmmm,space_dig_i,space1_dig_i,space2_dig_i,space3_dig_i,space4_dig_i,space5_dig_i,space6_dig_i;
	
	
	   dig_ii=dig_thou;
		 dig_jj=dig_hun;
		 dig_kk=dig_tens;
		 dig_ll=dig_ones;
		 dig_mm=dig_zeros;
	   dig_mmm=dig_pointzeros;
		 dig_mmmm=dig_pointones;	
	u32iPortStatus = GPIO_GET_IN_DATA(P4);
if(gain_uiAdc8320Value>0){
			if(dig_ii==0){space_dig_i=0xa0;dig_ii=1;}else{space_dig_i=0xb0;dig_ii=1;}//if(dig_ii&&dig_jj==0){dig_ii=1;dig_jj=0;}
			if(dig_jj==0){space1_dig_i=0xa0;dig_jj=0;}else{space1_dig_i=0xb0;}
			if(dig_kk==0){space2_dig_i=0xa0;dig_kk=0;}else{space2_dig_i=0xb0;}
			if(dig_ll==0){space3_dig_i=0xa0;dig_ll=0;}else{space3_dig_i=0xb0;}
			if(dig_mm==0){space4_dig_i=0xa0;dig_mm=0;}else{space4_dig_i=0xb0;}
			if(dig_mmm==0){space5_dig_i=0xa0;dig_mmm=0;}else{space5_dig_i=0xb0;}
			if(dig_mmmm==0){space6_dig_i=0xa0;dig_mmmm=0;}else{space6_dig_i=0xb0;}
			
	if(gucOutputVoltagePeak ==0x09){
		if(P44){
					
					WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
					if(dig_thou!=0){
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
					
 			WriteData(0xfa,space_dig_i,((dig_ii-1)<<4)&0xf0);
	delay_time(800);
					}
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig_i,((dig_jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig_i,((dig_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig_i,((dig_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig_i,((dig_mm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0x90);
	delay_time(800);
 			WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space5_dig_i,((dig_mmm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space6_dig_i,((dig_mmmm-1)<<4)&0xf0);
	delay_time(800);
		
		
	}
	else {
		WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
		  
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
 			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
		if(dig_thou!=0){
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dig_i,((dig_ii-1)<<4)&0xf0);
	delay_time(800);
		}
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig_i,((dig_jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig_i,((dig_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig_i,((dig_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig_i,((dig_mm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0x90);
	delay_time(800);
 			WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space5_dig_i,((dig_mmm-1)<<4)&0xf0);
	delay_time(800);
					if(dig_thou<1)
					{
						WriteData(0xfa,0xc0,0xa0);
						delay_time(800);
						WriteData(0xfa,space6_dig_i,((dig_mmmm-1)<<4)&0xf0);
						delay_time(800);
					}
			
	 
	}
}else{
WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
					
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
					
 			WriteData(0xfa,space_dig_i,((dig_ii-1)<<4)&0xf0);
	delay_time(800);
					
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig_i,((dig_jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig_i,((dig_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig_i,((dig_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig_i,((dig_mm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0x90);
	delay_time(800);
 			WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space5_dig_i,((dig_mmm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space6_dig_i,((dig_mmmm-1)<<4)&0xf0);
	delay_time(800);
}		
	WriteData(0xf8,0x90,0xd0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
	
}

else {
	
     
	WriteData(0xf8,0x80,0x90); //set DDRAM Addr.
	delay_time(800);
		
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	
	WriteData(0xf8,0x90,0xd0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
	
	}
}
void display_dig3(void)//4-20ma
{ 
	
	unsigned char dig3_ii,dig3_jj,dig3_kk,dig3_ll,dig3_mm,space_dig3_i,space1_dig3_i,space2_dig3_i,space3_dig3_i,space4_dig3_i;
	   dig3_ii=dig3_ten;
		 dig3_jj=dig3_one;
		 dig3_kk=dig3_pointone;
		 dig3_ll=dig3_pointtwo;
		 dig3_mm = dig3_pointthree;
	
		if(gain_uiAdc8320Value>0){
			if(dig3_ii==0){space_dig3_i=0xa0;dig3_ii=1;}else{space_dig3_i=0xb0;}//if(dig3_ii&&dig3_jj==0){dig3_ii=1;dig3_jj=0;}
			if(dig3_jj==0){space1_dig3_i=0xa0;dig3_jj=0;}else{space1_dig3_i=0xb0;}
			if(dig3_kk==0){space2_dig3_i=0xa0;dig3_kk=0;}else{space2_dig3_i=0xb0;}
			if(dig3_ll==0){space3_dig3_i=0xa0;dig3_ll=0;}else{space3_dig3_i=0xb0;}
			if(dig3_mm==0){space4_dig3_i=0xa0;dig3_mm=0;}else{space4_dig3_i=0xb0;}
		 WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dig3_i,((dig3_ii-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig3_i,((dig3_jj-1)<<4)&0xf0);
	delay_time(800);
			
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig3_i,((dig3_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig3_i,((dig3_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig3_i,((dig3_mm-1)<<4)&0xf0);
	delay_time(800);
			
			
				
				WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);
	delay_time(800);
 			
		
	
	
}

else {
	
     
	WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
		
 			
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
				
				WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);
	delay_time(800);
 			
			
		}
}
void display_dig2(void)//exchange
{ 
	
	
	unsigned char dig2_iii,dig2_ii,dig2_jj,dig2_kk,dig2_ll,dig2_mm,dig2_nn,space_dig2_ii,space_dig2_i,space1_dig2_i,space2_dig2_i,space3_dig2_i,space4_dig2_i,space5_dig2_i;
			dig2_iii=dig2_thouthou;
	   dig2_ii=dig2_hunthou;
		 dig2_jj=dig2_tenthou;
		 dig2_kk=dig2_thou;
		 dig2_ll=dig2_hun;
		 dig2_mm=dig2_tens;
		 dig2_nn=dig2_ones;
if(uiAdc8320Value_ff<13) {
				
			if(dig2_iii==0){space_dig2_ii=0xa0;dig2_iii=1;}else{space_dig2_ii=0xb0;}
			if(dig2_ii==0){space_dig2_i=0xa0;dig2_ii=0;}else{space_dig2_i=0xb0;}
			if(dig2_jj==0){space1_dig2_i=0xa0;dig2_jj=0;}else{space1_dig2_i=0xb0;}
			if(dig2_kk==0){space2_dig2_i=0xa0;dig2_kk=0;}else{space2_dig2_i=0xb0;}
			if(dig2_ll==0){space3_dig2_i=0xa0;dig2_ll=0;}else{space3_dig2_i=0xb0;}
			if(dig2_mm==0){space4_dig2_i=0xa0;dig2_mm=0;}else{space4_dig2_i=0xb0;}
			if(dig2_nn==0){space5_dig2_i=0xa0;dig2_nn=0;}else{space5_dig2_i=0xb0;}
		
					
		 WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
			
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dig2_ii,((dig2_iii-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dig2_i,((dig2_ii-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig2_i,((dig2_jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig2_i,((dig2_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig2_i,((dig2_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig2_i,((dig2_mm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space5_dig2_i,((dig2_nn-1)<<4)&0xf0);
	delay_time(800);
	
	if(language_select==0)
			{	
		if(gucOutputVoltagePeak==0x66)		
			{
	WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800);
			}else{
						 WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
			
						}
		
			}
	else{
		if(gucOutputVoltagePeak==0x66)		
			{
	WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800);
			}else
			{
						 WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
			
		}
	}
}
				
else {
	
     
		 WriteData(0xf8,0x80,0x90); //set DDRAM Addr.
	delay_time(800);
		
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
if(language_select==0)
{	
	if(gucOutputVoltagePeak==0x66)		
			{
	WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800);
			}else{
						 WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
						}
}else{
				if(gucOutputVoltagePeak==0x66)		
			{
	WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800);
						}else{
						 WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
			
						}
		
				}
		}
}
void Temper_dis(void)
{ unsigned char tem_xx,tem_yy,tem_zz,space_tem_i;
	   tem_xx=Temper_tens;
		 tem_yy=Temper_ones;
		 tem_zz=Temper_point;
		
		if(tem_xx==0){space_tem_i=2;}else{space_tem_i=3;}
		 WriteData(0xf8,0x80,0x50); //set DDRAM Addr.
	delay_time(800);
		
 			WriteData(0xfa,(space_tem_i<<4)&0xff,(tem_xx<<4)&0xff);
	delay_time(800);
			WriteData(0xfa,0x30,(tem_yy<<4)&0xff);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,(tem_zz<<4)&0xff);
	delay_time(800);
		
			WriteData(0xfa,0xa0,0x10);
	delay_time(800);
			WriteData(0xfa,0xa0,0xf0);
	delay_time(800);
			
	
}
void bat_dis(void)
{ 
	
unsigned char bat_hun=0,bat_ten=0,bat_one=0,space_tem_i=0;
			bat_hun = bat_data/100;
			bat_ten = (bat_data-(bat_hun*100))/10;
			bat_one = (bat_data-(bat_hun*100)-(bat_ten*10))/1;
		
		if(bat_hun==0){space_tem_i=2;}else{space_tem_i=3;}
		 WriteData(0xf8,0x90,0x80); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0x40,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0x10);
	delay_time(800);
			WriteData(0xfa,0x70,0x40);
	delay_time(800);
			WriteData(0xfa,0x30,0xa0);
	delay_time(800);
 			WriteData(0xfa,(space_tem_i<<4)&0xff,(bat_hun<<4)&0xff);
	delay_time(800);
			WriteData(0xfa,0x30,(bat_ten<<4)&0xff);
	delay_time(800);
			WriteData(0xfa,0x30,(bat_one<<4)&0xff);
	delay_time(800);
		
			WriteData(0xfa,0x20,0x50);
	delay_time(800);
			
			
	
}
void display_select(char dis_i)
{
	volatile unsigned char aa=0,bb=0,cc=0,dd=0,ee=0,ff=0,gg=0,hh=0,ii=0,jj=0,kk=0,ll=0,mm=0,nn=0,oo=0,space_aa=0,space_bb=0,space_cc=0,space_dd=0,
	space_ee=0,space_ff=0,space_gg=0,space_hh=0,space_ii=0,space_jj=0,space_kk=0,space_ll=0,space_mm=0,space_nn=0,space_oo=0;
		 aa=Hz_thou;
		 bb=Hz_hun;
		 cc=Hz_tens;
		 dd=Hz_ones;
		 mm=Hz_pointone;
		 ee=uE_thou;
		 ff=uE_hun;
		 gg=uE_tens;
		 hh=uE_ones;
		 nn=uE_pointone;
		 ii=mS_thou;
		 jj=mS_hun;
		 kk=mS_tens;
		 ll=mS_ones;
		 oo=mS_pointone;
	
	if(dis_i==0)
{
	
		if(gain_uiAdc8320Value>0){
			if(aa==0){space_aa=0xa0;aa=1;}else{space_aa=0xb0;aa=Hz_thou;}//if((aa&&bb)==0){aa=1;bb=0;}
			if(bb==0){space_bb=0xa0;bb=0;}else{space_bb=0xb0;bb=Hz_hun;}
			if(cc==0){space_cc=0xa0;cc=0;}else{space_cc=0xb0;cc=Hz_tens;}
			if(dd==0){space_dd=0xa0;dd=0;}else{space_dd=0xb0;dd=Hz_ones;}
			if(mm==0){space_mm=0xa0;mm=0;}else{space_mm=0xb0;mm=Hz_pointone;}
		 WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
			
 			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_aa,((aa-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_bb,((bb-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_cc,((cc-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dd,((dd-1)<<4)&0xf0);
	delay_time(800);
WriteData(0xfa,0xc0,0x90);
	delay_time(800);
	WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,space_mm,((mm-1)<<4)&0xf0);
	delay_time(800);
				
			WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//H
	delay_time(800);
			WriteData(0xfa,0xd0,0x60);
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);//Z
	delay_time(800);
			WriteData(0xfa,0x40,0x30);
	delay_time(800);
	
}
		else{
			
		 WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
		
		WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);//H
	delay_time(800);
			WriteData(0xfa,0xd0,0x60);
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);//Z
	delay_time(800);
			WriteData(0xfa,0x40,0x30);
	delay_time(800);
	
			}
	
}
	else if(dis_i==1)
	{
	
		
		if(gain_uiAdc8320Value>0){
			if(ee==0){space_ee=0xa0;ee=1;}else{space_ee=0xb0;ee=uE_thou;}
			//if((ee&&ff)==0){ee=uE_thou;ff=0;}
			if(ff==0){space_ff=0xa0;ff=0;}else{space_ff=0xb0;}
			if(gg==0){space_gg=0xa0;gg=0;}else{space_gg=0xb0;}
			if(hh==0){space_hh=0xa0;hh=0;}else{space_hh=0xb0;}
			if(nn==0){space_nn=0xa0;nn=0;}else{space_nn=0xb0;}
		 WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
			
 			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_ee,((ee-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_ff,((ff-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_gg,((gg-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_hh,((hh-1)<<4)&0xf0);
	delay_time(800);
		WriteData(0xfa,0xc0,0x90);
	delay_time(800);
	WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,space_nn,((nn-1)<<4)&0xf0);
	delay_time(800);
	if(select_freq_range==0|select_freq_range==1|select_freq_range==5)
		 {
			 WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);//D
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);//g
	delay_time(800); 
			
		 }
		 else{
			 WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x40,0x80);
	delay_time(800);
					}
}
	else{
			
		 WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	if(select_freq_range==0|select_freq_range==1|select_freq_range==5)
		 {
			 WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);//D
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);//g
	delay_time(800); 
			
		 }
		 else{
			 WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x40,0x80);
	delay_time(800);
					}
	}
}



else if(dis_i==2)
	{
	
		if(gain_uiAdc8320Value>0){
			if(ii==0){space_ii=0xa0;ii=1;}else{space_ii=0xb0;ii=mS_thou;}//if(ii&&jj==0){ii=1;jj=0;}
			if(jj==0){space_jj=0xa0;jj=0;}else{space_jj=0xb0;}
			if(kk==0){space_kk=0xa0;kk=0;}else{space_kk=0xb0;}
			if(ll==0){space_ll=0xa0;ll=0;}else{space_ll=0xb0;}
			if(oo==0){space_oo=0xa0;oo=0;}else{space_oo=0xb0;}
		 WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
			
 			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_ii,((ii-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_jj,((jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_kk,((kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_ll,((ll-1)<<4)&0xf0);
	delay_time(800);
		WriteData(0xfa,0xc0,0x90);
	delay_time(800);
	WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,space_oo,((oo-1)<<4)&0xf0);
	delay_time(800);
	
			WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);//m
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);//S
	delay_time(800);
			WriteData(0xfa,0xb0,0x30);
	delay_time(800);
		
	}		
		else{
			
		 WriteData(0xf8,0x80,0x80); //set DDRAM Addr.
	delay_time(800);
			
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	
		WriteData(0xf8,0x90,0xe0); //set DDRAM Addr.
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);//m
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);//S
	delay_time(800);
			WriteData(0xfa,0xb0,0x30);
	delay_time(800);
		
				}
	}

}

/////////////////////////////////////////////
// FUNCTION
//  button_interrupt

	void GPIOP2P3P4_IRQHandler(void)
{   
	char ii;
    /* To check if P3.4 interrupt occurred */
    delay_time(1000000);
    if(GPIO_GET_INT_FLAG(P3, BIT4))//up
    {
			delay_time(1000000);
      GPIO_CLR_INT_FLAG(P3, BIT4);
			GPIO_ENABLE_DEBOUNCE(P3, BIT4);
			button_update=0;
			if(select_command_success)
			{
				if(select_type=='S')//VW
				{
					
					select_freq_range-=1;
				  if(select_freq_range>=6)select_freq_range=5;	
					vibrating_wire(select_freq_range);
					if(select_freq_range==2)//C
					{ //clear&X=20,Y=26'fre:400~1200'
						//x=0,y=10,C
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;
						strain_coeffic =4.062;
						
					}
					else if(select_freq_range==3)//D
					{
						//clear&X=20,Y=26'fre:400~1200'
						//x=0,y=10,D
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;
						strain_coeffic =3.304;
						
					}
					else if(select_freq_range==1)//B
					{ 
						//clear&X=20,Y=26'fre:1400~3400'
						//x=0,y=10,B
						
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=26;
						min_freq=2000;
						max_freq =3500;
						strain_coeffic =1;
						
					}
					else if(select_freq_range==4)//E
					{
						//clear&X=20,Y=26'fre:1400~6000'
						//x=0,y=10,E
						
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=57;
						min_freq=1500;
						max_freq =6100;
						strain_coeffic =0.39102;
						
					}
					else if(select_freq_range==5)//F
					{
						//clear&X=20,Y=26'fre:2400~6000'
						//x=0,y=10,F
						
						button_range_min=gucT0Index=21;
						button_range_max=gucindex_range=57;
						min_freq=2500;
						max_freq =6100;
						strain_coeffic =1;
						
					}
					else if(select_freq_range==0)//A
					{
						//clear&X=20,Y=26'fre:400~6000'
						//x=0,y=10,A
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=57;
						min_freq=450;
						max_freq =6100;
						strain_coeffic =1;
						
					}
				
						
				}
			}else //before make sure_up
			{
				
			
				if((enter_i==1)&&(interrupt_enter_command[0]==4))	
					{
					select_command-=1;
					if(select_command>=2)select_command=1;
						button_select();
					}
			else if((enter_i==1)&&(interrupt_enter_command[0]==3))
			{	
				select_command =3;
				button_select();
			}
			else if(enter_i==1)
				{
				  select_command-=1;
					if(select_command>=4|select_command<1)select_command=3;
					button_select();
					}
			else if(enter_i==2)
				{
					language=0;
					enter_i=0;
					select_type=0;
					select_command=0;
					select_command_success=0;
					g_au32TMRINTCount[1]=60;
								
					Clear_CGROM();
					
					Page_1();
					
				}				
			else {
				
						
						if((Page_1_1_)&&(select_command==4)){//real value
								select_command=2;//arrow command
							button_select();
							select_command=3;
						}
						else if((Page_1_1_)&&(select_command==3)){
								select_command=1;
							button_select();
							select_command=2;
						}
						else if((Page_1_1_)&&(select_command==2)){
								select_command=0;
							button_select();
							select_command=1;
						}
						else if((Page_1_1_)&&(select_command==1)){
								Clear_CGROM();delay_time(10000);Page_1();select_command=0;
						button_select();	
						}
						
						else{select_command-=1;button_select();}	
								
						if(select_command>4){
									Clear_CGROM();delay_time(10000);Page_1_1();select_command=3;
									button_select();	
							    select_command=4;
							}
					}
			
			}
  
	}
		else if(GPIO_GET_INT_FLAG(P4, BIT0))//down//3.5
    {
			delay_time(1000000);
      GPIO_CLR_INT_FLAG(P4, BIT0);
			GPIO_ENABLE_DEBOUNCE(P4, BIT0);
			button_update=0;
			if(select_command_success)
			{
				if(select_type=='S')//VW
				{
					
					select_freq_range+=1;
				if(select_freq_range>=6)select_freq_range=0;
					vibrating_wire(select_freq_range);					
					if(select_freq_range==2)//C
					{ 
						//clear&X=20,Y=26'fre:400~1200'
						//x=0,y=10,C
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;
						strain_coeffic =4.062;
						
					}
					else if(select_freq_range==3)//D
					{
						//clear&X=20,Y=26'fre:400~1200'
						//x=0,y=10,D
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;
						strain_coeffic =3.304;
						
					}
					else if(select_freq_range==1)//B
					{ 
						//clear&X=20,Y=26'fre:1400~3400'
						//x=0,y=10,B
						
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=26;
						min_freq=2000;
						max_freq =3500;
						strain_coeffic =1;
						
					}
					else if(select_freq_range==4)//E
					{
						//clear&X=20,Y=26'fre:1400~6000'
						//x=0,y=10,E
						
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=57;
						min_freq=1500;
						max_freq =6100;
						strain_coeffic =0.39102;
						
					}
					else if(select_freq_range==5)//F
					{
						//clear&X=20,Y=26'fre:2400~6000'
						//x=0,y=10,F
						
						button_range_min=gucT0Index=21;
						button_range_max=gucindex_range=57;
						min_freq=2500;
						max_freq =6100;
						strain_coeffic =1;
						
					}
					else if(select_freq_range==0)//A
					{
						//clear&X=20,Y=26'fre:400~6000'
						//x=0,y=10,A
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=57;
						min_freq=450;
						max_freq =6100;
						strain_coeffic =1;
						
					}
				
					
				}
			}else //before make sure_down
			{
				
				if((enter_i==1)&&(interrupt_enter_command[0]==4))	
					{
					select_command+=1;
					if(select_command>=2)select_command=0;
						button_select();
					}
			else if((enter_i==1)&&(interrupt_enter_command[0]==3))
			{	
				select_command =3;
				button_select();
			}
			else if(enter_i==1)
				{
				  select_command+=1;
					if(select_command>=4)select_command=1;
					button_select();
					}	
				
			else if(enter_i==2)
				{
					
					enter_i=0;
					select_type=0;
					select_command=0;
					select_command_success=0;
					g_au32TMRINTCount[1]=60;
					Clear_CGROM();				
					Page_1();
				}
				else{
						if((Page_1_1_)&&(select_command==0)){//real value
								select_command=0;
								button_select();
								select_command=1;
							
						}
						else if((Page_1_1_)&&(select_command==1)){//real value
								select_command=1;
								button_select();
								select_command=2;
						}
						else if((Page_1_1_)&&(select_command==2)){//real value
								select_command=2;
								button_select();
								select_command=3;
						}
						
						else{select_command+=1;button_select();}	
								
						if(select_command==4){
									Clear_CGROM();delay_time(10000);Page_1_1();select_command=3;
									button_select();	
							    select_command=4;
							}
							else if(select_command>4){
									Clear_CGROM();delay_time(10000);Page_1();select_command=0;
									button_select();		
									}
							
						
			
			}			
			
			
					
			
		}
    }
    else if(GPIO_GET_INT_FLAG(P3, BIT7))//left
    {
			delay_time(1000000);
      GPIO_CLR_INT_FLAG(P3, BIT7);
			GPIO_ENABLE_DEBOUNCE(P3, BIT7);
			
		  //SetBackLight(interrupt_left*20);
			interrupt_left++;
			if(interrupt_left>=1){interrupt_left=0;
														P24 ^=1;}
      
			
			
			
				
    }
		else if(GPIO_GET_INT_FLAG(P4, BIT2))//enter
    {
			delay_time(1000000);
			GPIO_CLR_INT_FLAG(P4, BIT2);
			GPIO_ENABLE_DEBOUNCE(P4, BIT2);
			
			if(select_command_success==0)
			{	
				
				interrupt_enter_command[enter_i]=select_command;
				
				
				//select_freq_range=0;
				enter_i++;	
				if(enter_i==1)select_command=1;
				else {select_command=0;}
				if(enter_i==1){
												Clear_CGROM();
												delay_time(10000);
												if(interrupt_enter_command[0]==4)	{
																								Page_set();
																								language=1;
																								select_command=0;
																								//enter_i=0;
																								}
													
												else if((interrupt_enter_command[0]==2)|(interrupt_enter_command[0]==3))	
												{
													//select_command=0;
													//button_select();
													if(interrupt_enter_command[0]==3)interrupt_enter_command[1]=3;
													if(interrupt_enter_command[0]==2)gucOutputVoltagePeak=0x4E;
													enter_i=0;
					if(interrupt_enter_command[0]==0)select_type ='D';
					else if(interrupt_enter_command[0]==1)select_type ='A';
					else if(interrupt_enter_command[0]==2)select_type ='S';
					else if(interrupt_enter_command[0]==3)select_type ='C';
					
					if(interrupt_enter_command[1]==1)gucOutputVoltagePeak =0x66;
					else if(interrupt_enter_command[1]==2)gucOutputVoltagePeak =0x4E;
					else if(interrupt_enter_command[1]==3)gucOutputVoltagePeak =0x09;
				
				
					
										select_command_success =1;
						        Clear_CGROM();
										delay_time(10000);
																	if(select_type=='S'){
																												vibrating_wire(select_freq_range);
																												gucindex_range=28;
									
																												}
																												//enter_i=0;
												}													
												else 
													{
															Page_2();
													}
												}
				else if((enter_i==2)&&(language==1)){
														
																		char ii;
																		if(interrupt_enter_command[1]==0){language_select=0;}
																			else{language_select=1;}
																	  for(ii=0;ii<3;ii++)interrupt_enter_command[ii]=0;
																		enter_i=0;
																		select_type=0;
																		select_command=0;
																		select_command_success=0;
																			while_counter=0;
																		Clear_CGROM();
																		delay_time(10000);
																		Page_1();
																		enter_i=0;													
																		language=0;		

			FMC->ISPCON |= FMC_ISPCON_ISPEN_Msk;
				FMC_Erase(language_addr);
				FMC_Write(language_addr, language_select);
				FMC->ISPCON &=  ~FMC_ISPCON_ISPEN_Msk;
																					
																					}	
																
																
																
				
				
				else if(enter_i>=2)
				{	
					enter_i=0;
					if(interrupt_enter_command[0]==0)select_type ='D';
					else if(interrupt_enter_command[0]==1)select_type ='A';
					else if(interrupt_enter_command[0]==2)select_type ='S';
					else if(interrupt_enter_command[0]==3)select_type ='C';
					
					if(interrupt_enter_command[1]==1)gucOutputVoltagePeak =0x66;
					else if(interrupt_enter_command[1]==2)gucOutputVoltagePeak =0x4E;
					else if(interrupt_enter_command[1]==3)gucOutputVoltagePeak =0x09;
				
				
					
										select_command_success =1;
						        Clear_CGROM();
										delay_time(10000);
									if(select_type=='S'){
										vibrating_wire(select_freq_range);
										gucindex_range=select_freq_range;
									
																			}
				
					
					
				}
					
					
					
				

			}else if (select_command_success==1)
			{	
				select_command_success=0;
				for(ii=0;ii<3;ii++)interrupt_enter_command[ii]=0;
				for(ii=0;ii<10;ii++)g_au32ADCCount[ii]=0;
				enter_i=0;
				while_counter=0;
				language=0;
				select_type=0;
				select_command=0;
				select_command_success=0;
				g_au32TMRINTCount[1]=60;
				Clear_CGROM();
				button_update=0;/////////////////////////VW
				delay_time(10000);
			  Page_1();
				delay_time(10000);
				
			}
			
		
    }
		else if(GPIO_GET_INT_FLAG(P3, BIT5))//right
    {
			delay_time(1000000);
      GPIO_CLR_INT_FLAG(P3, BIT5);
			GPIO_ENABLE_DEBOUNCE(P3, BIT5);
		  
        interrupt_right++;
			
			if(interrupt_right>=3)interrupt_right=0;
			
				FMC->ISPCON |= FMC_ISPCON_ISPEN_Msk;
				FMC_Erase(unit_addr);
				FMC_Write(unit_addr, interrupt_right);
				FMC->ISPCON &=  ~FMC_ISPCON_ISPEN_Msk;
			if(enter_i==1)
				{
					
					enter_i=0;
							select_type=0;
							select_command=0;
							select_command_success=0;
							language=0;
							g_au32TMRINTCount[1]=60;
							while_counter=0;
							delay_time(4000);
							Clear_CGROM();
							delay_time(10000);
						  Page_1();
						  delay_time(10000);
					
				}
				else if(enter_i==2)
				{
					
					enter_i=0;
							select_type=0;
							select_command=0;
							select_command_success=0;
							language=0;
							g_au32TMRINTCount[1]=60;
							while_counter=0;
							delay_time(4000);
							Clear_CGROM();
							delay_time(10000);
						  Page_1();
						  delay_time(10000);
					
				}
			
    }
		else
		{
				P2->ISRC = P2->ISRC;
        P3->ISRC = P3->ISRC;
        P4->ISRC = P4->ISRC;
		}
	
	}
////////////////////////////////////////////function_LTC2328-18/////////////////////////////////////////////////////////
	#ifdef _LTC2328_
	void LTC2328_Ini(void)
	{
		ADC_2328_CNV=0;
		ADC_2328_BUSY=0;
		ADC_2328_DO=0;
		ADC_2328_SCK=0;
	}
	int LTC2328_data_ac(void)
	{
		 int data=0;
		char o;
		
		ADC_2328_CNV=1;
		delay_time(1);
		ADC_2328_CNV=0;
		while(ADC_2328_BUSY);
		for(o=0;o<18;o++)
		{
			ADC_2328_SCK=1;
			if(ADC_2328_DO)
					data +=1;
			ADC_2328_SCK=0;
			data <<= 1;
			
		}
		if(data<=131072)
			data=data;
		else{
			data=0-(262144-data);
					/////////////////////////////////////////////////////////////////////20160705////////////////////////////////////////////////
		}
		
		return(data);
	}
	
	#endif
	///////////////////////////////////////////ADS8320/////////////////////////////////////////////////////////
#ifdef _ADS8320_


//function_ADS8320
void init_ext_ad()
{
		ADS8320_CS = 1;
		ADS8320_CLK = 1;
}


unsigned int read_ext_adc()
{
		int i;
		unsigned int data;
	
		data = 0;
		ADS8320_CS = 0;
	  ADS8320_CLK = 1;
		for(i=0;i<5;i++) // take sample and send start bit
		{
			ADS8320_CLK = 0;
			delay_time(15);
			ADS8320_CLK = 1;
			delay_time(13);
			
		}
		for(i=0;i<16;i++) // read 16-bits data back
		{
			ADS8320_CLK = 0;
			delay_time(15);
			if (ADS8320_DOUT)
				data += 1;
			ADS8320_CLK = 1;
			data <<= 1;
			delay_time(13);
			
		}
		ADS8320_CS = 1;
		for(i=0;i<5;i++) // take sample and send start bit
		{
			ADS8320_CLK = 0;
			delay_time(15);
			ADS8320_CLK = 1;
			delay_time(13);
			}
		
	  
		//for(i=0;i<100;i++) // take sample and send start bit
		//{
			//ADS8320_CLK = 0;
			//ADS8320_CLK = 1;
		//}
		
		return(data);
		//delay_time(10);	
}
#endif

/////////////////////////////////////////////
// FUNCTION
//  reset gain
void RESET_Gain(void)
{
		gucGainTableIndex = 0;
		u32iPortStatus = GPIO_GET_IN_DATA(P1);
		u32iPortStatus &= 0xfff8;  // clear gain scaler bits P1[2:0]
		//P13 = 0;
		//P12 = 0;
		//P11 = 1;
		//P10 = 0;
		u32iPortStatus |= gucGainTable[gucGainTableIndex];
		GPIO_SET_OUT_DATA (P1,u32iPortStatus);
}
void SET_Gain(unsigned char index)
{
		u32iPortStatus = GPIO_GET_IN_DATA(P1);
		u32iPortStatus &= 0xfff8;  // clear gain scaler bits P1[3:0]
		u32iPortStatus |= gucGainTable[index];
		GPIO_SET_OUT_DATA (P1,u32iPortStatus);
}

				/**/
    /* Write Demo */
   // u32Data = 0x12345678;
				
   // FMC_Write(u32Addr, u32Data);
	
			
void SYS_Init(void)
{
    /*---------------------------------------------------------------------------------------------------------*/
    /* Init System Clock                                                                                       */
    /*---------------------------------------------------------------------------------------------------------------*/
    /* Enable IRC22M clock */
    CLK->PWRCON |= CLK_PWRCON_IRC22M_EN_Msk;

    /* Waiting for IRC22M clock ready */
    CLK_WaitClockReady(CLK_CLKSTATUS_IRC22M_STB_Msk);

    /* Switch HCLK clock source to HIRC */
    CLK->CLKSEL0 = CLK_CLKSEL0_HCLK_S_HIRC;

    /* Set PLL to Power-down mode and PLL_STB bit in CLKSTATUS register will be cleared by hardware.*/
    CLK->PLLCON |= CLK_PLLCON_PD_Msk;

    /* Enable external 12 MHz XTAL, IRC10K */
    CLK->PWRCON |= CLK_PWRCON_XTL12M_EN_Msk | CLK_PWRCON_OSC10K_EN_Msk;

    /* Enable PLL and Set PLL frequency */
    CLK->PLLCON = PLLCON_SETTING;

    /* Waiting for clock ready */
    CLK_WaitClockReady(CLK_CLKSTATUS_PLL_STB_Msk | CLK_CLKSTATUS_XTL12M_STB_Msk | CLK_CLKSTATUS_IRC10K_STB_Msk);

    /* Switch HCLK clock source to PLL, STCLK to HCLK/2 */
    CLK->CLKSEL0 = CLK_CLKSEL0_STCLK_S_HCLK_DIV2 | CLK_CLKSEL0_HCLK_S_PLL;

    /* Enable peripheral clock */
    CLK->APBCLK = CLK_APBCLK_UART0_EN_Msk |
                  CLK_APBCLK_TMR0_EN_Msk | CLK_APBCLK_TMR1_EN_Msk | CLK_APBCLK_TMR2_EN_Msk | CLK_APBCLK_TMR3_EN_Msk;

    /* Peripheral clock source */
    CLK->CLKSEL1 = CLK_CLKSEL1_UART_S_PLL |
                   CLK_CLKSEL1_TMR0_S_HXT | CLK_CLKSEL1_TMR1_S_HCLK | CLK_CLKSEL1_TMR2_S_HIRC | CLK_CLKSEL1_TMR3_S_HXT;
		CLK_EnableModuleClock(ADC_MODULE);
    CLK_SetModuleClock(ADC_MODULE, CLK_CLKSEL1_ADC_S_HIRC, CLK_CLKDIV_ADC(7));
    /* Update System Core Clock */
    /* User can use SystemCoreClockUpdate() to calculate PllClock, SystemCoreClock and CycylesPerUs automatically. */
    SystemCoreClockUpdate();
    
    /*---------------------------------------------------------------------------------------------------------*/
    /* Init I/O Multi-function                                                                                 */
    /*---------------------------------------------------------------------------------------------------------*/
  GPIO_DISABLE_DIGITAL_PATH(P1, 0x80);
    /* Set P3 multi-function pins for UART0 RXD and TXD */
    /* Set P3 multi-function pins for UART0 RXD, TXD, and T1EX */
    SYS->P3_MFP &= ~(SYS_MFP_P30_Msk | SYS_MFP_P31_Msk|SYS_MFP_P35_Msk|SYS_MFP_P34_Msk|SYS_MFP_P33_Msk);
    SYS->P3_MFP = SYS_MFP_P30_RXD0 | SYS_MFP_P31_TXD0 | SYS_MFP_P34_T0 | SYS_MFP_P35_T1 | SYS_MFP_P33_T1EX;
		SYS->P1_MFP &= ~(SYS_MFP_P17_Msk);
    SYS->P1_MFP |= SYS_MFP_P17_AIN7 ;

}



void AdcSingleModeTest(void)
{
	float uint32PowerData=0;
	bat_AD_data=0;
	bat_data=0;
           //uint32_t  i32ConversionData;
 /* Set the ADC operation mode as single, input mode as single-end and enable the analog input channel 2 */
            ADC_Open(ADC, ADC_ADCR_DIFFEN_SINGLE_END, ADC_ADCR_ADMD_SINGLE, 0x1 << 7);

            /* Power on ADC module */
            ADC_POWER_ON(ADC);

            /* clear the A/D interrupt flag for safe */
            ADC_CLR_INT_FLAG(ADC, ADC_ADF_INT);

            /* Enable the ADC interrupt */
            ADC_EnableInt(ADC, ADC_ADF_INT);
            NVIC_EnableIRQ(ADC_IRQn);

            /* Reset the ADC interrupt indicator and Start A/D conversion */
            g_u32AdcIntFlag = 0;
            ADC_START_CONV(ADC);

            /* Wait ADC interrupt (g_u32AdcIntFlag will be set at IRQ_Handler function)*/
            while(g_u32AdcIntFlag == 0);

            /* Disable the ADC interrupt */
            ADC_DisableInt(ADC, ADC_ADF_INT);

            /* Get the conversion result of the ADC channel 2 */
            bat_AD_data = ADC_GET_CONVERSION_DATA(ADC, 7);////////////////////////////////////////////////////////////error
	//uint32PowerData=bat_AD_data;
	uint32PowerData = ((float)(bat_AD_data-2600)/(3900-2600));
	if(uint32PowerData>=0.9)
	{uint32PowerData=0.9;}
	else if ((uint32PowerData>0.8)&&(uint32PowerData<0.9))
{uint32PowerData=0.7;}
	else if ((uint32PowerData>0.6)&&(uint32PowerData<0.8))
{uint32PowerData=0.5;}
	else if ((uint32PowerData>0.4)&&(uint32PowerData<0.6))
{uint32PowerData=0.3;}
	else if ((uint32PowerData>0.2)&&(uint32PowerData<0.4))
{uint32PowerData=0.1;}
	else if ((uint32PowerData>0.1)&&(uint32PowerData<0.2))
{uint32PowerData=0.05;}
	else{uint32PowerData=0.05;}
	uint32PowerData=uint32PowerData*100;
	bat_data = uint32PowerData;
						
						//uint32PowerData=uint32PowerData/4096*3.3;
						
	}
	void ADC_IRQHandler(void)
{
	g_u32AdcIntFlag = 1;
    ADC_CLR_INT_FLAG(ADC, ADC_ADF_INT); /* clear the A/D conversion flag */
}
/**
 * @brief       Timer0 IRQ
 *
 * @param       None
 *
 * @return      None
 *
 * @details     The Timer0 default IRQ, declared in startup_M051Series.s.
 */
void TMR0_IRQHandler(void)
{  
			
			char i;
    if(TIMER_GetIntFlag(TIMER0) == 1)
    {
        /* Clear Timer0 time-out interrupt flag */
			
        TIMER_ClearIntFlag(TIMER0);
				uiTimerCounter++;
			
			if(select_type =='A')GPIO_SET_OUT_DATA (P0,0x80);
			
			// add check time-out function
			if (timer0_check == 'T')
			{
					if (uiTimerCounter >= 1) // 100ms*1=100ms
					{
						g_au32TMRINTCount[1] = 200; // set 60 to exit while loop in main
					}
			}
			if ((select_type =='D')||(select_type =='A')||(select_type =='S')||(select_type =='C'))
			{
				if (select_type =='S')
				{
					
										
						GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);
					
					
					if (uiTimerCounter > 10)
					{
						
						
						if (gucT0Index <= gucindex_range){
							gucT0Index++;
						if(Hz_data>0)
						{				
						if(select_freq_range==2||select_freq_range==3)
							{
								TIMER0->TCMPR = __HXT/(Hz_data*2);
							}
							else{
										TIMER0->TCMPR = guiTimer0Period[gucT0Index];
										}
						}
						else{
						TIMER0->TCMPR = guiTimer0Period[gucT0Index];
						}
						uiTimerCounter = 0;
					
						
																																}
					
					}
				}
		
				
				else if(select_type =='A')
					{

					if(gucOutputVoltagePeak==0x66)
					{
						
							
							GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);//67-
						delay_time(800);	//800			
						GPIO_SET_OUT_DATA (P0,0xff-u32iOutputVoltage);//98+
						delay_time(1000);//7000
						for(i=0;i<5;i++){uiAdc8320Value += read_ext_adc();}
						delay_time(1000);
						GPIO_SET_OUT_DATA (P0,0x80);//160us
						delay_time(300);
						uiAdc8320Value_offset += read_ext_adc();
						//ADS8320_CS=0;/////////////////////////////////////////////////////////////////////////////
						delay_time(300);
						//ADS8320_CS=0;////////////////////////////////////////////////////////////////////////////201607
						GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);//67-
						delay_time(1000);//7000
						for(i=0;i<5;i++){uiAdc8320Value += read_ext_adc();}
						delay_time(1000);
						GPIO_SET_OUT_DATA (P0,0x80);
						delay_time(1600);//1600
						GPIO_SET_OUT_DATA (P0,0xff-u32iOutputVoltage);//98+
						
						//uiAdc8320Value += read_ext_adc();
						delay_time(800);
						GPIO_SET_OUT_DATA (P0,0x80);
						
							
							
							
						}else{
							
							if(u32iOutputVoltage < 0x80) 
									{
										u32iOutputVoltage = 0xff-u32iOutputVoltage;
										GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);
										uiAdc8320Value += read_ext_adc();
										}else if (u32iOutputVoltage>=0x80)
											{
											u32iOutputVoltage = 0xff-u32iOutputVoltage;
												GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);
												uiAdc8320Value_offset += read_ext_adc();
												}
											
									}
					
									
			}
					else if(select_type =='D')
					{
					   GPIO_SET_OUT_DATA (P0,0xff-u32iOutputVoltage);	
							//GPIO_SET_OUT_DATA (P0,0x80);
					}
					else if(select_type =='C')
					{
					   GPIO_SET_OUT_DATA (P0,0xff-u32iOutputVoltage);
						
						
							//GPIO_SET_OUT_DATA (P0,0x80);
						
					}	
					
				if (select_type =='S')
				{
					if(u32iOutputVoltage < 0x80) 
					{
						u32iOutputVoltage = 0xff-u32iOutputVoltage;
					
						
					}else if (u32iOutputVoltage>=0x80)
					{
						u32iOutputVoltage = 0xff-u32iOutputVoltage;
						
					}
					
				}
			}
		}//else{GPIO_SET_OUT_DATA (P0,0x80);}
 if(select_type =='A'){
		if(uiTimerCounter>=stri_counter){
														TIMER_Stop(TIMER0);
														u32iOutputVoltage=0x80;
														GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);
														//if(uiTimerCounter<50)
														uiAdc8320Value_f =(float)uiAdc8320Value/(uiTimerCounter*10);
														uiAdc8320Value_f_offset =(float)uiAdc8320Value_offset/(uiTimerCounter);
														uiAdc8320Value_ac = uiAdc8320Value_f-uiAdc8320Value_f_offset;
														uiAdc8320Value=0;
														uiAdc8320Value_offset=0;
															}		
											}

						
    														
}

/**
 * @brief       Timer1 IRQ
 *
 * @param       None
 *
 * @return      None
 *
 * @details     The Timer1 default IRQ, declared in startup_M051Series.s.
 */
void TMR1_IRQHandler(void)
{
    if(TIMER_GetCaptureIntFlag(TIMER1) == 1)
    {
				//ADS8320_CLK = ~ADS8320_CLK;
        /* Clear Timer1 capture interrupt flag */
        TIMER_ClearCaptureIntFlag(TIMER1);

        g_au32TMRINTCount[1]++;
			if(u32InitCount>=200)u32InitCount=200;
			g_au32TMR1Count[u32InitCount++] = TIMER_GetCaptureData(TIMER1);
			//TIMER_GetCounter(TIMER1)
			///*
			if (g_au32TMRINTCount[1]%2)
				TIMER_EnableCapture(TIMER1,TIMER_CAPTURE_FREE_COUNTING_MODE , TIMER_CAPTURE_RISING_EDGE);
			else
				TIMER_EnableCapture(TIMER1,TIMER_CAPTURE_COUNTER_RESET_MODE , TIMER_CAPTURE_RISING_EDGE);
			//*/
    }

}


/*---------------------------------------------------------------------------------------------------------*/
/* MAIN function                                                                                           */
/*---------------------------------------------------------------------------------------------------------*/
double myFloorRound(double dInput)
{
    if(dInput >= 0.000f)
    {
        return floor(dInput + 0.005f);
    }
    return ceil(dInput - 0.005f);
}
int main(void)
{
//	uint32_t u32Cfg0, u32Cfg1;
//	uint32_t u32CBS,u32RData;
//	 uint32_t u32Addr;
	int i,j;
	uint32_t TIMER_CLK;

//		int iFlag;
		GPIO_SetMode(P0, BIT0, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P0, BIT1, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P0, BIT2, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P0, BIT3, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P0, BIT4, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P0, BIT5, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P0, BIT6, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P0, BIT7, GPIO_PMD_OUTPUT);
		//set_gain
    GPIO_SetMode(P1, BIT0, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P1, BIT1, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P1, BIT2, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P1, BIT3, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P1, BIT4, GPIO_PMD_OUTPUT);//ADC_CLK
    GPIO_SetMode(P1, BIT5, GPIO_PMD_OUTPUT);//ADC_CNV
    GPIO_SetMode(P1, BIT6, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P1, BIT7, GPIO_PMD_OUTPUT);//MUX_CLK
	
    GPIO_SetMode(P4, BIT1, GPIO_PMD_INPUT);//16bits ADC_Dout
    GPIO_SetMode(P3, BIT3, GPIO_PMD_INPUT);//counter wave
		GPIO_SetMode(P4, BIT4, GPIO_PMD_INPUT);
		//LCM_
		GPIO_SetMode(P2, BIT1, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P2, BIT2, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P2, BIT3, GPIO_PMD_OUTPUT);
		GPIO_SetMode(P2, BIT4, GPIO_PMD_OUTPUT);
    GPIO_SetMode(P2, BIT5, GPIO_PMD_OUTPUT);
		GPIO_SetMode(P2, BIT6, GPIO_PMD_OUTPUT);
		GPIO_SetMode(P2, BIT7, GPIO_PMD_OUTPUT);
		GPIO_SetMode(P4, BIT4, GPIO_PMD_INPUT);
		P16=1;
		P25=0;
		P26=0;
    P27=0;
		//p4

		//button_interrupt->P3.4,P3.5,P3.7,P4.0,P4.2
	
		GPIO_SET_OUT_DATA (P1,0x000000);
		GPIO_SET_OUT_DATA (P0,0x000080);	
			ANALOG_POWERMOS_PIN = 1;

    min_freq=400;
		max_freq =6000;
	  
	   Initial_st7920();			//WG12864S3-TFH-V#T
		Show_Graphic();
		delay_time(25000000);
		Clear_GDRAM();
		//delay_time(450000);
		

    /* Unlock protected registers */
	//FMC_Open();
    SYS_UnlockReg();
		
		
//FMC_ENABLE_ISP();
    /* Init System, peripheral clock and multi-function I/O */
    SYS_Init();
		FMC->ISPCON |=  FMC_ISPCON_ISPEN_Msk ;

		language_select = FMC_Read(language_addr);
		if(language_select>2)language_select=0;
    select_freq_range = FMC_Read(u32Addr);
		if(select_freq_range>6)select_freq_range=0;
		interrupt_right = FMC_Read(unit_addr);
		if(interrupt_right>3)interrupt_right=0;
    NVIC_EnableIRQ(GPIO_P2P3P4_IRQn);
		//select_freq_range=3;//////test
		if(select_freq_range==2)//C
					{ 
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=400;
						max_freq =1200;
						strain_coeffic = 4.062;
					}
					else if(select_freq_range==3)//D
					{
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;	
						strain_coeffic = 3.304;		
					}
					else if(select_freq_range==1)//B
					{ 

						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=26;
						min_freq=2000;
						max_freq =3500;						
					}
					else if(select_freq_range==4)//E
					{
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=26;
						min_freq=2000;
						max_freq =6100;
						strain_coeffic = 0.39102;
					}
					else if(select_freq_range==5)//F
					{
						button_range_min=gucT0Index=21;
						button_range_max=gucindex_range=57;
						min_freq=2500;
						max_freq =6100;
					}
					else if(select_freq_range==0)//A
					{
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=47;
						min_freq=450;
						max_freq =6100;
					}
	//	select_command_success=1;////////////test
					//select_type ='S';
					
    init_ext_ad();
		Page_1();
		//uiAdc8320Value = 0;
			// read data
			
    /* Open Timer0 frequency to 0.5 Hz in periodic mode, and enable interrupt */
		gucT0Index = 0;
    TIMER0->TCMPR = guiTimer0Period[gucT0Index];//__HXT/2000;
    TIMER0->TCSR = TIMER_TCSR_IE_Msk | TIMER_PERIODIC_MODE;
    TIMER_SET_PRESCALE_VALUE(TIMER0, 0);
		uiTimerCounter = 0;
    /* Enable Timer0 ~ Timer3 NVIC */
		/* Initial Timer1 default setting */
					
    NVIC_EnableIRQ(TMR0_IRQn);
			
			u32iOutputVoltage = 0x0000;
			// add to avoid leakage current to analog power			
		GPIO_SetMode(P3, BIT4, GPIO_PMD_INPUT);//up
		GPIO_EnableInt(P3, 4, GPIO_INT_RISING);
		GPIO_SetMode(P3, BIT5, GPIO_PMD_INPUT);//down		
    GPIO_EnableInt(P3, 5, GPIO_INT_RISING);
		GPIO_SetMode(P4, BIT0, GPIO_PMD_INPUT);//left		
    GPIO_EnableInt(P4, 0, GPIO_INT_RISING);
		GPIO_SetMode(P4, BIT2, GPIO_PMD_INPUT);//enter		
    GPIO_EnableInt(P4, 2, GPIO_INT_RISING);
		GPIO_SetMode(P3, BIT7, GPIO_PMD_INPUT);//right		
    GPIO_EnableInt(P3, 7, GPIO_INT_RISING);
			//RESET_Gain();
			//select_type ='S';
			//select_command_success= 1;
			//select_freq_range=select_freq_range2;
		//delay_time(450000);
		
  while(1)
	
	//while_loop:
	
	{	
	  delay_time(10000000);
		
		//u32iOutputVoltage = 0x80;
		//GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);	
		//delay_time(8000000);
		if((select_freq_range==3)||(select_freq_range==2))
		{
		max_freq_timer = (50000500)/min_freq;
	  min_freq_timer = (50000500)/max_freq;
		}
		else{
				max_freq_timer = (50000500)/(min_freq);
	  min_freq_timer = (50000500)/(max_freq);
		}
	  g_au32HzMaxMin[0] = max_freq_timer;
		g_au32HzMaxMin[1] = min_freq_timer;
		//test_simon
		
	  //select_command_success = 1;
	//	select_type ='A';
		uiAdc8320Value = 0;
		uiAdc8320Value_offset=0;
		//gucOutputVoltagePeak =0x68;
    if(select_command_success == 1)
		{	
			
			while_counter++;	
			uiTimerCounter = 0;
			u32iOutputVoltage = gucOutputVoltagePeak;	
			
			
				
		if (select_type =='S')//VW_sensor
			{
		/*		WriteData(0xf8,0x90,0x00);
	delay_time(800);
	WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0x00);
	delay_time(800);*/
				button_update++;
				if(while_counter>50){
					AdcSingleModeTest();
					while_counter=1;
				}
				delay_time(40000);
					if(Hz_data>0){
				if(select_freq_range==2||select_freq_range==3)
				{
					TIMER0->TCMPR = guiTimer0Period[gucT0Index];
					TIMER_Start(TIMER0);
				}
					
				else{
					TIMER0->TCMPR = guiTimer0Period[gucT0Index];
					TIMER_Start(TIMER0);
				}
			}
					else
					{
					TIMER0->TCMPR = guiTimer0Period[gucT0Index];
					TIMER_Start(TIMER0);
					}
						
			}
	else if(select_type =='A')
			{
				/*while(while_counter1<100){
									GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);//67-
						delay_time(800);	//800			
						GPIO_SET_OUT_DATA (P0,0xff-u32iOutputVoltage);//98+
						delay_time(7000);//7000
						//for(i=0;i<5;i++){uiAdc8320Value += read_ext_adc();}
						
						GPIO_SET_OUT_DATA (P0,0x80);
						delay_time(1600);//1600
						GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);//67-
						delay_time(7000);//7000
						//for(i=0;i<5;i++){uiAdc8320Value += read_ext_adc();}
						
						GPIO_SET_OUT_DATA (P0,0x80);
						delay_time(1600);//1600
						GPIO_SET_OUT_DATA (P0,0xff-u32iOutputVoltage);//98+
						delay_time(800);	//800
						GPIO_SET_OUT_DATA (P0,0x80);
									while_counter1++;
					  delay_time(10000); 
							if(while_counter1>100)break;
						}*/
				TIMER0->TCMPR = __HXT/300;//__HXT/2000;
			TIMER_Start(TIMER0);
			}
	else if(select_type =='D')
			{
			gucT0Index = 0;
				TIMER0->TCMPR = __HXT/2000;//__HXT/2000;
			TIMER_Start(TIMER0);
				
			}
		else if(select_type =='C')
			{
			gucT0Index = 0;
				TIMER0->TCMPR = __HXT/4000;//__HXT/2000;
				
			TIMER_Start(TIMER0);
				//SET_Gain(4);
				
			}	
			
			/* Start Timer0 ~ Timer3 counting */
			//TIMER0->TCMPR = __HXT/1600; // 800Hz
			
				//gucGainTableIndex =0x01;	
					
			
			// measure frequency
			if (select_type =='S')
			{
				delay_time(40000);
				//
				// excite sine wave for 0.4 sec
	// four patterns
					//Temp_sw=1;
		while (gucT0Index <= (gucindex_range)){
					if(gucT0Index==gucindex_range)
							{
								
								gucindex_range = button_range_max;
								gucT0Index = button_range_min;
								GPIO_SET_OUT_DATA (P0,0x80);
								u32iOutputVoltage = 0X80;
								break;
							}	
							//gucT0Index=gucindex_range;
							//if(select_command_success==0)break;
						}
				// stop excite sine wave
				//	u32iOutputVoltage=0X80;	
					TIMER_Stop(TIMER0);
					
					for(i=0;i<200;i++)
					{
						g_au32TMR1Count[i] = 0;
					}
				// set timer0 time-out function
					
					timer0_check = 'T';
					TIMER0->TCMPR = __HXT; // 100ms per time-out interrupt
					TIMER_Start(TIMER0);
				//
				
				TIMER_Open(TIMER1, TIMER_CONTINUOUS_MODE,1);
				/* Configure Timer1 setting for external counter input and capture function */
					TIMER_SET_PRESCALE_VALUE(TIMER1,0);
					TIMER_SET_CMP_VALUE(TIMER1, 0xffffff);
					TIMER_EnableEventCounter(TIMER1, TIMER_COUNTER_FALLING_EDGE);
					TIMER_EnableCaptureDebounce(TIMER1);
					TIMER_DisableEventCounter(TIMER1);
				//TIMER_EnableCapture(TIMER1, TIMER_CAPTURE_FREE_COUNTING_MODE, TIMER_CAPTURE_FALLING_EDGE);
					TIMER_EnableCapture(TIMER1, TIMER_CAPTURE_COUNTER_RESET_MODE, TIMER_CAPTURE_FALLING_AND_RISING_EDGE);
					TIMER_EnableCaptureInt(TIMER1);
			//	TIMER_CLK=TIMER_GetModuleClock(TIMER1);
					
				/* Enable Timer1 NVIC */
					
				//TIMER_Stop(TIMER1);
					u32InitCount = g_au32TMRINTCount[1] = 0;
					
					TIMER_Start(TIMER1);
				//TIMER_EnableInt(TIMER1);
				
					NVIC_EnableIRQ(TMR1_IRQn);
					
				/* Check T1EX interrupt counts */
				delay_time(500000);
			/*	while(g_au32TMRINTCount[1] <=100)
				//while(1)
				{
					//P00 = ~P00;
				}*/
				// stop time0 time-out function
				TIMER_Stop(TIMER0);
				
					

				/* Stop Timer0, Timer1 and Timer3 counting */
				TIMER_Stop(TIMER1);
				TIMER_Close(TIMER1);
				#ifdef _ADS8320_
				ADS8320_CS = 1;
				ADS8320_CS = 0;
				ADS8320_CS = 1;
				#endif
				//printf("*** PASS ***\n");
				uiAdc8320Value_Hz = 0;
				uiAdc8320Value_Hz_1 = 0;
				uiAdc8320Value_Hz_mean=0;
				uiAdc8320Value_Hz_mean_STD=0;
				j=0;
				
				for(i=5;i<200;i++)
							{
								if((g_au32TMR1Count[i] <= g_au32HzMaxMin[0])&&(g_au32TMR1Count[i] >= g_au32HzMaxMin[1]))
								{
								//printf("[%2d] - %4d\n", i, g_au32TMR1Count[i]);
						
								g_au32TMR1Count[i] = g_au32TMR1Count[i];
									
								}
								else{
									g_au32TMR1Count[i]=0;
								}
				      }
				
				for(i=10;i<200;i++)
				{
					if(g_au32TMR1Count[i]>0){
																												uiAdc8320Value_Hz_mean+=g_au32TMR1Count[i]; 
																												j++;	
					}
				}
				uiAdc8320Value_Hz_mean=uiAdc8320Value_Hz_mean/j;/////////////////////////////////////////////////////////mean
				
				for(i=10;i<200;i++)
				{
					
				uiAdc8320Value_Hz_mean_STD+=((g_au32TMR1Count[i]-uiAdc8320Value_Hz_mean)*(g_au32TMR1Count[i]-uiAdc8320Value_Hz_mean)); 
					
				}
				uiAdc8320Value_Hz_mean_STD=sqrt(uiAdc8320Value_Hz_mean_STD/190)/2;///////////////////////////////////////////////////////////////////////////STD
				
				for(i=10;i<200;i++)
				{
					if(g_au32TMR1Count[i]>=(uiAdc8320Value_Hz_mean+uiAdc8320Value_Hz_mean_STD)||(g_au32TMR1Count[i]<=(uiAdc8320Value_Hz_mean-uiAdc8320Value_Hz_mean_STD)))
						g_au32TMR1Count[i]=0;
					else
					{
							g_au32TMR1Count[i]=g_au32TMR1Count[i];
					}
				}
				
				//for(i=2;i<20;i++)
				j=0;
						for(i=10;i<200;i++)
							{
								if((g_au32TMR1Count[i] <= g_au32HzMaxMin[0])&&(g_au32TMR1Count[i] >= g_au32HzMaxMin[1]))
								{
								//printf("[%2d] - %4d\n", i, g_au32TMR1Count[i]);
						
								uiAdc8320Value_Hz_1 += g_au32TMR1Count[i];
									j++;
								}
				      }
							
				//uiAdc8320Value /= 18;
						if (j>0)
						{
						
						uiAdc8320Value_Hz_1/= j;
						j=0;
						}
						
/////////////////////////////////////////////////////////////////////////////////test/////////////////////////////////////////////////////
	/*	for(i=1;i<60;i++)
							{
								if((g_au32TMR1Count[i] < (uiAdc8320Value_Hz_1*1.001))&&(g_au32TMR1Count[i] > (uiAdc8320Value_Hz_1*0.999)))
								{
									uiAdc8320Value_Hz_mean += g_au32TMR1Count[i];
									j++;
								}
				      }

						if (j>0)
						{
						
						uiAdc8320Value_Hz_mean/= j;
				j=0;
						}*/
		uiAdc8320Value_Hz = uiAdc8320Value_Hz_1;
						
				//uiAdc8320Value_Hz= myFloorRound(uiAdc8320Value_Hz);		
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			
					
					init_ext_ad();
				//do{
				
					// read data
				
					SET_Gain(6);
					delay_time(50000);
					delay_time(50000);
					typeS_uiAdc8320Value = 0;
				  GPIO_SET_OUT_DATA (P0,0x99);
				  delay_time(50000);
					for (i=0;i<50;i++)
					{
						typeS_uiAdc8320Value += read_ext_adc();
					}
					typeS_uiAdc8320Value /= 50;
					//
					
					
					if(uiAdc8320Value_Hz>0&&(while_counter>0)){
				gain_uiAdc8320Value = (50000500)/uiAdc8320Value_Hz;
						/*if(abs(gain_uiAdc8320Value-previous_data)>previous_data*0.004)
				{
						gain_uiAdc8320Value=gain_uiAdc8320Value;
				}
				else
				{
						gain_uiAdc8320Value =previous_data+ ((previous_data-gain_uiAdc8320Value)*0.01);
				}
					previous_data	=gain_uiAdc8320Value ;	*/
				time_ms = 1/gain_uiAdc8320Value*1000000;
				
				gain_uiAdc8320Value_stain_e=(gain_uiAdc8320Value);	
				stain_e =  gain_uiAdc8320Value_stain_e*gain_uiAdc8320Value_stain_e*0.001*strain_coeffic;
						
																	}
					
					gucGainTableIndex=1;
				typeS_uiAdc8320Value/=gfloatGainTable[gucGainTableIndex];
				typeSgain_uiAdc8320Value = (float)typeS_uiAdc8320Value/65535*5;
				if(gain_uiAdc8320Value>0)Hz_data=gain_uiAdc8320Value;
					else{Hz_data=0;}
					//}while(iFlag);
				if(gain_uiAdc8320Value>9999)gain_uiAdc8320Value =9999;
					//if(stain_e>9999)stain_e =9999;
					if(time_ms>9999)time_ms =9999;
				Hz_thou=gain_uiAdc8320Value/1000;	
				Hz_hun = (gain_uiAdc8320Value-(Hz_thou*1000))/100;
				Hz_tens = (gain_uiAdc8320Value-(Hz_thou*1000)-(Hz_hun*100))/10;
				Hz_ones = (gain_uiAdc8320Value-(Hz_thou*1000)-(Hz_hun*100)-(Hz_tens*10));
				Hz_pointone= ((gain_uiAdc8320Value-(Hz_thou*1000)-(Hz_hun*100)-(Hz_tens*10)-Hz_ones)/0.1);
				if(stain_e<10000){
				uE_thou = stain_e/1000;
				uE_hun = (stain_e-(uE_thou*1000))/100;
				uE_tens =	(stain_e-(uE_thou*1000)-(uE_hun*100))/10;
				uE_ones =	(stain_e-(uE_thou*1000)-(uE_hun*100)-(uE_tens*10));
				uE_pointone= ((stain_e-(uE_thou*1000)-(uE_hun*100)-(uE_tens*10)-uE_ones)/0.1);
						}
					else{
						uE_thou = stain_e/10000;
				uE_hun = (stain_e-(uE_thou*10000))/1000;
				uE_tens =	(stain_e-(uE_thou*10000)-(uE_hun*1000))/100;
				uE_ones =	(stain_e-(uE_thou*10000)-(uE_hun*1000)-(uE_tens*100));
				uE_pointone= ((stain_e-(uE_thou*10000)-(uE_hun*1000)-(uE_tens*100)-uE_ones)/1);
					
					}
				mS_thou = time_ms/1000;
				mS_hun = (time_ms-(mS_thou*1000))/100;
				mS_tens = (time_ms-(mS_thou*1000)-(mS_hun*100))/10;
				mS_ones =	(time_ms-(mS_thou*1000)-(mS_hun*100)-(mS_tens*10));
				mS_pointone= ((time_ms-(mS_thou*1000)-(mS_hun*100)-(mS_tens*10)-mS_ones)/0.1);
				if(select_command_success==1)display_select(interrupt_right);
				
				//PutString(30,1,"Tem:");
				Temper = (120 -196.12 * typeSgain_uiAdc8320Value +214.51 * typeSgain_uiAdc8320Value*typeSgain_uiAdc8320Value -151.07 * typeSgain_uiAdc8320Value * typeSgain_uiAdc8320Value * typeSgain_uiAdc8320Value +55.748 * typeSgain_uiAdc8320Value *typeSgain_uiAdc8320Value *typeSgain_uiAdc8320Value *typeSgain_uiAdc8320Value -8.5429 * typeSgain_uiAdc8320Value *typeSgain_uiAdc8320Value*typeSgain_uiAdc8320Value*typeSgain_uiAdc8320Value*typeSgain_uiAdc8320Value);
				
				Temper_tens = Temper/10;
				Temper_ones = (Temper-(Temper_tens*10))/1;
				Temper_point = (Temper-(Temper_tens*10)-Temper_ones)/0.1;
				if(select_command_success==1)Temper_dis();
				if(select_command_success==1)bat_dis();
				//ShowChar(70,1,Temper,1);
				
				//PutString(100,1,"'C");
				typeSgain_uiAdc8320Value=0;
				gain_uiAdc8320Value=0;
			  
				WriteData(0xf8,0x90,0x00);
			delay_time(800);
				WriteData(0xfa,0xb0,0x90);
			delay_time(800);
				WriteData(0xfa,0xa0,0x00);
			delay_time(800);
			select_freq_range2 = FMC_Read(u32Addr);
			if(select_freq_range!=select_freq_range2)
			{
				FMC->ISPCON |= FMC_ISPCON_ISPEN_Msk;
			  FMC_Erase(u32Addr);
				FMC_Write(u32Addr, select_freq_range);
				FMC->ISPCON &= ~FMC_ISPCON_ISPEN_Msk;
			}
			
    /* Write Demo */
   // u32Data = 0x12345678;
				
   // FMC_Write(u32Addr, u32Data);
	
			
			//SYS_LockReg();
	
			// measure DC & AC
			}else if((select_type =='D')||(select_type =='A')||(select_type =='C'))
			{

			/* Initial ADC8320 */
				
				if(select_type =='A')
					{
						if(gucOutputVoltagePeak==0x66)
							{
								AdcSingleModeTest();
								delay_time(8000000);//2500000
								init_ext_ad();
								gucGainTableIndex=0;
								if(while_counter>1)
									{
										uiAdc8320Value_ff=uiAdc8320Value_f;
										uiAdc8320Value_f =uiAdc8320Value_ac;
										stri_counter=100;//times
										}else{
													uiAdc8320Value_f=0xffff;
													stri_counter=100;
													}
								if(AC_counter>5)AC_counter=1;
								uiAdc8320Value_ac=0;
								}else{
											AdcSingleModeTest();
											for (i=0;i<500;i++)
											{
												uiAdc8320Value += read_ext_adc();
											}
											uiAdc8320Value =uiAdc8320Value/500;
											uiAdc8320Value_ff=uiAdc8320Value;
										}
					}
							
					
					
				
				else if(select_type =='D')
				{
					
					init_ext_ad();
				//do{
					
					// read data
					
					SET_Gain(0);
					//AdcSingleModeTest();
					delay_time(5000000);
					
					uiAdc8320Value = 0;
					for (i=0;i<5000;i++)
					{
						uiAdc8320Value += read_ext_adc();
					}
					uiAdc8320Value_f =uiAdc8320Value/5000.0;
					//
					//uiAdc8320Value_f=uiAdc8320Value;
					delay_time(5000000);
					}
				  else
						{
							init_ext_ad();
				//do{
					
					// read data
					
					SET_Gain(4);
					AdcSingleModeTest();
					delay_time(10000000);
					
					for (i=0;i<500;i++)
					{
						uiAdc8320Value += read_ext_adc();
					}
					uiAdc8320Value =uiAdc8320Value/500;
					//
					uiAdc8320Value_f=uiAdc8320Value;

					
						

					}
						
			
											
					gain_uiAdc8320Value = uiAdc8320Value_f;
				  //gucGainTableIndex=0;
					gain_uiAdc8320Value=gain_uiAdc8320Value*3;
					gain_uiAdc8320Value/=65535;
				  gain_uiAdc8320Value=gain_uiAdc8320Value*5.0;
					uiAdc8320Value_ff=uiAdc8320Value_ff*3;
					uiAdc8320Value_ff/=65535;
					uiAdc8320Value_ff=uiAdc8320Value_ff*5;
					//PutString(20,26,select_type);
					
					if(select_command_success==1)electronic(select_type,gucOutputVoltagePeak);
					
					//electronic
					
					if(select_type=='D'){	
																				 if(gucOutputVoltagePeak==0x4E){gucOutputVoltage=5.1;gain_uiAdc8320Value=(gain_uiAdc8320Value);}//5
																		else if(gucOutputVoltagePeak==0x66){gucOutputVoltage=2.6;gain_uiAdc8320Value=(gain_uiAdc8320Value);}//2.5
																		else if(gucOutputVoltagePeak==0x09){gucOutputVoltage=12.1;gain_uiAdc8320Value=(gain_uiAdc8320Value);}//12
															//160014 not need
															//gain_uiAdc8320Value= ((-0.00006864436*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.004692*gain_uiAdc8320Value)-0.009599209);
															//160011			
															//gain_uiAdc8320Value= ((0.0002927496*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.012901*gain_uiAdc8320Value)+0.09135233);
															//160009
															//gain_uiAdc8320Value= ((-0.0005498463*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9997378*gain_uiAdc8320Value)-0.01367299);
															//standard			
															//gain_uiAdc8320Value= ((-0.00007896244*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9902142*gain_uiAdc8320Value)+0.01719607);
															//160013
															//gain_uiAdc8320Value= ((-0.00006932929*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9848629*gain_uiAdc8320Value)+0.01538101);
															//160002
															//gain_uiAdc8320Value= ((-0.0001306156*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.003918*gain_uiAdc8320Value)+0.0150979);
															//160004	
															//gain_uiAdc8320Value= ((-0.0001334934*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9978798*gain_uiAdc8320Value)+0.01526765);
															//160006		
															//gain_uiAdc8320Value= ((-0.0001519192*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9973665*gain_uiAdc8320Value)+0.01361118);
															//160007		
															//gain_uiAdc8320Value= ((-0.0002217414*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.019821*gain_uiAdc8320Value)+0.1089899);
															//160008		
															//gain_uiAdc8320Value= ((-0.0005249404*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9994535*gain_uiAdc8320Value)-0.01267838);
															//standard		
															//gain_uiAdc8320Value= ((-0.00009845729*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.000551*gain_uiAdc8320Value)+0.0003848692);
															//160005
															//gain_uiAdc8320Value= ((-0.00009845729*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.001206*gain_uiAdc8320Value)-0.005016966);
															//160015
															//gain_uiAdc8320Value = gain_uiAdc8320Value/3;
															//170007
															//gain_uiAdc8320Value= ((0.000138678*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.009326962*gain_uiAdc8320Value)+0.003530372);
															//170008
															gain_uiAdc8320Value= ((0.000039012*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.007735744*gain_uiAdc8320Value)+0.001599033);
															//170009
															//gain_uiAdc8320Value= ((0.000009434*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.008567621*gain_uiAdc8320Value)+0.002720516);
															dig_thou = gain_uiAdc8320Value/10;
															dig_hun  = (gain_uiAdc8320Value-(dig_thou*10))/1;
															dig_tens = (gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1))/0.1;
															dig_ones =	(gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1)-(dig_tens*0.1))/0.01;
															dig_zeros =	(gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1)-(dig_tens*0.1)-(dig_ones*0.01))/0.001;
															dig_pointzeros =	(gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1)-(dig_tens*0.1)-(dig_ones*0.01)-(dig_zeros*0.001))/0.0001;
															dig_pointones		=	(gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1)-(dig_tens*0.1)-(dig_ones*0.01)-(dig_zeros*0.001)-(dig_pointzeros*0.0001))/0.00001;
															if(select_command_success==1)display_dig();
															if(select_command_success==1)bat_dis();			}
					else if(select_type=='C'){	
																				  if(gucOutputVoltagePeak==0x09){
																					gucOutputVoltage=12.1;
																					//gain_uiAdc8320Value =	current_total;
																					//gain_uiAdc8320Value=(gain_uiAdc8320Value-0.0072);
																						if(gain_uiAdc8320Value<0)gain_uiAdc8320Value=0;
																					
																					
																					//gain_uiAdc8320Value= ((-0.001045401*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9736732*gain_uiAdc8320Value)+0.01517195);
																					//160002
																					//gain_uiAdc8320Value= ((-0.001265492*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9878957*gain_uiAdc8320Value)+0.0160207);
																					//160006
																					//gain_uiAdc8320Value= ((-0.001218311*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9784092*gain_uiAdc8320Value)+0.01577163);
																					//160007
																					//gain_uiAdc8320Value= ((-0.001241563*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9819764*gain_uiAdc8320Value)+0.01710771);
																					//160008
																				//	gain_uiAdc8320Value= ((-0.0004412532*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9756090*gain_uiAdc8320Value)+0.01601476);
																					//160009
																					//gain_uiAdc8320Value= ((-0.001783409 *gain_uiAdc8320Value*gain_uiAdc8320Value)+( 0.9888915*gain_uiAdc8320Value)-0.009270507);
																					//160011
																					//gain_uiAdc8320Value= ((-0.001248920*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9893375*gain_uiAdc8320Value)-0.1592045);
																					//160012
																					//gain_uiAdc8320Value= ((-0.0005790417*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.97279*gain_uiAdc8320Value)+0.01644774);
																					//160013
																					//gain_uiAdc8320Value= ((-0.01810764*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.003601*gain_uiAdc8320Value)-0.02494263);
																					//standard							
																					//gain_uiAdc8320Value= ((-0.001138165*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9854429*gain_uiAdc8320Value)-0.003334068);
																					//160014
																					//gain_uiAdc8320Value= ((-0.001512606*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.988617*gain_uiAdc8320Value)-0.0003123423);
																					//160005
																					//gain_uiAdc8320Value= ((-0.002008172*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9928851*gain_uiAdc8320Value)+0.01619445);
																					//160004
																					//gain_uiAdc8320Value= ((-0.001152916*gain_uiAdc8320Value*gain_uiAdc8320Value)+(0.9871542*gain_uiAdc8320Value)-0.005480876);
																					//160015
																					}
																		
															//gain_uiAdc8320Value = gain_uiAdc8320Value/3;
															dig3_hun = gain_uiAdc8320Value/10;
															if(gain_uiAdc8320Value>=10)	gain_uiAdc8320Value = gain_uiAdc8320Value-(dig3_hun*10);						
															dig3_ten = gain_uiAdc8320Value/1;
															dig3_one  = (gain_uiAdc8320Value-(dig3_ten))/0.1;
															dig3_pointone = (gain_uiAdc8320Value-(dig3_ten)-(dig3_one*0.1))/0.01;
															dig3_pointtwo =	(gain_uiAdc8320Value-(dig3_ten)-(dig3_one*0.1)-(dig3_pointone*0.01))/0.001;
															dig3_pointthree =	(gain_uiAdc8320Value-(dig3_ten)-(dig3_one*0.1)-(dig3_pointone*0.01)-(dig3_pointtwo*0.001))/0.0001;
															if(select_command_success==1)display_dig3();
															if(select_command_success==1)bat_dis();			}
					else if (select_type=='A'){
						
																		     if(gucOutputVoltagePeak==0x4E){gain_uiAdc8320Value=gain_uiAdc8320Value;}
																		else if(gucOutputVoltagePeak==0x66){gain_uiAdc8320Value=gain_uiAdc8320Value/2.5*10;}
																		else if(gucOutputVoltagePeak==0x09){gain_uiAdc8320Value=gain_uiAdc8320Value;}
																		if(gucOutputVoltagePeak==0x66){if(gain_uiAdc8320Value>=10){gain_uiAdc8320Value=9.99999;}}
																if(gucOutputVoltagePeak==0x66)
																		{
																		dig2_hunthou = gain_uiAdc8320Value/1;
																		dig2_tenthou = (gain_uiAdc8320Value-(dig2_hunthou*1))/0.1;
																		dig2_thou = (gain_uiAdc8320Value-(dig2_hunthou*1)-(dig2_tenthou*0.1))/0.01;
																		dig2_hun  = (gain_uiAdc8320Value-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01))/0.001;
																		dig2_tens = (gain_uiAdc8320Value-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01)-(dig2_hun*0.001))/0.0001;
																		dig2_ones =	(gain_uiAdc8320Value-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01)-(dig2_hun*0.001)-(dig2_tens*0.0001))/0.00001;
																		if(select_command_success==1)display_dig2();
																			if(select_command_success==1)bat_dis();}
																		
																else{
																	dig2_thouthou=uiAdc8320Value_ff/10;
																	dig2_hunthou = (uiAdc8320Value_ff-dig2_thouthou*10)/1;
																		dig2_tenthou = (uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1))/0.1;
																		dig2_thou = (uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1)-(dig2_tenthou*0.1))/0.01;
																		dig2_hun  = (uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01))/0.001;
																		dig2_tens = (uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01)-(dig2_hun*0.001))/0.0001;
																		dig2_ones =	(uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01)-(dig2_hun*0.001)-(dig2_tens*0.0001))/0.00001;
																		if(select_command_success==1)display_dig2();
																			if(select_command_success==1)bat_dis();}
																			}
					//LTC2328_Ini();
																			

					gain_uiAdc8320Value=0;
					
			}
			
			
	}
	//SYS_UnlockReg();
	 
   
				RESET_Gain();
			// turn off analog power
			
			ANALOG_POWERMOS_PIN =1;
			// add to avoid leakage current to analog power	
			
			// stop timer
			ADC_Close(ADC);
			TIMER_Stop(TIMER0);
			u32iOutputVoltage=0x80;
			GPIO_SET_OUT_DATA (P0,u32iOutputVoltage);
			uiAdc8320Value_f=0;
			uiAdc8320Value_f_offset=0;
		uiAdc8320Value=0;
		current_count=0;
		current_total=0;
	}
	
}

/*** (C) COPYRIGHT 2015 Nuvoton Technology Corp.Chien Cheng Che ***/
