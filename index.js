const process = require('process');
const helper = require('./scripts/helper')
const utility = require('./scripts/utility')

const processRoute = process.argv[2]
const inputName = process.argv[3]

if (processRoute=="a"){
    // console.log('route a...')
    utility.readAndPrintRandomExercise(inputName)
    utility.readAndPrintRandom('./data/data/techniques.json')
    utility.readAndPrintRandom('./data/data/topics.json')

} else if (processRoute=="b") {
    console.log('route b...')
} else {
    console.log('please indicate a route')
}
