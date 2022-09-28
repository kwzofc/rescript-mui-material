module Classes = {
  type t = {
    "root": option<string>,
    "sizeSmall": option<string>,
    "sizeMedium": option<string>,
    "sizeLarge": option<string>,
    "readOnly": option<string>,
    "disabled": option<string>,
    "focusVisible": option<string>,
    "visuallyHidden": option<string>,
    "label": option<string>,
    "labelEmptyValueActive": option<string>,
    "icon": option<string>,
    "iconEmpty": option<string>,
    "iconFilled": option<string>,
    "iconHover": option<string>,
    "iconFocus": option<string>,
    "iconActive": option<string>,
    "decimal": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~sizeSmall: string=?,
    ~sizeMedium: string=?,
    ~sizeLarge: string=?,
    ~readOnly: string=?,
    ~disabled: string=?,
    ~focusVisible: string=?,
    ~visuallyHidden: string=?,
    ~label: string=?,
    ~labelEmptyValueActive: string=?,
    ~icon: string=?,
    ~iconEmpty: string=?,
    ~iconFilled: string=?,
    ~iconHover: string=?,
    ~iconFocus: string=?,
    ~iconActive: string=?,
    ~decimal: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Rating")
external make: (
  ~classes: Classes.t=?,
  ~defaultValue: int=?,
  ~disabled: bool=?,
  ~emptyIcon: React.element=?,
  ~emptyLabelText: React.element=?,
  ~getLabelText: int => string=?,
  ~highlightSelectedOnly: bool=?,
  ~icon: React.element=?,
  ~\"IconContainerComponent": Component.t=?,
  ~max: int=?,
  ~className: string=?,
  ~onChange: ReactEvent.Synthetic.t => unit=?,
  ~onChangeActive: ReactEvent.Synthetic.t => unit=?,
  ~precision: int=?,
  ~readOnly: bool=?,
  ~size: [#small | #medium | #large | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
  ~value: int=?,
) => React.element = "default"
