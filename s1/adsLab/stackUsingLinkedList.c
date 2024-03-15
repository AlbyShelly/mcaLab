#include<stdio.h>
#include<stdlib.h>


struct node{

	int data;
	struct node *next;

	};

struct node *start;



void push(){

	int x;
	struct node *ptr;

	ptr=malloc(sizeof(struct node));
	if(ptr==NULL){
		printf("Cant push element");

	}else{

		printf("Enter the value");
		scanf("%d",&x);
		
		if(start==NULL){

			ptr->data=x;
			ptr->next=NULL;
			start=ptr;
		}else{

			ptr->data=x;
			ptr->next=start;
			start=ptr;
		}
	}
}

void pop(){

	int x;
	struct node *ptr;
	if (start==NULL){
	 	printf("\n List is empty");
	}else{
		x=start->data;
		ptr=start;
		start=start->next;
		free(ptr);
		printf("Element popped -%d",x);
	}
}

void traverse(){

	struct node *temp;
	if(start==NULL){
		printf("\n List is empty");
	}else{
		temp=start;
		printf("The list is \n");
		while(temp!=NULL){
			printf("%d->",temp->data);
			temp=temp->next;
		}
	}
}

void search(){
	
	int i=1,f=0,x;
	struct node *ptr;
	ptr=start;
	if(ptr==NULL){
		printf("The stack is empty");
	}else{
		printf("\nEnter the elemet:");
		scanf("%d",&x);
		while(ptr!= NULL){
			if(ptr->data==x){
				f=1;
				break;
			}
			i++;
			ptr=ptr->next;
		}
		if(f==0){
			printf("\n Element not found");
		}else{
			printf("\nItem found at position %d",i);
		}
	}
}

void main(){

	int ch=0;
	while(ch!=5){
		printf("\n1:PUSH ");
		printf("2:POP ");
		printf("3:SEARCH ");
		printf("4:TRAVERSE ");
		printf("5:EXIT\n");
		
		scanf("%d",&ch);
		
		switch(ch){
			case 1:
				push();
				break;
			case 2:
				pop();
				break;
			case 3:
				search();
				break;
			case 4:
				traverse();
				break;
			case 5:
				exit(0);
				break;
			default:
				printf("\n Invalid choice");
			}
	}
}
		
		
