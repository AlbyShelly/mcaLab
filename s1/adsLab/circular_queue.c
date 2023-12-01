#include<stdio.h>

int queue[100];
int front =-1;
int rear = -1;

int size = 0;

void enqueue(void);
void dequeue(void);
void traverse(void);
int main(){

	//get user input
	printf("Enter the size of the queue: ");
	scanf("%i",&size);	

	
	

	//insert element
	
	int ch = 0;

	while(1){
		printf("\n");
		printf("Enter 1 for insertion\nEnter 2 for deletion\nEnter 3 for traversal\n");
		scanf("%i",&ch);

		switch(ch){

			case 1:

				enqueue();
				break;
			case 2:
				dequeue();
				break;
			case 3: 

				traverse();
				break;
			default:

				printf("Enter a valid option");
		}
		printf("\n");
	}	

}


void enqueue(void){


	if(front == -1 && rear == -1){

		front = 0;
		rear =0;
	}



	printf("Enter the element to be inserted: ");
	int element;
	scanf("%i",&element);
	queue[rear] = element;
	
	rear = (rear+1)%size;
	
}

void dequeue(){

	front = front +1;

}

void traverse(){

	printf("\n");

	

	for (int i =front; i<rear; i++){

		printf("%i\t",queue[i]);

	}

	if(rear < front){

		for (int i = 0 ; i<rear; i++){

			printf("%i\t",queue[i]);

		}

	}	
	printf("\n");
}
