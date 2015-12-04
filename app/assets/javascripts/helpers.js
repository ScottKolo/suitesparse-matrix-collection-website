////////////////////////////////////////////////////////////////////////////////
/// Set multiple object properties from a hash.
////////////////////////////////////////////////////////////////////////////////
function setProperties(object, hash) {
  for(var prop in hash)
    object.setAttribute(prop, hash[prop]);
}

////////////////////////////////////////////////////////////////////////////////
/// Test cookie storage on the client side.
////////////////////////////////////////////////////////////////////////////////
function checkCookies() {
  var warnings = document.getElementById("warnings");
  document.cookie = "test=true";
  if(document.cookie == "") {
    warnings.innerHTML = "<p>WARNING: this site requires cookies to function! You will not be able to sort or filter without them.</p>";
  }
}
