const express = require('express')
const app = express()
const port = 3000

//we dont need to use if else everything we get readymade

app.get('/', (req, res) => {
  res.send('Hello World2!')
})

app.get('/about', (req, res) => {
    res.send('This is about me!')
  })

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})