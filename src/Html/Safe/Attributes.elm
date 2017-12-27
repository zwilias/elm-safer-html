module Html.Safe.Attributes exposing (..)

import Html.Internal exposing (todo)


type alias Attribute a msg =
    Html.Internal.Attribute a msg



-- GLOBAL ATTRIBUTES


{-| Often used with CSS to style elements with common properties.
-}
class : String -> Attribute compat msg
class =
    todo


{-| Indicates the relevance of an element.
-}
hidden : Bool -> Attribute compat msg
hidden =
    todo


{-| Often used with CSS to style a specific element. The value of this
attribute must be unique.
-}
id : String -> Attribute compat msg
id =
    todo


{-| Text to be displayed in a tooltip when hovering over the element.
-}
title : String -> Attribute compat msg
title =
    todo



-- LESS COMMON GLOBAL ATTRIBUTES


{-| Defines a keyboard shortcut to activate or add focus to the element.
-}
accesskey : Char -> Attribute compat msg
accesskey =
    todo


{-| Indicates whether the element's content is editable.
-}
contenteditable : Bool -> Attribute compat msg
contenteditable =
    todo


{-| Defines the ID of a `menu` element which will serve as the element's
context menu.
-}
contextmenu : String -> Attribute compat msg
contextmenu =
    todo


{-| Defines the text direction. Allowed values are ltr (Left-To-Right) or rtl
(Right-To-Left).
-}
dir : String -> Attribute compat msg
dir =
    todo


{-| Defines whether the element can be dragged.
-}
draggable : String -> Attribute compat msg
draggable =
    todo


{-| Indicates that the element accept the dropping of content on it.
-}
dropzone : String -> Attribute compat msg
dropzone =
    todo


{-| -}
itemprop : String -> Attribute compat msg
itemprop =
    todo


{-| Defines the language used in the element.
-}
lang : String -> Attribute compat msg
lang =
    todo


{-| Indicates whether spell checking is allowed for the element.
-}
spellcheck : Bool -> Attribute compat msg
spellcheck =
    todo


{-| Overrides the browser's default tab order and follows the one specified
instead.
-}
tabindex : Int -> Attribute compat msg
tabindex =
    todo



-- HEADER STUFF


{-| Indicates that the `script` should be executed asynchronously.
-}
async : Bool -> Attribute compat msg
async =
    todo


{-| Declares the character encoding of the page or script. Common values include:

  - UTF-8 - Character encoding for Unicode
  - ISO-8859-1 - Character encoding for the Latin alphabet

For `meta` and `script`.

-}
charset : String -> Attribute compat msg
charset =
    todo


{-| A value associated with http-equiv or name depending on the context. For
`meta`.
-}
content : String -> Attribute compat msg
content =
    todo


{-| Indicates that a `script` should be executed after the page has been
parsed.
-}
defer : Bool -> Attribute compat msg
defer =
    todo


{-| This attribute is an indicator that is paired with the `content` attribute,
indicating what that content means. `httpEquiv` can take on three different
values: content-type, default-style, or refresh. For `meta`.
-}
httpEquiv : String -> Attribute compat msg
httpEquiv =
    todo


{-| Defines the script language used in a `script`.
-}
language : String -> Attribute compat msg
language =
    todo


{-| Indicates that a `style` should only apply to its parent and all of the
parents children.
-}
scoped : Bool -> Attribute compat msg
scoped =
    todo



-- EMBEDDED CONTENT


{-| The URL of the embeddable content. For `audio`, `embed`, `iframe`, `img`,
`input`, `script`, `source`, `track`, and `video`.
-}
src : String -> Attribute compat msg
src =
    todo


{-| Declare the height of a `canvas`, `embed`, `iframe`, `img`, `input`,
`object`, or `video`.
-}
height : Int -> Attribute compat msg
height =
    todo


{-| Declare the width of a `canvas`, `embed`, `iframe`, `img`, `input`,
`object`, or `video`.
-}
width : Int -> Attribute compat msg
width =
    todo


{-| Alternative text in case an image can't be displayed. Works with `img`,
`area`, and `input`.
-}
alt : String -> Attribute compat msg
alt =
    todo



-- AUDIO and VIDEO


{-| The `audio` or `video` should play as soon as possible.
-}
autoplay : Bool -> Attribute compat msg
autoplay =
    todo


{-| Indicates whether the browser should show playback controls for the `audio`
or `video`.
-}
controls : Bool -> Attribute compat msg
controls =
    todo


{-| Indicates whether the `audio` or `video` should start playing from the
start when it's finished.
-}
loop : Bool -> Attribute compat msg
loop =
    todo


{-| Control how much of an `audio` or `video` resource should be preloaded.
-}
preload : String -> Attribute compat msg
preload =
    todo


{-| A URL indicating a poster frame to show until the user plays or seeks the
`video`.
-}
poster : String -> Attribute compat msg
poster =
    todo


{-| Indicates that the `track` should be enabled unless the user's preferences
indicate something different.
-}
default : Bool -> Attribute compat msg
default =
    todo


{-| Specifies the kind of text `track`.
-}
kind : String -> Attribute compat msg
kind =
    todo



{--TODO: maybe reintroduce once there's a better way to disambiguate imports
{-| Specifies a user-readable title of the text `track`. -}
label : String -> Attribute compat msg


--}


{-| A two letter language code indicating the language of the `track` text data.
-}
srclang : String -> Attribute compat msg
srclang =
    todo



-- IFRAMES


{-| A space separated list of security restrictions you'd like to lift for an
`iframe`.
-}
sandbox : String -> Attribute compat msg
sandbox =
    todo


{-| Make an `iframe` look like part of the containing document.
-}
seamless : Bool -> Attribute compat msg
seamless =
    todo


{-| An HTML document that will be displayed as the body of an `iframe`. It will
override the content of the `src` attribute if it has been specified.
-}
srcdoc : String -> Attribute compat msg
srcdoc =
    todo



-- INPUT


{-| Defines the type of a `button`, `input`, `embed`, `object`, `script`,
`source`, `style`, or `menu`.
-}
type_ : String -> Attribute compat msg
type_ =
    todo


{-| Defines a default value which will be displayed in a `button`, `option`,
`input`, `li`, `meter`, `progress`, or `param`.
-}
value : String -> Attribute compat msg
value =
    todo


{-| Defines an initial value which will be displayed in an `input` when that
`input` is added to the DOM. Unlike `value`, altering `defaultValue` after the
`input` element has been added to the DOM has no effect.
-}
defaultValue : String -> Attribute compat msg
defaultValue =
    todo


{-| Indicates whether an `input` of type checkbox is checked.
-}
checked : Bool -> Attribute compat msg
checked =
    todo


{-| Provides a hint to the user of what can be entered into an `input` or
`textarea`.
-}
placeholder : String -> Attribute compat msg
placeholder =
    todo


{-| Defines which `option` will be selected on page load.
-}
selected : Bool -> Attribute compat msg
selected =
    todo



-- INPUT HELPERS


{-| List of types the server accepts, typically a file type.
For `form` and `input`.
-}
accept : String -> Attribute compat msg
accept =
    todo


{-| List of supported charsets in a `form`.
-}
acceptCharset : String -> Attribute compat msg
acceptCharset =
    todo


{-| The URI of a program that processes the information submitted via a `form`.
-}
action : String -> Attribute compat msg
action =
    todo


{-| Indicates whether a `form` or an `input` can have their values automatically
completed by the browser.
-}
autocomplete : Bool -> Attribute compat msg
autocomplete =
    todo


{-| The element should be automatically focused after the page loaded.
For `button`, `input`, `keygen`, `select`, and `textarea`.
-}
autofocus : Bool -> Attribute compat msg
autofocus =
    todo


{-| Indicates whether the user can interact with a `button`, `fieldset`,
`input`, `keygen`, `optgroup`, `option`, `select` or `textarea`.
-}
disabled : Bool -> Attribute compat msg
disabled =
    todo


{-| How `form` data should be encoded when submitted with the POST method.
Options include: application/x-www-form-urlencoded, multipart/form-data, and
text/plain.
-}
enctype : String -> Attribute compat msg
enctype =
    todo


{-| Indicates the action of an `input` or `button`. This overrides the action
defined in the surrounding `form`.
-}
formaction : String -> Attribute compat msg
formaction =
    todo


{-| Associates an `input` with a `datalist` tag. The datalist gives some
pre-defined options to suggest to the user as they interact with an input.
The value of the list attribute must match the id of a `datalist` node.
For `input`.
-}
list : String -> Attribute compat msg
list =
    todo


{-| Defines the minimum number of characters allowed in an `input` or
`textarea`.
-}
minlength : Int -> Attribute compat msg
minlength =
    todo


{-| Defines the maximum number of characters allowed in an `input` or
`textarea`.
-}
maxlength : Int -> Attribute compat msg
maxlength =
    todo


{-| Defines which HTTP method to use when submitting a `form`. Can be GET
(default) or POST.
-}
method : String -> Attribute compat msg
method =
    todo


{-| Indicates whether multiple values can be entered in an `input` of type
email or file. Can also indicate that you can `select` many options.
-}
multiple : Bool -> Attribute compat msg
multiple =
    todo


{-| Name of the element. For example used by the server to identify the fields
in form submits. For `button`, `form`, `fieldset`, `iframe`, `input`, `keygen`,
`object`, `output`, `select`, `textarea`, `map`, `meta`, and `param`.
-}
name : String -> Attribute compat msg
name =
    todo


{-| This attribute indicates that a `form` shouldn't be validated when
submitted.
-}
novalidate : Bool -> Attribute compat msg
novalidate =
    todo


{-| Defines a regular expression which an `input`'s value will be validated
against.
-}
pattern : String -> Attribute compat msg
pattern =
    todo


{-| Indicates whether an `input` or `textarea` can be edited.
-}
readonly : Bool -> Attribute compat msg
readonly =
    todo


{-| Indicates whether this element is required to fill out or not.
For `input`, `select`, and `textarea`.
-}
required : Bool -> Attribute compat msg
required =
    todo


{-| For `input` specifies the width of an input in characters.

For `select` specifies the number of visible options in a drop-down list.

-}
size : Int -> Attribute compat msg
size =
    todo


{-| The element ID described by this `label` or the element IDs that are used
for an `output`.
-}
for : String -> Attribute compat msg
for =
    todo


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
href : String -> Attribute compat msg
href =
    todo


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
