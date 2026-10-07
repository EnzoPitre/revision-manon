# Révision de Manon

Une appli de révision construite uniquement à partir des fiches de Manon, avec deux onglets :

- **Mes fiches** : Ophtalmo, ORL, Pneumo, Psy, Réa (27 fiches, 292 flashcards)
- **Errata rang A** : de la gynéco à la pharmaco (100 fiches, 417 flashcards)

Chaque onglet propose les fiches (avec mode « cacher les mots-clés »), des flashcards à répétition espacée, un QCM, un vrai/faux chronométré, des associations, un tri par catégories et des séries à remettre dans l'ordre. La date du concours est commune aux deux onglets ; la progression de chacun est enregistrée séparément dans le navigateur.

Ouvrir `index.html` dans un navigateur suffit, aucune installation n'est nécessaire.

## Modifier le contenu

Les sources sont dans `src/` :

- `src/shared/` : styles et moteur communs
- `src/mur/` et `src/errata/` : configuration (`01-config.html`) et données de chaque onglet (fiches `F(...)`, jeux `GROUPS`, `TRIS`, `ORDRES`, `FLASH`)

Après une modification, régénérer la page :

```sh
sh build.sh
```
