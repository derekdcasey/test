/**
 *
 * initiate an npm package.json into this project's folder.
 * Install the npm library chalk into this project and require it in this file, read the documentation online for Chalk
 *
 * Iterate the colorsArray and for each color in the array, console.log "Hello World" in that color using Chalk.
 */

let colorsArray = [
    'green',
    'blue',
    'red',
];

// your code goes here
const chalk = require('chalk');
 
var i;
for (i = 0; i < colorsArray.length; i++) { 

	if(colorsArray[i] == "green"){
		console.log(chalk.green('Hello world!'));	   
	}
	if(colorsArray[i] == "blue"){
		console.log(chalk.blue('Hello world!'));	   
	}
	if(colorsArray[i] == "red"){
		console.log(chalk.red('Hello world!'));	   
	}
}
