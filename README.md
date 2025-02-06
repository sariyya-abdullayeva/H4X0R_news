# 📰 H4X0R News App

**H4X0R News** is a simple, elegant iOS app that fetches and displays the latest **Hacker News** stories using the [Hacker News API](https://hn.algolia.com/). Users can read articles directly **inside the app** using WebKit.

---

## ✨ Features

- 🔍 Fetches top **Hacker News** stories from the API.
- 📃 Displays news articles in a **scrollable, stylish list**.
- 🌐 **In-app article viewing** with WebKit (no need to switch to Safari).
- ⚡ Optimized with **SwiftUI** and `ObservableObject` for real-time updates.
- 🛠 Uses `UIViewRepresentable` to integrate WebKit into SwiftUI.

---

## 🛠 Technologies Used

- **SwiftUI** - UI framework
- **Combine** - Reactive data handling
- **WKWebView (WebKit)** - In-app web browsing
- **Hacker News API** - Fetching news stories

---

## 🔗 API Used
This app fetches data from **Hacker News Algolia API**:
- API Docs: [https://hn.algolia.com/api](https://hn.algolia.com/api)
- Endpoint: `https://hn.algolia.com/api/v1/search?tags=front_page`

---

## 🚀 Installation & Running the App

### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/sariyya-abdullayeva/H4X0R_news.git
cd H4X0R_news
