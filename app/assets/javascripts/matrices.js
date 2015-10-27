////////////////////////////////////////////////////////////////////////////////
/// Get the pretty name for an attribute.
////////////////////////////////////////////////////////////////////////////////
function pretty_attribute(attribute) {
  if(attribute == "num_rows")
    return "Rows";
  else if(attribute == "num_cols")
    return "Cols";
  else if(attribute == "date")
    return "Year";
  else
    return attribute.charAt(0).toUpperCase() + attribute.slice(1);
}
