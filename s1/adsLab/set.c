#include <stdio.h>

int u[10],a[10],b[10],n;

void display( int x[]){

	printf("{");
	
	for(int i = 0;i<n;i++){

		printf("%d,",x[i]);

	}

	printf("}");

}

void bitdis(int x[]){

	printf("{");

	for(int i =0; i<n; i++){

		if(x[i] ==1){

			printf("%d,",u[i]);

		}

	}

	printf("}");

}

int pos(int x){

	int f=-1;

	for(int i=0; i<n; i++){

		if(u[i] == x){

			f =i;
		}
	}

	return f;
}

void setunion(){

	printf("\nUnion : {");

	for( int i =0; i<n;i++){

		if(a[i]|b[i] ==1){

			printf("%d,",u[i]);
		}

	}

	printf("}");

}

void intersect(){

	printf("\n Intersection :{");
	for(int i = 0; i<n; i++){

		if(a[i] & b[i] ==1){

			printf("%d ",u[i]);
		}

	}

	printf("}");

}


void setdiff(){

	printf("\nDifference : {");

	for( int i = 0; i<n; i++){

		if(a[i]&b[i] == 1){

			printf("%d,",u[i]);
		}
	}

	printf("}");
}

void main(){

	int p,x;

	printf("Enter the size of the universal set: ");

	scanf("%d",&n);

	printf("Enter the elements: ");

	for( int i =0; i<n; i++){
		
		scanf("%d",&u[i]);

		a[i]=b[i]=0;
	}	

	
	printf("\nEnter the size of set 1: ");
	scanf("%d",&x);
	printf("\nEnter Elements: ");

	for (int i = 0; i<p ; i++){
	
		scanf(" %d",&x);

		if(pos(x)!=-1){

			a[pos(x)] =1;
		}

	}
	
	printf("\nEnter the size of set 2: ");
	scanf("%d",&p);

	printf("\nEnter the elements: ");
	for(int i=0; i<p ;i++){
	
		scanf("%d",&x);
		
		if(pos(x) != -1){

			b[pos(x)] = 1;

		}
	}

	printf("\nUniversal set : ");
	display(u);
	printf("\n Set 1 bit string : ");
	display(u);
	
	printf("\n Set 2 bit string : ");
	display(b);

	printf("\n Set 1 : ");
	bitdis(a);
	
	printf("\n Set 2 : ");
	bitdis(b);

	setunion();
	intersect();
	setdiff();

}
