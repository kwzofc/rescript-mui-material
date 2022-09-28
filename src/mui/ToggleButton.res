module Classes = {
  type t = {
    "root": option<string>,
    "disabled": option<string>,
    "selected": option<string>,
    "standard": option<string>,
    "primary": option<string>,
    "secondary": option<string>,
    "sizeSmall": option<string>,
    "sizeMedium": option<string>,
    "sizeLarge": option<string>,
  }
}

@react.component @module("@mui/material/ToggleButton")
external make: (
  ~value: 'any=?,
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
  ~disableFocusRipple: bool=?,
  ~disableRipple: bool=?,
  ~fullWidth: bool=?,
  ~onChange: ReactEvent.Mouse.t => unit=?,
  ~onClick: ReactEvent.Mouse.t => unit=?,
  ~selected: bool=?,
  ~size: [#small | #medium | #large | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
