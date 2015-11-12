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
    var labelDiv = document.createElement("div");
    labelDiv.innerHTML += '&nbsp;' + pretty_attribute(attribute) + '&nbsp;';
    sLabel.appendChild(labelDiv);

    // Add selector and label to filter-selector
    selector.appendChild(s);
    selector.appendChild(sLabel);
  }

}

function toggleHide(attribute){
	var nodes = document.getElementsByClassName("column-" + attribute);
    if(columns[attribute] === true) {
		columns[attribute] = false;
		//now hide stuff
		for(var i = 0; i < nodes.length; ++i)
			nodes[i].style.display = "none";
	}
	else {
		columns[attribute] = true;
		for(var i = 0; i < nodes.length; ++i)
			nodes[i].style.display = "";
	}
}

function hideHides() {
	for(var attribute in columns)
		toggleHide(attribute);
}