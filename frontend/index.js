const express = require('express')
const request = require('request-promise-native')

const app = express();

const backendUrl = process.env.BACKEND_URL || 'https://localhost:3001'

app.all('*', (req, res) => {
	request.get(backendUrl).then((response) => {
		res.send(`Hello from the frontend. The response from the back end is: ${response}`)
	})
})

app.listen(process.env.PORT || 3000)
