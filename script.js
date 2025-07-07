let ws;
let username;

// 📌 Grab username from URL (e.g. ?username=kanika)
function getUsernameFromURL() {
  const params = new URLSearchParams(window.location.search);
  return params.get("username");
}

// ⏰ Get current time [HH:MM]
function getCurrentTime() {
  const now = new Date();
  const hrs = now.getHours().toString().padStart(2, "0");
  const mins = now.getMinutes().toString().padStart(2, "0");
  return `${hrs}:${mins}`;
}

// 📅 Get formatted date (e.g. Sat, April 6, 2025)
function getFormattedDate() {
  const now = new Date();
  return now.toLocaleDateString("en-US", {
    weekday: 'short',
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  });
}

// ✨ Auto-generate sparkles
function createSparkle() {
  const sparkle = document.createElement("div");
  sparkle.className = "sparkle";
  sparkle.style.left = Math.random() * window.innerWidth + "px";
  sparkle.style.top = "-10px";
  sparkle.style.width = sparkle.style.height = Math.random() * 6 + 4 + "px";
  document.getElementById("sparkleContainer").appendChild(sparkle);
  setTimeout(() => sparkle.remove(), 5000);
}
setInterval(createSparkle, 400);

// 🌗 Dark mode toggle
const toggleBtn = document.getElementById("themeToggle");
let isDark = false;

toggleBtn.onclick = () => {
  isDark = !isDark;
  document.body.classList.toggle("dark", isDark);

  const icon = toggleBtn.querySelector(".icon");
  const label = toggleBtn.querySelector(".label");

  icon.textContent = isDark ? "🌙" : "☀️";
  label.textContent = isDark ? "Dark" : "Day";
};

// 🎯 Join Chat Logic
document.getElementById("joinBtn").onclick = () => {
  username = document.getElementById("username").value.trim();

  if (!username) {
    alert("Please enter a cute name, cutie 💗");
    return;
  }

  ws = new WebSocket("ws://localhost:8080/RealTimeChat/chat");

  ws.onopen = () => {
    ws.send("join:" + username);

    document.getElementById("usernameSection").style.display = "none";
    document.getElementById("chatSection").style.display = "block";

    // 🗓 Add date banner
    const chatHistory = document.getElementById("chatHistory");
    const dateBanner = document.createElement("div");
    dateBanner.innerText = `📅 Today - ${getFormattedDate()}`;
    dateBanner.style.textAlign = "center";
    dateBanner.style.color = "#888";
    dateBanner.style.margin = "10px 0";
    chatHistory.appendChild(dateBanner);
  };

  ws.onmessage = (event) => {
    const message = event.data;

    // 👥 Update user list
    if (message.startsWith("users:")) {
      const users = message.substring(6).split(",");
      const userList = document.getElementById("userList");
      userList.innerHTML = "";

      users.forEach(user => {
        const li = document.createElement("li");
        li.textContent = user;
        userList.appendChild(li);
      });
      return;
    }

    // 💬 Add chat message
    const chatHistory = document.getElementById("chatHistory");
    const msgElement = document.createElement("div");

    if (message.includes(username + ":")) {
      msgElement.classList.add("my-message");
    } else if (message.includes(":")) {
      msgElement.classList.add("other-message");
    } else {
      msgElement.classList.add("system-message");
    }

    msgElement.innerText = `[${getCurrentTime()}] ${message}`;
    chatHistory.appendChild(msgElement);
    chatHistory.scrollTop = chatHistory.scrollHeight;
  };

  ws.onerror = (error) => {
    console.error("WebSocket error:", error);
    alert("Something went wrong 💔 Please check if your server is running.");
  };

  ws.onclose = () => {
    alert("Disconnected from server 🥺💔");
  };
};

// 📨 Send message
document.getElementById("sendBtn").onclick = () => {
  const messageInput = document.getElementById("message");
  const msg = messageInput.value.trim();

  if (msg && ws && ws.readyState === WebSocket.OPEN) {
    ws.send("msg:" + msg);
    messageInput.value = "";
  }
};

// ⌨️ Send with Enter key
document.getElementById("message").addEventListener("keyup", (event) => {
  if (event.key === "Enter") {
    document.getElementById("sendBtn").click();
  }
});