
function getRandomInt(max) {
    return Math.floor(Math.random() * max);
}

function getRandomIntStartOne(max) {
    return Math.floor(Math.random() * max-1)+1;
}


module.exports = { getRandomInt, getRandomIntStartOne }
