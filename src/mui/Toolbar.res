module Classes = {
  type t = {
    "root": option<string>,
    "gutters": option<string>,
    "regular": option<string>,
    "dense": option<string>,
  }
  @obj
  external make: (~root: string=?, ~gutters: string=?, ~regular: string=?, ~dense: string=?) => t =
    ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Variant = {
  type variant = [#dense | #regular]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Toolbar")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~disableGutters: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
) => React.element = "default"
