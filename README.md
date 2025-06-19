# ChatMD

Hey! I'm MelvinSGjr — the Linux (Alpine!) nerd who made this. This is my terminal/CMD chat app for everyone who loves minimalism, the shell, and a bit of fun.

## What is this?
ChatMD is a simple, terminal-based chat you can run anywhere Ruby works. You can:
- Host your own chat server (like making your own Discord server, but lighter)
- Connect to any server by IP and port
- Use local chat (offline, for testing or lonely days)

## Proof I made this
I, MelvinSGjr, am the creator. Check my GitHub: [MelvinSGjr](https://github.com/MelvinSGjr)

## Platform Guide
ChatMD works on **any Linux** (including Alpine!) and **Windows**. Here's how to get started:

### Linux (Debian, Ubuntu, Fedora, Arch, Alpine, etc.)
1. **Install Ruby:**
   - Debian/Ubuntu: `sudo apt install ruby`
   - Fedora: `sudo dnf install ruby`
   - Arch: `sudo pacman -S ruby`
   - Alpine: `sudo apk add ruby`
2. **Check Ruby:**
   ```sh
   ruby -v
   ```
   You should see the version (e.g. `ruby 3.1.2`).
3. **Run ChatMD:**
   ```sh
   ruby ChatMD.rb
   ```

### Windows
1. **Download Ruby:** [rubyinstaller.org](https://rubyinstaller.org/)
2. **Install Ruby** (tick the box to add Ruby to PATH).
3. **Open PowerShell or CMD** and go to your ChatMD folder:
   ```powershell
   ruby ChatMD.rb
   ```
4. If you get a 'ruby not found' error, restart your terminal or check your PATH.

### That's it!
No extra gems, no dependencies, just pure Ruby and terminal fun.

## How to use
1. **Start the launcher:**
   ```sh
   ruby ChatMD.rb
   ```
2. **Choose a mode:**
   - Host a server (create your own chat room)
   - Connect as client (join a chat room)
   - Local chat (offline mode)
   - Exit
3. **Host a server:**
   - Pick a port (default: 3000)
   - If you want friends to join from the internet:
     - Forward the port on your router
     - Find your public IP: [icanhazip.com](https://icanhazip.com/)
     - Share your IP and port
4. **Connect as client:**
   - Enter the server's IP and port
5. **Local chat:**
   - Just for you, or for testing

## Why?
Because I love Linux, I love simple code, and sometimes you just want to chat in the terminal. (Also, Discord is too heavy for my Alpine VM!)

## License
MIT. Do what you want, but be nice.

---

> "Terminal is life. GUI is optional." — MelvinSGjr 
