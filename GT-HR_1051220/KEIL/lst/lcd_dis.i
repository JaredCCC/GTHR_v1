#line 1 "..\\..\\Library\\StdDriver\\src\\LCD_Dis.c"












#line 1 "..\\..\\Library\\StdDriver\\inc\\LCD_Config.h"


#line 1 "..\\..\\Library\\StdDriver\\inc\\gpio.h"
 









 











 



 



 


 
 
 





 
 
 






 
 
 



 
 
 






#line 82 "..\\..\\Library\\StdDriver\\inc\\gpio.h"














 
#line 138 "..\\..\\Library\\StdDriver\\inc\\gpio.h"
   




 











 












 











 












 












 












 












 













 



















 










 











 










 













 












 














 












 



void GPIO_SetMode(GPIO_T *port, uint32_t u32PinMask, uint32_t u32Mode);
void GPIO_EnableInt(GPIO_T *port, uint32_t u32Pin, uint32_t u32IntAttribs);
void GPIO_DisableInt(GPIO_T *port, uint32_t u32Pin);


   

   

   







 
#line 4 "..\\..\\Library\\StdDriver\\inc\\LCD_Config.h"





#line 14 "..\\..\\Library\\StdDriver\\src\\LCD_Dis.c"


unsigned char X_Witch=6;
unsigned char Y_Witch=10;
unsigned char X_Witch_cn=16;
unsigned char Y_Witch_cn=16;
unsigned char Dis_Zero=0;









void TimeDelay(unsigned int Timers)
{
	unsigned int i;
	while(Timers)
	{
		Timers--;
		for(i=0;i<100;i++) ;
	}
}
void LCD_Init(void)
{
	
	SPI_SCK = 1;
	SPI_CS = 1;
	
	
	SPI_RES = 0;
	TimeDelay(50);			
	
	SPI_RES = 1;
	TimeDelay(80);				    	
}








void SPI_SSSet(unsigned char Status)
{
	if(Status)				
		SPI_CS = 1;
	else   
		SPI_CS = 0;
}









void SPI_Send(unsigned char Data)
{
	unsigned char i=0;
	for(i=0;i<8;i++)
	{
		
		SPI_SCK = 0;
		if(Data&0x0080)
			SPI_SDA = 1;			
		else SPI_SDA = 0;
		
		SPI_SCK = 1;
		Data = Data<<1;							
	}
}










void FontSet(unsigned char Font_NUM,unsigned char Color)
{
	unsigned char ucTemp=0;
	if(Font_NUM==0)
	{
		X_Witch = 6;
		Y_Witch = 10;
	}
	else
	{
		X_Witch = 8;
		Y_Witch = 16;
	}
	ucTemp = (Font_NUM<<4)|Color;
	
	SPI_SSSet(0);					
	SPI_Send(0x81);					
	SPI_Send(ucTemp);				
	SPI_SSSet(1);					
}










void FontMode(unsigned char Cover,unsigned char Color)
{
	unsigned char ucTemp=0;
	ucTemp = (Cover<<4)|Color;
	
	SPI_SSSet(0);					
	SPI_Send(0x89);					
	SPI_Send(ucTemp);				
	SPI_SSSet(1);					
}










void FontSet_cn(unsigned char Font_NUM,unsigned char Color)
{
	unsigned char ucTemp=0;
	if(Font_NUM==0)
	{
		X_Witch_cn = 12;
		Y_Witch_cn = 12;
	}
	else
	{
		X_Witch_cn = 16;
		Y_Witch_cn = 16;
	}
	ucTemp = (Font_NUM<<4)|Color;
	
	SPI_SSSet(0);					
	SPI_Send(0x82);					
	SPI_Send(ucTemp);				
	SPI_SSSet(1);					
}










void PutChar(unsigned char x,unsigned char y,unsigned char a) 
{
	
	SPI_SSSet(0);					
	SPI_Send(7);					
	SPI_Send(x);					
	SPI_Send(y);					
	SPI_Send(a);					
	SPI_SSSet(1);					
}










void PutString(unsigned char x,unsigned char y,unsigned char *p)
{
	while(*p!=0)
	{
		PutChar(x,y,*p);
		x += X_Witch;
		if((x + X_Witch) > 128-1)
		{
			x = Dis_Zero;
			if((64-1 - y) < Y_Witch) break;
			else y += Y_Witch;
		}
		p++;
	}
}











void PutChar_cn(unsigned char x,unsigned char y,unsigned char * GB) 
{
	
	SPI_SSSet(0);					
	SPI_Send(8);					
	SPI_Send(x);					
	SPI_Send(y);					
	
	SPI_Send(*(GB++));	
	SPI_Send(*GB);		
	SPI_SSSet(1);					
}











void PutString_cn(unsigned char x,unsigned char y,unsigned char *p)
{
	while(*p!=0)
	{
		if(*p<128)
		{
			PutChar(x,y,*p);
			x += X_Witch+1;
		if((x ) > 128-1)
		{
			x = Dis_Zero;
			if((64-1 - y) < Y_Witch) break;
			else y += Y_Witch_cn;
		}
		p+=1;
		}
		else
		{
		PutChar_cn(x,y,p);
		x += X_Witch_cn+1;
		if((x ) > 128-1)
		{
			x = Dis_Zero;
			if((64-1 - y) < Y_Witch_cn) break;
			else y += Y_Witch_cn;
		}
		p+=2;
		}
	}
}









void SetPaintMode(unsigned char Mode,unsigned char Color)
{
	unsigned char ucTemp=0;
	ucTemp = (Mode<<4)|Color;
	
	SPI_SSSet(0);					
	SPI_Send(0x83);					
	SPI_Send(ucTemp);				
	SPI_SSSet(1);					
}









void PutPixel(unsigned char x,unsigned char y)
{
	
	SPI_SSSet(0);					
	SPI_Send(1);					
	SPI_Send(x);					
	SPI_Send(y);					
	SPI_SSSet(1);					
}










void Line(unsigned char s_x,unsigned char  s_y,unsigned char  e_x,unsigned char  e_y)
{  
	
	SPI_SSSet(0);					
	SPI_Send(2);					
	SPI_Send(s_x);					
	SPI_Send(s_y);					
	SPI_Send(e_x);					
	SPI_Send(e_y);					
	SPI_SSSet(1);					
}










void Circle(unsigned char x,unsigned char y,unsigned char r,unsigned char mode)
{
	SPI_SSSet(0);
	if(mode)
		SPI_Send(6);
	else
		SPI_Send(5);
	SPI_Send(x);
	SPI_Send(y);
	SPI_Send(r);
	SPI_SSSet(1);
}
















void Rectangle(unsigned char left, unsigned char top, unsigned char right,
				 unsigned char bottom, unsigned char mode)
{
	SPI_SSSet(0);
	if(mode)
		SPI_Send(4);
	else
		SPI_Send(3);
	SPI_Send(left);
	SPI_Send(top);
	SPI_Send(right);
	SPI_Send(bottom);
	SPI_SSSet(1);
}









void ClrScreen(void)
{
	
	SPI_SSSet(0);					
	SPI_Send(0x80);					
	SPI_SSSet(1);					
}













void PutBitmap(unsigned char x,unsigned char y,unsigned char width,unsigned char high,unsigned char *p)
{
	unsigned short Dat_Num;
	
	unsigned char ucTemp=0;
	SPI_SSSet(0);					
	SPI_Send(0x0e);	
	SPI_Send(x);
	SPI_Send(y);
	SPI_Send(width);
	SPI_Send(high);
	
	width = width+0x07;
	Dat_Num = (width>>3)*high;
	while(Dat_Num--)
	{
	  	ucTemp++;
		SPI_Send(*p);
		if(ucTemp>250)				
		{
			TimeDelay(28);			
			ucTemp = 0;
		}
		p++;
	}
	SPI_SSSet(1);					
}










void ShowChar(unsigned char x,unsigned char y,unsigned char a,unsigned char type) 
{
	
	SPI_SSSet(0);					
	SPI_Send(11);					
	SPI_Send(x);					
	SPI_Send(y);					
	SPI_Send(a);					
	SPI_Send(type);
	SPI_SSSet(1);					
}









void ShowShort(unsigned char x,unsigned char y,unsigned short a,unsigned char type) 
{
	
	SPI_SSSet(0);					
	SPI_Send(12);					
	SPI_Send(x);					
	SPI_Send(y);					
	SPI_Send((unsigned char)(a>>8));
	SPI_Send((unsigned char)a);
	SPI_Send(type);					
	SPI_SSSet(1);					
}









void SetBackLight(unsigned char Deg) 
{
	
	SPI_SSSet(0);					
	SPI_Send(0x8a);					
	SPI_Send(Deg);					
	SPI_SSSet(1);					
}


