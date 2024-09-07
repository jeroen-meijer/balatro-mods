# Balatro Mods

Collection of my most used mods for Balatro.

## Pre-requisites

1. Install [Balatro through Steam](https://store.steampowered.com/app/2379780/Balatro/).
2. Install [Lovely](https://github.com/ethangreen-dev/lovely-injector).
3. Clone this repository into Balatro's app support folder and name it 'Mods'.

The support directory differs depending on the platform:

- Windows: `%AppData%/Balatro`
- macOS: `~/Library/Application Support/Balatro`

Clone the repository like so:

```bash
# Go to the Balatro app support folder
cd "<YOUR_BALATRO_APP_SUPPORT_FOLDER>"

# Clone the repository. Don't forget the `Mods` folder name!
git clone https://github.com/jeroen-meijer/balatro-mods Mods

# Switch to this branch (`jeroen`)
cd Mods
git checkout jeroen

# Fetch all submodules to install the mods
git submodule update --init --recursive
```

4. Start Balatro.

> [!IMPORTANT]
>
> On macOS, you cannot run your game through Steam due to a bug within the Steam client. You must run it with the `run_lovely.sh` script you placed in Balatro's installation directory.
>
> _Source: [Lovely's README](https://github.com/ethangreen-dev/lovely-injector?tab=readme-ov-file#mac)_

## Updating

To update the mods, simply pull the latest changes from this repository:

```bash
# Go to the Balatro app support folder
cd "<YOUR_BALATRO_APP_SUPPORT_FOLDER>/Mods"

# Pull the latest changes
git pull

# Fetch all submodules to update the mods
git submodule update --init --recursive
```

## Mods

- [**Streamodded**](https://github.com/Steamopollys/Steamodded) (modding engine)
- [**JokerDisplay**](https://github.com/nh6574/JokerDisplay?tab=readme-ov-file): Simple Balatro mod that displays information such as modifiers or relevant hands, ranks or suits under Jokers.
- [**Better Mouse And Gamepad**](https://github.com/Kooluve/Better-Mouse-And-Gamepad): Makes the mouse and gamepad more efficient and easier to use.
