module Classes = {
  type t = {
    "root": option<string>,
    "marginNormal": option<string>,
    "marginDense": option<string>,
    "fullWidth": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~marginNormal: string=?,
    ~marginDense: string=?,
    ~fullWidth: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#primary | #secondary | #error | #info | #success | #warning]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Size = {
  type variant = [#medium | #small]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/FormControl")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~component: Component.t=?,
  ~disabled: bool=?,
  ~error: bool=?,
  ~focused: bool=?,
  ~fullWidth: bool=?,
  ~hiddenLabel: bool=?,
  ~margin: [#dense | #none | #normal]=?,
  ~required: bool=?,
  ~size: Size.t=?,
  ~variant: [#filled | #outlined | #standard]=?,
) => React.element = "default"
