module Classes = {
  type t = {
    "root": option<string>,
    "horizontal": option<string>,
    "vertical": option<string>,
    "alternativeLabel": option<string>,
    "completed": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~horizontal: string=?,
    ~vertical: string=?,
    ~alternativeLabel: string=?,
    ~completed: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Step")
external make: (
  ~active: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~completed: bool=?,
  ~component: Component.t=?,
  ~disabled: bool=?,
  ~expanded: bool=?,
  ~index: int=?,
  ~last: bool=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
