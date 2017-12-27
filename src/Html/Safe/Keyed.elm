module Html.Safe.Keyed exposing (node)

import Html.Internal
    exposing
        ( Attribute
        , Html(..)
        , attrToCore
        , toCore
        , todo
        , unsafelyCoerce
        )
import Html.Keyed as CoreKeyed


node :
    (List (Attribute a msg)
     -> List (Html b msg)
     -> Html c msg
    )
    -> List (Attribute a msg)
    -> List ( String, Html b msg )
    -> Html c msg
node witness attrs children =
    let
        (Html tagName _) =
            witness [] []
    in
    CoreKeyed.node tagName
        (List.map attrToCore attrs)
        (List.map (Tuple.mapSecond toCore) children)
        |> unsafelyCoerce tagName
