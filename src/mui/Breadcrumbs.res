module Classes = {
  type t = {
    "root": option<string>,
    "ol": option<string>,
    "li": option<string>,
    "separator": option<string>,
  }
  @obj
  external make: (~root: string=?, ~ol: string=?, ~li: string=?, ~separator: string=?) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Breadcrumbs")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~expandText: string=?,
  ~itemsAfterCollapse: int=?,
  ~itemsBeforeCollapse: int=?,
  ~maxItems: int=?,
  ~separator: React.element=?,
  ~style: ReactDOM.Style.t=?,
  ~\"aria-label": string=?,
) => React.element = "default"
