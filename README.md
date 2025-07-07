# 📰 News App (Flutter + Cubit + Clean Architecture + Abstract Layer)

A clean and scalable Flutter News App with real API integration, Cubit state management, and clear architectural separation.

## 🚀 Features
- Fetch latest headlines from NewsAPI.org
- Clean Architecture with Abstract Repository Layer
- Cubit for state management
- Exception handling
- Easily replaceable API key via ApiClient

## 🧠 Project Structure
- `core`: Networking and error handling
- `data`: Models, API calls, repository implementation
- `domain`: Entities, Abstract Repositories, Use Cases
- `presentation`: UI, Cubit, Screens

## 🔧 Setup Instructions
1. Replace your API key in:
   ```
   lib/core/network/api_client.dart
   ```
2. Run:
   ```bash
   flutter pub get
   flutter run
   ```

## 🔧 Next Steps
- Add BlocProvider, Cubit UI logic
- Show news list with cards
- Add filters by category or region

---

Made with ❤️ using Clean Architecture.
