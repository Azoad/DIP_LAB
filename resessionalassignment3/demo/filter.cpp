#include<stdio.h>
int main()
{
    int dim;
    scanf("%d",&dim);
        ///diagonal
        for(int j =1; j<=dim; j++)
        {
            for(int k =1; k<=dim; k++)
            {
                if(j==k)
                    printf("1 ");
                else
                    printf("0 ");
            }
            printf("\n");
        }
        printf("\n");
        ///horizontal
        for(int j =1; j<=dim; j++)
        {
            for(int k =1; k<=dim; k++)
            {
                if(k==2)
                    printf("1 ");
                else
                    printf("0 ");
            }
            printf("\n");
        }
        printf("\n");
        ///vertical
        for(int j =1; j<=dim; j++)
        {
            for(int k =1; k<=dim; k++)
            {
                if(j==2)
                    printf("1 ");
                else
                    printf("0 ");
            }
            printf("\n");
        }
        printf("\n");
        ///ulta diagonal
        for(int j =1; j<=dim; j++)
        {
            for(int k =1; k<=dim; k++)
            {
                if(j+k==dim+1)
                    printf("1 ");
                else
                    printf("0 ");
            }
            printf("\n");
        }
        printf("\n");
    }
