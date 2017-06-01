#include <dht.h>
#include <Adafruit_Sensor.h>
#include <Time.h>
#include <TimeLib.h>
#include <Servo.h>

// Setting WiFi
#define SSID "homenet"        // SSID
#define PASS "0123456789"     // Password
#define HOST "192.168.1.101"  // Webhost
//-------------------------------

Servo myservo; // create servo object to control a servo
int angle = 0; // variable to store the servo position
dht DHT;
#define dht_apin 9

void setup()
{
  Serial.begin(9600);
  delay(500);//Wait before accessing Sensor
  myservo.attach(6); // attaches the servo on pin 9 to the servo object
  setTime(11,44,00,01,06,2017);
  DHT.read11(dht_apin);
  delay(1000);//Wait before accessing Sensor
}

// Untuk display dalam rangka debug waktu
void digitalClockDisplay() {
   time_t t = now();
   Serial.print(hour(t));
   printDigits(minute(t));
   printDigits(second(t));
   Serial.print(" ");
   Serial.print(day(t));
   Serial.print(" ");
   Serial.print(month(t));
   Serial.print(" ");
   Serial.print(year(t));
   Serial.println();
}

// Untuk print digit waktu pada display dalam rangka debug waktu
void printDigits(int digits) {
   Serial.print(":");
   if (digits < 10)
   Serial.print('0');
   Serial.print(digits);
}

void loop()
{
  time_t t = now();
  Serial.print("Humidity (%): ");
  Serial.println(DHT.humidity, 2);
  Serial.print("Temperature (°C): ");
  Serial.println(DHT.temperature, 2);
  if ((hour(t) == 11) && (minute(t) == 45) && (second(t) == 00)) {
      myservo.write(180); // tell servo to go to position in variable 'angle'
      delay(20); // waits 20ms between servo commands
  }
  if ((hour(t) == 11) && (minute(t) == 46) && (second(t) == 00)) {
      myservo.write(90); // move servo in opposite direction
      delay(20); // waits 20ms between servo commands   
  }
  delay(1000);
}
