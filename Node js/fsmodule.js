const fs = require('node:fs');


// const a = fs.readFile('file.txt', 'utf8', (err, data)=>{
//    console.log(err, data)
// })

// console.log(a) 

// const b = fs.readFileSync('file.txt')
 
// console.log(b) 
// console.log(b.toString()) 


// fs.writeFile('file2.txt', "This is a data", ()=>{
// console.log("written to the file")
// });

b = fs.writeFileSync('file2.txt', "This is a data2")
console.log(b);

console.log("Finished reading file")