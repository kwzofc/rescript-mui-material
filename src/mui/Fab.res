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

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Fab")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: [
    | #default
    | #error
    | #info
    | #inherit
    | #primary
    | #secondary
    | #success
    | #warning
    | #string(string)
  ]=?,
  ~component: Component.t=?,
  ~disabled: bool=?,
  ~disableFocusRipple: bool=?,
  ~disableRipple: bool=?,
  ~href: string=?,
  ~size: [#small | #medium | #large | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [#circular | #extended | #string(string)]=?,
) => React.element = "default"
