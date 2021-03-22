// Written by : Dilina Dehigama
// Handcoded Application - 10
// Memory intensive test

//Testing timing thresholds 
//T_L = 500s

// # of global variables - 0
//{g1,g2,g3,..}

// # of local variables - 2 (iteration variable ignored)
//{l1,l2,l3,..}

// # of computational units = 2
//{C1,C2,C3..}


//Actual memory accesses from Ci to li
//M(Actual,C1,l1) = 500000; 
//M(Actual,C2,l2) = 100000; 



#include <stdio.h>


int main ()
{
		C1();//Computational Unit 01
		C2();//Computational Unit 01
		
		return 0;
		
}


int C1()
{

	//l1 (R - 500000)
	int l1 = 0;
	
	int i,temp;
	
	for (i=0;i<500000;i++)
		temp=l1; // 1- Read
		
	return 0;
}


int C2()
{

	//l1 (R - 50000,W-50000)
	int l2 = 0;
	
	int y;
	
	for (y=0;y<50000;y++)
		l2++; // 1- Read & 1 - Write
		
	return 0;
}
