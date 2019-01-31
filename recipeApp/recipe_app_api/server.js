//activating cabapilities to use Express.js
const express = require('express');

const bodyParser = require('body-parser');

//initializing ability to use Express.js
const app = express();
app.use(bodyParser.json());

//testing user authentication with sample database
const database = {
	users: [
		{
			id: '1',
			name: 'Tony',
			email: 'test@gmail.com',
			password: 'testemail',
			savedRecipes: 0,
			joined: new Date()
		},

		{
			id: '2',
			name: 'Katie',
			email: 'test2@gmail.com',
			password: 'testemail2',
			savedRecipes: 0,
			joined: new Date()
		}

	]
}


//sends this message to nodemon for API work
app.get('/', (req, res) => {
	res.send(database.users);
})

//user sign-in functionality: checking to see if what's stored in the database matches (first) user login credentials
app.post('/signin', (req, res) =>{

	if(req.body.email === database.users[0].email &&
		req.body.password === database.users[0].password){
		res.json('success!');
	} 

	else{
		res.status(400).json('error logging in');
	}
})

//register new user functionality
app.post('/register', (req, res) =>{

	//destructuring properties from the "database" object
	const {email, name, password} = req.body;

	//pushes new users to the database
	database.users.push({
		id:  3, //using a static ID for now, will fix later
		name: name,
		email: email,
		password: password,
		entries: 0,
		joined: new Date()
	})

	res.json(database.users[database.users.length-1]);
})

//uses the localhost port, and sends a message saying it's working on that port.
app.listen(3000, () =>{
	console.log('app is running on port 3000')
})


/*
-- planning my API


	/--> res = this is working


	***this is because I want to not send a querystring for passwords/usernames. More secure.***
	/signIn --> POST = success/fail 

	/register --> POST = user

	/profile/:userID --> GET = user

	***want a way to link favorite recipes with each user***
	/favorites --> put user
*/