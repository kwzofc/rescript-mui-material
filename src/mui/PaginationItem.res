module Classes = {
  type t = {
    "root": option<string>,
    "page": option<string>,
    "sizeSmall": option<string>,
    "sizeLarge": option<string>,
    "text": option<string>,
    "textPrimary": option<string>,
    "textSecondary": option<string>,
    "outlined": option<string>,
    "outlinedPrimary": option<string>,
    "outlinedSecondary": option<string>,
    "rounded": option<string>,
    "ellipsis": option<string>,
    "firstLast": option<string>,
    "previousNext": option<string>,
    "focusVisible": option<string>,
    "disabled": option<string>,
    "selected": option<string>,
    "icon": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~page: string=?,
    ~sizeSmall: string=?,
    ~sizeLarge: string=?,
    ~text: string=?,
    ~textPrimary: string=?,
    ~textSecondary: string=?,
    ~outlined: string=?,
    ~outlinedPrimary: string=?,
    ~outlinedSecondary: string=?,
    ~rounded: string=?,
    ~ellipsis: string=?,
    ~firstLast: string=?,
    ~previousNext: string=?,
    ~ocusVisible: string=?,
    ~disabled: string=?,
    ~selected: string=?,
    ~icon: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#primary | #secondary | #standard]
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

module Components = {
  type t = {
    first?: Component.t,
    last?: Component.t,
    next?: Component.t,
    previous?: Component.t,
  }
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
  type variant = [#outlined | #text]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/PaginationItem")
external make: (
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~disabled: bool=?,
  ~page: React.element=?,
  ~selected: bool=?,
  ~shape: [#circular | #rounded]=?,
  ~size: Size.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~\"type": [#"end-ellipsis" | #first | #last | #next | #page | #previous | #"start-ellipsis"]=?,
  ~variant: Variant.t=?,
) => React.element = "default"
