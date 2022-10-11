import React, { useEffect } from 'react';

function HelloWorld(){
    useEffect(() => {
        console.log("React connected -- called this log form Use Effect. It is very limited due to the application being set up in Ruby on Rails 7, which limits React's capacity of working with JSX. More info: https://reactjs.org/docs/react-without-jsx.html")
    }, [])
    //const e = React.createElement;
    //return e("h1", null, "Hello World")
}

export default HelloWorld;