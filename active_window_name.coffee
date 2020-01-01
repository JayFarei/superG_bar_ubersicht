command: "python /users/gabrielefarei/documents/development/active_window/active_window.py"

# python /users/gabrielefarei/documents/development/active_window/active_window.py

#refreshFrequency: 15

render: (output) ->
  "W: <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 9px Menlo
  right: 20px
  top: 10px
  span
    color: #aaa
"""
