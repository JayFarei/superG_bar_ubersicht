command: "curl -s https://anorthic-sardine-3532.dataplicity.io"
# downloading the JSON from the wormhole of the Raspberry pi

refreshFrequency: 5000 # 5s

render: (output) ->
  temp = JSON.parse(output) # parsing JSON in to an object
  celsius = temp.celsius
  "temp <span>#{celsius}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 9px Menlo
  top: 10px
  left: 330px
  color: #eee8d5
  span
    color: #aaa
"""
