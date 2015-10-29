////////////////////////////////////////////////////////////////////////////////
/// Highlight the sorting attribute.
////////////////////////////////////////////////////////////////////////////////
function highlightSortAttribute(attr) {
  document.getElementById(attr + "-header").className += " hilite";
}

////////////////////////////////////////////////////////////////////////////////
/// Generate the sorting headers from a list of attributes.
////////////////////////////////////////////////////////////////////////////////
function generateSorters(list) {
  // Get the selector and "download file" header
  var selector = document.getElementById("sort-selector");
  var downloadHeader = document.getElementById("download-header");

  // Create a sorting header for each element in the list
  for(var i = 0; i < list.length; ++i) {
    var attribute = list[i][0];

    // Create link text
    var text = document.createTextNode(pretty_attribute(attribute));

    // Create link
    var link = document.createElement("a");
    link.href = "/matrices?sort=" + attribute;
    link.id = attribute;
    link.appendChild(text);

    // Create table header
    var sortHeader = document.createElement("th");
    sortHeader.id = attribute + "-header";
	sortHeader.className = "column-" + attribute;
    sortHeader.appendChild(link);

    // Attach header to selector
    selector.insertBefore(sortHeader, downloadHeader);
  }
}
