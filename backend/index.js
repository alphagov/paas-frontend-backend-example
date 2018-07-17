const https = require('https')
const selfsigned = require('selfsigned')
const attrs = [{ name: 'commonName', value: 'Backend test certificate' }]
const pems = selfsigned.generate(attrs, { days: 365 })
const express = require('express')
const app = express()

const httpsServer = https.createServer({ key: pems.private, cert: pems.cert }, app)

const startTime = new Date().toISOString()

app.all('*', (req, res) => {
  res.send(`Hello from the backend
I was started at ${startTime}.
The time now is ${new Date().toISOString()}
`)
})

httpsServer.listen(process.env.PORT || 3001)
