#include <stdio.h>
#include <string.h>
FILE *std,*my;
char *s,*q;
char mar[1024],verilog[1024],p[]="Pass",f[]= "fail";
char verilog1[1024];
char mar1[1024] ;
int main()
{
    int i;
    int line = 0,judge = 0;
    std = fopen("2.txt", "r");
    my = fopen("mine.txt","r");
    while(1)
    {
    	i=0;
    	for(i;i<1024;i++){
			verilog1[i] = '\0'; 
			verilog[i] = '\0';
			mar1[i] = '\0'; 
			mar[i] = '\0';
		}
		
        line++;
        s = fgets(mar1, 1024, std);
        q = fgets(verilog1, 1024, my);
		i = 0 ;
		for(i;i<1024;i++){
			if(verilog1[i] == '@')
				break;
			else 
				;
		}
		int j = 0; 
		for (i;i<1024;i++){
			
			verilog[j] = verilog1[i];
		
			if(verilog1[i] == '\n'){
				break;
			}
			j=j+1;
		}
		////////////////// 
		i = 0 ;
		for(i;i<1024;i++){
			if(mar1[i] == '@')
				break;
			else 
				;
		}
		j = 0; 
		for (i;i<1024;i++){
			
			mar[j] = mar1[i];
		
			if(mar1[i] == '\n'){
				break;
			}
			j=j+1;
		}
        /////////////////////////////// 
        if(s==NULL && q==NULL && judge==0)
        {
            printf("Finish! Your test is %s!",p);
            break;
        }
        else if(s==NULL && q==NULL && judge!=0)
        {
            printf("Finish! Your test is %s!",f);
            break;
        }
        else
        {
            if(strcmp(mar,verilog)==0) continue;
            else {
                judge++;
                printf("line:%d\nThe standard output is %sYour output is %s\n",line,mar,verilog);
                mar[9] = '\0';
                verilog[9] = '\0';
                if(strcmp(mar+1,verilog+1)) printf("PC is wrong!\n\n");
            }
        }
    }
    fclose(std);
    fclose(my);
	return 0;
}



