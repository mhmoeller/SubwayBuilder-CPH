# Subway Builder – Copenhagen (CPH) Map
This repository contains a comprehensive Map Pack for Subway Builder. It adds the Greater Copenhagen area, including North Zealand (Nordsjælland), Roskilde Fjord and Køge Bugt to the game.
The package utilizes high-quality real-world data to provide census data from Statistics Denmark, Agency of Climate Data and EU's EMODnet.

## Features
Detailed Geography: Covers Copenhagen, North Zealand, and surrounding fjords.
Realistic Bathymetry: Custom generated ocean_depth_index.json combining EMODnet data for the sea and GeoDanmark correction data for lakes (Arresø, Esrum Sø, etc.), ensuring accurate water rendering(When this gets fixed from the devs).
Automated Installer: Includes a custom Node.js script that automatically places large data files in the correct game directories (cities/data/CPH) while keeping the mod manageable.
Portable Map Server: Generates a serve.bat file that makes hosting the local map tiles (PMTiles) easy.

## Requirements
Subway Builder (the game)
Node.js (Required to run the installer script)
The files from this repository.

## Installation
The installation process is automated to ensure all data files end up in the correct folders.

1. Open the game, go to the Settings and enable modding. Press the Open Mods Folder.

2. Create a folder and name it CPH

3. Download the latest release (ZIP file).

4. Unzip the content into your game's Mods folder:

5. Run the Installer:

6. Windows: Double-click install.bat inside the CPH folder.
Mac/Linux: Open a terminal in the folder and run node install.js.

Wait for the script to finish. It will:
Move the heavy data files (.gz) to the cities/data/CPH folder.
Generate a serve.bat file for you.

## How to Play
Start the Map Server:
Locate the serve.bat file (created by the installer in the mod folder).
Tip: You can move serve.bat to your Desktop for easy access.
Double-click it to start the local server. Keep this window open while playing.
Start the Game:
Open Subway Builder.
Go to Mods and enable CPH (if listed).
Close the game entirely.
Restart the game.
Start a New Game and select CPH as your city.

### Notes
Data Files: The installer moves ocean_depth_index.json.gz, roads.geojson.gz, buildings_index.json.gz, etc., to the game's internal data structure.

Map Server: The pmtiles.exe utility is included to serve the map tiles locally. The serve.bat script launches this on port 8081 with CORS enabled, which is required for the game to display the background map.

Uninstalling: To remove the map, delete the CPH folder from your mods directory and delete the CPH folder from %APPDATA%\metro-maker4\cities\data\.
