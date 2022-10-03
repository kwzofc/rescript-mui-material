module Classes = {
  type t = {
    "root": option<string>,
    "focused": option<string>,
    "disabled": option<string>,
    "error": option<string>,
    "required": option<string>,
    "asterisk": option<string>,
    "formControl": option<string>,
    "sizeSmall": option<string>,
    "shrink": option<string>,
    "animated": option<string>,
    "filled": option<string>,
    "outlined": option<string>,
    "standard": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~focused: string=?,
    ~disabled: string=?,
    ~error: string=?,
    ~required: string=?,
    ~asterisk: string=?,
    ~formControl: string=?,
    ~sizeSmall: string=?,
    ~shrink: string=?,
    ~animated: string=?,
    ~filled: string=?,
    ~outlined: string=?,
    ~standard: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#error | #info | #primary | #secondary | #success | #warning]
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

@react.component @module("@mui/material/InputLabel")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~disableAnimation: bool=?,
  ~disabled: bool=?,
  ~error: bool=?,
  ~focused: bool=?,
  ~margin: [#dense]=?,
  ~required: bool=?,
  ~shrink: bool=?,
  ~size: [#normal | #small]=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [#filled | #outlined | #standard]=?,
  ~id: string=?,
) => React.element = "default"
