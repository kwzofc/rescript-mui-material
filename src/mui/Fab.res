module Classes = {
  type t = {
    "root": option<string>,
    "primary": option<string>,
    "secondary": option<string>,
    "extended": option<string>,
    "circular": option<string>,
    "focusVisible": option<string>,
    "disabled": option<string>,
    "colorInherit": option<string>,
    "sizeSmall": option<string>,
    "sizeMedium": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~primary: string=?,
    ~secondary: string=?,
    ~extended: string=?,
    ~circular: string=?,
    ~focusVisible: string=?,
    ~disabled: string=?,
    ~colorInherit: string=?,
    ~sizeSmall: string=?,
    ~sizeMedium: string=?,
  ) => t = ""
}

module Color = {
  type variant = [
    | #default
    | #error
    | #info
    | #inherit
    | #primary
    | #secondary
    | #success
    | #warning
  ]
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
  type variant = [#small | #medium | #large]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Variant = {
  type variant = [#circular | #extended]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Fab")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~component: Component.t=?,
  ~disabled: bool=?,
  ~disableFocusRipple: bool=?,
  ~disableRipple: bool=?,
  ~href: string=?,
  ~size: Size.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
) => React.element = "default"
