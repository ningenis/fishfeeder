#include <LiquidCrystal.h>
#include <dht.h>
#include <Adafruit_Sensor.h>
#include <Time.h>
#include <TimeLib.h>
#include <Servo.h>

// Setting WiFi
#define SSID "homenet"        // SSID
#define PASS "0123456789"     // Password
#define HOST "192.168.1.108"  // Webhost
//-------------------------------

Servo myservo; // create servo object to control a servo
int angle = 0; // variable to store the servo position
dht DHT;
#define dht_apin 9

//constants for the number of rows and columns in the LCD
const int numRows = 2;
const int numCols = 16;
// initialize the library with the numbers of the interface pins
LiquidCrystal lcd(12, 11, 5, 4, 3, 2);
float suhu;
float kelembapan;

void setup()
{
  Serial.begin(9600);
  delay(500);//Wait before accessing Sensor
  myservo.attach(6); // attaches the servo on pin 9 to the servo object
  setTime(11,44,00,01,06,2017);
  DHT.read11(dht_apin);
  lcd.begin(numCols, numRows);
  lcd.print("Hello World!"); // Print a message to the LCD.
  lcd.clear();
  delay(1000);//Wait before accessing Sensor
  // Tes awal modul ESP8266.
  Serial.println("AT");
  delay(5000);
  connectWiFi();
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
  lcd.setCursor(0,1);
  lcd.print("Hum (%): ");
  lcd.print(DHT.humidity, 2);
  lcd.print("Suhu (°C): ");
  lcd.print(DHT.temperature, 2);
  suhu = DHT.temperature;
  kelembapan = DHT.humidity;
  if ((hour(t) == 11) && (minute(t) == 45) && (second(t) == 00)) {
      myservo.write(180); // tell servo to go to position in variable 'angle'
      delay(20); // waits 20ms between servo commands
  }
  if ((hour(t) == 11) && (minute(t) == 46) && (second(t) == 00)) {
      myservo.write(90); // move servo in opposite direction
      delay(20); // waits 20ms between servo commands   
  }
  delay(1000);
  sendData(String(suhu), String(kelembapan));
  delay(1000);
}

// Prosedur mengirimkan data ke server
void sendData(String suhu, String kelembapan){
  // Setup koneksi TCP.
  String cmd = "AT+CIPSTART=\"TCP\",\"";
  cmd += HOST;
  cmd += "\",80";
  Serial.println(cmd);
  delay(2000);

  // Kirim data ke server dengan metode GET.
  cmd = "GET /fishfeeder/add_data.php"; // Link ke skrip PHP                    
  cmd += "?temperature=";  // Selektor Temperatur
  cmd += suhu;          // Nilai Temperatur
  cmd += "&kelembapan=";        // Selektor Status Lampu    
  cmd += kelembapan;            // Nilai Lampu
  cmd += " HTTP/1.1\r\nHost: 192.168.1.108\r\n\r\n\r\n"; // Host
  Serial.print("AT+CIPSEND=");
  Serial.println(cmd.length());
  Serial.print(cmd);
  //if(Serial.find(">")){
    //Serial.print(cmd);
  //}  
}

// Prosedur Koneksi WiFi
void connectWiFi(){
  // Koneksi ke Titik Akses (AP)
  Serial.println("AT+CWMODE=1");
  delay(2000);
  String cmd="AT+CWJAP=\"";
  cmd+=SSID;
  cmd+="\",\"";
  cmd+=PASS;
  cmd+="\"";
  Serial.println(cmd);
  delay(5000);
  // Pengecekan Koneksi WiFi
  if(Serial.find("OK")){
    Serial.println("Connection");
    //return true;
  }
  else{
    Serial.println("No Connection");
    //return false;
  }
}
