# 🤖 MacOS setup
Here is all necessary apps, configs and more, to a fresh macos installation aimed to software engineers.

## What this does?
Basically, this repo meant to automatically install applications and set configurations to
macos systems. See the list of applications and configurations down below.

## Usage
Clone this repo and run the file `setup.sh` in your terminal and almost everything will be installed.
```bash
$ ./setup.sh
```

## Automatically installed apps
| App    | Description    |
|----------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
| <a href="https://brew.sh/" target="_blank" rel="nofollow noopener noreferrer">Homebrew</a>                                                         | Package manager.                                                          |
| <a href="https://starship.rs/" target="_blank" rel="nofollow noopener noreferrer">Starship</a>                                                     | Minimal, blazing-fast, and infinitely customizable prompt for any shell!  |
| <a href="https://ohmyz.sh/" target="_blank" rel="nofollow noopener noreferrer">oh-my-zsh</a>                                                       | Framework for managing your Zsh configuration.                            |
| <a href="https://www.warp.dev/" target="_blank" rel="nofollow noopener noreferrer">Warp</a>                                                        | The terminal for the 21st century.                                        |
| <a href="https://git-scm.com/" target="_blank" rel="nofollow noopener noreferrer">Git</a>                                                          | Version control system.                                                   |
| <a href="https://github.com/nvm-sh/nvm" target="_blank" rel="nofollow noopener noreferrer">NVM, Node and NPM</a>                                   | Node version manager. Node Package manager.                               |
| <a href="https://nodejs.org/en" target="_blank" rel="nofollow noopener noreferrer">Last Node LTS version</a>                                       | JS runtime env.                                                           |
| <a href="https://pnpm.io/" target="_blank" rel="nofollow noopener noreferrer">PNPM</a>                                                             | Fast, disk space efficient package manager.                               |
| <a href="https://yarnpkg.com/" target="_blank" rel="nofollow noopener noreferrer">Yarn</a>                                                         | Yarn is a package manager that doubles down as project manager.           |
| <a href="https://code.visualstudio.com/" target="_blank" rel="nofollow noopener noreferrer">VSCode</a>                                             | Code editor redefined and optimized for building applications.            |
| <a href="https://slack.com" target="_blank" rel="nofollow noopener noreferrer">Slack</a>                                                           | Chat application. Slack is a new way to communicate with your team.       |
| <a href="https://tableplus.com/" target="_blank" rel="nofollow noopener noreferrer">TablePlus</a>                                                  | Modern, Native Tool for Database Management.                              |
| <a href="https://www.docker.com/" target="_blank" rel="nofollow noopener noreferrer">Docker</a>                                                    | Container system.                                                         |
| <a href="https://www.postman.com/" target="_blank" rel="nofollow noopener noreferrer">Postman</a>                                                  | Postman is an API platform for building and using APIs.                   |
| <a href="https://www.figma.com/" target="_blank" rel="nofollow noopener noreferrer">Figma</a>                                                      | Design tool.                                                              |
| <a href="https://www.notion.so" target="_blank" rel="nofollow noopener noreferrer">Notion</a>                                                      | Productivity tool. Centralize all your ideas, projects, etc.              |
| <a href="https://www.spotify.com" target="_blank" rel="nofollow noopener noreferrer">Spotify</a>                                                   | Music application.                                                        |
| <a href="https://www.google.com/chrome/" target="_blank" rel="nofollow noopener noreferrer">Google Chrome</a>                                      | Web browser.                                                              |
| <a href="https://www.mozilla.org/en-US/firefox/new" target="_blank" rel="nofollow noopener noreferrer">Firefox</a>                                 | Web browser.                                                              |
| <a href="https://www.microsoft.com/en-us/edge" target="_blank" rel="nofollow noopener noreferrer">Microsoft Edge</a>                               | Web browser.                                                              |
| <a href="https://theunarchiver.com/" target="_blank" rel="nofollow noopener noreferrer">Unarchiver</a>                                             | Deal with .zip or .rar files.                                             |
| <a href="https://rectangleapp.com/" target="_blank" rel="nofollow noopener noreferrer">Rectangle</a>                                               | Window snap tool.                                                         |
| <a href="https://gifox.app" target="_blank" rel="nofollow noopener noreferrer">Gifox</a>                                                           | GIF capture tool.                                                         |
| <a href="https://menubarx.app/" target="_blank" rel="nofollow noopener noreferrer">MenubarX</a>                                                    | Adds menubar icons with browser inside of it.                             |
| <a href="https://apps.apple.com/us/app/meetingbar-for-meet-zoom-co/id1532419400" target="_blank" rel="nofollow noopener noreferrer">MeetingBar</a> | Shows your meetings on menubar.                                           |
| <a href="https://www.grammarly.com/desktop" target="_blank" rel="nofollow noopener noreferrer">Grammarly</a>                                       | Translation companion.                                                    |
| <a href="https://matthewpalmer.net/rocket/" target="_blank" rel="nofollow noopener noreferrer">Rocket</a>                                          | Emojis slack-like but to the entire system.                               |
| <a href="https://matthewpalmer.net/vanilla" target="_blank" rel="nofollow noopener noreferrer">Vanilla</a>                                         | App to organize your menubar.                                             |
| <a href="https://nordvpn.com" target="_blank" rel="nofollow noopener noreferrer">NordVPN</a>                                                       | Virtual private network.                                                  |
| <a href="https://bitwarden.com/" target="_blank" rel="nofollow noopener noreferrer">Bitwarden</a>                                                  | Password vault app.                                                       |
| <a href="https://topnotch.app/" target="_blank" rel="nofollow noopener noreferrer">Topnotch</a>                                                    | Makes your menubar black (ideal to M1 macs).                              |

## Apps you need to install manually
| App    | Description    |
|----------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
| <a href="https://apps.apple.com/app/dear-sun/id1580614999" target="_blank" rel="nofollow noopener noreferrer">Dear Sun</a>       | Bring Weather information to your menu bar.                   |
| <a href="https://freemacsoft.net/appcleaner/" target="_blank" rel="nofollow noopener noreferrer">App Cleaner</a>                 | App to unninstall your apps.                                  |
| <a href="https://apps.apple.com/us/app/easyres/id688211836?mt=12" target="_blank" rel="nofollow noopener noreferrer">EasyRes</a> | Adjust your external monitor resolutions with more precision. |

## Automatically applied configurations
Some OS configurations are automatically applied, like changes on dock or Finder.
- Finder: Show hidden files
- Finder: Display as columns by default
- Dock: Switch animations to "scale" effect
- Dock: Set icon size to 36
- Dock: Set to autohide
- Dock: Set to not show recent apps
- Dock: Add 5 blank spaces (empty application boxes)