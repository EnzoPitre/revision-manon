# Révision de Manon

Deux applis de révision, construites uniquement à partir des fiches de Manon.

| Fichier | Contenu |
|---|---|
| `index.html` | **Le Mur de Manon** : Ophtalmo, ORL, Pneumo, Psy, Réa (27 fiches, 292 flashcards) |
| `errata.html` | **Errata rang A** : de la gynéco à la pharmaco (100 fiches, 417 flashcards) |

Chaque appli propose les fiches (avec mode « cacher les mots-clés »), des flashcards à répétition espacée, un QCM, un vrai/faux chronométré, des associations, un tri par catégories et des séries à remettre dans l'ordre. La progression est enregistrée dans le navigateur.

Ouvrir un fichier `.html` dans un navigateur suffit, aucune installation n'est nécessaire.

## Modifier le contenu

Les sources sont dans `src/` :

- `src/shared/` : styles et moteur communs aux deux applis
- `src/mur/` et `src/errata/` : configuration (`01-config.html`) et données de chaque appli (fiches `F(...)`, jeux `GROUPS`, `TRIS`, `ORDRES`, `FLASH`)

Après une modification, régénérer les deux pages :

```sh
sh build.sh
```
