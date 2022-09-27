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

@react.component @module("@mui/material/IconButton")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: [
    | #inherit
    | #default
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
    | #string(string)
  ]=?,
  ~disabled: bool=?,
  ~disableFocusRipple: bool=?,
  ~disableRipple: bool=?,
  ~edge: [#end | #start | #"false"(bool)]=?,
  ~size: [#small | #medium | #large | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
