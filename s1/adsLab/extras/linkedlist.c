#include<stdio.h>
#include<stdlib.h>

typedef struct lin{

	int data;
	struct lin *next;
} ll;

ll *HEAD;

void insertatend(){

	printf("Enter your data\n");
	int data;
	scanf("%i",data);
		

void traverse(void){

	ll *temp =HEAD;

	while(temp!=NULL){

		printf("data: %i\n",temp->data);
		temp=temp->next;
	}
}

int main(){

	printf("Insert at begining\n");
	int dat;
	scanf("%i",&dat);
	HEAD=malloc(sizeof(ll));
	HEAD->data = dat;
	HEAD->next= NULL;
	traverse();
}




