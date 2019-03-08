document.addEventListener('DOMContentLoaded', function() {
  function deleteRow(row, id)
  {
  var req = new XMLHttpRequest();
  var url = 'http://locahost:3000/delete?p_id=' + id; 
  req.open('POST', url);
          var payload ={
              p_id: id
          };
          console.log(JSON.stringify(payload));
          req.send(JSON.stringify(payload)); //send JSON string-formatted object
          event.preventDefault();
  var i=row.parentNode.parentNode.rowIndex;
  document.getElementById('pokemonTable').deleteRow(i);
  }
})

