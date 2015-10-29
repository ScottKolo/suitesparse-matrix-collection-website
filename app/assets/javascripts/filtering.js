////////////////////////////////////////////////////////////////////////////////
/// Create an appropriate filter object based on type and store it in the global
/// filters object.
////////////////////////////////////////////////////////////////////////////////
var filters = {};
function createFilter(attribute, type) {
  if(type === 'string')
    filters[attribute] = new StringFilter(attribute);
  else if(type === 'int')
    filters[attribute] = new IntFilter(attribute);
  else if(type === 'bool')
    filters[attribute] = new BoolFilter(attribute);
  else
    console.log("createFilter:: skipping request for unrecognized type " + type);
}


////////////////////////////////////////////////////////////////////////////////
/// Create filters from a list of [[attribute1, type1], [attribute2, type2], ...]
////////////////////////////////////////////////////////////////////////////////
function generateFilters(list) {
  for(var i = 0; i < list.length; ++i) {
    var attribute = list[i][0];
    var type = list[i][1];
    createFilter(attribute, type);
  }
}


////////////////////////////////////////////////////////////////////////////////
/// Display the active filters and fill in their values from a params object.
////////////////////////////////////////////////////////////////////////////////
function populateFilters(params) {
  var empty = (params == null);
  var debug = "Params:\n";

  for(var prop in filters) {
    var filter = filters[prop];
    if(empty) {
      filter.hide();
      continue;
    }

    var value = params[prop];
    if(value == null) {
      debug += prop + " :: null\n";

      filter.clearValue();
      filter.hide();
    }
    else {
      if(filter.type === "int")
        debug += prop + " :: [" + value.min + ", " + value.max + "]\n";
      else
        debug += prop + " :: " + value + "\n";

      filter.setValue(value);
      if(filter.hasValue())
        filter.show();
      else
        filter.hide();
    }
  }

  // Control debug output
  if(false) {
    var output = document.createElement("pre");
    output.innerHTML = debug;
    document.body.appendChild(output);
  }
}


////////////////////////////////////////////////////////////////////////////////
/// An abstract filter object for common functionality. Filter creates a set of
/// dynamic HTML elements that look like this:
///
/// (in the selector form)
/// %input <selector>
///
/// (in the filter table)
/// %tr <container>
///   %th <attribute label>
///   %td <input container>
///     %label <input label>
///     %input <input field>
///
////////////////////////////////////////////////////////////////////////////////
function Filter(attribute, type) {

  /*--------------------------- Object Properties ----------------------------*/

  // Filter properties
  this.attribute = attribute;
  this.type = type;
  this.label = pretty_attribute(this.attribute);
  this.cachedValue = null; // Stores the previous value when hiding a filter.

  // Associated DOM elements
  this.container;      // The HTML container that holds the complete filter.
  this.inputContainer; // The HTML container for the filter's input field[s].
  this.input = null;   // The HTML input element[s].
  this.selector;       // The checkbox element that turns this filter on/off.

  /*----------------------- Initialize Input Elements ------------------------*/

  // Make HTML label element
  var labelElement = document.createElement("th");
  labelElement.appendChild(document.createTextNode(this.label));

  // Make HTML input container
  this.inputContainer = document.createElement("td");
  this.inputContainer.className = "form-inline";

  // Make HTML container element
  this.container = document.createElement("tr");
  this.container.className = "filter";
  this.container.id = "filter-" + this.attribute;
  this.container.style.display = "";
  this.container.appendChild(labelElement);
  this.container.appendChild(this.inputContainer);

  // Add container element to filter-table
  document.getElementById("filter-table").appendChild(this.container);

  /*----------------------- Initialize Selector ------------------------------*/

  // Make selector
  this.selector = document.createElement("input");
  this.selector.id = "filter-selector-" + this.attribute;
  this.selector.type = "checkbox";
  this.selector.value = this.attribute;
  this.selector.checked = false;
  this.selector.onclick = (function(obj) {
    return function() {obj.toggle();};
  }(this));

  // Make selector label
  var selectorLabel = document.createElement("label");
  selectorLabel.htmlFor = this.selector.id;
  selectorLabel.appendChild(document.createTextNode(this.label));

  // Add selector and label to filter-selector
  var s = document.getElementById("filter-selector");
  s.appendChild(this.selector);
  s.appendChild(selectorLabel);

  /*----------------------- Value Caching Functions --------------------------*/

  this.cacheValue = function() {
    this.cachedValue = this.getValue();
    this.clearValue();
  };

  this.restoreValue = function() {
    if(this.cachedValue !== null) {
      this.setValue(this.cachedValue);
      this.cachedValue = null;
    }
  };

  /*------------------------- Display Functions ------------------------------*/

  this.show = function() {
    this.restoreValue();
    this.container.style.display = "";
    this.selector.checked = true;
    document.getElementById("filter-apply").style.display = "";
  };

  this.hide = function() {
    this.cacheValue();
    this.container.style.display = "none";
    this.selector.checked = false;
    for(var prop in filters) {
      if(filters[prop].visible())
        return;
    }
    document.getElementById("filter-apply").style.display = "none";
  };

  this.toggle = function() {
    if(this.visible())
      this.hide();
    else
      this.show();
  };

  this.visible = function() {
    return this.container.style.display === "";
  };

  /*--------------------------------------------------------------------------*/
}


////////////////////////////////////////////////////////////////////////////////
/// A string filter.
////////////////////////////////////////////////////////////////////////////////
function StringFilter(attribute) {

  /*--------------------------- Object Properties ----------------------------*/

  // Inherit from superclass
  Filter.apply(this, [attribute, "string"]);

  /*----------------------- Initialize Input Field ---------------------------*/

  // Make input field
  this.input = document.createElement("Input");
  this.input.type = "text";
  this.input.id = "filter-input-" + this.attribute;
  this.input.name = "filter[" + this.attribute + "]";
  this.input.value = "";
  this.input.placeholder = "contains...";
  this.input.className = "form-control";

  // Make tool tip
  this.input.dataset.toggle = "tooltip";
  this.input.dataset.placement = "right";
  this.input.title = "Search for matrices who's " + this.label +
      " includes one or more terms. Negate by prefacing with '-'.";

  // Add input field to input container.
  this.inputContainer.appendChild(this.input);

  /*------------------------------ Functions ---------------------------------*/

  this.hasValue = function() {
    return this.input.value !== "";
  };

  this.getValue = function() {
    return this.input.value;
  };

  this.setValue = function(val) {
    this.input.value = val;
  };

  this.clearValue = function() {
    this.input.value = "";
  };

  /*--------------------------------------------------------------------------*/
}


////////////////////////////////////////////////////////////////////////////////
/// An integer filter.
////////////////////////////////////////////////////////////////////////////////
function IntFilter(attribute) {

  /*--------------------------- Object Properties ----------------------------*/

  // Inherit from superclass
  Filter.apply(this, [attribute, "int"]);

  /*----------------------- Initialize Input Field ---------------------------*/

  // Make minimum input field
  var minField = document.createElement("Input");
  minField.type = "text";
  minField.id = "filter-input-" + this.attribute + "-min";
  minField.name = "filter[" + this.attribute + "][min]";
  minField.value = "";
  minField.placeholder = "min";
  minField.className = "form-control";

  // Make maximum input field
  var maxField = document.createElement("Input");
  maxField.type = "text";
  maxField.id = "filter-input-" + this.attribute + "-max";
  maxField.name = "filter[" + this.attribute + "][max]";
  maxField.value = "";
  maxField.placeholder = "max";
  maxField.className = "form-control";

  // Store min and max in input
  this.input = {min: minField, max: maxField};

  // Make tool tips
  minField.dataset.toggle = "tooltip";
  minField.dataset.placement = "right";
  minField.title = "Search for matrices with " + this.label +
      " between min and max.";
  maxField.dataset.toggle = "tooltip";
  maxField.dataset.placement = "right";
  maxField.title = "Search for matrices with " + this.label +
      " between min and max.";

  // Make label
  var inputLabel = document.createElement("label");
  inputLabel.htmlFor = maxField.id;
  inputLabel.appendChild(document.createTextNode(" \u2264 " + this.label + " \u2264 "));

  // Populate input container
  this.inputContainer.appendChild(minField);
  this.inputContainer.appendChild(inputLabel);
  this.inputContainer.appendChild(maxField);

  /*------------------------------ Functions ---------------------------------*/

  this.hasValue = function() {
    var hasMin = (this.input.min.value !== "");
    var hasMax = (this.input.max.value !== "");
    return hasMin || hasMax;
  };

  this.getValue = function() {
    var value = {
      min: this.input.min.value,
      max: this.input.max.value
    };
    return value;
  };

  this.setValue = function(range) {
    this.input.min.value = range.min;
    this.input.max.value = range.max;
  };

  this.clearValue = function() {
    this.input.min.value = "";
    this.input.max.value = "";
  };

  /*--------------------------------------------------------------------------*/
}


////////////////////////////////////////////////////////////////////////////////
/// A boolean filter.
////////////////////////////////////////////////////////////////////////////////
function BoolFilter(attribute) {

  /*--------------------------- Object Properties ----------------------------*/

  // Inherit from superclass
  Filter.apply(this, [attribute, "bool"]);

  /*----------------------- Initialize Input Field ---------------------------*/

  // Make input field
  this.input = document.createElement("input");
  this.input.type = "checkbox";
  this.input.id = "filter-input-" + this.attribute;
  this.input.name = "filter[" + this.attribute + "]";
  this.input.checked = false;
  this.input.className = "form-control";

  // Make tool tips
  this.input.dataset.toggle = "tooltip";
  this.input.dataset.placement = "right";
  this.input.title = "Require matrix to be " + this.label + "?";

  // Attach input field to input container
  this.inputContainer.appendChild(this.input);

  /*------------------------------ Functions ---------------------------------*/

  this.hasValue = function() {
    return this.input.checked === true;
  };

  this.getValue = function() {
    return this.hasValue();
  };

  this.setValue = function(val) {
    if(val === "on" || val === true) {
      this.input.checked = true;
      this.selector.checked = true;
    }
    else {
      this.input.checked = false;
      this.selector.checked = false;
    }
  };

  this.clearValue = function() {
    this.input.checked = false;
    this.selector.checked = false;
  };

  /*--------------------------------------------------------------------------*/
}
