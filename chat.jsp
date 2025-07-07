<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // You can grab values from session here in future like:
    // String username = (String) session.getAttribute("username");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>K-Talk Chat App</title>

  <!-- Your same beautiful CSS here... -->
  <style>
    :root {
      --bg-color: linear-gradient(to right, #fceeff, #e0f7ff);
      --text-color: #333;
      --box-color: #ffffff;
      --input-border: #ffd6e8;
      --primary-pink: #ff9fcf;
    }

    body {
      font-family: "Comic Neue", "Segoe UI", sans-serif;
      background: var(--bg-color);
      color: var(--text-color);
      padding: 40px;
      max-width: 800px;
      margin: auto;
      border-radius: 16px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.1);
      transition: all 0.4s ease;
    }

    h2 {
      text-align: center;
      font-size: 28px;
      margin-bottom: 30px;
    }

    #usernameSection, #chatSection {
      text-align: center;
      margin-bottom: 20px;
    }

    input[type="text"] {
      padding: 12px;
      font-size: 16px;
      width: 60%;
      border: 2px solid var(--input-border);
      border-radius: 12px;
      outline: none;
      transition: 0.3s ease;
      background: white;
    }

    input[type="text"]:focus {
      border-color: var(--primary-pink);
      background: #fff5fa;
    }

    button {
      padding: 12px 20px;
      font-size: 16px;
      background-color: var(--primary-pink);
      border: none;
      color: white;
      border-radius: 12px;
      cursor: pointer;
      margin-left: 10px;
      transition: 0.3s;
    }

    button:hover {
      background-color: #ff6fb7;
    }

    #chatHistory {
      border: 2px solid var(--input-border);
      background: var(--box-color);
      height: 300px;
      overflow-y: scroll;
      padding: 15px;
      margin-bottom: 20px;
      text-align: left;
      border-radius: 12px;
      box-shadow: inset 0 0 10px rgba(255, 213, 240, 0.2);
    }

    .my-message { color: #4a90e2; font-weight: bold; }
    .other-message { color: #333; }
    .system-message { color: #b07aad; font-style: italic; }

    #onlineUsers {
      border: 2px solid var(--input-border);
      border-radius: 12px;
      background: var(--box-color);
      padding: 10px;
      margin-top: 10px;
      text-align: left;
      font-size: 14px;
    }

    /* Dark mode theme */
    body.dark {
      --bg-color: linear-gradient(to right, #1f1c2c, #928dab);
      --text-color: #f6f1ff;
      --box-color: #2a2438;
      --input-border: #7f78a3;
      --primary-pink: #c084fc;
    }

    body.dark input[type="text"] {
      background: #3e3459;
      color: white;
    }

    body.dark .my-message { color: #94b0ff; }
    body.dark .other-message { color: #d0d1ff; }
    body.dark .system-message { color: #ffe3ff; }

    .theme-toggle {
      float: right;
      padding: 8px 16px;
      font-size: 14px;
      border: none;
      border-radius: 20px;
      background-color: var(--primary-pink);
      color: white;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      transition: 0.3s;
      margin-bottom: 20px;
    }

    .footer-note {
      text-align: center;
      margin-top: 60px;
      font-size: 14px;
      color: #646160;
    }

    .sparkles {
      position: fixed;
      top: 0; left: 0;
      pointer-events: none;
      width: 100%; height: 100%;
      z-index: -1;
      overflow: hidden;
    }

    .sparkle {
      position: absolute;
      width: 8px;
      height: 8px;
      background: white;
      border-radius: 50%;
      opacity: 0.7;
      animation: sparkleAnim 5s linear infinite;
      box-shadow: 0 0 6px 2px rgba(255, 255, 255, 0.6);
    }

    @keyframes sparkleAnim {
      0%   { transform: translateY(0) scale(1); opacity: 0.7; }
      100% { transform: translateY(100vh) scale(0.5); opacity: 0; }
    }
  </style>
</head>
<body>

  <!-- Sparkle background ✨ -->
  <div class="sparkles" id="sparkleContainer"></div>

  <!-- Theme toggle -->
  <button id="themeToggle" class="theme-toggle">
    <span class="icon">☀️</span> <span class="label">Day</span>
  </button>

  <h2>💬 K-Talk Chat App</h2>

  <div id="usernameSection">
    <input type="text" id="username" placeholder="Enter your name">
    <button id="joinBtn">Join Chat</button>
  </div>

  <div id="chatSection" style="display: none;">
    <div id="chatHistory"></div>
    <input type="text" id="message" placeholder="Type your message here">
    <button id="sendBtn">Send</button>

    <div id="onlineUsers">
      <strong>🧑‍🤝‍🧑 Online:</strong>
      <ul id="userList" style="margin: 10px 0 0 15px; padding: 0;"></ul>
    </div>
  </div>

  <div class="footer-note">
    *note: This Chat application creat by Kanika Im-erb<br>
    for Advanced Java Development subject
  </div>

  <script src="js/script.js"></script>
</body>
</html>
