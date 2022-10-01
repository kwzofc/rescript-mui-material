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

module Color = {
  type variant = [
    | #standard
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

module Size = {
  type variant = [#small | #medium | #large]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/ToggleButtonGroup")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~disabled: bool=?,
  ~exclusive: bool=?,
  ~fullWidth: bool=?,
  ~onChange: ReactEvent.Mouse.t => unit=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~size: Size.t=?,
  ~value: 'any=?,
) => React.element = "default"
