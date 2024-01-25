const http = require('http');

const port = process.env.PORT || 3000; //set environment variable PORT - 3000

const server = http.createServer((req, res)=>{ //require & response
    // console.log(req)
    console.log(req.url)
    res.statusCode = 200; //error code in response
    res.setHeader('Content-Type', 'text/html'); //content send in html or text
    res.end('<h1>This is code with flavious</h1> <p>This is way to do the coding</p>');
}); 

server.listen(port, ()=>{
    console.log('Server is listening on port ${port}');

}); 
