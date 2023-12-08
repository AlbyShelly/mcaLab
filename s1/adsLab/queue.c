#include<stdio.h>
#include<stdlib.h>
int a[10],front=-1,rear=-1,n;
void insert();
void display();
void del();
void search();
int main()
{
	int ch;
	printf("Enter the size of the queue:");
	scanf("%d",&n);
	while(1)
	{
		printf("\n\n1.Insertion\n2.Deletion\n3.Display\n4.Search\n5.Exit\n");
		printf("\nEnter Your Choice:\n");
		scanf("%d",&ch);
		switch(ch)
		{
			 case 1:insert();
					break;
			 case 2:del();
					break;
			 case 3:display();
					break;
			 case 4:search();
					break;
			 case 5:exit(0);
			 default:printf("\nInvalid choice\n");
		}
	}
	return 0;
}
void insert()
{
	int x;
	if(rear==n-1)
	{
		printf("Queue is full\n");
	}
	else
	{
		printf("Enter the element to insert:");
		scanf("%d",&x);
		if(front==-1&&rear==-1)
			front=rear=0;
		else
			rear=rear+1;
		a[rear]=x;
	}
}
void display()
{
	int i;
	printf("Front=%d\nRear=%d\n",front,rear);
	if(rear==-1)
		printf("\nQueue is empty");
	else
		printf("Queue is:\n");
		for(i=front;i<=rear;i++)
			printf("%d\t",a[i]);
}
void del()
{
	if(rear==-1)
		printf("\nQueue is Empty\n");
	else
	{
		printf("Deleted element is %d",a[front]);
		front=front+1;
	}
}
void search(){
	int x,i,j;
	int f1=0;
	printf("Enter the element to search:\n");
	scanf("%d",&x);
	if(rear==-1)
		printf("\nQueue is empty");
	else{
		for(i=front,j=1;i<=rear;i++,j++)
		{
			if(a[i]==x)
			{
				printf("Element found at position %d",j);
				f1=1;
				break;
			}
		}
		if(f1==0)
			printf("Element not found\n");
	}
}
