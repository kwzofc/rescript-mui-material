module Classes = {
  type t = {
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

@react.component @module("@mui/material/Select")
external make: (
  ~autoWidth: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~defaultOpen: bool=?,
  ~defaultValue: 'any=?,
  ~displayEmpty: bool=?,
  ~\"IconComponent": React.element=?,
  ~id: string=?,
  ~input: React.element=?,
  ~inputProps: {..}=?,
  ~label: React.element=?,
  ~labelId: string=?,
  ~\"MenuProps": {..}=?,
  ~multiple: bool=?,
  ~native: bool=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~onClose: 'any => unit=?,
  ~onOpen: 'any => unit=?,
  ~open_: bool=?,
  ~renderValue: 'any => React.element=?,
  ~\"SelectDisplayProps": {..}=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'any=?,
  ~variant: [#filled | #outlined | #standard]=?,
) => React.element = "default"
