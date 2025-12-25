#!/usr/bin/env bash
set -euo pipefail

# Crée les dossiers et télécharge plusieurs avatars
mkdir -p assets/images
cd assets/images

curl -L -o avatar-initials.svg "https://avatars.dicebear.com/api/initials/Cheikh%20Tidiane%20THIAM.svg?background=%230D8ABC&color=%23FFFFFF"
curl -L -o avatar-ui-512.png "https://ui-avatars.com/api/?name=Cheikh+Tidiane+THIAM&background=0D8ABC&color=fff&size=512"
curl -L -o avatar-identicon.svg "https://avatars.dicebear.com/api/identicon/CheikhTidianeTHIAM.svg"
curl -L -o avatar-bottts-512.png "https://avatars.dicebear.com/api/bottts/CheikhTidianeTHIAM.png?size=512&background=%23F3F4F6"
curl -L -o avatar-robo-512.png "https://robohash.org/CheikhTidianeTHIAM.png?size=512x512"
curl -L -o avatar-ui-160.png "https://ui-avatars.com/api/?name=Cheikh+Tidiane+THIAM&background=0D8ABC&color=fff&size=160"
curl -L -o avatar-bottts-160.png "https://avatars.dicebear.com/api/bottts/CheikhTidianeTHIAM.png?size=160&background=%23F3F4F6"

# Générer favicon.ico si ImageMagick est installé (convert)
if command -v convert >/dev/null 2>&1; then
  convert avatar-ui-512.png -resize 64x64 favicon-64.png
  convert avatar-ui-512.png -resize 48x48 favicon-48.png
  convert avatar-ui-512.png -resize 32x32 favicon-32.png
  convert avatar-ui-512.png -resize 16x16 favicon-16.png
  convert favicon-64.png favicon-48.png favicon-32.png favicon-16.png favicon.ico || true
  echo "favicon.ico généré"
else
  echo "ImageMagick 'convert' non trouvé, favicon non généré"
fi

# Revenir à la racine et zipper
cd ../..
zip -r avatars.zip assets/images

echo "avatars.zip créé"
