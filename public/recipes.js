console.log('hello');

// response = Unirest.get('localhost:3000/api/recipes')
// p response.body

axios.get('/api/recipes').then(function(response) {
  console.log(response.data);
  // add the data to the DOM
  var div = document.querySelector('div');
  div.innerText = response.data[1].title;
});
