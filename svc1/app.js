const express = require('express')
var os = require("os");

const app = express()
const port = 8080
var hostaddress = os.hostname();

app.get('/', (req, res) => res.send('My hostname: '+ hostaddress + '\n'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))