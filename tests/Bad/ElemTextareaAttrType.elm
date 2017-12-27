module Bad.ElemTextareaAttrType exposing (..)

import Html.Safe as Html
import Html.Safe.Attributes as Attr


foo =
    Html.textarea [ Attr.type_ "text" ] []
