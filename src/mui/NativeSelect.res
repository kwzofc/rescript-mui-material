module Classes = {
  type t = {
    "root": option<string>,
    "select": option<string>,
    "multiple": option<string>,
    "filled": option<string>,
    "outlined": option<string>,
    "standard": option<string>,
    "disabled": option<string>,
    "icon": option<string>,
    "iconOpen": option<string>,
    "iconFilled": option<string>,
    "iconOutlined": option<string>,
    "iconStandard": option<string>,
    "nativeInput": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~select: string=?,
    ~multiple: string=?,
    ~filled: string=?,
    ~outlined: string=?,
    ~standard: string=?,
    ~disabled: string=?,
    ~icon: string=?,
    ~iconOpen: string=?,
    ~iconFilled: string=?,
    ~iconOutlined: string=?,
    ~iconStandard: string=?,
    ~nativeInput: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/NativeSelect")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~\"IconComponent": React.element=?,
  ~input: React.element=?,
  ~inputProps: {..}=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'any=?,
  ~variant: [#filled | #outlined | #standard]=?,
) => React.element = "default"
