#include<stdio.h>

int main(){

	int size;

	printf("Enter your array size ");

	scanf("%d",&size);

	int arr[size];

	printf("Enter your elements\n");

	for(int i=0; i<size; i++){

		scanf(" %d",&arr[i]);

	}

	printf("The entered array is : ");

	for(int i=0;i<size;i++){

		printf("%d\t",arr[i]);

	}


	printf("\n");

	//To find the least element

	int least=arr[1],most=arr[1];

	

	for(int i=0; i<size; i++){

		if(arr[i]<least){

			least = arr[i];

			

		}

		if(arr[i]>most){

			most=arr[i];

		}

	}

	printf("The least element is : %d" ,least);

	printf("\nThe largest element is : %d", most); 

	printf("\n");

}
