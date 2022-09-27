module Classes = {
  type t = {
    "root": option<string>,
    "labelPlacementStart": option<string>,
    "labelPlacementTop": option<string>,
    "labelPlacementBottom": option<string>,
    "disabled": option<string>,
    "label": option<string>,
    "error": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~labelPlacementStart: string=?,
    ~labelPlacementTop: string=?,
    ~labelPlacementBottom: string=?,
    ~disabled: string=?,
    ~label: string=?,
    ~error: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/FormControlLabel")
external make: (
  ~control: React.element=?,
  ~checked: bool=?,
  ~classes: Classes.t=?,
  ~disabled: bool=?,
  ~disableTypography: bool=?,
  ~inputRef: ReactDOM.domRef=?,
  ~label: React.element=?,
  ~labelPlacement: [#bottom | #end | #start | #top]=?,
  ~onChange: ReactEvent.Synthetic.t => unit=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'any=?,
) => React.element = "default"
