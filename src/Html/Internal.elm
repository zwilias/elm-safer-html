module Html.Internal
    exposing
        ( Attribute(..)
        , Html(..)
        , Supported(..)
        , attrToCore
        , coerce
        , toCore
        , toCore1
        , toCore2
        , todo
        , unsafelyCoerce
        )

import Html as Core


type Supported
    = Supported


type Attribute a msg
    = Attribute (Core.Attribute msg)


type Html a msg
    = Html String (Core.Html msg)


unsafelyCoerce : String -> Core.Html msg -> Html a msg
unsafelyCoerce =
    Html


coerce : String -> (List (Core.Attribute msg) -> List (Core.Html msg) -> Core.Html msg) -> List (Attribute a msg) -> List (Html b msg) -> Html c msg
coerce tagName wrapped attrs children =
    wrapped (List.map attrToCore attrs) (List.map toCore children)
        |> unsafelyCoerce tagName


toCore : Html a msg -> Core.Html msg
toCore (Html _ html) =
    html


toCore1 : (a -> Html b msg) -> a -> Core.Html msg
toCore1 op a =
    toCore <| op a


toCore2 : (a -> b -> Html c msg) -> a -> b -> Core.Html msg
toCore2 op a b =
    toCore <| op a b


attrToCore : Attribute a msg -> Core.Attribute msg
attrToCore (Attribute attr) =
    attr


todo : a -> b
todo =
    Debug.crash "todo"
