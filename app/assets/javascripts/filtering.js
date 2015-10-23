////////////////////////////////////////////////////////////////////////////////
/// Hide all filters
////////////////////////////////////////////////////////////////////////////////
function hideFilters() {
  var filters = document.getElementsByClassName("filter");
  for(var i = 0; i < filters.length; ++i) {
    filters[i].style.display = "none";
  }
  document.getElementById("filter-apply").style.display = "none";
}

////////////////////////////////////////////////////////////////////////////////
/// Hide/show the checked/unchecked filter on the index page
////////////////////////////////////////////////////////////////////////////////
function toggleFilter(name) {
  // Get filter
  var filter = document.getElementById("filter-" + name);
  if(filter.style.display == "none") {
    filter.style.display = "";
    document.getElementById("filter-apply").style.display = "";
  }
  else {
    filter.style.display = "none";
    var filters = document.getElementsByClassName("filter");
    for(var i = 0; i < filters.length; ++i) {
      if(filters[i].style.display == "")
        return;
    }
    document.getElementById("filter-apply").style.display = "none";
  }
}
