////////////////////////////////////////////////////////////////////////////////
/// Create filters from a list of [[attribute1, type1], [attribute2, type2], ...]
////////////////////////////////////////////////////////////////////////////////
function generateFilters(list) {
  // Get the selector list and filter table
  var selector = document.getElementById("filter-selector");
  var table = document.getElementById("filter-table");

  // Generate a selector and filter for each item in the list
  for(var i = 0; i < list.length; ++i) {
    var attribute = list[i][0];
    var type = list[i][1];
    var label = pretty_attribute(attribute);

    // Make filter label
    var fLabel = document.createElement("th");
    fLabel.appendChild(document.createTextNode(label));

    // Make input container
    var container = createFilter(attribute, type);

    // Make filter-table row
    var row = document.createElement("tr");
    row.className = "filter";
    row.id = "filter-" + attribute;
    row.appendChild(fLabel);
    row.appendChild(container);
    row.style.display = "";

    // Add filter to filter-table
    table.appendChild(row);

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
    sLabel.appendChild(document.createTextNode(pretty_attribute(attribute)));

    // Add selector and label to filter-selector
    selector.appendChild(s);
    selector.appendChild(sLabel);
  }
}

////////////////////////////////////////////////////////////////////////////////
/// Create the appropriate filter object based on type.
////////////////////////////////////////////////////////////////////////////////
function createFilter(attribute, type) {
  var f;
  if(type === 'string')
    f = createStringFilter(attribute);
  else if(type === 'int')
    f = createIntFilter(attribute);
  else if(type === 'bool')
    f = createBoolFilter(attribute);
  return f; // null-return if type is unrecognized
}

////////////////////////////////////////////////////////////////////////////////
/// Create a string filter.
////////////////////////////////////////////////////////////////////////////////
function createStringFilter(attribute) {
  // Make input field
  var inputField = document.createElement("Input");
  inputField.type = "text";
  inputField.id = "filter-input-" + attribute;
  inputField.name = "filter[" + attribute + "]";
  inputField.placeholder = "contains...";
  inputField.className = "form-control";

  // Make tool tip
  inputField.dataset.toggle = "tooltip";
  inputField.dataset.placement = "right";
  inputField.title = "Search for matrices who's " + pretty_attribute(attribute) +
      " includes one or more terms. Negate by prefacing with '-'.";

  // Make container
  var container = document.createElement("td");
  container.className = "form-inline";
  container.appendChild(inputField);
  return container;
}

////////////////////////////////////////////////////////////////////////////////
/// Create an int filter.
////////////////////////////////////////////////////////////////////////////////
function createIntFilter(attribute) {
  // Make minimum input field
  var inputMinField = document.createElement("Input");
  inputMinField.type = "text";
  inputMinField.id = "filter-input-" + attribute + "-min";
  inputMinField.name = "filter[" + attribute + "][min]";
  inputMinField.placeholder = "min";
  inputMinField.className = "form-control";

  // Make maximum input field
  var inputMaxField = document.createElement("Input");
  inputMaxField.type = "text";
  inputMaxField.id = "filter-input-" + attribute + "-max";
  inputMaxField.name = "filter[" + attribute + "][max]";
  inputMaxField.placeholder = "max";
  inputMaxField.className = "form-control";

  // Make tool tips
  inputMinField.dataset.toggle = "tooltip";
  inputMinField.dataset.placement = "right";
  inputMinField.title = "Search for matrices with " + attribute +
      " between min and max.";
  inputMaxField.dataset.toggle = "tooltip";
  inputMaxField.dataset.placement = "right";
  inputMaxField.title = "Search for matrices with " + attribute +
      " between min and max.";

  // Make label
  var inputLabel = document.createElement("label");
  inputLabel.htmlFor = inputMaxField.id;
  inputLabel.appendChild(document.createTextNode(" <= " + attribute + " <= "));

  // Make container
  var container = document.createElement("td");
  container.className = "form-inline";
  container.appendChild(inputMinField);
  container.appendChild(inputLabel);
  container.appendChild(inputMaxField);
  return container;
}

////////////////////////////////////////////////////////////////////////////////
/// Create a bool filter.
////////////////////////////////////////////////////////////////////////////////
function createBoolFilter(attribute) {
  // Make input field
  var inputField = document.createElement("input");
  inputField.type = "checkbox";
  inputField.id = "filter-input-" + attribute;
  inputField.name = "filter[" + attribute + "]";
  inputField.className = "form-control";

  // Make tool tips
  inputField.dataset.toggle = "tooltip";
  inputField.dataset.placement = "right";
  inputField.title = "Require matrix to be " + attribute + "?";

  // Make container
  var container = document.createElement("td");
  container.className = "form-inline";
  container.appendChild(inputField);
  return container;
}

////////////////////////////////////////////////////////////////////////////////
/// Hide all the filters after creating them and setting up tooltips
////////////////////////////////////////////////////////////////////////////////
function hideFilters() {
  // Hide each filter row
  var filters = document.getElementsByClassName("filter");
  for(var i = 0; i < filters.length; ++i)
    filters[i].style.display = "none";

  // Hide apply filters button
  document.getElementById("filter-apply").style.display = "none";
}

////////////////////////////////////////////////////////////////////////////////
/// Hide/show the checked/unchecked filter on the index page and ensure the
/// 'apply filters' button is in the proper state.
////////////////////////////////////////////////////////////////////////////////
function toggleFilter(attribute) {
  // Get filter
  var filter = document.getElementById("filter-" + attribute);
  if(filter == null)
    document.writeln("filter-" + attribute);

  // If the filter wasn't visible, make it and the button visibile
  if(filter.style.display === "none") {
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

////////////////////////////////////////////////////////////////////////////////
/// Display the active filters and fill in their values.
////////////////////////////////////////////////////////////////////////////////
function populateFilters(params) {
  if(params == null)
    return;
  var out = "Params:\n"
  for(var prop in params) {
    var type = typeof(params[prop]);
    out += prop + " :: ";
    if(type == "string") {
      out += params[prop] + "\n";
      if(params[prop] != "") {
        toggleFilter(prop);
        document.getElementById("filter-input-" + prop).value = params[prop];
        document.getElementById("filter-selector-" + prop).checked = true;
      }
    }
    else if(type == "boolean") {
      out += params[prop] + "\n";
      if(params[prop] == "on") {
        toggleFilter(prop);
        document.getElementById("filter-input-" + prop).checked = true;
        document.getElementById("filter-selector-" + prop).checked = true;
      }
    }
    else {
      var range = params[prop];
      var hasMin = range.min != "";
      var hasMax = range.max != "";
      out += "[" + range.min + ", " + range.max + "]\n";
      if(hasMin || hasMax) {
        toggleFilter(prop);
        if(hasMin)
          document.getElementById("filter-input-" + prop + "-min").value = range.min;
        if(hasMax)
          document.getElementById("filter-input-" + prop + "-max").value = range.max;
      }
    }
  }
  var outElement = document.createElement("pre");
  outElement.innerHTML = out;
  document.getElementById("testing").appendChild(outElement);
}
