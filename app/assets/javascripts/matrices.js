////////////////////////////////////////////////////////////////////////////////
/// Get the pretty name for an attribute. Except for special cases, this returns
/// the database attribute name with the first letter capitalized.
////////////////////////////////////////////////////////////////////////////////
function pretty_attribute(attribute) {
  if(attribute == "num_rows")
    return "Rows";
  else if(attribute == "num_cols")
    return "Cols";
  else if(attribute == "date")
    return "Year";
  else {
    var tokens = attribute.split("_");
    var s = "";
    for(var i = 0; i < tokens.length; ++i)
      s += tokens[i].charAt(0).toUpperCase() + tokens[i].slice(1) + " ";
    return s.slice(0, s.length - 1);
  }
}
