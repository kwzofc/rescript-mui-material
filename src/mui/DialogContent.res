module Classes = {
  type t = {"root": option<string>, "dividers": option<string>}
  @obj
  external make: (~root: string=?, ~dividers: string=?) => t = ""
}

@react.component @module("@mui/material/DialogContent")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~dividers: bool=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
