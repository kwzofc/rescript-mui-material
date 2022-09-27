module Classes = {
  type t = {"root": option<string>}
  @obj
  external make: (~root: string=?) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
  external any: 'any => t = "%identity"
}

@react.component @module("@mui/material/TableContainer")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
