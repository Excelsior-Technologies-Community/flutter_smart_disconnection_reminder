## 📡 Smart Disconnection Reminder
(Wi-Fi / Network Based)

A lightweight Flutter library that detects network disconnection in real time and automatically shows a network error screen when the internet is unavailable, then restores the app when connectivity returns.

Designed to improve user experience, prevent silent failures, and handle network loss gracefully.

---
## ✨ Features

- ✅ Real-time Wi-Fi / mobile network detection

- ✅ Automatically show a Network Error Page

- ✅ Auto-restore app when internet is back

- ✅ Global (app-wide) network handling

- ✅ Simple integration

- ✅ Production-ready & scalable

---
## Preview

https://github.com/user-attachments/assets/c7f4eb9d-b5b7-45b3-a73c-e948d3c0a155

---
## 📦 Installation
Add this to your pubspec.yaml:
```
dependencies:
  flutter_image_compression:
    git:
      url: https://github.com/Excelsior-Technologies-Communitye/flutter_smart_disconnection_reminder.git
```
add this:
```
   connectivity_plus: ^7.0.0l
  internet_connection_checker: ^1.0.0+1
```
Then run:
```
flutter pub get
```
---
## 📁 File Structure
```
lib/
├── smart_disconnection_reminder.dart
├── src/
│   ├── network_monitor.dart
│   ├── network_wrapper.dart
│   └── network_error_page.dart
```
---
## 🚀 Basic Usage

```
home: NetworkWrapper(child: const HomePage()),
```
---
## 📄 License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this Flutter Image Compression library and associated documentation files
(the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT, OR OTHERWISE, ARISING FROM,
OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
