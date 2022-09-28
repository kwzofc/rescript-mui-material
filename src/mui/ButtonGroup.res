module Classes = {
  type t = {
    "root": option<string>,
    "contained": option<string>,
    "outlined": option<string>,
    "text": option<string>,
    "disableElevation": option<string>,
    "disabled": option<string>,
    "fullWidth": option<string>,
    "vertical": option<string>,
    "grouped": option<string>,
    "groupedHorizontal": option<string>,
    "groupedVertical": option<string>,
    "groupedText": option<string>,
    "groupedTextHorizontal": option<string>,
    "groupedTextVertical": option<string>,
    "groupedTextPrimary": option<string>,
    "groupedTextSecondary": option<string>,
    "groupedOutlined": option<string>,
    "groupedOutlinedHorizontal": option<string>,
    "groupedOutlinedVertical": option<string>,
    "groupedOutlinedPrimary": option<string>,
    "groupedOutlinedSecondary": option<string>,
    "groupedContained": option<string>,
    "groupedContainedHorizontal": option<string>,
    "groupedContainedVertical": option<string>,
    "groupedContainedPrimary": option<string>,
    "groupedContainedSecondary": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~contained: string=?,
    ~outlined: string=?,
    ~text: string=?,
    ~disableElevation: string=?,
    ~disabled: string=?,
    ~fullWidth: string=?,
    ~vertical: string=?,
    ~grouped: string=?,
    ~groupedHorizontal: string=?,
    ~groupedVertical: string=?,
    ~groupedText: string=?,
    ~groupedTextHorizontal: string=?,
    ~groupedTextVertical: string=?,
    ~groupedTextPrimary: string=?,
    ~groupedTextSecondary: string=?,
    ~groupedOutlined: string=?,
    ~groupedOutlinedHorizontal: string=?,
    ~groupedOutlinedVertical: string=?,
    ~groupedOutlinedPrimary: string=?,
    ~groupedOutlinedSecondary: string=?,
    ~groupedContained: string=?,
    ~groupedContainedHorizontal: string=?,
    ~groupedContainedVertical: string=?,
    ~groupedContainedPrimary: string=?,
    ~groupedContainedSecondary: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/ButtonGroup")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: [
    | #inherit
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
    | #string(string)
  ]=?,
  ~component: Component.t=?,
  ~disabled: bool=?,
  ~disableElevation: bool=?,
  ~disableFocusRipple: bool=?,
  ~disableRipple: bool=?,
  ~fullWidth: bool=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~size: [#small | #medium | #large | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [#contained | #outlined | #text | #string(string)]=?,
) => React.element = "default"
