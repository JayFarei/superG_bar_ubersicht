command: "ESC=`printf \"\e\"`; ps -A -o %mem | awk '{s+=$1} END {print \"\" s}'"

refreshFrequency: 30000 # ms

render: (output) ->
  "mem <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 9px Menlo
  left: 85px
  top: 10px
  span
    color: #aaa
"""
