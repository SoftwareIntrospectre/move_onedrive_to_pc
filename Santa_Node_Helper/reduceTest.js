var orders = [
	{amount: 250},
	{amount: 400},
	{amount: 100},
	{amount: 325}
]



//Reduce example #1

// //reduce way of doing this. A jack-of-all-trades higher order function
// var totalAmount = orders.reduce(function(sum, order) {
// 	console.log("hello", sum, order)
// 	return sum + order.amount
// }, 0)  
// //first argument = callback function (with sum as function's first argument, and iterator as second argument)
// //, second argument = starting point


// //for loop way 
// /*
// var totalAmount = 0
// for (var i = 0; i < orders.length; i++){
// 	totalAmount += orders[i].amount
// }
// */


// //ES6 way of doing reduce (arrow functions)
// var totalAmount = orders.reduce((sum, order) => sum + order.amount, 0)  

// console.log(totalAmount)


//Reduce example #2


