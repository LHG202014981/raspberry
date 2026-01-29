# 1. 설정
CC = gcc
CFLAGS = -Wall -O2
LDFLAGS = -lwiringPi
TARGET = raspberry_app
SRC = wiringswitch.c

# 2. 빌드 규칙 (기본: make)
all: $(TARGET)

$(TARGET): $(SRC)
	$(CC) $(CFLAGS) -o $(TARGET) $(SRC) $(LDFLAGS)

# 3. 실행 규칙 (make run)
run: all
	./$(TARGET)

# 4. 정리 규칙 (make clean)
clean:
	rm -f $(TARGET)

# 5. 깃허브 업로드 규칙 (make git)
git:
	git add .
	git commit -m "라즈베리파이 작업 내용 업데이트: $(shell date +'%Y-%m-%d %H:%M:%S')"
	git push origin main