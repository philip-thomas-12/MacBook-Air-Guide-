
---

### 🍺 3. `install-homebrew.sh`
```bash
#!/bin/bash

# Install Homebrew
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add Homebrew to PATH (Apple Silicon)
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install common packages
echo "Installing essential packages..."
brew install git wget htop node python@3 zsh
brew install --cask google-chrome visual-studio-code iterm2

echo "✅ Homebrew and essential packages installed."
