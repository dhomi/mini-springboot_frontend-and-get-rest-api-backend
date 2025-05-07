# Klein springboot appje met frontend en get rest api backend

## Installeren
Voorwaarde is de JAVA versie 21 of hoger

haal de repo op, en in terminal run de app: ```./mvnw spring-boot:run```

Een andere optie is om een JAR van te maken door: ```./mvnw clean package```
De JAR file is dan in de target map. Uitvoeren door: ```java -jar target/beni-0.0.1-SNAPSHOT.jar```

## Frontend
Ga naar http://localhost:8080
Daar zal de homepage de tekst tonen: ```Welkom TechLab QA-ers || Dit is een Spring Boot Frontend app-je```

## Backend
In de terminal doe een: ```curl -X GET http://localhost:8080/greet``` 
Response zou moeten zijn: ```Hallo TechLab QA-ers!```

