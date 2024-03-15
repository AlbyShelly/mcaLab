#include<stdio.h>
#include<stdlib.h>

int arr[10];
int front=-1;
int rear =-1;
int size;

void insert(void);
void delete(void);
void display(void);
void search(void);

int main (){

	printf("Enter your size: \n");
	scanf("%i",&size);

	while(1){
		printf("1 for insertion\n2 for deletion\n3 for traversal\n4 for search\n5 to exit\n");
		int ch;
		scanf("%i",&ch);

		switch(ch){
			case 1:
				insert();
				break;
			case 2:
				delete();
				break;
			case 3:
				display();
				break;
			case 4:
				search();
				break;
			case 5: 
				exit(0);
				break;
			default:
				printf("Enter a valid choice\n");

		}
	}
}

void insert(void){
	int s = (size-front+rear)%size;	
	if(size==s+1){
		printf("Queue is full\n");
	}else{
		if(front==-1){
			front=0;
		}
		rear = (rear+1)%size;
		printf("Enter the element: ");
		int x;
		scanf("%i",&x);
		arr[rear]=x;
	}
}

void delete(void){
	if(front ==-1){
		printf("Queue if empty\n");
	}else if(rear == front){
		front=rear=-1;	
	}else{
		front = (front+1)%size;
	}
}

void display(){
	if(front== -1){
		printf("Queue is empty\n");
	}else{
		if(front <= rear){
			for(int i = front; i<= rear;i++){
				printf("\n%i",arr[i]);
			}
			printf("\n");
		}else{
			for(int i = front;i<size;i++){
				printf("\n%i",arr[i]);
			}
			for(int i = 0; i<=rear;i++){
				printf("\n%i",arr[i]);
			}
			printf("\n");
		}
	}
}

void search(){
	
	if(front == -1){
		printf("The queue is empty\n");
		return;
	}
	printf("Enter your element to search: ");
	int ele;
	scanf("%i",&ele);
	if(front <= rear){

		for(int i =front; i<= rear;i++){
			if(arr[i] == ele){
				printf("The element is found at position %i\n",i);
				return;
			}
		}
	}else if(rear < front){

		for(int i = front; i< size; i++){
			if(arr[i] == ele){
				printf("The element is found at position %i\n",i);
				return;
			}
		}

		for (int i = 0; i<= rear;i++){
			if(arr[i] == ele){
				printf("The element is found at position %i\n",i);
				return;
			}
		}
	}

	printf("Element not found\n");
}



