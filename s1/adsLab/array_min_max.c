#include<stdio.h>

//Program to find the largest and smallest element in the array
//


void getArray(int arr[], int size);
void printArray(int arr[], int size);
void printSmallest(int arr[], int size);
void printLargest(int arr[], int size);

int main(){
	
	printf("ENter the size of the array\n");
	int size;
	scanf("%i",&size);
	int arr[size];
	getArray(arr, size);
	printArray(arr, size);
	printSmallest(arr, size);
	printLargest(arr, size);
}

void getArray(int arr[], int size){

	printf("Enter the element of the array( %i elements)\n",size);
	for(int i =0;i<size;i++){
		scanf(" %i",&arr[i]);
	}
}

void printArray(int arr[], int size){

	printf("The elements of the array are: ");
	for(int i =0; i< size; i++){
		printf("%i\t ",arr[i]);
	}
	printf("\n");
}


void printSmallest(int arr[], int size){

	int small = arr[0];
	for (int i = 0;i<size;i++){
		if(arr[i]<small){
			small= arr[i];
		}
	}
	printf("The smallest is %i\n",small);
}

void printLargest(int arr[], int size){
	
	int large = arr[0];
	for (int i = 0;i<size;i++){
		if(arr[i]>large){
			large= arr[i];
		}
	}
	printf("The largest is %i\n",large);
}
