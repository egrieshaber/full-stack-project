'use strict'
const User = function (name, email, runs: []) {
  this.name = name
  this.email = email
  this.runs = []
  }

  const Run = function (date, distance, timeTaken) {
    this.date = date
    this.distance = distance
    this.timeTaken = timeTaken
  }


  }
/*
// create new user
const eric = new User('Eric', 'e@g.com', [])

//add run to User
const run1 = new Run('10-19-2018', 5000, 600)

eric.runs.push(new Run('10-19-2018, 6000, 600'))
*/

const displaysRuns = function () {
  return this.runs
}

User.prototype.displayRuns = function () {
  return this.runs
}

const displayRuns = new Run function ('10-19-2018', 5000, 500);



const User = {
  name: 'Christopher Robin',
  email: 'wdi@christopherRobin.com',
  age: 45,
  runs: [
    {
      date: '2017-05-25 15:00',
      distance: 1200,
      timeTaken: 600
    },
    {
      date: '2017-05-25 15:00',
      distance: 1400,
      timeTaken: 800
    }
  ],
  totalDistance: function () {
    let sumOfDistances = 0
    // loop through all runs
    for (let i = 0; i < this.runs.length; i++) {
      // grab distance from each run
      // const distance = this.runs[i].distance
      // add to sum
      // let sum = 0 <-- don't do this! resets to 0 each time
      sumOfDistances += this.runs[i].distance
    }
    // return the sum, which is the total distance of all runs
    return sumOfDistances
  },
  totalTime: function () {
    let sumOfTimes = 0
    // loop through all runs
    for (let i = 0; i < this.runs.length; i++) {
      sumOfTimes += this.runs[i].timeTaken
    }
    // return the sum, which is the total time of all runs
    return sumOfTimes
  },
  longestRunDistance: function () {
    // set up longestDistance variable
    let longestDistance = 0
    // loop through all runs
    for (let i = 0; i < this.runs.length; i++) {
      // keep track of the longest distance in variable longestDistance
      // if I find a longer distance, save that into the longestDistance variable
      if (longestDistance < this.runs[i].distance) {
        longestDistance = this.runs[i].distance
      }
    }
    // return the longest distance from my runs collection
    return longestDistance
  },
  averageSpeed: function () {
    // get total distance
    const theTotalDistance = this.totalDistance()
    // get total time
    const theTotalTime = this.totalTime()
    // make sure we aren't dividing by 0
    if (theTotalTime) {
      // return total distance / total time ... but will it give us total or avg?
      return theTotalDistance / theTotalTime
    } else {
      return 0
    }
  }

}

User.prototype.longestRun = function () {
  let result = 0
  for (let i = 0; i < this.runs.length; i++) {
    if (this.runs[i].distance > result)
    result = this.runs[i].distance
  }
}

// const totalDistance = function () {
//   return ...
// }

module.exports = {
  User,
  Run
}
