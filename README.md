<div align="center" style="font-family: 'Segoe UI', sans-serif;">
  <h1 style="color:#2c3e50;">💬 K-Talk: Real-Time Chat Application</h1>
  <p style="color:#34495e;font-size:18px;">
    A simple real-time web-based chat app built with <strong>Java WebSocket</strong>, <strong>JSP</strong>, and <strong>HTML + JS</strong>.
  </p>
  <img src="https://img.shields.io/badge/status-active-brightgreen" alt="status" />
  <img src="https://img.shields.io/badge/language-java-blue" alt="java" />
</div>

---

## 📌 About This Project

K-Talk is a real-time chat application built using **Java WebSockets**, **Servlets**, **JSP**, and basic **HTML/CSS/JavaScript**. It allows users to join the chat via a unique username and exchange messages instantly through a WebSocket server.

<div style="background-color:#f9f9f9; border-left: 6px solid #2980b9; padding: 10px; margin: 15px 0;">
💡 <strong>Goal:</strong> Learn real-time communication concepts with WebSockets and server-client architecture in Java.
</div>

---

## Features

- No login required — just enter your name and start chatting!
- Real-time communication using Java WebSocket API.
- Messages appear instantly without refreshing the page.
- Lightweight frontend using HTML + JavaScript.
- Deployable on Apache Tomcat or any Java EE-compatible server.

---

## 📁 Project Structure

```bash
RealTimeChat/
│
├── src/
│   ├── main/
│   │   ├── java/chatapp/
│   │   │   └── ChatServer.java       # WebSocket backend
│   │   └── webapp/
│   │       ├── chat.jsp              # Main chat UI
│   │       ├── js/script.js          # JS for WebSocket communication
│   │       └── WEB-INF/web.xml       # Servlet config
│
└── README.md                        
