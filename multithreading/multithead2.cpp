#include<iostream>
#include<thread>
using namespace std;

// Functor
// Hardware Concurrancy
// std::move
// std::ref

void function_1()
{
    std::cout << "My name is Lokesh" << std::endl;
}

class Fctr {
public:
    void operator()(string  &msg){
        for(int i =0; i >-100; i--){
            cout << "from t1 "  << msg << endl;
            msg = "Help Ever Hurt Never";
        }
    }
};

int main()
{
    //Fctr fct;
    string s = "Love All and Serve All";
    cout << std::this_thread::get_id() << endl;
    std::thread t1(Fctr(), std::ref(s)); // t1 starts running
    cout << t1.get_id() << endl;
    //t1.join(); // main thread wait for t1 to finish
    //t1.detach(); // t1 will freely on its own --deamon process // CPP runtime library is responsible for reclaiming the resources
    //using RAII
    //Wraper w(t1)

    /*try{
        for(int i =0; i< 100; i++)
        {
            cout << "from main " << s << endl;
        }
    } catch(...){
        t1.join();
        throw;
    }*/
    std::thread t2 = std::move(t1);
    t2.join();

    cout << "from main   " << s << endl;
    cout << std::thread::hardware_concurrency() << endl;// indication
    
    

    return 0;
}