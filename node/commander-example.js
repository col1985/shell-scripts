#!/usr/bin/env node

// process.stdin.setEncoding('utf8');

// process.stdin.on('readable', function() {
//   var chunk = process.stdin.read();

//   if (chunk !== null) {
//     process.stdout.write(colour(92, 'data: ' + chunk + '\n'));
//   }
// });

// process.stdin.on('end', function() {
//   process.stdout.write('end');
// });
// // var program = require('commander'),
// //   c = 90;

// // program
// //   .version('1.0.0')
// //   .option('-r, --red', 'Red text')
// //   .option('-h --help', 'Help')
// //   .option('-g, --green', 'Green text')
// //   .option('-b, --blue', 'Blue text')
// //   .parse(process.argv);

function colour(c, str) {
  return '\033[' + c + 'm' + str + '\033[0m';
}
// // if (program.red) {
// //   c = 91;
// // } else if (program.green) {
// //   c = 92;
// // } else if (program.blue) {
// //   c = 94;
// // }


// process.stdin.on('end', function() {
//   process.stdout.write('end');
// });

// process.stdin.on('data', function(data) {
//   process.stdout.write(colour(c, data + '\n'));
// });

process.argv.forEach(function(val, index, array) {
  console.log(colour(92, index + ': ' + val));
});