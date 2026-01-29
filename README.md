# raspberry
라즈베리파이 컴파일 방법
hkpi@pi:~/raspberry $ gcc -o file file.c -lwiringPi
gpio readall //wiringPi gpio 번호

함수 정리
pinMode(gpio, input/output)
digitalWite(gpio, HIGH/LOW)
digitalRead(gpio,HIGH.LOW)
delay(1000=1초)
wiringPiSetup()
softPwmCreate(gpio, 시작, 범위)
softPwmWrite(gpio, 값)