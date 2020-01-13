#include <ECENgine.h>

class Sandbox : public ECENgine::Application{
public:
    Sandbox(){

    }

    ~Sandbox(){

    }
};

ECENgine::Application* ECENgine::CreateApplication(){
    return new Sandbox();
}