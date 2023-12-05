#include<stdio.h>
#include<stdlib.h>
#include<stdbool.h>

//Creating datatype linked list

typedef struct node{

	struct node *next;
	int data;
} linked_list;

//Creating a head

linked_list *HEAD;

void insert_at_end(void);
void traverse(void);
void insert_at_begining();
void search();
void delete_at_begining();
void insert_at_position();
int main(){
	
	HEAD = malloc(sizeof(linked_list));
//	printf("HEAD : %i\n",HEAD);
		
	//HEAD->data = 1;
	HEAD->next = NULL;

	//printf("head data: %i\n",HEAD->data);
/*	insert_at_end();
	insert_at_end();
	traverse();
	insert_at_begining();
	traverse();
*/

	while(true){

		printf("1.insert_at_end\n2.traverse\n3.insert_at_begining\n5.serach\n6.delete_at_begining\n7.insert_at_position");

		printf("Enter your choice: ");
		int ch;
		scanf("%i",&ch);

		switch(ch){

			case 1:
				insert_at_end();
				break;
			case 2:
				traverse();
				break;
			case 3:
				insert_at_begining();
				break;

			case 4:
				exit(0);
				break;

			case 5:
				search();
				break;

			case 6:
				delete_at_begining();
				break;

			case 7:
				insert_at_position();
				break;
			default:
				printf("Enter a valid choice\n");
		}
	}
			
}

void insert_at_end(void){
	//printf("insertatend has been called\n");
	
	linked_list *temp;
	temp=HEAD;
	while(temp->next!=NULL){

		temp=temp->next;
		//printf("loop runnig\n");
	}

	temp->next=malloc(sizeof(linked_list));
	//printf("data allocation successful\n");
	printf("Enter the data: ");
	int x;
	scanf(" %d",&x);
	temp->next->next = NULL;
	temp->next->data = x;
}

void traverse(void){

	linked_list *temp = HEAD;
	
	while(temp!=NULL){
		
		printf("%i-->",temp->data);
		temp = temp->next;
	}
	printf("\n");
}

void insert_at_begining(void){

	printf("Enter the data\n");
	int x;
	scanf("%i",&x);
	linked_list *temp;
	temp = malloc(sizeof(linked_list));
	
	temp->data = x;
	temp->next=HEAD;
	HEAD=temp;
	//temp->next=HEAD->next;
	//HEAD->next=temp;

}

void search(void){

	int x;
	printf("Enter your element\n");
	scanf("%i",&x);
	linked_list *temp;
	temp=HEAD;
	bool found = false;

	while(temp!=NULL){

		if(x==temp->data){

			found =true;
		}

		temp=temp->next;
	}

	if(found){

		printf("Element is found\n");
	}else{
		printf("Not found\n");
	}
}

void delete_at_begining(){
	
	linked_list *temp;

	temp=HEAD;
	
	HEAD=HEAD->next;

	free(temp);
}

void insert_at_position(){

	printf("Enter your position: ");
	int x;
	scanf("%i",&x);

	int i;
	linked_list *temp, *nextone,*prev;
	
	temp=HEAD;
	while( i<x){

		i++;
		prev=temp;
		nextone=temp->next;
		temp=temp->next;
	}
	
	temp=malloc(sizeof(linked_list));
	int d;
	printf("Enter your data\n");
	scanf("%i",&d);
	temp->data=d;
	temp->next=nextone;

	prev->next=temp;

}
	
		
