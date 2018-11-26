'use strict'

const user = {
  name: 'Eric',
  bornOn: '1984-06-19',
  calorieTarget: 2000,
  meals: [
    {
      title: 'breakfast',
      date: '2018-10-19',
      description: 'eggs, bacon, toast',
      calories: 600
    },
    {
      title: 'lunch',
      date: '2018-10-19',
      description: 'several tacos',
      calories: 700
    }
  ],
  caloriesEatenOn: function (dateParam) {
    let dailyCal = 0
    for (let i = 0; i < this.meals.length; i++) {
      if (this.meals[i].date === dateParam) {
        dailyCal += this.meals[i].date
      }
    }
    return dailyCal
  }
}

module.exports = user
