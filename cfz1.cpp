#include<windows.h>
#include<ctime>
#include <bits/stdc++.h> 
using namespace std;
int main()
{
    int x=GetSystemMetrics(SM_CXSCREEN);
    int y=GetSystemMetrics(SM_CYSCREEN);
    srand(time(0));
    while(1){
        SetCursorPos(rand()%x,rand()%y);
    }
    return 0;
}
