#include<stdio.h>

int arr[10];
int top =-1;
int size;

void print(void);
void pop(void);
void push(void);

int main(){

	printf("Enter the size of the array\n");
	scanf("%i",&size);
	
	while(1){
		
		int choice;
		printf("1.PUSH\n2.POP\n3.PRINT\n");
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
			default:
				printf("Enter a valid choice\n");
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
