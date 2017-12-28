module Html.Safe.Attributes exposing (..)

import Html as CoreHtml
import Html.Attributes as Core
import Html.Internal exposing (Supported, todo)


type alias Attribute a msg =
    Html.Internal.Attribute a msg


coerce : (a -> CoreHtml.Attribute msg) -> a -> Attribute b msg
coerce =
    Html.Internal.attrCoerce



-- GLOBAL ATTRIBUTES


{-| Often used with CSS to style elements with common properties.
-}
class : String -> Attribute compat msg
class =
    coerce Core.class


{-| Indicates the relevance of an element.
-}
hidden : Bool -> Attribute compat msg
hidden =
    coerce Core.hidden


{-| Often used with CSS to style a specific element. The value of this
attribute must be unique.
-}
id : String -> Attribute compat msg
id =
    coerce Core.id


{-| Text to be displayed in a tooltip when hovering over the element.
-}
title : String -> Attribute compat msg
title =
    coerce Core.title



-- LESS COMMON GLOBAL ATTRIBUTES


{-| Defines a keyboard shortcut to activate or add focus to the element.
-}
accesskey : Char -> Attribute compat msg
accesskey =
    coerce Core.accesskey


{-| Indicates whether the element's content is editable.
-}
contenteditable : Bool -> Attribute compat msg
contenteditable =
    coerce Core.contenteditable


{-| Defines the ID of a `menu` element which will serve as the element's
context menu.
-}
contextmenu : String -> Attribute compat msg
contextmenu =
    coerce Core.contextmenu


{-| Defines the text direction. Allowed values are ltr (Left-To-Right) or rtl
(Right-To-Left).
-}
dir : String -> Attribute compat msg
dir =
    coerce Core.dir


{-| Defines whether the element can be dragged.
-}
draggable : String -> Attribute compat msg
draggable =
    coerce Core.draggable


{-| Indicates that the element accept the dropping of content on it.
-}
dropzone : String -> Attribute compat msg
dropzone =
    coerce Core.dropzone


{-| -}
itemprop : String -> Attribute compat msg
itemprop =
    coerce Core.itemprop


{-| Defines the language used in the element.
-}
lang : String -> Attribute compat msg
lang =
    coerce Core.lang


{-| Indicates whether spell checking is allowed for the element.
-}
spellcheck : Bool -> Attribute compat msg
spellcheck =
    coerce Core.spellcheck


{-| Overrides the browser's default tab order and follows the one specified
instead.
-}
tabindex : Int -> Attribute compat msg
tabindex =
    coerce Core.tabindex



-- EMBEDDED CONTENT


{-| The URL of the embeddable content. For `audio`, `embed`, `iframe`, `img`,
`input`, `script`, `source`, `track`, and `video`.
-}
src : String -> Attribute { compat | src : Supported } msg
src =
    coerce Core.src


{-| Declare the height of a `canvas`, `embed`, `iframe`, `img`, `input`,
`object`, or `video`.
-}
height : Int -> Attribute { compat | height : Supported } msg
height =
    coerce Core.height


{-| Declare the width of a `canvas`, `embed`, `iframe`, `img`, `input`,
`object`, or `video`.
-}
width : Int -> Attribute { compat | width : Supported } msg
width =
    coerce Core.width


{-| Alternative text in case an image can't be displayed. Works with `img`,
`area`, and `input`.
-}
alt : String -> Attribute { compat | alt : Supported } msg
alt =
    coerce Core.alt



-- AUDIO and VIDEO


{-| The `audio` or `video` should play as soon as possible.
-}
autoplay : Bool -> Attribute { compat | autoplay : Supported } msg
autoplay =
    coerce Core.autoplay


{-| Indicates whether the browser should show playback controls for the `audio`
or `video`.
-}
controls : Bool -> Attribute { compat | controls : Supported } msg
controls =
    coerce Core.controls


{-| Indicates whether the `audio` or `video` should start playing from the
start when it's finished.
-}
loop : Bool -> Attribute { compat | loop : Supported } msg
loop =
    coerce Core.loop


{-| Control how much of an `audio` or `video` resource should be preloaded.
-}
preload : String -> Attribute { compat | preload : Supported } msg
preload =
    coerce Core.preload


{-| A URL indicating a poster frame to show until the user plays or seeks the
`video`.
-}
poster : String -> Attribute { compat | poster : Supported } msg
poster =
    coerce Core.poster


{-| Indicates that the `track` should be enabled unless the user's preferences
indicate something different.
-}
default : Bool -> Attribute { compat | default : Supported } msg
default =
    coerce Core.default


{-| Specifies the kind of text `track`.
-}
kind : String -> Attribute { compat | kind : Supported } msg
kind =
    coerce Core.kind



{--TODO: maybe reintroduce once there's a better way to disambiguate imports
{-| Specifies a user-readable title of the text `track`. -}
label : String -> Attribute compat msg


--}


{-| A two letter language code indicating the language of the `track` text data.
-}
srclang : String -> Attribute { compat | srclang : Supported } msg
srclang =
    coerce Core.srclang



-- IFRAMES


{-| A space separated list of security restrictions you'd like to lift for an
`iframe`.
-}
sandbox : String -> Attribute { compat | sandbox : Supported } msg
sandbox =
    coerce Core.sandbox


{-| Make an `iframe` look like part of the containing document.
-}
seamless : Bool -> Attribute { compat | seamless : Supported } msg
seamless =
    coerce Core.seamless


{-| An HTML document that will be displayed as the body of an `iframe`. It will
override the content of the `src` attribute if it has been specified.
-}
srcdoc : String -> Attribute { compat | srcdoc : Supported } msg
srcdoc =
    coerce Core.srcdoc



-- INPUT


{-| Defines the type of a `button`, `input`, `embed`, `object`, `script`,
`source`, `style`, or `menu`.
-}
type_ : String -> Attribute { compat | type_ : Supported } msg
type_ =
    coerce Core.type_


{-| Defines a default value which will be displayed in a `button`, `option`,
`input`, `li`, `meter`, `progress`, or `param`.
-}
value : String -> Attribute { compat | value : Supported } msg
value =
    coerce Core.value


{-| Defines an initial value which will be displayed in an `input` when that
`input` is added to the DOM. Unlike `value`, altering `defaultValue` after the
`input` element has been added to the DOM has no effect.
-}
defaultValue : String -> Attribute { compat | defaultValue : Supported } msg
defaultValue =
    coerce Core.defaultValue


{-| Indicates whether an `input` of type checkbox is checked.
-}
checked : Bool -> Attribute { compat | checked : Supported } msg
checked =
    coerce Core.checked


{-| Provides a hint to the user of what can be entered into an `input` or
`textarea`.
-}
placeholder : String -> Attribute { compat | placeholder : Supported } msg
placeholder =
    coerce Core.placeholder


{-| Defines which `option` will be selected on page load.
-}
selected : Bool -> Attribute { compat | selected : Supported } msg
selected =
    coerce Core.selected



-- INPUT HELPERS


{-| List of types the server accepts, typically a file type.
For `form` and `input`.
-}
accept : String -> Attribute { compat | accept : Supported } msg
accept =
    coerce Core.accept


{-| List of supported charsets in a `form`.
-}
acceptCharset : String -> Attribute { compat | acceptCharset : Supported } msg
acceptCharset =
    coerce Core.acceptCharset


{-| The URI of a program that processes the information submitted via a `form`.
-}
action : String -> Attribute { compat | action : Supported } msg
action =
    coerce Core.action


{-| Indicates whether a `form` or an `input` can have their values automatically
completed by the browser.
-}
autocomplete : Bool -> Attribute { compat | autocomplete : Supported } msg
autocomplete =
    coerce Core.autocomplete


{-| The element should be automatically focused after the page loaded.
For `button`, `input`, `keygen`, `select`, and `textarea`.
-}
autofocus : Bool -> Attribute { compat | autofocus : Supported } msg
autofocus =
    coerce Core.autofocus


{-| Indicates whether the user can interact with a `button`, `fieldset`,
`input`, `keygen`, `optgroup`, `option`, `select` or `textarea`.
-}
disabled : Bool -> Attribute { compat | disabled : Supported } msg
disabled =
    coerce Core.disabled


{-| How `form` data should be encoded when submitted with the POST method.
Options include: application/x-www-form-urlencoded, multipart/form-data, and
text/plain.
-}
enctype : String -> Attribute { compat | enctype : Supported } msg
enctype =
    coerce Core.enctype


{-| Indicates the action of an `input` or `button`. This overrides the action
defined in the surrounding `form`.
-}
formaction : String -> Attribute { compat | formaction : Supported } msg
formaction =
    coerce Core.formaction


{-| Associates an `input` with a `datalist` tag. The datalist gives some
pre-defined options to suggest to the user as they interact with an input.
The value of the list attribute must match the id of a `datalist` node.
For `input`.
-}
list : String -> Attribute { compat | list : Supported } msg
list =
    coerce Core.list


{-| Defines the minimum number of characters allowed in an `input` or
`textarea`.
-}
minlength : Int -> Attribute { compat | minlength : Supported } msg
minlength =
    coerce Core.minlength


{-| Defines the maximum number of characters allowed in an `input` or
`textarea`.
-}
maxlength : Int -> Attribute { compat | maxlength : Supported } msg
maxlength =
    coerce Core.maxlength


{-| Defines which HTTP method to use when submitting a `form`. Can be GET
(default) or POST.
-}
method : String -> Attribute { compat | method : Supported } msg
method =
    coerce Core.method


{-| Indicates whether multiple values can be entered in an `input` of type
email or file. Can also indicate that you can `select` many options.
-}
multiple : Bool -> Attribute { compat | multiple : Supported } msg
multiple =
    coerce Core.multiple


{-| Name of the element. For example used by the server to identify the fields
in form submits. For `button`, `form`, `fieldset`, `iframe`, `input`, `keygen`,
`object`, `output`, `select`, `textarea`, `map`, `meta`, and `param`.
-}
name : String -> Attribute { compat | name : Supported } msg
name =
    coerce Core.name


{-| This attribute indicates that a `form` shouldn't be validated when
submitted.
-}
novalidate : Bool -> Attribute { compat | novalidate : Supported } msg
novalidate =
    coerce Core.novalidate


{-| Defines a regular expression which an `input`'s value will be validated
against.
-}
pattern : String -> Attribute { compat | pattern : Supported } msg
pattern =
    coerce Core.pattern


{-| Indicates whether an `input` or `textarea` can be edited.
-}
readonly : Bool -> Attribute { compat | readonly : Supported } msg
readonly =
    coerce Core.readonly


{-| Indicates whether this element is required to fill out or not.
For `input`, `select`, and `textarea`.
-}
required : Bool -> Attribute { compat | required : Supported } msg
required =
    coerce Core.required


{-| For `input` specifies the width of an input in characters.

For `select` specifies the number of visible options in a drop-down list.

-}
size : Int -> Attribute { compat | size : Supported } msg
size =
    coerce Core.size


{-| The element ID described by this `label` or the element IDs that are used
for an `output`.
-}
for : String -> Attribute { compat | for : Supported } msg
for =
    coerce Core.for



{- TODO: rest of file -}


{-| Indicates the element ID of the `form` that owns this particular `button`,
`fieldset`, `input`, `keygen`, `label`, `meter`, `object`, `output`,
`progress`, `select`, or `textarea`.
-}
form : String -> Attribute compat msg
form =
    todo



-- RANGES


{-| Indicates the maximum value allowed. When using an input of type number or
date, the max value must be a number or date. For `input`, `meter`, and `progress`.
-}
max : String -> Attribute compat msg
max =
    todo


{-| Indicates the minimum value allowed. When using an input of type number or
date, the min value must be a number or date. For `input` and `meter`.
-}
min : String -> Attribute compat msg
min =
    todo


{-| Add a step size to an `input`. Use `step "any"` to allow any floating-point
number to be used in the input.
-}
step : String -> Attribute compat msg
step =
    todo



--------------------------


{-| Defines the number of columns in a `textarea`.
-}
cols : Int -> Attribute compat msg
cols =
    todo


{-| Defines the number of rows in a `textarea`.
-}
rows : Int -> Attribute compat msg
rows =
    todo


{-| Indicates whether the text should be wrapped in a `textarea`. Possible
values are "hard" and "soft".
-}
wrap : String -> Attribute compat msg
wrap =
    todo



-- MAPS


{-| When an `img` is a descendent of an `a` tag, the `ismap` attribute
indicates that the click location should be added to the parent `a`'s href as
a query string.
-}
ismap : Bool -> Attribute compat msg
ismap =
    todo


{-| Specify the hash name reference of a `map` that should be used for an `img`
or `object`. A hash name reference is a hash symbol followed by the element's name or id.
E.g. `"#planet-map"`.
-}
usemap : String -> Attribute compat msg
usemap =
    todo


{-| Declare the shape of the clickable area in an `a` or `area`. Valid values
include: default, rect, circle, poly. This attribute can be paired with
`coords` to create more particular shapes.
-}
shape : String -> Attribute compat msg
shape =
    todo


{-| A set of values specifying the coordinates of the hot-spot region in an
`area`. Needs to be paired with a `shape` attribute to be meaningful.
-}
coords : String -> Attribute compat msg
coords =
    todo



-- KEY GEN


{-| A challenge string that is submitted along with the public key in a `keygen`.
-}
challenge : String -> Attribute compat msg
challenge =
    todo


{-| Specifies the type of key generated by a `keygen`. Possible values are:
rsa, dsa, and ec.
-}
keytype : String -> Attribute compat msg
keytype =
    todo



-- REAL STUFF


{-| Specifies the horizontal alignment of a `caption`, `col`, `colgroup`,
`hr`, `iframe`, `img`, `table`, `tbody`, `td`, `tfoot`, `th`, `thead`, or
`tr`.
-}
align : String -> Attribute compat msg
align =
    todo


{-| Contains a URI which points to the source of the quote or change in a
`blockquote`, `del`, `ins`, or `q`.
-}
cite : String -> Attribute compat msg
cite =
    todo



-- LINKS AND AREAS


{-| The URL of a linked resource, such as `a`, `area`, `base`, or `link`.
-}
href : String -> Attribute { compat | href : Supported } msg
href =
    coerce Core.href


{-| Specify where the results of clicking an `a`, `area`, `base`, or `form`
should appear. Possible special values include:

  - _blank &mdash; a new window or tab
  - _self &mdash; the same frame (this is default)
  - _parent &mdash; the parent frame
  - _top &mdash; the full body of the window

You can also give the name of any `frame` you have created.

-}
target : String -> Attribute compat msg
target =
    todo


{-| Indicates that clicking an `a` and `area` will download the resource
directly.
-}
download : Bool -> Attribute compat msg
download =
    todo


{-| Indicates that clicking an `a` and `area` will download the resource
directly, and that the downloaded resource with have the given filename.
-}
downloadAs : String -> Attribute compat msg
downloadAs =
    todo


{-| Two-letter language code of the linked resource of an `a`, `area`, or `link`.
-}
hreflang : String -> Attribute compat msg
hreflang =
    todo


{-| Specifies a hint of the target media of a `a`, `area`, `link`, `source`,
or `style`.
-}
media : String -> Attribute compat msg
media =
    todo


{-| Specify a URL to send a short POST request to when the user clicks on an
`a` or `area`. Useful for monitoring and tracking.
-}
ping : String -> Attribute compat msg
ping =
    todo


{-| Specifies the relationship of the target object to the link object.
For `a`, `area`, `link`.
-}
rel : String -> Attribute compat msg
rel =
    todo



-- CRAZY STUFF


{-| Indicates the date and time associated with the element.
For `del`, `ins`, `time`.
-}
datetime : String -> Attribute compat msg
datetime =
    todo


{-| Indicates whether this date and time is the date of the nearest `article`
ancestor element. For `time`.
-}
pubdate : String -> Attribute compat msg
pubdate =
    todo



-- ORDERED LISTS


{-| Indicates whether an ordered list `ol` should be displayed in a descending
order instead of a ascending.
-}
reversed : Bool -> Attribute compat msg
reversed =
    todo


{-| Defines the first number of an ordered list if you want it to be something
besides 1.
-}
start : Int -> Attribute compat msg
start =
    todo



-- TABLES


{-| The colspan attribute defines the number of columns a cell should span.
For `td` and `th`.
-}
colspan : Int -> Attribute compat msg
colspan =
    todo


{-| A space separated list of element IDs indicating which `th` elements are
headers for this cell. For `td` and `th`.
-}
headers : String -> Attribute compat msg
headers =
    todo


{-| Defines the number of rows a table cell should span over.
For `td` and `th`.
-}
rowspan : Int -> Attribute compat msg
rowspan =
    todo


{-| Specifies the scope of a header cell `th`. Possible values are: col, row,
colgroup, rowgroup.
-}
scope : String -> Attribute compat msg
scope =
    todo


{-| Specifies the URL of the cache manifest for an `html` tag.
-}
manifest : String -> Attribute compat msg
manifest =
    todo



{--TODO: maybe reintroduce once there's a better way to disambiguate imports
{-| The number of columns a `col` or `colgroup` should span. -}
span : Int -> Attribute msg
span n =
    stringProperty "span" (toString n)
--}
