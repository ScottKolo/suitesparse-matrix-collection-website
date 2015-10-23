////////////////////////////////////////////////////////////////////////////////
/// Create the filters from a list
////////////////////////////////////////////////////////////////////////////////
function generateFilters(list) {
  // Get the selector list and filter table
  var selector = document.getElementById("filter-selector");
  var table = document.getElementById("filter-table");

  // Hide apply filters button
  document.getElementById("filter-apply").style.display = "none";

  // Generate a selector and filter for each item in the list
  for(var i = 0; i < list.length; ++i) {
    var attribute = list[i][0];
    var type = list[i][1];

    // Make filter label
    var label = document.createElement("th");
    label.appendChild(document.createTextNode(attribute));

    // Make filter input
    var input = document.createElement("input");
    input.type = "text";
    input.name = attribute;
    input.className = "form-control";

    // Make input container
    var container = document.createElement("td");
    container.appendChild(input);

    // Make filter-table row
    var row = document.createElement("tr");
    row.className = "filter";
    row.id = "filter-" + attribute;
    row.appendChild(label);
    row.appendChild(container);

    // Add filter to filter-table
    table.appendChild(row);
    row.style.display = "none";

    // Make selector
    var s = document.createElement("input");
    s.id = "filter-selector-" + attribute;
    s.type = "checkbox";
    s.value = attribute;
    s.onclick = (function(target) {
      return function() {toggleFilter(target);};
    }(attribute)); // This generates the proper onclick function for each filter.

    // Make selector label
    var sLabel = document.createElement("label");
    sLabel.htmlFor = s.id;
    sLabel.appendChild(document.createTextNode(attribute));

    // Add selector and label to filter-selector
    selector.appendChild(s);
    selector.appendChild(sLabel);
  }
}

////////////////////////////////////////////////////////////////////////////////
/// Hide/show the checked/unchecked filter on the index page and ensure the
/// 'apply filters' button is in the proper state.
////////////////////////////////////////////////////////////////////////////////
function toggleFilter(name) {
  // Get filter
  var filter = document.getElementById("filter-" + name);

  // If the filter wasn't visible, make it and the button visibile
  if(filter.style.display == "none") {
    filter.style.display = "";
    document.getElementById("filter-apply").style.display = "";
  }
  // If the filter was visible, make it invisible.
  else {
    filter.style.display = "none";

    // If no other filters are visible, make the button invisible.
    var filters = document.getElementsByClassName("filter");
    for(var i = 0; i < filters.length; ++i) {
      if(filters[i].style.display == "")
        return;
    }
    document.getElementById("filter-apply").style.display = "none";
  }
}
