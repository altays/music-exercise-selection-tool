const fs = require('node:fs/promises');
const helper = require('./helper');

async function readAndPrintRandomExercise (filePath) {
 
    try {
        const data = JSON.parse(await fs.readFile(filePath, { encoding: 'utf8' }));
        let index = helper.getRandomInt(data.length)
        let {title, page, exerciseCount} = data[index]
        let exercise = helper.getRandomIntStartOne(exerciseCount)

        console.log(`${title}, on page ${page}, exercise number ${exercise}`)

    } 
    catch (error){
        console.error(error)
    }
}

async function readAndPrintRandom (filePath) {
 
    try {
        const data = JSON.parse(await fs.readFile(filePath, { encoding: 'utf8' }));
        let index = helper.getRandomInt(data.length)
        let {name} = data[index]
        // let exercise = helper.getRandomIntStartOne(exerciseCount)

        console.log(`${name}`)

    } 
    catch (error){
        console.error(error)
    }
}


// pull random technique



// pull random topic

module.exports = { readAndPrintRandomExercise, readAndPrintRandom }
