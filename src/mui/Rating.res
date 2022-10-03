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

module Size = {
  type variant = [#small | #medium | #large]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Sx = {
  type prop = {
    border?: int,
    borderTop?: int,
    borderRight?: int,
    borderBottom?: int,
    borderLeft?: int,
    borderColor?: string,
    borderTopColor?: string,
    borderRightColor?: string,
    borderBottomColor?: string,
    borderLeftColor?: string,
    borderRadius?: int,
    displayPrint?: string,
    displayRaw?: string,
    overflow?: string,
    textOverFlow?: string,
    visibility?: string,
    whiteSpace?: string,
    gap?: int,
    columnGap?: int,
    rowGap?: int,
    gridColumn?: string,
    gridRow?: string,
    gridAutoFlow?: string,
    gridAutoColumns?: string,
    gridAutoRows?: string,
    gridTemplateColumns?: string,
    gridTemplateRows?: string,
    gridTemplateAreas?: string,
    gridArea?: string,
    color?: string,
    bgcolor?: string,
    position?: string,
    zIndex?: string,
    top?: int,
    right?: int,
    bottom?: int,
    left?: int,
    boxShadow?: int,
    width?: [#string(string) | #number(int)],
    maxWidth?: [#string(string) | #number(int)],
    minWidth?: [#string(string) | #number(int)],
    height?: [#string(string) | #number(int)],
    maxHeight?: [#string(string) | #number(int)],
    minHeight?: [#string(string) | #number(int)],
    boxSizing?: string,
    m?: int,
    mt?: int,
    mr?: int,
    mb?: int,
    ml?: int,
    mx?: int,
    my?: int,
    p?: int,
    pt?: int,
    pr?: int,
    pb?: int,
    pl?: int,
    px?: int,
    py?: int,
    typography?: string,
    fontFamily?: string,
    fontSize?: [#string(string) | #number(int)],
    fontStyle?: string,
    fontWeight?: [#string(string) | #number(int)],
    letterSpacing?: int,
    lineHeight?: [#string(string) | #number(int)],
    textAlign?: string,
    textTransform?: string,
  }
  type t
  external arrayFunc: array<unit> => t = "%identity"
  external arrayObject: array<prop> => t = "%identity"
  external arrayBool: array<bool> => t = "%identity"
  external func: unit => t = "%identity"
  external object: prop => t = "%identity"
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
  ~size: Size.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~value: int=?,
) => React.element = "default"
