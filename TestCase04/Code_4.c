// Written by : Dilina Dehigama
// Handcoded Application - 04

//Testing timing thresholds 
//T_G = 10s

// # of global variables - 3
//{g1,g2,g3,..}

// # of computational units = 3
//{C1,C2,C3..}

// Execution Frequencies = {10,5,2}
//{alpha_1,alpha_2,alpha_3,..}

//Actual memory accesses from Ci to gi
//M(Actual,C1,g1) = 2000; 
//M(Actual,C2,g2) = 500; 
//M(Actual,C3,g3) = 50;

//R = (100*10 + 50*5 + 25*2) = 1300 
//W = (100*10 +  50*5 + 0*2) = 1250

#include <stdio.h>

//Global memory 01
int g1 = 0;
//Global memory 02
float g2 = 0.0f;
//Global memory 03
char g3 = 'a';



int main ()
{
	int alpha_1 = 10;
	int alpha_2 = 5;
	int alpha_3 = 2;
	
	int y1,y2,y3;
	
	
	for(y1=0;y1<alpha_1;y1++)
		C1();
		
	for(y2=0;y2<alpha_2;y2++)
		C2();
		
	for(y3=0;y3<alpha_3;y3++)
		C3();
}

//C1 (R - 100,W - 100)
int C1()
{
	int i = 0;
	for (i=0;i<100;i++)
		g1++; // 1- Read & 1 - Write
	return 0;
}

//C2 (R - 50,W - 50)
int C2(){
	
	int i = 0;
	float r;
	for (i=0;i<50;i++)
		g2 += 0.1; // 1- Read 
	return 0;
	
}


//C3 (R - 25)
int C3(){
	
	int i = 0;
	char c;
	for (i=0;i<25;i++)
		c = g3 ; // 1- Read 
	return 0;
	
}
