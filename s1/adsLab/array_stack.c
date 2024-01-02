#include<stdio.h>
#include<stdlib.h>

int arr[10];
int top =-1;
int size;

void print(void);
void pop(void);
void push(void);
void search(void);

int main(){

	printf("Enter the size of the array\n");
	scanf("%i",&size);
	
	while(1){
		
		int choice;
		printf("1.PUSH\n2.POP\n3.PRINT\n4.SEARCH\n5.EXIT\n");
		printf("Enter your choice: ");
		scanf("%i",&choice);
		
		switch(choice){

			case 1:
				push();
				break;
			case 2:
				pop();
				break;
			case 3:
				print();
				break;
			case 4:
				search();
				break;
			case 5:
				exit(0);
				break;
		}

	}

}	

void push(void){
	
	if(top<size-1){
		top++;
		printf("Enter your element: ");
		scanf("%i",&arr[top]);
	}else{
		printf("Stack overflow\n");
	}
}

void pop(void){

	if(top>=0){
		top--;
	}else{
		printf("Stack underflow\n");
	}
}

void print(void){

	if(top>=0){
		for(int i=0;i<=top;i++){
			printf("%i\n",arr[i]);
		}
	}else{
		printf("Stack empty\n");
	}
	printf("top: %i\n",top);
}

void search(void){

	if(top == -1){
		printf("The stack is empty\n");
		return;

	}
	int element;
	printf("Enter your element: ");
	scanf("%i",&element);
	for(int i =0; i <= top; i++){
		if(arr[i] == element){
			printf("Element found at index %i \n",i);
			return;
		}
	}

	printf("Element not found\n");
}
