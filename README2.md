## superG Bar for Ubersicht

#### Folder structure

/scripts -> contains the bash or python scripts used by the widgets

/scripts/deploy.sh -> is the script to be run to publish the content of the folder in the ubersicht folder to be loaded

/scripts/active_window.py is a 2.7 python script to obtain a change window name event

#### Docs summary

Key parts:

In an uebersicht widget - you dispatch events, which get processed by a single updateState function which returns the new state, which is passed to the render function of your widget.

**coffee widget** (current set up)

_Part 1_

```bash
command: "<terminal instruction goes here>"
```
>  This can by a executing a script, python, termianl command etc..it is important that output of the command is an "event" that is dispatched only once when requested. (vs a datastream)

Examples are:
``` bash
command: "python /users/gabrielefarei/documents/development/active_window/active_window.py"
```

```bash
command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

```


> Part 2
refreshFrequency: false, 1000 (1s), 2000 (2s) etc...

// how frequently should I run the instruction to fetch the event?

> Part 3
render: (output) ->
  "cpu <span>#{output}</span>"

// This is just constructing the HTML to be rendered using #{output} as a way to pass the outcome of command to create a well formed HTML tag. Interestingly - the same logic applies as any website - where you can create specific tags & associate styling properties to them --> that can be done by including a CSS in the widget folder

> Part 4

style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 9px Menlo
  left: 150px
  top: 10px
  span
    color: #aaa
"""

// in a self contained widget - style allows to specify for each defined HTML header - the position, colour, font etc..

**JSX widget**




