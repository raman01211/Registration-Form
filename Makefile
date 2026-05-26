.PHONY: build run clean

build:
	mvn clean package -DskipTests

run:
	docker compose up -d --build

clean:
	docker compose down
	mvn clean
