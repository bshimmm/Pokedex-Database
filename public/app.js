/*
document.addEventListener('DOMContentLoaded', function(){
  document.getElementById("updatePokemon").addEventListener('click', function(event){
    console.log('HELLO');
    if(!document.getElementById("p_id").value){
      alert("You must enter a valid Pokemon Number");
      event.preventDefault();
      return;
    }
    if(!document.getElementById("p_name").value){
      alert("You must enter a valid Pokemon Name");
      event.preventDefault();
      return;
    }
    var req = new XMLHttpRequest();
    var url = '/pokemon/updatePokemon?p_id=' + id;
    var payload = {
      p_id = document.getElementById("p_id").value,
      p_name = document.getElementById("p_name").value,
      p_catchrate = document.getElementById("p_catchrate").value
    };
    req.open('POST', url);
    req.setRequestHeader('Content-Type', 'application/json');
    req.addEventListener('load', function(){
      if(req.status >= 200 && req.status < 400){
        var response = JSON.stringify(req.responseText);
        response = JSON.parse(req.responseText);
        if(response.success === false){
          alert('Update failed');
        } else {
          alert('Successfully updated Pokemon');
        }
      } else {
        console.log("Error in network request: " + req.statusText);
      }
    });
    req.send(JSON.stringify(payload));
    event.preventDefault();
    alert('Successfully updated Pokemon');
  });


});
*/



