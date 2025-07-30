# 🚨 HitAlert – Real-Time Accident Detection & Alert System


**HitAlert** is a real-time IoT-based alert system built using **Flutter** and **NodeMCU (ESP8266)**. It integrates multiple sensors—including **flame**, **smoke (MQ2)**, **alcohol (MQ3)**, and **temperature/humidity (DHT11)**—to detect hazardous events such as accidents, fire, gas leaks, or environmental risks and instantly notifies users through a mobile app.

---

## 🎯 Objective

To build a reliable, mobile-connected IoT system capable of:
- Detecting accidents or hazards in real-time
- Collecting environmental data (smoke, flame, alcohol, temperature, humidity)
- Sending instant alerts to users via a Flutter app

---

## 🔗 System Components

| Component       | Description                                                                 |
|-----------------|-----------------------------------------------------------------------------|
| **NodeMCU**     | ESP8266 microcontroller for sensor data collection and Wi-Fi communication |
| **Flutter App** | Displays live sensor alerts on user interface                               |
| **Sensors**     | MQ2 (smoke), MQ3 (alcohol), Flame sensor, DHT11 (temp/humidity), etc.       |

---

## 🔥 Sensors Used

| Sensor         | Purpose                                   |
|----------------|-------------------------------------------|
| **MQ2**        | Detects smoke and combustible gases       |
| **MQ3**        | Detects alcohol vapors (e.g. drunk driving) |
| **Flame Sensor** | Detects fire or high infrared light     |
| **DHT11**      | Measures temperature and humidity         |


---

## 📱 Features

- ✅ Real-time sensor monitoring
- 🔥 Instant hazard detection (fire, smoke, gas, alcohol)
- 🌡️ Temperature and humidity display
- 📲 Mobile alerts through Flutter interface
- 📶 NodeMCU communicates using Wi-Fi 

---

## ⚙️ Tech Stack

- **Hardware**: NodeMCU ESP8266, MQ2, MQ3, Flame Sensor, DHT11
- **Mobile App**: Flutter (Dart)
- **Communication**: NodeMCU → Flutter



