# After Effects Script Launcher (OSX)
Launch a .jsx script in After Effects from Terminal.

https://gfxhacks.com/quick-setup-for-after-effects-scripting/

Requires 2 arguments:
1. AE version ID e.g. 2021, or "(Beta)" - will check to see if installed on system first.
2. Script file (.jsx) - just drag and drop in Terminal.

## Usage

```sh
sh aesl.sh ID path/to/script.jsx
```

alternatively, make the file executable:

```sh
chmod +x aesl.sh
```

Then copy/move it to the `/usr/local/bin` directory:

```sh
sudo mv aesl.sh /usr/local/bin/aesl
```

If using a custom directory, make sure it's indexed in the `PATH` -
add this line to the `.bashrc` config file located in the Home directory (`~`), if using **Bash**; or `.zshrc` if using **zsh**:

_If the config file doesn't exist, create it first._

```sh
export PATH=$PATH:/custom/dir
```

Now the script can simply be run using:

```sh
aesl ID script.jsx
```
