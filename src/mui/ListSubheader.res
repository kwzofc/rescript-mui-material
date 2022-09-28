module Classes = {
  type t = {
    "root": option<string>,
    "colorPrimary": option<string>,
    "colorInherit": option<string>,
    "gutters": option<string>,
    "inset": option<string>,
    "sticky": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~colorPrimary: string=?,
    ~colorInherit: string=?,
    ~gutters: string=?,
    ~inset: string=?,
    ~sticky: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/ListSubheader")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: [#default | #inherit | #primary]=?,
  ~component: Component.t=?,
  ~disableGutters: bool=?,
  ~disableSticky: bool=?,
  ~inset: bool=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
