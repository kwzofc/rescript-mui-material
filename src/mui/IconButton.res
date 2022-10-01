module Classes = {
  type t = {
    "root": option<string>,
    "edgeStart": option<string>,
    "edgeEnd": option<string>,
    "colorInherit": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "disabled": option<string>,
    "sizeSmall": option<string>,
    "sizeMedium": option<string>,
    "sizeLarge": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~edgeStart: string=?,
    ~edgeEnd: string=?,
    ~colorInherit: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~disabled: string=?,
    ~sizeSmall: string=?,
    ~sizeMedium: string=?,
    ~sizeLarge: string=?,
  ) => t = ""
}

module Color = {
  type variant = [
    | #inherit
    | #default
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
  ]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Edge = {
  type variant = [#end | #start]
  type t
  external variant: variant => t = "%identity"
  external bool: bool => t = "%identity"
}

module Size = {
  type variant = [#small | #medium | #large]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/IconButton")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~disabled: bool=?,
  ~disableFocusRipple: bool=?,
  ~disableRipple: bool=?,
  ~edge: Edge.t=?,
  ~size: Size.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
