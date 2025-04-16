#include<stdio.h>
#include<conio.h>
void main() 
{
int empno;
char empname[20],dpt[20];
float salary;
clrscr();
printf("enter employee number:");
scanf("%d",&empno);
printf("enter employee name :");
scanf("%s",&empname);
printf("enter employee department:");
scanf("%s",dpt);
printf("enter employee salary:");
scanf("%f",&salary);
printf("\n\n");
printf("enter employee number is:%d\n",empno);
printf("enter employee name is:%s\n",empname);
printf("enter employee department is:%s\n",dpt);
printf("enter employee salary is:%.0f\n",salary);
getch() ;
}
    