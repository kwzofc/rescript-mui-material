module Classes = {
  type t = {"root": option<string>, "disableGutters": option<string>}
  @obj
  external make: (~root: string=?, ~disbleGutters: string=?) => t = ""
}

@react.component @module("@mui/material/ListItemSecondaryAction")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
