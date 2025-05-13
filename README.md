
# 💬 K-Talk: Real-Time Chat Application

A browser-based chat app built using Java WebSockets, JSP, and JavaScript.

![status](https://img.shields.io/badge/status-active-brightgreen)
![Java EE](https://img.shields.io/badge/technology-Java%20EE-blue)

---

## Introduction

K-Talk is a real-time chat application that demonstrates the use of Java WebSockets and JSPs for building a dynamic messaging system. This application allows multiple users to chat simultaneously in a browser-based environment with support for day/night themes, real-time updates, and a neat interface styled with pastel colors and emojis.

This project was developed as part of academic coursework at NFSU, and serves as an introduction to real-time Java-based web applications.

---

## 🎥 Video Tutorial

[![Watch the Tutorial](https://i.imgur.com/WN5pAIN.png)](https://drive.google.com/file/d/1jz8-9NfR-HGmYexAM_2UKleaxszafkeh/view?usp=sharing)


---

## ⚙️ Tools & Frameworks

- **Java (JDK 8+)**
- **Java WebSocket API** (`@ServerEndpoint`)
- **JSP (JavaServer Pages)` – View rendering
- **HTML, CSS & JavaScript**
- **Apache Tomcat 9+**
- **Eclipse IDE** – Dynamic Web Project

---

## 📋 What This Project Does

- Enables real-time chat between users in a shared room.
- Accepts user nickname as a query parameter (`chat.jsp?username=kanika`).
- WebSocket-based bi-directional message flow.
- Dynamic updates of chat messages, online users, and system notifications.
- Day/Night toggle mode for user-friendly interface.

---

## 📁 Project Structure

```bash
RealTimeChat/
│
├── src/
│   ├── main/
│   │   ├── java/chatapp/
│   │   │   └── ChatServer.java       # WebSocket backend logic
│   │   └── webapp/
│   │       ├── chat.jsp              # Main chat interface (JSP)
│   │       ├── js/script.js          # JavaScript WebSocket client
│   │       └── WEB-INF/web.xml       # Web app config and routing
│
└── README.md                         # Project documentation
```

---

## 🔍 Simple Detailed Breakdown

### `ChatServer.java`
- Acts as the WebSocket backend.
- Handles connections, incoming messages, and broadcasting.
- Annotated with `@ServerEndpoint("/chat")`.

### `chat.jsp`
- The main chat UI rendered via JSP.
- Includes HTML structure with username form, chat box, user list, and day/night toggle.

### `script.js`
- Establishes WebSocket connection with `ChatServer.java`.
- Sends and receives JSON-based messages.
- Updates the chat DOM in real-time.

### `web.xml`
- Defines welcome page (`chat.jsp`) and servlet context.
- Initializes JSPs in Tomcat on startup.

---

## ✨ Key Features

- 🌐 Real-Time Messaging
- 👥 Multi-user Support
- 🎨 Day & Night Mode Toggle
- 🧩 User Join/Leave Notifications
- 💬 Emoji Support (Basic)
- 🖥 Fully Browser-Based (No App Install Needed)

---

## 🚀 How to Run

### Requirements

- Java JDK 8 or later
- Apache Tomcat 9.x
- Eclipse IDE (Dynamic Web Project enabled)

### Setup Steps

1. **Clone the Project**
   ```bash
   git clone https://github.com/yourusername/k-talk-chat-app.git
   ```

2. **Import into Eclipse**
   - File → Import → Existing Projects into Workspace
   - Select `RealTimeChat` folder

3. **Configure Tomcat**
   - Add Tomcat 9 to Eclipse via `Server Runtime Environments`
   - Right-click project → Run As → Run on Server

4. **Access in Browser**
   ```
   http://localhost:8080/RealTimeChat/chat.jsp?username=kanika
   ```

---

## 🧪 Development Process

1. **Requirements Analysis**
   - Core requirement: real-time multi-user text messaging

2. **Architecture Design**
   - Java WebSocket server for persistence connection
   - JSP for frontend interface
   - `web.xml` for configuration and entry-point setup

3. **Implementation**
   - `@ServerEndpoint` for WebSocket
   - `chat.jsp` integrated with JS
   - JavaScript manages front-end WebSocket logic

4. **Testing**
   - WebSocket connection lifecycle
   - Interface flow and Web.xml behavior

5. **Deployment**
   - Packaged as `.war` and deployed via Tomcat

---

## 💡 What Can Be Improved?

| Area | Suggestions |
|------|-------------|
| 🛡 Security | Add input validation, user auth |
| 📦 Storage | Save messages using a database |
| 🎭 UI/UX | Add animations, CSS framework |
| 📲 Mobile | Make layout responsive |
| 🔐 Privacy | Support for private/group chat |
| 🔔 Feedback | Notifications, typing status, sounds |

---

## 🎓 Author

> Developed by **Kanika Im-erb**  
> B.Tech CSE (Cyber Security)  
> National Forensic Sciences University  
> Email: [kanikaim2003@gmail.com](mailto:kanikaim2003@gmail.com)

---

This project was created with ❤️ for learning purposes and academic demonstration.
                
