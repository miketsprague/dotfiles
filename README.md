# dotfiles
For use in codespaces

# Setup
Make sure that VSCode knows to start `zsh` when you open a new terminal and sources the profile correctly. So in settings:
```
    "terminal.integrated.defaultProfile.linux": "zsh",
    "terminal.integrated.profiles.linux": {
        "zsh": {
            "path": "/bin/zsh",
            "args": [
                "-l",
                "-i"
            ]
        }
    },
    "terminal.integrated.automationProfile.linux": {
        "path": "/bin/zsh"
    },
```

Then sometimes it takes a sec when it's starting up.
