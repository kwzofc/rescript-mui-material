module Classes = {
  type t = {
    "root": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "determinate": option<string>,
    "indeterminate": option<string>,
    "buffer": option<string>,
    "query": option<string>,
    "dashed": option<string>,
    "dashedColorPrimary": option<string>,
    "dashedColorSecondary": option<string>,
    "bar": option<string>,
    "barColorPrimary": option<string>,
    "barColorSecondary": option<string>,
    "bar1Indeterminate": option<string>,
    "bar1Determinate": option<string>,
    "bar1Buffer": option<string>,
    "bar2Indeterminate": option<string>,
    "bar2Buffer": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~determinate: string=?,
    ~indeterminate: string=?,
    ~buffer: string=?,
    ~query: string=?,
    ~dashed: string=?,
    ~dashedColorPrimary: string=?,
    ~dashedColorSecondary: string=?,
    ~bar: string=?,
    ~barColorPrimary: string=?,
    ~barColorSecondary: string=?,
    ~bar1Indeterminate: string=?,
    ~bar1Determinate: string=?,
    ~bar1Buffer: string=?,
    ~bar2Indeterminate: string=?,
    ~bar2Buffer: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#inherit | #primary | #secondary]
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

@react.component @module("@mui/material/LinearProgress")
external make: (
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~value: int=?,
  ~valueBuffer: int=?,
  ~variant: [#buffer | #determinate | #indeterminate | #query]=?,
) => React.element = "default"
