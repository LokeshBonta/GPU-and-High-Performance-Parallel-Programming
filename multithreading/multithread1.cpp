#include<iostream>
#include<thread>
using namespace std;

void function_1()
{
    std::cout << "My name is Lokesh" << std::endl;
}

int main()
{
    std::thread t1(function_1); // t1 starts running
    //t1.join(); // main thread wait for t1 to finish
    t1.detach(); // t1 will freely on its own --deamon process // CPP runtime library is responsible for reclaiming the resources
 
    for(int i =0; i< 50000; i++)
    {
        i = i+2;
    }
    if(t1.joinable())
        t1.join(); // Can't Join as Already been detached! :(

    return 0;
}