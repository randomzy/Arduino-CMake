#include <Arduino.h>

void setup()
{
    
}

void loop()
{

}

int main()
{   
    init();
#if defined(USBCON)
	USBDevice.attach();
#endif
    setup();
    while(1) {
        loop();
    }
}