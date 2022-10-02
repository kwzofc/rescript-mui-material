module Classes = {
  type t = {
    "root": option<string>,
    "horizontal": option<string>,
    "vertical": option<string>,
    "alternativeLabel": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~horizontal: string=?,
    ~vertical: string=?,
    ~alternativeLabel: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Stepper")
external make: (
  ~activeStep: int=?,
  ~alternativeLabel: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~connector: React.element=?,
  ~nonLinear: bool=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
