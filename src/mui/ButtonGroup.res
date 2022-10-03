module Classes = {
  type t = {
    "root": option<string>,
    "contained": option<string>,
    "outlined": option<string>,
    "text": option<string>,
    "disableElevation": option<string>,
    "disabled": option<string>,
    "fullWidth": option<string>,
    "vertical": option<string>,
    "grouped": option<string>,
    "groupedHorizontal": option<string>,
    "groupedVertical": option<string>,
    "groupedText": option<string>,
    "groupedTextHorizontal": option<string>,
    "groupedTextVertical": option<string>,
    "groupedTextPrimary": option<string>,
    "groupedTextSecondary": option<string>,
    "groupedOutlined": option<string>,
    "groupedOutlinedHorizontal": option<string>,
    "groupedOutlinedVertical": option<string>,
    "groupedOutlinedPrimary": option<string>,
    "groupedOutlinedSecondary": option<string>,
    "groupedContained": option<string>,
    "groupedContainedHorizontal": option<string>,
    "groupedContainedVertical": option<string>,
    "groupedContainedPrimary": option<string>,
    "groupedContainedSecondary": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~contained: string=?,
    ~outlined: string=?,
    ~text: string=?,
    ~disableElevation: string=?,
    ~disabled: string=?,
    ~fullWidth: string=?,
    ~vertical: string=?,
    ~grouped: string=?,
    ~groupedHorizontal: string=?,
    ~groupedVertical: string=?,
    ~groupedText: string=?,
    ~groupedTextHorizontal: string=?,
    ~groupedTextVertical: string=?,
    ~groupedTextPrimary: string=?,
    ~groupedTextSecondary: string=?,
    ~groupedOutlined: string=?,
    ~groupedOutlinedHorizontal: string=?,
    ~groupedOutlinedVertical: string=?,
    ~groupedOutlinedPrimary: string=?,
    ~groupedOutlinedSecondary: string=?,
    ~groupedContained: string=?,
    ~groupedContainedHorizontal: string=?,
    ~groupedContainedVertical: string=?,
    ~groupedContainedPrimary: string=?,
    ~groupedContainedSecondary: string=?,
  ) => t = ""
}

module Color = {
  type variant = [
    | #inherit
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
  ]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
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

module Variant = {
  type variant = [#contained | #outlined | #text]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/ButtonGroup")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~component: Component.t=?,
  ~disabled: bool=?,
  ~disableElevation: bool=?,
  ~disableFocusRipple: bool=?,
  ~disableRipple: bool=?,
  ~fullWidth: bool=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~size: Size.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
) => React.element = "default"
