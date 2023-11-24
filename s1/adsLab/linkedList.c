#include<stdio.h>
#include<stdlib.h>

struct node{

	int info;
	struct node *link;
};

struct node *start=NULL;

void traverse(){

	struct node *temp;
	if (start==NULL){

		printf("\n The list in empty");
	}else{
		temp=start;
		printf("The list in \n");
		while(temp!=NULL){
			printf("%d-->",temp->info);
			temp=temp->link;
		}
	}
}

void insertAtFront(){

	int data;
	struct node *temp;
	temp=malloc(sizeof(struct node));
	printf("\nEnter number to be inserted:");
	scanf("%d",&data);
	temp->link=0;
	temp->info=data;
	head=start;
	while(head->link!=NULL){
		head=head->link;
	}
	head->head=link;
	
}


