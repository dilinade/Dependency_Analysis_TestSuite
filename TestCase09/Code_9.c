// Written by : Dilina Dehigama
// Handcoded Application - 09

//Testing timing thresholds 
//T_L = 20s

// # of global variables - 0
//{g1,g2,g3,..}

// # of local variables - 3 (iteration variable ignored)
//{l1,l2,l3,..}

// # of computational units = 3
//{C1,C2,C3..}


//Actual memory accesses from Ci to li
//M(Actual,C1,l1) = 100; 
//M(Actual,C2,l2) = 1000; 
//M(Actual,C3,l3) = 5000;



#include <stdio.h>


int main ()
{
		C1();//Computational Unit 01
		C2();//Computational Unit 02
		C3();//Computational Unit 03
		
		return 0;
		
}


int C1()
{

	//l1 (R - 50,W - 50)
	int l1 = 0;
	
	int i;
	
	for (i=0;i<50;i++)
		l1++; // 1- Read & 1 - Write
		
	return 0;
}

int C2(){
	//l2 (R - 500,W - 500)
	double l2 = 0.000;
	
	int y;
	
	for (y=0;y<500;y++)
		l2 ++; // 1- Read & 1 - Write
		
	return 0;

	
	}


int C3(){
	//l3 (R - 5000)
	char l3 = 'c';
	
	int y;
	char temp;
	
	for (y=0;y<5000;y++)
		temp = l3; // 1- Read
		
	return 0;

	
	}
