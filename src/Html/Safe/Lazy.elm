module Html.Safe.Lazy
    exposing
        ( lazy
        , lazy2
        )

{-| Since all Elm functions are pure we have a guarantee that the same input
will always result in the same output. This module gives us tools to be lazy
about building `Html` that utilize this fact.

Rather than immediately applying functions to their arguments, the `lazy`
functions just bundle the function and arguments up for later. When diffing
the old and new virtual DOM, it checks to see if all the arguments are equal.
If so, it skips calling the function!

This is a really cheap test and often makes things a lot faster, but definitely
benchmark to be sure!

@docs lazy, lazy2, lazy3

-}

import Html as Core
import Html.Internal exposing (toCore1, toCore2, unsafe)
import Html.Lazy as CoreLazy
import Html.Safe exposing (Html)


{-| A performance optimization that delays the building of virtual DOM nodes.

Calling `(view model)` will definitely build some virtual DOM, perhaps a lot of
it. Calling `(lazy view model)` delays the call until later. During diffing, we
can check to see if `model` is referentially equal to the previous value used,
and if so, we just stop. No need to build up the tree structure and diff it,
we know if the input to `view` is the same, the output must be the same!

-}
lazy : (a -> Html b msg) -> a -> Html b msg
lazy fn a =
    unsafe <| CoreLazy.lazy2 toCore1 fn a


{-| Same as `lazy` but checks on two arguments.
-}
lazy2 : (a -> b -> Html c msg) -> a -> b -> Html c msg
lazy2 fn a b =
    unsafe <| CoreLazy.lazy3 toCore2 fn a b
