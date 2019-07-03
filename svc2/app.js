const express = require('express')
var os = require("os");
var request = require('request');

const app = express()
const port = 8081
var hostaddress = os.hostname();

app.get('/', (req, res) =>  {
  request('http://svc1:8080', function (error, response, body) {
      if (!error && response.statusCode == 200) {
        res.send('Answer from: '+ hostaddress + ' Response: '+ response.body + '\n')
      } else {
        res.send('Error\n')
      }
  })

  
})

app.listen(port, () => console.log(`Example app listening on port ${port}!`))