module Classes = {
  type t = {"root": option<string>}
  @obj
  external make: (~root: string=?) => t = ""
}

@react.component @module("@mui/material/Card")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~raised: bool=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
