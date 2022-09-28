module Classes = {
  type t = {"root": option<string>, "alignItemsFlexStart": option<string>}
  @obj
  external make: (~root: string=?, ~alignItemsFlexStart: string=?) => t = ""
}

@react.component @module("@mui/material/ListItemIcon")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
