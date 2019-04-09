import React from 'react';


// functional component (component that doesn't have a state): 
//takes in props as an argument, returns as a react element.
//(opposed to a Class-based component)

//passing in props as an argument, opposed to "this.getRecipe()", because of above reason
const Form = props => (
	//using {JavaScript expression} within JSX syntax
	<form onSubmit={props.getRecipe}>
		<input type="text"/>
		<button>Search</button>
	</form>
	);


export default Form;