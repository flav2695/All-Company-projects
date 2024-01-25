const path = require('node:path'); 


const a = path.basename('C:\\temp\\myfile.html');
const b = path.dirname('C:\\temp\\myfile.html');
const c = path.extname(__filename);
const d = path.delimiter;
const e = process.env.PATH;
const f = process.env.PATH.split(path.delimiter);
const g = path.format({
    dir: 'C:\\path\\dir',
    base: 'file.txt',
    // root: '/',
    // name: 'file',
    // ext: 'txt',
  })
const h = path.isAbsolute('C:\\temp\\myfile.html'); 
const i = path.join('/foo', 'bar', 'baz/asdf', 'quux', '..');
const j = path.normalize('C:\\temp\\\\foo\\bar\\..\\');
const k = path.parse('C:\\path\\dir\\file.txt');
const l = path.relative('C:\\orandea\\test\\aaa', 'C:\\orandea\\impl\\bbb');
const m = path.resolve('wwwroot', 'static_files/png/', '../gif/image.gif');
const n = 'foo\\bar\\baz'.split(path.sep);
  



console.log(a);
console.log(b);
console.log(c);
console.log(__filename, c);
console.log(d);
console.log(e);
console.log(f);
console.log(g);
console.log(h);
console.log(i);
console.log(j);
console.log(k);
console.log(l);
console.log(m);
console.log(n);