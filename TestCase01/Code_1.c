// Written by : Dilina Dehigama
// Handcoded Application - 01

//Testing timing thresholds 
//T_G = 1s

// # of global variables - 1
//{g1,g2,g3,..}

// # of computational units = 1
//{C1,C2,C3..}

// Execution Frequencies = {1}
//{alpha_1,alpha_2,alpha_3,..}

//Actual memory accesses from Ci to gi
//M(Actual,C1,g1) = 100;


//R = (100*1) = 100 
//W = (  0*5) = 0

#include <stdio.h>


int g1 = 0;
//Global memory 01


int main ()
{
	int alpha_1 = 1;
	int y1;
	
	for(y1 = 0;y1<alpha_1;y1++)
		C1();
}


int C1()
{
	int i = 0;
	int x;
	for (i = 0;i<100;i++)
		x = g1; //R - 1
	return 0;
}
