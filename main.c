#include "produit.h"
#include<stdio.h>
int main(){
	int a, b,c;
	printf("a=");
	scanf("%d",&a);
	printf("b=");
	scanf("%d",&b);
	c=produit(a,b);
	printf("le produit vaut:%d\n", c);
	return 0;}

