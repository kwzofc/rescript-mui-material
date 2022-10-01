module Classes = {
  type t = {
    "root": option<string>,
    "checked": option<string>,
    "disabled": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~checked: string=?,
    ~disabled: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
  ) => t = ""
}

module Color = {
  type variant = [
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

module Size = {
  type variant = [#medium | #small]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Radio")
external make: (
  ~checked: bool=?,
  ~checkedIcon: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~disabled: bool=?,
  ~disableRipple: bool=?,
  ~icon: React.element=?,
  ~id: string=?,
  ~inputProps: {..}=?,
  ~inputRef: ReactDOM.domRef=?,
  ~className: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~required: bool=?,
  ~size: Size.t=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'any=?,
) => React.element = "default"
