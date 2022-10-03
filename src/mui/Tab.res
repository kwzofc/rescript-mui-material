module Classes = {
  type t = {
    "root": option<string>,
    "labelIcon": option<string>,
    "textColorInherit": option<string>,
    "textColorPrimary": option<string>,
    "textColorSecondary": option<string>,
    "selected": option<string>,
    "disabled": option<string>,
    "fullWidth": option<string>,
    "wrapped": option<string>,
    "iconWrapper": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~labelIcon: string=?,
    ~textColorInherit: string=?,
    ~textColorPrimary: string=?,
    ~textColorSecondary: string=?,
    ~selected: string=?,
    ~disabled: string=?,
    ~fullWidth: string=?,
    ~wrapped: string=?,
    ~iconWrapper: string=?,
  ) => t = ""
}

module Icon = {
  type t
  external element: React.element => t = "%identity"
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

@react.component @module("@mui/material/Tab")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~disabled: bool=?,
  ~disableFocusRipple: bool=?,
  ~disableRipple: bool=?,
  ~icon: Icon.t=?,
  ~iconPosition: [#bottom | #end | #start | #top]=?,
  ~label: React.element=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'anyValue=?,
  ~wrapped: bool=?,
  ~\"aria-controls": string=?,
  ~spreadProps: 'anySpreadProps=?,
) => React.element = "default"
