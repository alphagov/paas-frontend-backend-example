const express = require('express')

const app = express();

app.all('*', (req, res) => {
	res.send(new Date().toISOString())
})

app.listen(process.env.PORT || 3000)
