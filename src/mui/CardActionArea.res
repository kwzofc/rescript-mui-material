module Classes = {
  type t = {
    "root": option<string>,
    "focusVisible": option<string>,
    "focusHighlight": option<string>,
  }
  @obj
  external make: (~root: string=?, ~focusVisible: string=?, ~focusHighlight: string=?) => t = ""
}

@react.component @module("@mui/material/CardActionArea")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
