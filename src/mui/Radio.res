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

@react.component @module("@mui/material/Radio")
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
  ~disabled: bool=?,
  ~disableRipple: bool=?,
  ~icon: React.element=?,
  ~id: string=?,
  ~inputProps: {..}=?,
  ~inputRef: ReactDOM.domRef=?,
  ~className: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~required: bool=?,
  ~size: [#medium | #small | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'any=?,
) => React.element = "default"
