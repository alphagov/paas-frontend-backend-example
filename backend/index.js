const express = require('express')

const app = express();
const startTime = new Date().toISOString()

let dead = false

app.post('/die', (req, res) => (dead = true, res.send('💀')))

app.all('*', (req, res) => {
  if (dead) {
    throw '💀 ' + req.headers['user-agent']
  }
  else {
    res.send(`Hello from the backend
I was started at ${startTime}.
The time now is ${new Date().toISOString()}
`)
  }
})

app.listen(process.env.PORT || 3001)
