# 🚀 Flutter Amplify App (AhmadBlog Style UI)

A modern **Flutter Web Application** with a premium blog-style UI, deployed easily using **AWS Amplify**.

---

## ✨ Features

- 🎨 Modern dark UI (AhmadBlog inspired)
- 🔍 Search bar + Navbar
- 📊 Stats section (Articles, Categories, Authors)
- 🏷 Category filters (chips)
- 📰 Blog card layout
- ⚡ Fast deployment with AWS Amplify
- 🌐 Flutter Web support

---

## 📁 Project Structure

```
flutter_amplify_app/
│── lib/
│   └── main.dart
│── web/
│   └── index.html
│── pubspec.yaml
│── amplify.yml
```

---

## 🛠 Requirements

Make sure you have installed:

- Flutter SDK
- Git
- Chrome (for web)

Check installation:

```bash
flutter doctor
```

---

## ▶️ Run App Locally (CMD / Terminal)

### 1. Clone Repository

```bash
git clone https://github.com/Ahmadansari1942/flutter_amplify_app.git
cd flutter_amplify_app
```

### 2. Enable Web Support

```bash
flutter config --enable-web
```

### 3. Install Dependencies

```bash
flutter pub get
```

### 4. Run App

```bash
flutter run -d chrome
```

👉 App browser me open ho jayegi automatically.

---

## 🏗 Build for Production

```bash
flutter build web
```

Output folder:

```
build/web/
```

---

## ☁️ Deploy on AWS Amplify

### Steps:

1. Push project to GitHub
2. Open AWS Amplify Console
3. Click **New App → Host Web App**
4. Connect GitHub repo
5. Select branch (main)
6. Deploy (auto uses `amplify.yml`)

---

## 🌍 Live App URL

After deployment, Amplify will provide a URL like:

```
https://main.xxxxxx.amplifyapp.com
```

---

## ⚠️ Notes

- Flutter Web is used for deployment
- Mobile apps cannot be hosted on Amplify directly
- If build fails, re-run deployment or check logs

---

## 💡 Future Improvements

- 🔐 Authentication (AWS Cognito)
- 🔗 Backend API (Node.js / Lambda)
- 📊 Analytics dashboard
- 📱 Fully responsive design
- 🎨 Animations & transitions

---

## 👨‍💻 Author

**Ahmad Ansari**  
GitHub: https://github.com/Ahmadansari1942

---

## ⭐ Support

If you like this project, give it a ⭐ on Gi