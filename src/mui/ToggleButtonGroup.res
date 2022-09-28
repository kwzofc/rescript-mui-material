module Classes = {
  type t = {
    "root": option<string>,
    "vertical": option<string>,
    "disabled": option<string>,
    "grouped": option<string>,
    "groupedHorizontal": option<string>,
    "groupedVertical": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~vertical: string=?,
    ~disabled: string=?,
    ~grouped: string=?,
    ~groupedHorizontal: string=?,
    ~groupedVertical: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/ToggleButtonGroup")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: [
    | #standard
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
    | #string(string)
  ]=?,
  ~disabled: bool=?,
  ~exclusive: bool=?,
  ~fullWidth: bool=?,
  ~onChange: ReactEvent.Mouse.t => unit=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~size: [#small | #medium | #large | #string(string)]=?,
  ~value: 'any=?,
) => React.element = "default"
