command: "curl -s https://anorthic-sardine-3532.dataplicity.io"
## Raspeberry pi thermometer

var test = isJSON(oupout)

render: (output) ->
  if (test){
  temp = JSON.parse(output);
  celsius = temp.celsius;
  "temp <span>#{celsius}</span>";
  }else{
    celsius = "N/A";
    "temp <span>#{celsius}</span>";
  }

  style: """
  -webkit-font-smoothing: antialiased
  font: 9px Menlo
  top: 10px
  left: 330px
  color: #eee8d5
  span
    color: #aaa
"""
