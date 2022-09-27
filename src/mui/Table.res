module Classes = {
  type t = {"root": option<string>, "stickyHeader": option<string>}
  @obj
  external make: (~root: string=?, ~stickyHeader: string=?) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Table")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~padding: [#checkbox | #none | #normal]=?,
  ~size: [#medium | #small | #string(string)]=?,
  ~stickyHeader: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~\"aria-label": string=?,
) => React.element = "default"
