////////////////////////////////////////////////////////////////////////////////
/// Generate column selectors from a list 
////////////////////////////////////////////////////////////////////////////////
var columns = {};
function generateHides(list) {
  // Get the selector element
  var selector = document.getElementById("hide-selector");

  // Generate a selector for each column
  for(var i = 0; i < list.length; ++i) {
    var attribute = list[i][0];
	columns[attribute] = true;

    // Make selector
    var s = document.createElement("input");
    s.id = "hide-selector-" + attribute;
    s.type = "checkbox";
    s.value = attribute;
	s.clicked = true;
    s.onclick = (function(target) {
      return function() {toggleHide(target);};
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

function toggleHide(attribute){
    if(columns[attribute] === true) {
		columns[attribute] = false;
	}
	else {
		columns[attribute] = true;
	}
}

function hideHides() {
	for(var attribute in columns)
		toggleHide(attribute);
}