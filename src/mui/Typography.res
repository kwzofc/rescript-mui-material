module Classes = {
  type t = {
    "root": option<string>,
    "body2": option<string>,
    "body1": option<string>,
    "caption": option<string>,
    "button": option<string>,
    "h1": option<string>,
    "h2": option<string>,
    "h3": option<string>,
    "h4": option<string>,
    "h5": option<string>,
    "h6": option<string>,
    "subtitle1": option<string>,
    "subtitle2": option<string>,
    "overline": option<string>,
    "inherit": option<string>,
    "alignLeft": option<string>,
    "alignCenter": option<string>,
    "alignRight": option<string>,
    "alignJustify": option<string>,
    "noWrap": option<string>,
    "gutterBottom": option<string>,
    "paragraph": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~body2: string=?,
    ~body1: string=?,
    ~caption: string=?,
    ~button: string=?,
    ~h1: string=?,
    ~h2: string=?,
    ~h3: string=?,
    ~h4: string=?,
    ~h5: string=?,
    ~h6: string=?,
    ~subtitle1: string=?,
    ~subtitle2: string=?,
    ~overline: string=?,
    ~inherit: string=?,
    ~alignLeft: string=?,
    ~alignCenter: string=?,
    ~alignRight: string=?,
    ~alignJustify: string=?,
    ~noWrap: string=?,
    ~gutterBottom: string=?,
    ~paragraph: string=?,
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
  type variant = [
    | #body1
    | #body2
    | #button
    | #caption
    | #h1
    | #h2
    | #h3
    | #h4
    | #h5
    | #h6
    | #inherit
    | #overline
    | #subtitle1
    | #subtitle2
  ]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Typography")
external make: (
  ~align: [#center | #inherit | #justify | #left | #right]=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~gutterBottom: bool=?,
  ~noWrap: bool=?,
  ~paragraph: bool=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
  ~variantMapping: Js.Types.t<Js.Types.obj_val>=?,
  ~color: string=?,
) => React.element = "default"
