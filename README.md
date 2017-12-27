# elm-safer-html

`textarea [ type_ "WAT" ] [ br [] [ ul [] [] ]` should be impossible.

- `type_` on textarea blows up
- `textarea` can't (semantically) hold anything but text
- `br` is a void element

