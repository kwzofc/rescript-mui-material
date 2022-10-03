module Animation = {
  type variant = [#pulse | #wave]
  type t
  external variant: variant => t = "%identity"
  external bool: bool => t = "%identity"
}

module Classes = {
  type t = {
    "root": option<string>,
    "text": option<string>,
    "rectangular": option<string>,
    "rounded": option<string>,
    "circular": option<string>,
    "pulse": option<string>,
    "wave": option<string>,
    "withChildren": option<string>,
    "fitContent": option<string>,
    "heightAuto": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~text: string=?,
    ~rectangular: string=?,
    ~rounded: string=?,
    ~circular: string=?,
    ~pulse: string=?,
    ~wave: string=?,
    ~withChildren: string=?,
    ~fitContent: string=?,
    ~heightAuto: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Height = {
  type t
  external number: int => t = "%identity"
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
  type variant = [#circular | #rectangular | #rounded | #text]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Width = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Skeleton")
external make: (
  ~animation: Animation.t=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~height: Height.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
  ~width: Width.t=?,
) => React.element = "default"
