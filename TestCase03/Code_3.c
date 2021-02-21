// Written by : Dilina Dehigama
// Handcoded Application - 03

//Testing timing thresholds 
//T_G = 5s

// # of global variables - 2
//{g1,g2,g3,..}

// # of computational units = 2
//{C1,C2,C3..}

// Execution Frequencies = {5,5}
//{alpha_1,alpha_2,alpha_3,..}

//Actual memory accesses from Ci to gi
//M(Actual,C1,g1) = 500; 
//M(Actual,C2,g2) = 250; 

//R = (50*5 + 50*5) = 500 
//W = (50*5 +  0*5) = 250

#include <stdio.h>

//Global memory 01
int g1 = 0;
//Global memory 02
float g2 = 0.0f;



int main ()
{
	int alpha_1 = 5;
	int alpha_2 = 5;
	int y1,y2;
	
	
	for(y1=0;y1<alpha_1;y1++)
		C1();
		
	for(y2=0;y2<alpha_2;y2++)
		C2();
}

//C1 (R - 50,W - 50)
int C1()
{
	int i = 0;
	for (i=0;i<50;i++)
		g1++; // 1- Read & 1 - Write
	return 0;
}

//C2 (R - 50)
int C2(){
	
	int i = 0;
	float r;
	for (i=0;i<50;i++)
		r = g2 ; // 1- Read 
	return 0;
	
}
