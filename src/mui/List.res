module Classes = {
  type t = {
    "root": option<string>,
    "padding": option<string>,
    "dense": option<string>,
    "subheader": option<string>,
  }
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/List")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~dense: bool=?,
  ~disablePadding: bool=?,
  ~subheader: React.element=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
