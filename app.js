const express = require('express')
const app = express()
const port = 5000


function format(seconds){
  function pad(s){
    return (s < 10 ? '0' : '') + s;
  }
  var hours = Math.floor(seconds / (60*60));
  var minutes = Math.floor(seconds % (60*60) / 60);
  var seconds = Math.floor(seconds % 60);

  return pad(hours) + ':' + pad(minutes) + ':' + pad(seconds);
}

function ping(){
    return "pong";
  }
app.get('/', (req, res) => {
  res.send('Hello World!');
})

app.get('/ping', (req, res) => {
  res.status(200).send(ping());
})

app.get('/status', (req, res) => {
  var uptime = process.uptime();
  res.send(`{\n"uptime": "${format(uptime)}"\n}`);
})


app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
})