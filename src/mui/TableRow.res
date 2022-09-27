module Classes = {
  type t = {
    "root": option<string>,
    "selected": option<string>,
    "hover": option<string>,
    "head": option<string>,
    "footer": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~selected: string=?,
    ~hover: string=?,
    ~head: string=?,
    ~footer: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/TableRow")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~hover: bool=?,
  ~selected: bool=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
