const express = require('express')

const app = express();

app.all('*', (req, res) => {
	res.send('Hello from the backend. The time is ' + new Date().toISOString())
})

app.listen(process.env.PORT || 3001)
