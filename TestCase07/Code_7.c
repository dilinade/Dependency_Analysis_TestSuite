// Written by : Dilina Dehigama
// Handcoded Application - 07

//Testing timing thresholds 
//T_L = 3s

// # of global variables - 
//{g1,g2,g3,..}

// # of local variables - 
//{l1,l2,l3,..}

// # of computational units = 1
//{C1,C2,C3..}


//Actual memory accesses from Ci to li
//M(Actual,C1,l1) = 100; 


//R = 50
//W = 50

#include <stdio.h>


int main ()
{
		C1();//Computational Unit 01
		return 0;
		
}


int C1()
{
	//l1 (R - 50,W - 50)
	int l1= 0;
	int i = 0;
	for (i=0;i<50;i++)
		l1++; // 1- Read & 1 - Write
	return 0;
}

