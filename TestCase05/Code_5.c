// Written by : Dilina Dehigama
// Handcoded Application - 05

//Testing timing thresholds 
//T_G = 500s

// # of global variables - 
//{g1,g2,g3,..}

// # of computational units = 3
//{C1,C2,C3..}

// Execution Frequencies = {50,20,10}
//{alpha_1,alpha_2,alpha_3,..}

//Actual memory accesses from Ci to gi
//M(Actual,C1,g1) = 100000; 
//M(Actual,C2,g2) =  20000; 
//M(Actual,C3,g3) =   2500;

//R = (1000*50 + 500*20 + 250*10) = 62500 
//W = (1000*50 +  500*20 + 0*10) = 60000

#include <stdio.h>

//Global memory 01
int g1 = 0;
//Global memory 02
float g2 = 0.0f;
//Global memory 03
char g3 = 'a';



int main ()
{
	int alpha_1 = 50;
	int alpha_2 = 20;
	int alpha_3 = 10;
	
	int y1,y2,y3;
	
	
	for(y1=0;y1<alpha_1;y1++)
		C1();
		
	for(y2=0;y2<alpha_2;y2++)
		C2();
		
	for(y3=0;y3<alpha_3;y3++)
		C3();
}

//C1 (R - 1000,W - 1000)
int C1()
{
	int i = 0;
	for (i=0;i<1000;i++)
		g1++; // 1- Read & 1 - Write
	return 0;
}

//C2 (R - 500,W - 500)
int C2(){
	
	int i = 0;
	float r;
	for (i=0;i<500;i++)
		g2 += 0.1; // 1- Read 
	return 0;
	
}


//C3 (R - 250)
int C3(){
	
	int i = 0;
	char c;
	for (i=0;i<250;i++)
		c = g3 ; // 1- Read 
	return 0;
	
}
