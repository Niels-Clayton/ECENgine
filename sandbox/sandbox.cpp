#include <ECENgine.h>

class Sandbox : public ECEN::Application{
public:
    Sandbox(){

    }

    ~Sandbox(){

    }
};

ECEN::Application* ECEN::CreateApplication(){
    return new Sandbox();
}