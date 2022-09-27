module Classes = {
  type t = {"root": option<string>, "row": option<string>, "error": option<string>}
  @obj
  external make: (~root: string=?, ~row: string=?, ~error: string=?) => t = ""
}

@react.component @module("@mui/material/FormGroup")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~row: bool=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
