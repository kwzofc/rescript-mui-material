module Classes = {
  type t = {
    "root": option<string>,
    "absolute": option<string>,
    "inset": option<string>,
    "fullWidth": option<string>,
    "light": option<string>,
    "middle": option<string>,
    "vertical": option<string>,
    "flexItem": option<string>,
    "withChildren": option<string>,
    "withChildrenVertical": option<string>,
    "textAlignRight": option<string>,
    "textAlignLeft": option<string>,
    "wrapper": option<string>,
    "wrapperVertical": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~absolute: string=?,
    ~inset: string=?,
    ~fullWidth: string=?,
    ~light: string=?,
    ~middle: string=?,
    ~vertical: string=?,
    ~flexItem: string=?,
    ~withChildren: string=?,
    ~withChildrenVertical: string=?,
    ~textAlignRight: string=?,
    ~textAlignLeft: string=?,
    ~wrapper: string=?,
    ~wrapperVertical: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
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

module Variant = {
  type variant = [#fullWidth | #inset | #middle]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Divider")
external make: (
  ~absolute: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~flexItem: bool=?,
  ~light: bool=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~textAlign: [#center | #left | #right]=?,
  ~variant: Variant.t=?,
) => React.element = "default"
