const { Console } = require('console');
const fs = require('fs');
const http = require('http');

const port = process.env.PORT || 3000; //set environment variable PORT - 3000

const server = http.createServer((req, res)=>{ //require & response
    res.setHeader('Content-Type', 'text/html'); //content send in html or text
    // console.log(req)
    console.log(req.url)
    if(req.url == '/'){
        res.statusCode = 200; //error code in response
        const data = fs.readFileSync('index.html'); //it will syn index.html file completely
        res.end(data.toString());
    }
    else if(req.url == '/cwh'){
        res.statusCode = 200; //error code in response
        res.end('<h1>CWH code with flavious</h1> <p>CWH to do the coding</p>');
    }
    else if(req.url == '/about'){
        res.statusCode = 200; //error code in response
        res.end('<h1>About code with flavious</h1> <p>About to do the coding</p>');
    }
    else {
        res.statusCode = 404; //error code in response
        res.end('<h1>Not Found</h1> <p>Hey this page is not found on server</p>');
    }
}); 

server.listen(port, ()=>{
    console.log('Server is listening on port ${port}');

}); 
