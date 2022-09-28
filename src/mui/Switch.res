module Classes = {
  type t = {
    "root": option<string>,
    "edgeStart": option<string>,
    "edgeEnd": option<string>,
    "switchBase": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "sizeSmall": option<string>,
    "sizeMedium": option<string>,
    "checked": option<string>,
    "disabled": option<string>,
    "input": option<string>,
    "thumb": option<string>,
    "track": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~edgeStart: string=?,
    ~edgeEnd: string=?,
    ~switchBase: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~sizeSmall: string=?,
    ~sizeMedium: string=?,
    ~checked: string=?,
    ~disabled: string=?,
    ~input: string=?,
    ~thumb: string=?,
    ~track: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/Switch")
external make: (
  ~checked: bool=?,
  ~checkedIcon: React.element=?,
  ~classes: Classes.t=?,
  ~color: [
    | #default
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
    | #string(string)
  ]=?,
  ~defaultChecked: bool=?,
  ~disabled: bool=?,
  ~disableRipple: bool=?,
  ~edge: [#end | #start | #"false"(bool)]=?,
  ~icon: React.element=?,
  ~id: string=?,
  ~inputProps: Js.Types.t<Js.Types.obj_val>=?,
  ~inputRef: ReactDOM.domRef=?,
  ~onChange: ReactEvent.Mouse.t => unit=?,
  ~required: bool=?,
  ~size: [#medium | #small | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'any=?,
) => React.element = "default"
