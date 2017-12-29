module Html.Safe exposing (..)

import Html as Core
import Html.Internal exposing (Supported, coerce, todo)


type alias Attribute a msg =
    Html.Internal.Attribute a msg


type alias Html a msg =
    Html.Internal.Html a msg



-- SECTIONS


{-| Represents the content of an HTML document. There is only one `body`
element in a document.
-}
body :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
body =
    coerce "body" Core.body


{-| Defines a section in a document.
-}
section :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
section =
    coerce "section" Core.section


{-| Defines a section that contains only navigation links.
-}
nav :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
nav =
    coerce "nav" Core.nav


{-| Defines self-contained content that could exist independently of the rest
of the content.
-}
article :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
article =
    coerce "article" Core.article


{-| Defines some content loosely related to the page content. If it is removed,
the remaining content still makes sense.
-}
aside :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
aside =
    coerce "aside" Core.aside


{-| -}
h1 :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
h1 =
    coerce "h1" Core.h1


{-| -}
h2 :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
h2 =
    coerce "h2" Core.h2


{-| -}
h3 :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
h3 =
    coerce "h3" Core.h3


{-| -}
h4 :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
h4 =
    coerce "h4" Core.h4


{-| -}
h5 :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
h5 =
    coerce "h5" Core.h5


{-| -}
h6 :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
h6 =
    coerce "h6" Core.h6


{-| Defines the header of a page or section. It often contains a logo, the
title of the web site, and a navigational table of content.
-}
header :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
header =
    coerce "header" Core.header


{-| Defines the footer for a page or section. It often contains a copyright
notice, some links to legal information, or addresses to give feedback.
-}
footer :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
footer =
    coerce "footer" Core.footer


{-| Defines a section containing contact information.
-}
address :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
address =
    coerce "address" Core.address


{-| Defines the main or important content in the document. There is only one
`main` element in the document.
-}
main_ :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
main_ =
    coerce "main_" Core.main_



-- GROUPING CONTENT


{-| Defines a portion that should be displayed as a paragraph.
-}
p :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
p =
    coerce "p" Core.p


{-| Represents a thematic break between paragraphs of a section or article or
any longer content.
-}
hr :
    List
        (Attribute
            { align : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
hr =
    coerce "hr" Core.hr


{-| Indicates that its content is preformatted and that this format must be
preserved.
-}
pre :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
pre =
    coerce "pre" Core.pre


{-| Represents a content that is quoted from another source.
-}
blockquote :
    List
        (Attribute
            { cite : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
blockquote =
    coerce "blockquote" Core.blockquote


{-| Defines an ordered list of items.
-}
ol :
    List
        (Attribute
            { reversed : Supported
            , start : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
ol =
    coerce "ol" Core.ol


{-| Defines an unordered list of items.
-}
ul :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
ul =
    coerce "ul" Core.ul


{-| Defines a item of an enumeration list.
-}
li :
    List
        (Attribute
            { value : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
li =
    coerce "li" Core.li


{-| Defines a definition list, that is, a list of terms and their associated
definitions.
-}
dl :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
dl =
    coerce "dl" Core.dl


{-| Represents a term defined by the next `dd`.
-}
dt :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
dt =
    coerce "dt" Core.dt


{-| Represents the definition of the terms immediately listed before it.
-}
dd :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
dd =
    coerce "dd" Core.dd


{-| Represents a figure illustrated as part of the document.
-}
figure :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
figure =
    coerce "figure" Core.figure


{-| Represents the legend of a figure.
-}
figcaption :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
figcaption =
    coerce "figcaption" Core.figcaption


{-| Represents a generic container with no special meaning.
-}
div :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
div =
    coerce "div" Core.div



-- TEXT LEVEL SEMANTIC


{-| Represents a hyperlink, linking to another resource.
-}
a :
    List
        (Attribute
            { href : Supported
            , shape : Supported
            , target : Supported
            , download : Supported
            , downloadAs : Supported
            , hreflang : Supported
            , media : Supported
            , ping : Supported
            , rel : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
a =
    coerce "a" Core.a


{-| Represents emphasized text, like a stress accent.
-}
em :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
em =
    coerce "em" Core.em


{-| Represents especially important text.
-}
strong :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
strong =
    coerce "strong" Core.strong


{-| Represents a side comment, that is, text like a disclaimer or a
copyright, which is not essential to the comprehension of the document.
-}
small :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
small =
    coerce "small" Core.small


{-| Represents content that is no longer accurate or relevant.
-}
s :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
s =
    coerce "s" Core.s


{-| Represents the title of a work.
-}
cite :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
cite =
    coerce "cite" Core.cite


{-| Represents an inline quotation.
-}
q :
    List
        (Attribute
            { cite : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
q =
    coerce "q" Core.q


{-| Represents a term whose definition is contained in its nearest ancestor
content.
-}
dfn :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
dfn =
    coerce "dfn" Core.dfn


{-| Represents an abbreviation or an acronym; the expansion of the
abbreviation can be represented in the title attribute.
-}
abbr :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
abbr =
    coerce "abbr" Core.abbr


{-| Represents a date and time value; the machine-readable equivalent can be
represented in the datetime attribute.
-}
time :
    List
        (Attribute
            { datetime : Supported
            , pubdate : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
time =
    coerce "time" Core.time


{-| Represents computer code.
-}
code :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
code =
    coerce "code" Core.code


{-| Represents a variable. Specific cases where it should be used include an
actual mathematical expression or programming context, an identifier
representing a constant, a symbol identifying a physical quantity, a function
parameter, or a mere placeholder in prose.
-}
var :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
var =
    coerce "var" Core.var


{-| Represents the output of a program or a computer.
-}
samp :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
samp =
    coerce "samp" Core.samp


{-| Represents user input, often from the keyboard, but not necessarily; it
may represent other input, like transcribed voice commands.
-}
kbd :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
kbd =
    coerce "kbd" Core.kbd


{-| Represent a subscript.
-}
sub :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
sub =
    coerce "sub" Core.sub


{-| Represent a superscript.
-}
sup :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
sup =
    coerce "sup" Core.sup


{-| Represents some text in an alternate voice or mood, or at least of
different quality, such as a taxonomic designation, a technical term, an
idiomatic phrase, a thought, or a ship name.
-}
i :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
i =
    coerce "i" Core.i


{-| Represents a text which to which attention is drawn for utilitarian
purposes. It doesn't convey extra importance and doesn't imply an alternate
voice.
-}
b :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
b =
    coerce "b" Core.b


{-| Represents a non-textual annoatation for which the conventional
presentation is underlining, such labeling the text as being misspelt or
labeling a proper name in Chinese text.
-}
u :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
u =
    coerce "u" Core.u


{-| Represents text highlighted for reference purposes, that is for its
relevance in another context.
-}
mark :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
mark =
    coerce "mark" Core.mark


{-| Represents content to be marked with ruby annotations, short runs of text
presented alongside the text. This is often used in conjunction with East Asian
language where the annotations act as a guide for pronunciation, like the
Japanese furigana.
-}
ruby :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
ruby =
    coerce "ruby" Core.ruby


{-| Represents the text of a ruby annotation.
-}
rt :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
rt =
    coerce "rt" Core.rt


{-| Represents parenthesis around a ruby annotation, used to display the
annotation in an alternate way by browsers not supporting the standard display
for annotations.
-}
rp :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
rp =
    coerce "rp" Core.rp


{-| Represents text that must be isolated from its surrounding for
bidirectional text formatting. It allows embedding a span of text with a
different, or unknown, directionality.
-}
bdi :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
bdi =
    coerce "bdi" Core.bdi


{-| Represents the directionality of its children, in order to explicitly
override the Unicode bidirectional algorithm.
-}
bdo :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
bdo =
    coerce "bdo" Core.bdo


{-| Represents text with no specific meaning. This has to be used when no other
text-semantic element conveys an adequate meaning, which, in this case, is
often brought by globalAttributes attributes like `class`, `lang`, or `dir`.
-}
span :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
span =
    coerce "span" Core.span


{-| Represents a line break.
-}
br :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
br =
    coerce "br" Core.br


{-| Represents a line break opportunity, that is a suggested point for
wrapping text in order to improve readability of text split on several lines.
-}
wbr :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
wbr =
    coerce "wbr" Core.wbr



-- EDITS


{-| Defines an addition to the document.
-}
ins :
    List
        (Attribute
            { cite : Supported
            , datetime : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
ins =
    coerce "ins" Core.ins


{-| Defines a removal from the document.
-}
del :
    List
        (Attribute
            { cite : Supported
            , datetime : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
del =
    coerce "del" Core.del



-- EMBEDDED CONTENT


{-| Represents an image.
-}
img :
    List
        (Attribute
            { src : Supported
            , height : Supported
            , width : Supported
            , alt : Supported
            , ismap : Supported
            , usemap : Supported
            , align : Supported
            }
            msg
        )
    -> Html c msg
img attrs =
    coerce "img" Core.img attrs []


{-| Embedded an HTML document.
-}
iframe :
    List
        (Attribute
            { src : Supported
            , height : Supported
            , width : Supported
            , sandbox : Supported
            , seamless : Supported
            , srcdoc : Supported
            , name : Supported
            , align : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
iframe =
    coerce "iframe" Core.iframe


{-| Represents a integration point for an external, often non-HTML,
application or interactive content.
-}
embed :
    List
        (Attribute
            { src : Supported
            , height : Supported
            , width : Supported
            , type_ : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
embed =
    coerce "embed" Core.embed


{-| Represents an external resource, which is treated as an image, an HTML
sub-document, or an external resource to be processed by a plug-in.
-}
object :
    List
        (Attribute
            { height : Supported
            , width : Supported
            , type_ : Supported
            , name : Supported
            , form : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
object =
    coerce "object" Core.object


{-| Defines parameters for use by plug-ins invoked by `object` elements.
-}
param :
    List
        (Attribute
            { value : Supported
            , name : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
param =
    coerce "param" Core.param


{-| Represents a video, the associated audio and captions, and controls.
-}
video :
    List
        (Attribute
            { src : Supported
            , height : Supported
            , width : Supported
            , autoplay : Supported
            , controls : Supported
            , loop : Supported
            , preload : Supported
            , poster : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
video =
    coerce "video" Core.video


{-| Represents a sound or audio stream.
-}
audio :
    List
        (Attribute
            { src : Supported
            , autoplay : Supported
            , controls : Supported
            , loop : Supported
            , preload : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
audio =
    coerce "audio" Core.audio


{-| Allows authors to specify alternative media resources for media elements
like `video` or `audio`.
-}
source :
    List
        (Attribute
            { src : Supported
            , type_ : Supported
            , media : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
source =
    coerce "source" Core.source


{-| Allows authors to specify timed text track for media elements like `video`
or `audio`.
-}
track :
    List
        (Attribute
            { src : Supported
            , default : Supported
            , kind : Supported
            , srclang : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
track =
    coerce "track" Core.track


{-| Represents a bitmap area for graphics rendering.
-}
canvas : List (Attribute { height : Supported, width : Supported } msg) -> List (Html b msg) -> Html c msg
canvas =
    coerce "canvas" Core.canvas


{-| Defines a mathematical formula.
-}
math :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
math =
    coerce "math" Core.math



-- TABULAR DATA


{-| Represents data with more than one dimension.
-}
table :
    List
        (Attribute
            { align : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
table =
    coerce "table" Core.table


{-| Represents the title of a table.
-}
caption :
    List
        (Attribute
            { align : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
caption =
    coerce "caption" Core.caption


{-| Represents a set of one or more columns of a table.
-}
colgroup :
    List
        (Attribute
            { align : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
colgroup =
    coerce "colgroup" Core.colgroup


{-| Represents a column of a table.
-}
col :
    List
        (Attribute
            { align : Supported
            }
            msg
        )
    -> Html c msg
col attrs =
    coerce "col" Core.col attrs []


{-| Represents the block of rows that describes the concrete data of a table.
-}
tbody :
    List
        (Attribute
            { align : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
tbody =
    coerce "tbody" Core.tbody


{-| Represents the block of rows that describes the column labels of a table.
-}
thead :
    List
        (Attribute
            { align : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
thead =
    coerce "thead" Core.thead


{-| Represents the block of rows that describes the column summaries of a table.
-}
tfoot :
    List
        (Attribute
            { align : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
tfoot =
    coerce "tfoot" Core.tfoot


{-| Represents a row of cells in a table.
-}
tr :
    List
        (Attribute
            { align : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
tr =
    coerce "tr" Core.tr


{-| Represents a data cell in a table.
-}
td :
    List
        (Attribute
            { align : Supported
            , colspan : Supported
            , rowspan : Supported
            , header : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
td =
    coerce "td" Core.td


{-| Represents a header cell in a table.
-}
th :
    List
        (Attribute
            { align : Supported
            , colspan : Supported
            , rowspan : Supported
            , header : Supported
            , scope : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
th =
    coerce "th" Core.th



-- FORMS


{-| Represents a form, consisting of controls, that can be submitted to a
server for processing.
-}
form :
    List
        (Attribute
            { accept : Supported
            , acceptCharset : Supported
            , action : Supported
            , autocomplete : supported
            , enctype : Supported
            , method : Supported
            , name : Supported
            , novalidate : Supported
            , target : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
form =
    coerce "form" Core.form


{-| Represents a set of controls.
-}
fieldset :
    List
        (Attribute
            { disabled : Supported
            , name : Supported
            , form : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
fieldset =
    coerce "fieldset" Core.fieldset


{-| Represents the caption for a `fieldset`.
-}
legend :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
legend =
    coerce "legend" Core.legend


{-| Represents the caption of a form control.
-}
label :
    List
        (Attribute
            { for : Supported
            , form : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
label =
    coerce "label" Core.label


type alias InputAttribute msg =
    Attribute
        { src : Supported
        , height : Supported
        , width : Supported
        , alt : Supported
        , type_ : Supported
        , value : Supported
        , defaultValue : Supported
        , checked : Supported
        , placeholder : Supported
        , accept : Supported
        , autocomplete : Supported
        , autofocus : Supported
        , disabled : Supported
        , formaction : Supported
        , list : Supported
        , minlength : Supported
        , maxLength : Supported
        , multiple : Supported
        , name : Supported
        , pattern : Supported
        , readonly : Supported
        , required : Supported
        , size : Supported
        , form : Supported
        , max : Supported
        , min : Supported
        , step : Supported
        }
        msg


{-| Represents a typed data field allowing the user to edit the data.
-}
input :
    List (InputAttribute msg)
    -> List (Html b msg)
    -> Html c msg
input =
    coerce "input" Core.input


{-| Represents a button.
-}
button :
    List
        (Attribute
            { type_ : Supported
            , value : Supported
            , autofocus : Supported
            , disabled : Supported
            , enctype : Supported
            , name : Supported
            , form : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
button =
    coerce "button" Core.button


{-| Represents a control allowing selection among a set of options.
-}
select :
    List
        (Attribute
            { autofocus : Supported
            , disabled : Supported
            , multiple : Supported
            , name : Supported
            , required : Supported
            , size : Supported
            , form : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
select =
    coerce "select" Core.select


{-| Represents a set of predefined options for other controls.
-}
datalist :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
datalist =
    coerce "datalist" Core.datalist


{-| Represents a set of options, logically grouped.
-}
optgroup :
    List
        (Attribute
            { disabled : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
optgroup =
    coerce "optgroup" Core.optgroup


{-| Represents an option in a `select` element or a suggestion of a `datalist`
element.
-}
option :
    List
        (Attribute
            { value : Supported
            , selected : Supported
            , disabled : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
option =
    coerce "option" Core.option


{-| Represents a multiline text edit control.
-}
textarea :
    List
        (Attribute
            { textarea : Supported
            , value : Supported
            , defaultValue : Supported
            , placeholder : Supported
            , autofocus : Supported
            , disabled : Supported
            , minlength : Supported
            , maxlength : Supported
            , name : Supported
            , readonly : Supported
            , required : Supported
            , form : Supported
            , cols : Supported
            , rows : Supported
            , wrap : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
textarea =
    coerce "textarea" Core.textarea


{-| Represents the result of a calculation.
-}
output :
    List
        (Attribute
            { name : Supported
            , for : Supported
            , form : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
output =
    coerce "output" Core.output


{-| Represents the completion progress of a task.
-}
progress :
    List
        (Attribute
            { value : Supported
            , form : Supported
            , max : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
progress =
    coerce "progress" Core.progress


{-| Represents a scalar measurement (or a fractional value), within a known
range.
-}
meter :
    List
        (Attribute
            { value : Supported
            , form : Supported
            , max : Supported
            , min : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
meter =
    coerce "meter" Core.meter



-- INTERACTIVE ELEMENTS


{-| Represents a widget from which the user can obtain additional information
or controls.
-}
details :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
details =
    coerce "details" Core.details


{-| Represents a summary, caption, or legend for a given `details`.
-}
summary :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
summary =
    coerce "summary" Core.summary


{-| Represents a command that the user can invoke.
-}
menuitem :
    List
        (Attribute
            { globalAttributes : Supported
            }
            msg
        )
    -> List (Html b msg)
    -> Html c msg
menuitem =
    coerce "menuitem" Core.menuitem


{-| Represents a list of commands.
-}
menu : List (Attribute { type_ : Supported } msg) -> List (Html b msg) -> Html c msg
menu =
    coerce "menu" Core.menu
