module Classes = {
  type t = {
    "root": option<string>,
    "rounded": option<string>,
    "outlined": option<string>,
    "elevation": option<string>,
    "elevation0": option<string>,
    "elevation1": option<string>,
    "elevation2": option<string>,
    "elevation3": option<string>,
    "elevation4": option<string>,
    "elevation5": option<string>,
    "elevation6": option<string>,
    "elevation7": option<string>,
    "elevation8": option<string>,
    "elevation9": option<string>,
    "elevation10": option<string>,
    "elevation11": option<string>,
    "elevation12": option<string>,
    "elevation13": option<string>,
    "elevation14": option<string>,
    "elevation15": option<string>,
    "elevation16": option<string>,
    "elevation17": option<string>,
    "elevation18": option<string>,
    "elevation19": option<string>,
    "elevation20": option<string>,
    "elevation21": option<string>,
    "elevation22": option<string>,
    "elevation23": option<string>,
    "elevation24": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~rounded: string=?,
    ~outlined: string=?,
    ~elevation: string=?,
    ~elevation0: string=?,
    ~elevation1: string=?,
    ~elevation2: string=?,
    ~elevation3: string=?,
    ~elevation4: string=?,
    ~elevation5: string=?,
    ~elevation6: string=?,
    ~elevation7: string=?,
    ~elevation8: string=?,
    ~elevation9: string=?,
    ~elevation10: string=?,
    ~elevation11: string=?,
    ~elevation12: string=?,
    ~elevation13: string=?,
    ~elevation14: string=?,
    ~elevation15: string=?,
    ~elevation16: string=?,
    ~elevation17: string=?,
    ~elevation18: string=?,
    ~elevation19: string=?,
    ~elevation20: string=?,
    ~elevation21: string=?,
    ~elevation22: string=?,
    ~elevation23: string=?,
    ~elevation24: string=?,
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
  type variant = [#elevation | #outlined]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Paper")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~elevation: int=?,
  ~square: bool=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
) => React.element = "default"
