#include <wiringPi.h>
#include <stdio.h>

#define CDS 0
#define LED 1

int cdsControl(){
    pinMode(LED, OUTPUT);
    pinMode(CDS, INPUT);

    for(;;){
        if(digitalRead(CDS)==HIGH){
            digitalWrite(LED, HIGH);
            delay(1000);
            digitalWrite(LED,LOW);

        }
    }
    return 0;
}

int main(){
    wiringPiSetup();
    cdsControl();
    return 0;
}