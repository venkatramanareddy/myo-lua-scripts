var Myo = require("myo")
var express = require("express")
var app = express()

//Myo.connect("com.timepass.mymyo", require("ws"));

/*
Myo.on('fist', function(){
    console.log('Hello Myo!');
    this.vibrate();
});
*/

app.use(express.static('static'))

app.get('/', function (req, res) {
  res.send('Hello World!')
})

app.listen(3000, function () {
  console.log('Example app listening on port 3000!')
})