# Validation de la mise en service locale

Contrôle du 25 septembre 2026, avant le premier commit.

## Résultats techniques

- Node.js 24.12.0 et npm 11.6.2 ; Vite 8.3.1.
- Installation des dépendances verrouillées réussie : 15 paquets installés et 16 audités ; aucune vulnérabilité signalée par npm à cette date.
- Vérification de syntaxe JavaScript et construction de production réussies.
- Contenu JSON vérifié : 11 sections, 5 prompts et 3 modèles, complétés par la page d'accueil.
- Les 6 images sources et leurs copies dans `dist` ont des empreintes SHA-256 identiques.
- Réponses HTTP 200 sur l'accueil, le JavaScript, les styles, le contenu JSON et les 6 images.
- Serveur local vérifié sur `http://127.0.0.1:5173/`.

## Validation visuelle

Le responsable du projet a effectué un survol visuel et confirmé que le résultat est satisfaisant. Aucun navigateur pilotable n'était connecté pour effectuer une nouvelle vérification automatisée des interactions dans cette session.

La copie dans le presse-papiers, les téléchargements, la persistance des réponses et le partage Zoom ne sont pas couverts par ce survol déclaré. Les contrôles Chromium antérieurs sont décrits dans le README.

## Relancer le site

Double-cliquer sur `DEMARRER-WINDOWS.cmd` à la racine du projet, ou exécuter :

```powershell
npm.cmd ci
npm.cmd run dev
```

Garder le terminal ouvert et utiliser Ctrl+C pour arrêter le serveur. Utiliser la même adresse et le même port pour retrouver les réponses enregistrées dans le navigateur. Exporter les réponses en Markdown pour en conserver une copie.

Le serveur ne démarre pas automatiquement avec Windows. La publication GitHub Pages reste une étape distincte, décrite dans le README.
