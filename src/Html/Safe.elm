module Html.Safe exposing (..)

import Html.Internal exposing (Supported, todo)


type alias Textual content =
    { content | text : Supported }


type alias Attribute a msg =
    Html.Internal.Attribute a msg


type alias Html a msg =
    Html.Internal.Html a msg



-- SECTIONS


{-| Represents the content of an HTML document. There is only one `body`
element in a document.
-}
body : List (Attribute a msg) -> List (Html b msg) -> Html c msg
body =
    todo


{-| Defines a section in a document.
-}
section : List (Attribute a msg) -> List (Html b msg) -> Html c msg
section =
    todo


{-| Defines a section that contains only navigation links.
-}
nav : List (Attribute a msg) -> List (Html b msg) -> Html c msg
nav =
    todo


{-| Defines self-contained content that could exist independently of the rest
of the content.
-}
article : List (Attribute a msg) -> List (Html b msg) -> Html c msg
article =
    todo


{-| Defines some content loosely related to the page content. If it is removed,
the remaining content still makes sense.
-}
aside : List (Attribute a msg) -> List (Html b msg) -> Html c msg
aside =
    todo


{-| -}
h1 : List (Attribute a msg) -> List (Html b msg) -> Html c msg
h1 =
    todo


{-| -}
h2 : List (Attribute a msg) -> List (Html b msg) -> Html c msg
h2 =
    todo


{-| -}
h3 : List (Attribute a msg) -> List (Html b msg) -> Html c msg
h3 =
    todo


{-| -}
h4 : List (Attribute a msg) -> List (Html b msg) -> Html c msg
h4 =
    todo


{-| -}
h5 : List (Attribute a msg) -> List (Html b msg) -> Html c msg
h5 =
    todo


{-| -}
h6 : List (Attribute a msg) -> List (Html b msg) -> Html c msg
h6 =
    todo


{-| Defines the header of a page or section. It often contains a logo, the
title of the web site, and a navigational table of content.
-}
header : List (Attribute a msg) -> List (Html b msg) -> Html c msg
header =
    todo


{-| Defines the footer for a page or section. It often contains a copyright
notice, some links to legal information, or addresses to give feedback.
-}
footer : List (Attribute a msg) -> List (Html b msg) -> Html c msg
footer =
    todo


{-| Defines a section containing contact information.
-}
address : List (Attribute a msg) -> List (Html b msg) -> Html c msg
address =
    todo


{-| Defines the main or important content in the document. There is only one
`main` element in the document.
-}
main_ : List (Attribute a msg) -> List (Html b msg) -> Html c msg
main_ =
    todo



-- GROUPING CONTENT


{-| Defines a portion that should be displayed as a paragraph.
-}
p : List (Attribute a msg) -> List (Html b msg) -> Html c msg
p =
    todo


{-| Represents a thematic break between paragraphs of a section or article or
any longer content.
-}
hr : List (Attribute a msg) -> List (Html b msg) -> Html c msg
hr =
    todo


{-| Indicates that its content is preformatted and that this format must be
preserved.
-}
pre : List (Attribute a msg) -> List (Html b msg) -> Html c msg
pre =
    todo


{-| Represents a content that is quoted from another source.
-}
blockquote : List (Attribute a msg) -> List (Html b msg) -> Html c msg
blockquote =
    todo


{-| Defines an ordered list of items.
-}
ol : List (Attribute a msg) -> List (Html b msg) -> Html c msg
ol =
    todo


{-| Defines an unordered list of items.
-}
ul : List (Attribute a msg) -> List (Html b msg) -> Html c msg
ul =
    todo


{-| Defines a item of an enumeration list.
-}
li : List (Attribute a msg) -> List (Html b msg) -> Html c msg
li =
    todo


{-| Defines a definition list, that is, a list of terms and their associated
definitions.
-}
dl : List (Attribute a msg) -> List (Html b msg) -> Html c msg
dl =
    todo


{-| Represents a term defined by the next `dd`.
-}
dt : List (Attribute a msg) -> List (Html b msg) -> Html c msg
dt =
    todo


{-| Represents the definition of the terms immediately listed before it.
-}
dd : List (Attribute a msg) -> List (Html b msg) -> Html c msg
dd =
    todo


{-| Represents a figure illustrated as part of the document.
-}
figure : List (Attribute a msg) -> List (Html b msg) -> Html c msg
figure =
    todo


{-| Represents the legend of a figure.
-}
figcaption : List (Attribute a msg) -> List (Html b msg) -> Html c msg
figcaption =
    todo


{-| Represents a generic container with no special meaning.
-}
div : List (Attribute a msg) -> List (Html b msg) -> Html c msg
div =
    todo



-- TEXT LEVEL SEMANTIC


{-| Represents a hyperlink, linking to another resource.
-}
a : List (Attribute a msg) -> List (Html b msg) -> Html c msg
a =
    todo


{-| Represents emphasized text, like a stress accent.
-}
em : List (Attribute a msg) -> List (Html b msg) -> Html c msg
em =
    todo


{-| Represents especially important text.
-}
strong : List (Attribute a msg) -> List (Html b msg) -> Html c msg
strong =
    todo


{-| Represents a side comment, that is, text like a disclaimer or a
copyright, which is not essential to the comprehension of the document.
-}
small : List (Attribute a msg) -> List (Html b msg) -> Html c msg
small =
    todo


{-| Represents content that is no longer accurate or relevant.
-}
s : List (Attribute a msg) -> List (Html b msg) -> Html c msg
s =
    todo


{-| Represents the title of a work.
-}
cite : List (Attribute a msg) -> List (Html b msg) -> Html c msg
cite =
    todo


{-| Represents an inline quotation.
-}
q : List (Attribute a msg) -> List (Html b msg) -> Html c msg
q =
    todo


{-| Represents a term whose definition is contained in its nearest ancestor
content.
-}
dfn : List (Attribute a msg) -> List (Html b msg) -> Html c msg
dfn =
    todo


{-| Represents an abbreviation or an acronym; the expansion of the
abbreviation can be represented in the title attribute.
-}
abbr : List (Attribute a msg) -> List (Html b msg) -> Html c msg
abbr =
    todo


{-| Represents a date and time value; the machine-readable equivalent can be
represented in the datetime attribute.
-}
time : List (Attribute a msg) -> List (Html b msg) -> Html c msg
time =
    todo


{-| Represents computer code.
-}
code : List (Attribute a msg) -> List (Html b msg) -> Html c msg
code =
    todo


{-| Represents a variable. Specific cases where it should be used include an
actual mathematical expression or programming context, an identifier
representing a constant, a symbol identifying a physical quantity, a function
parameter, or a mere placeholder in prose.
-}
var : List (Attribute a msg) -> List (Html b msg) -> Html c msg
var =
    todo


{-| Represents the output of a program or a computer.
-}
samp : List (Attribute a msg) -> List (Html b msg) -> Html c msg
samp =
    todo


{-| Represents user input, often from the keyboard, but not necessarily; it
may represent other input, like transcribed voice commands.
-}
kbd : List (Attribute a msg) -> List (Html b msg) -> Html c msg
kbd =
    todo


{-| Represent a subscript.
-}
sub : List (Attribute a msg) -> List (Html b msg) -> Html c msg
sub =
    todo


{-| Represent a superscript.
-}
sup : List (Attribute a msg) -> List (Html b msg) -> Html c msg
sup =
    todo


{-| Represents some text in an alternate voice or mood, or at least of
different quality, such as a taxonomic designation, a technical term, an
idiomatic phrase, a thought, or a ship name.
-}
i : List (Attribute a msg) -> List (Html b msg) -> Html c msg
i =
    todo


{-| Represents a text which to which attention is drawn for utilitarian
purposes. It doesn't convey extra importance and doesn't imply an alternate
voice.
-}
b : List (Attribute a msg) -> List (Html b msg) -> Html c msg
b =
    todo


{-| Represents a non-textual annoatation for which the conventional
presentation is underlining, such labeling the text as being misspelt or
labeling a proper name in Chinese text.
-}
u : List (Attribute a msg) -> List (Html b msg) -> Html c msg
u =
    todo


{-| Represents text highlighted for reference purposes, that is for its
relevance in another context.
-}
mark : List (Attribute a msg) -> List (Html b msg) -> Html c msg
mark =
    todo


{-| Represents content to be marked with ruby annotations, short runs of text
presented alongside the text. This is often used in conjunction with East Asian
language where the annotations act as a guide for pronunciation, like the
Japanese furigana.
-}
ruby : List (Attribute a msg) -> List (Html b msg) -> Html c msg
ruby =
    todo


{-| Represents the text of a ruby annotation.
-}
rt : List (Attribute a msg) -> List (Html b msg) -> Html c msg
rt =
    todo


{-| Represents parenthesis around a ruby annotation, used to display the
annotation in an alternate way by browsers not supporting the standard display
for annotations.
-}
rp : List (Attribute a msg) -> List (Html b msg) -> Html c msg
rp =
    todo


{-| Represents text that must be isolated from its surrounding for
bidirectional text formatting. It allows embedding a span of text with a
different, or unknown, directionality.
-}
bdi : List (Attribute a msg) -> List (Html b msg) -> Html c msg
bdi =
    todo


{-| Represents the directionality of its children, in order to explicitly
override the Unicode bidirectional algorithm.
-}
bdo : List (Attribute a msg) -> List (Html b msg) -> Html c msg
bdo =
    todo


{-| Represents text with no specific meaning. This has to be used when no other
text-semantic element conveys an adequate meaning, which, in this case, is
often brought by global attributes like `class`, `lang`, or `dir`.
-}
span : List (Attribute a msg) -> List (Html b msg) -> Html c msg
span =
    todo


{-| Represents a line break.
-}
br : List (Attribute a msg) -> List (Html b msg) -> Html c msg
br =
    todo


{-| Represents a line break opportunity, that is a suggested point for
wrapping text in order to improve readability of text split on several lines.
-}
wbr : List (Attribute a msg) -> List (Html b msg) -> Html c msg
wbr =
    todo



-- EDITS


{-| Defines an addition to the document.
-}
ins : List (Attribute a msg) -> List (Html b msg) -> Html c msg
ins =
    todo


{-| Defines a removal from the document.
-}
del : List (Attribute a msg) -> List (Html b msg) -> Html c msg
del =
    todo



-- EMBEDDED CONTENT


{-| Represents an image.
-}
img : List (Attribute a msg) -> List (Html b msg) -> Html c msg
img =
    todo


{-| Embedded an HTML document.
-}
iframe : List (Attribute a msg) -> List (Html b msg) -> Html c msg
iframe =
    todo


{-| Represents a integration point for an external, often non-HTML,
application or interactive content.
-}
embed : List (Attribute a msg) -> List (Html b msg) -> Html c msg
embed =
    todo


{-| Represents an external resource, which is treated as an image, an HTML
sub-document, or an external resource to be processed by a plug-in.
-}
object : List (Attribute a msg) -> List (Html b msg) -> Html c msg
object =
    todo


{-| Defines parameters for use by plug-ins invoked by `object` elements.
-}
param : List (Attribute a msg) -> List (Html b msg) -> Html c msg
param =
    todo


{-| Represents a video, the associated audio and captions, and controls.
-}
video : List (Attribute a msg) -> List (Html b msg) -> Html c msg
video =
    todo


{-| Represents a sound or audio stream.
-}
audio : List (Attribute a msg) -> List (Html b msg) -> Html c msg
audio =
    todo


{-| Allows authors to specify alternative media resources for media elements
like `video` or `audio`.
-}
source : List (Attribute a msg) -> List (Html b msg) -> Html c msg
source =
    todo


{-| Allows authors to specify timed text track for media elements like `video`
or `audio`.
-}
track : List (Attribute a msg) -> List (Html b msg) -> Html c msg
track =
    todo


{-| Represents a bitmap area for graphics rendering.
-}
canvas : List (Attribute a msg) -> List (Html b msg) -> Html c msg
canvas =
    todo


{-| Defines a mathematical formula.
-}
math : List (Attribute a msg) -> List (Html b msg) -> Html c msg
math =
    todo



-- TABULAR DATA


{-| Represents data with more than one dimension.
-}
table : List (Attribute a msg) -> List (Html b msg) -> Html c msg
table =
    todo


{-| Represents the title of a table.
-}
caption : List (Attribute a msg) -> List (Html b msg) -> Html c msg
caption =
    todo


{-| Represents a set of one or more columns of a table.
-}
colgroup : List (Attribute a msg) -> List (Html b msg) -> Html c msg
colgroup =
    todo


{-| Represents a column of a table.
-}
col : List (Attribute a msg) -> List (Html b msg) -> Html c msg
col =
    todo


{-| Represents the block of rows that describes the concrete data of a table.
-}
tbody : List (Attribute a msg) -> List (Html b msg) -> Html c msg
tbody =
    todo


{-| Represents the block of rows that describes the column labels of a table.
-}
thead : List (Attribute a msg) -> List (Html b msg) -> Html c msg
thead =
    todo


{-| Represents the block of rows that describes the column summaries of a table.
-}
tfoot : List (Attribute a msg) -> List (Html b msg) -> Html c msg
tfoot =
    todo


{-| Represents a row of cells in a table.
-}
tr : List (Attribute a msg) -> List (Html b msg) -> Html c msg
tr =
    todo


{-| Represents a data cell in a table.
-}
td : List (Attribute a msg) -> List (Html b msg) -> Html c msg
td =
    todo


{-| Represents a header cell in a table.
-}
th : List (Attribute a msg) -> List (Html b msg) -> Html c msg
th =
    todo



-- FORMS


{-| Represents a form, consisting of controls, that can be submitted to a
server for processing.
-}
form : List (Attribute a msg) -> List (Html b msg) -> Html c msg
form =
    todo


{-| Represents a set of controls.
-}
fieldset : List (Attribute a msg) -> List (Html b msg) -> Html c msg
fieldset =
    todo


{-| Represents the caption for a `fieldset`.
-}
legend : List (Attribute a msg) -> List (Html b msg) -> Html c msg
legend =
    todo


{-| Represents the caption of a form control.
-}
label : List (Attribute a msg) -> List (Html b msg) -> Html c msg
label =
    todo


{-| Represents a typed data field allowing the user to edit the data.
-}
input : List (Attribute a msg) -> List (Html b msg) -> Html c msg
input =
    todo


{-| Represents a button.
-}
button : List (Attribute a msg) -> List (Html b msg) -> Html c msg
button =
    todo


{-| Represents a control allowing selection among a set of options.
-}
select : List (Attribute a msg) -> List (Html b msg) -> Html c msg
select =
    todo


{-| Represents a set of predefined options for other controls.
-}
datalist : List (Attribute a msg) -> List (Html b msg) -> Html c msg
datalist =
    todo


{-| Represents a set of options, logically grouped.
-}
optgroup : List (Attribute a msg) -> List (Html b msg) -> Html c msg
optgroup =
    todo


{-| Represents an option in a `select` element or a suggestion of a `datalist`
element.
-}
option : List (Attribute a msg) -> List (Html b msg) -> Html c msg
option =
    todo


{-| Represents a multiline text edit control.
-}
textarea : List (Attribute a msg) -> List (Html b msg) -> Html c msg
textarea =
    todo


{-| Represents a key-pair generator control.
-}
keygen : List (Attribute a msg) -> List (Html b msg) -> Html c msg
keygen =
    todo


{-| Represents the result of a calculation.
-}
output : List (Attribute a msg) -> List (Html b msg) -> Html c msg
output =
    todo


{-| Represents the completion progress of a task.
-}
progress : List (Attribute a msg) -> List (Html b msg) -> Html c msg
progress =
    todo


{-| Represents a scalar measurement (or a fractional value), within a known
range.
-}
meter : List (Attribute a msg) -> List (Html b msg) -> Html c msg
meter =
    todo



-- INTERACTIVE ELEMENTS


{-| Represents a widget from which the user can obtain additional information
or controls.
-}
details : List (Attribute a msg) -> List (Html b msg) -> Html c msg
details =
    todo


{-| Represents a summary, caption, or legend for a given `details`.
-}
summary : List (Attribute a msg) -> List (Html b msg) -> Html c msg
summary =
    todo


{-| Represents a command that the user can invoke.
-}
menuitem : List (Attribute a msg) -> List (Html b msg) -> Html c msg
menuitem =
    todo


{-| Represents a list of commands.
-}
menu : List (Attribute a msg) -> List (Html b msg) -> Html c msg
menu =
    todo
