# Séance 01 du Challenge 100 jours LN-IA

Mini-site Vite pour présenter la séance en local avec VS Code et Zoom, puis publier la leçon sur GitHub Pages.

Date de référence : vendredi 25 septembre 2026, 19 h, heure du Maroc.
Module 01 : cadrage et prise de conscience.
Formateur : Prof. Abderrahman EL HISSE.

## Démarrer en trois étapes

1. Installer Node.js LTS (version 24 conseillée, minimum 22.12) depuis https://nodejs.org/ si nécessaire. Fermer et rouvrir VS Code après l'installation.
2. Décompresser le pack dans `C:\DEV\CHALLENGE-100-JOURS-AUTOMNE-2026\`. Ouvrir le dossier `seance-01-ln-ia` dans VS Code avec **Fichier → Ouvrir un dossier**.
3. Ouvrir **Terminal → Nouveau terminal**, puis exécuter :

```powershell
npm ci
npm run dev
```

Cliquer sur l'adresse affichée dans le terminal, normalement http://localhost:5173 . Si le port est occupé, Vite affiche un autre port. Ne pas ouvrir index.html par double-clic.

Alternative : double-cliquer sur `DEMARRER-WINDOWS.cmd`. Il installe les dépendances si elles sont absentes et ouvre le navigateur. Une connexion Internet est nécessaire pour la première installation. Ensuite les contenus et images fonctionnent localement sans connexion. Garder la fenêtre du terminal ouverte pendant la présentation.

Si PowerShell refuse npm.ps1, utiliser `npm.cmd ci` puis `npm.cmd run dev`, ou sélectionner le terminal « Command Prompt ». Aucune modification de la politique de sécurité Windows n'est nécessaire.

## Présenter dans Zoom

1. Démarrer le site et ouvrir l'onglet **Présenter**.
2. Utiliser le bouton **Plein écran** (ou F dans la présentation). F11 est une autre possibilité selon le navigateur.
3. Dans Zoom, partager la fenêtre du navigateur qui affiche le site.
4. Avancer avec les flèches gauche/droite, Page précédente/suivante ou les boutons. Espace avance aussi. Échap revient à la leçon (le navigateur peut d'abord quitter le plein écran).
5. Pour la démonstration pratique, changer la fenêtre partagée vers VS Code, puis revenir au navigateur.
6. Les participants accèdent au site après publication. L'adresse localhost fonctionne seulement sur votre ordinateur.

La présentation comporte 12 écrans. Les autres modes donnent accès à la leçon complète, aux cinq prompts et aux cinq affiches. Les affiches s'ouvrent en grand et sont téléchargeables.

## Contenu pédagogique

- Onze sections reprises du guide : mode d'emploi, objectifs, concepts, méthode, VS Code, exercices, réflexion, après-séance, auto-évaluation, annexes, clôture.
- Cinq prompts avec copie effective dans le presse-papiers et téléchargement Markdown.
- Trois modèles de fichiers à compléter dans VS Code.
- Exercice de classement avec correction expliquée.
- Questions de réflexion, checklist et auto-évaluation enregistrées dans le navigateur avec export `bilan-seance-01.md`.
- Cinq affiches LN-IA datées du 25 septembre 2026.

Les réponses ne sont ni envoyées au formateur ni synchronisées. Elles sont conservées localement dans le navigateur et peuvent disparaître si ses données sont effacées. Utiliser **Exporter mon travail .md** pour conserver une copie. Ne pas publier les fichiers personnels des candidats dans le dépôt public.

## Publication sur GitHub Pages

La publication publique a été effectuée le 25 septembre 2026 avec GitHub Actions.

- [Ouvrir le site](https://elhisse-clprepas.github.io/atelier-seance-01_25_SEPTEMBRE_2026/).
- [Ouvrir directement la présentation](https://elhisse-clprepas.github.io/atelier-seance-01_25_SEPTEMBRE_2026/#slides/0).
- [Dépôt GitHub](https://github.com/elhisse-CLPrepas/atelier-seance-01_25_SEPTEMBRE_2026).

Le remote `origin` est configuré et `main` suit `origin/main`. Après un nouveau commit, `git push` déclenche la reconstruction et la publication. Le site et les sources du dépôt sont publics ; aucun mot de passe ni contrôle d'accès par e-mail n'est activé.

Les étapes suivantes servent de référence pour publier une copie dans un autre dépôt.

1. Créer un dépôt GitHub, par exemple `seance-01-challenge-100-jours`. Un dépôt public convient au partage de cette leçon.
2. Dans VS Code, ouvrir la racine `seance-01-ln-ia` : elle contient `package.json` et `.github`.
3. Initialiser Git puis publier les fichiers sources (ne pas publier node_modules).

```powershell
git init
git add .
git commit -m "Ajouter la seance 01 LN-IA"
git branch -M main
```

4. Relier votre dépôt en remplaçant VOTRE-COMPTE et VOTRE-DEPOT :

```powershell
git remote add origin https://github.com/VOTRE-COMPTE/VOTRE-DEPOT.git
git push -u origin main
```

5. Dans GitHub, ouvrir **Settings → Pages → Build and deployment → Source → GitHub Actions**.
6. Ouvrir **Actions → Publier la séance sur GitHub Pages**. Si la première exécution a échoué avant l'activation de Pages, relancer le workflow avec **Run workflow** sur `main`.
7. Attendre la réussite de la publication. Récupérer l'adresse dans **Settings → Pages**. Elle ressemble à `https://VOTRE-COMPTE.github.io/VOTRE-DEPOT/`.

`vite.config.js` utilise `base: './'`. Tous les médias utilisent cette base relative et la navigation repose sur des ancres (#lesson/...), ce qui rend le site portable sous un nom de dépôt différent, sans configuration supplémentaire de chemin.

Le workflow `.github/workflows/pages.yml` installe les dépendances verrouillées, construit `dist` et le publie. Les prochains envois sur main republient le site. Si vous gardez ce mini-site à l'intérieur d'un autre dépôt plutôt qu'à sa racine, adapter les chemins de travail et le chemin du cache dans le workflow.

## Vérifier avant publication

```powershell
npm run build
npm run preview
```

Ouvrir l'adresse indiquée, normalement http://localhost:4173 . Vérifier la présentation, la copie d'un prompt, le téléchargement d'un modèle et l'ouverture des affiches.

Le dossier `dist` est fourni dans le pack comme résultat de construction. Il peut être servi par un serveur HTTP. Ne pas compter sur un double-clic sur son index.html : les modules JavaScript demandent un serveur.

## Modifier la leçon

- `src/content.json` : contenu détaillé extrait du guide, prompts et modèles.
- `src/main.js` : interface, douze écrans de présentation et activités.
- `src/style.css` : couleurs, typographie et adaptation mobile.
- `public/assets/` : logo et affiches à jour.
- `vite.config.js` : configuration du serveur et base relative.
- `sources/` : guide Word original pour traçabilité. Ce dossier n'est pas copié dans dist et n'est pas publié par Pages.

## Choix d'adaptation

Le Word fourni porte la date du 25 septembre 2025 à la demande précédente. Pour ce mini-site consacré à l'automne 2026, toutes les dates visibles, les modèles à télécharger et les affiches ont été harmonisés au 25 septembre 2026. Le Word source reste inchangé.

Les supports Markdown complémentaires proposaient une autre arborescence. La leçon conserve celle du Word, plus courte pour cette première séance : `01-depart`, `02-prompts`, `03-livrables`, `04-portfolio-preuves`. Les trois prompts complémentaires ont été intégrés sans ajouter les consignes de classement contradictoires.

L'affiche d'ordre du jour était déjà datée correctement avec le logo LN-IA. Les quatre autres visuels ont été actualisés avec le logo fourni, la date, la relance automne et l'heure du Maroc. Aucun GMT fixe n'est annoncé.

Le cycle pédagogique en sept étapes du guide est conservé. Le modèle de fiche est celui du guide. Les textes explicatifs sont disponibles en HTML sélectionnable, pas uniquement dans les images.

## Références techniques

- https://vite.dev/guide/
- https://vite.dev/guide/static-deploy.html
- https://nodejs.org/

Projet préparé le 25 septembre 2026. Vite 8.3.1. Dépendances verrouillées dans package-lock.json.

## Vérifications effectuées

Construction Vite réussie. Vérifications dans Chromium : les 12 entrées de leçon, les 12 écrans de présentation, les flèches au clavier, la copie dans le presse-papiers, le téléchargement d'un prompt, l'export du bilan, la persistance des réponses, l'exercice de classement, l'ouverture des affiches, le menu mobile et le chargement sous un sous-dossier. Aucun échec HTTP ni erreur JavaScript dans ces parcours. Affichage contrôlé sur ordinateur 1440 px, projection 1366 px et mobile 390 px.

La publication GitHub Pages a été vérifiée : workflow réussi et réponses HTTP 200 sur l'accueil, le JavaScript, les styles et les six images. Le partage réel dans Zoom reste à effectuer sur votre compte.

## Documents complémentaires

- [Préparer VS Code, Git et GitHub](docs/installation-outils.md).
- [Contrôle local du 25 septembre 2026 et validation visuelle](docs/controle-local.md).
