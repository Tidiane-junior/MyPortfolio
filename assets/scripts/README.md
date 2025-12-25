# Générer les avatars et favicon

Ce dossier contient un script pour **télécharger plusieurs avatars (DiceBear, UI-Avatars, RoboHash), générer un `favicon.ico`** (si ImageMagick est installé) 
et créer `avatars.zip` contenant les images.

Prérequis (local):
- curl
- zip
- (optionnel) ImageMagick (pour `convert` afin de créer favicon.ico)

Exécution locale:
```bash
# depuis la racine du dépôt
bash assets/scripts/generate_avatars.sh
```

Résultat:
- `assets/images/` contenant les images (SVG + PNG)
- `avatars.zip` à la racine du dépôt

Utilisation via GitHub Actions:
- Ajoutez le workflow `.github/workflows/generate_avatars.yml` (fourni séparément) puis déclenchez le workflow manuellement depuis l'onglet Actions. 
Le workflow exécute le script, produit `avatars.zip` comme artifact et tente de committer les fichiers générés.
