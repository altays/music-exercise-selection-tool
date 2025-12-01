const process = require('process');
const helper = require('./scripts/helper')
const utility = require('./scripts/utility')

const processRoute = process.argv[2]
const inputName = process.argv[3]

if (processRoute=="a"){
    // console.log('route a...')
    utility.readFile(inputName)

} else if (processRoute=="b") {
    console.log('route b...')
} else {
    console.log('please indicate a route')
}
