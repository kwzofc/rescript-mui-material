module Classes = {
  type t = {
    "root": option<string>,
    "positionFixed": option<string>,
    "positionAbsolute": option<string>,
    "positionSticky": option<string>,
    "positionStatic": option<string>,
    "positionRelative": option<string>,
    "colorDefault": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "colorInherit": option<string>,
    "colorTransparent": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~positionFixed: string=?,
    ~positionAbsolute: string=?,
    ~positionSticky: string=?,
    ~positionStatic: string=?,
    ~positionRelative: string=?,
    ~colorDefault: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~colorInherit: string=?,
    ~colorTransparent: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#default | #inherit | #primary | #secondary | #transparent]
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

@react.component @module("@mui/material/AppBar")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~enableColorOnDark: bool=?,
  ~position: [#absolute | #fixed | #relative | #static | #sticky]=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
