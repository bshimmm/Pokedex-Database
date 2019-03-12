/*
document.addEventListener('DOMContentLoaded', function(){
	document.getElementById("updatePokemon").addEventListener('click', function(event){
		var req = new XMLHttpRequest();
		var route = "/update";
		var payload = {
			p_name: document.getElementById("p_name").value,
			p_catchrate: document.getElementById("p_catchrate").value
		};
		//get response for the form
		req.open("GET", route + "?" + payload, true);
		req.addEventListener('load', function(){
			if(req.status >= 200 && req.status < 400){
				var response = JSON.stringify(req.responseText);
				if(response.resp === false){
					alert('Update failed!');
				} else {
					alert('Update successful!');
				}
			}
			else {
				console.log("Error in network request: " + req.statusText);
			} 
		});
		req.send(JSON.stringify(payload));
		event.preventDefault();
	});
}
*/


