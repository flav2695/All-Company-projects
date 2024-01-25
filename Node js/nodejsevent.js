const EventEmitter = require('node:events');

class MyEmitter extends EventEmitter {}

const myEmitter = new MyEmitter();
myEmitter.on('Waterfull', () => {  //event-Waterfull
  console.log('Please turn off the motor!'); //an event occurred! - Please turn off the motor
  setTimeout(()=>{
    console.log('Please turn off the motor! Its a reminder'); //an event occurred! - Please turn off the motor! Its a reminder
  }, 3000); //timeout -3000
});

console.log("The motor is running");
console.log("The motor is still running");

myEmitter.emit('Waterfull');  // event-Waterfull