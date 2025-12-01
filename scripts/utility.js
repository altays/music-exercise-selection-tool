const fs = require('node:fs/promises');
const helper = require('./helper');

async function randomExercise (filePath) {
 
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

// pull random technique



// pull random topic

module.exports = { randomExercise }
