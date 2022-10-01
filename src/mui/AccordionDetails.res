module Classes = {
  type t = {"root": option<string>}
  @obj
  external make: (~root: string=?) => t = ""
}

@react.component @module("@mui/material/AccordionDetails")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"