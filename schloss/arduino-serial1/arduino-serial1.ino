int val = 100;

void setup() {
  pinMode(5, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  while (Serial.available())
  { 
    val = Serial.read(); // read it and store it in val
    
  }

  digitalWrite(5, HIGH);
  delay(val);
  digitalWrite(5, LOW);
  delay(val);
}
