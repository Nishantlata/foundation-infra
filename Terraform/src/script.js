/**
 * AEXION Core System Script
 * Architecture: Azure App Service Optimized
 */

document.addEventListener("DOMContentLoaded", () => {
    const launchBtn = document.getElementById("launch-btn");
    const uptimeCounter = document.getElementById("uptime-counter");

    console.log("⚡ AEXION Mainframe Initializing...");

    // 1. Live Uptime Counter Logic
    let totalSeconds = 0;
    setInterval(() => {
        totalSeconds++;
        let minutes = Math.floor(totalSeconds / 60);
        let seconds = totalSeconds % 60;

        // Formatting formatting (e.g., 02m 09s)
        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        uptimeCounter.textContent = `${minutes}m ${seconds}s`;
    }, 1000);

    // 2. Interactive Button Click (Boot sequence)
    launchBtn.addEventListener("click", () => {
        // Disabling button to prevent multiple triggers
        launchBtn.disabled = true;
        launchBtn.style.background = "#1e293b";
        launchBtn.style.color = "#64748b";
        launchBtn.style.cursor = "not-allowed";
        launchBtn.style.boxShadow = "none";
        launchBtn.style.border = "1px solid rgba(255,255,255,0.05)";
        launchBtn.textContent = "Booting Aexion Core...";

        console.warn("➔ Connecting to Azure Web Services...");

        // Simulating 2-second cloud infrastructure handshake delay
        setTimeout(() => {
            launchBtn.style.background = "linear-gradient(135deg, #107c41, #22c55e)";
            launchBtn.style.color = "#fff";
            launchBtn.style.boxShadow = "0 4px 25px rgba(34, 197, 94, 0.4)";
            launchBtn.textContent = "✔ Core Connected";
            
            console.log("✔ AEXION Core successfully synchronized with Azure Nodes.");
            alert("🚀 AEXION Console Initialized! Server environment stable aur optimized hai.");
        }, 2000);
    });

    // 3. Immersive Mouse Movement Glow Effect
    document.body.addEventListener("mousemove", (e) => {
        const x = (e.clientX / window.innerWidth) * 100;
        const y = (e.clientY / window.innerHeight) * 100;
        
        // Shifting the radial gradients based on user's cursor positions
        document.body.style.backgroundImage = `
            radial-gradient(circle at ${x}% ${y}%, rgba(0, 120, 212, 0.2) 0%, transparent 45%),
            radial-gradient(circle at ${100 - x}% ${100 - y}%, rgba(0, 242, 254, 0.15) 0%, transparent 45%)
        `;
    });
});
