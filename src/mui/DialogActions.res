module Classes = {
  type t = {"root": option<string>, "spacing": option<string>}
  @obj
  external make: (~root: string=?, ~spacing: string=?) => t = ""
}

@react.component @module("@mui/material/DialogActions")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~disableSpacing: bool=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
