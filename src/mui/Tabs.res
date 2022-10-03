module Classes = {
  type t = {
    "root": option<string>,
    "vertical": option<string>,
    "flexContainer": option<string>,
    "flexContainerVertical": option<string>,
    "centered": option<string>,
    "scroller": option<string>,
    "fixed": option<string>,
    "scrollableX": option<string>,
    "scrollableY": option<string>,
    "hideScrollbar": option<string>,
    "scrollButtons": option<string>,
    "scrollButtonHideMobile": option<string>,
    "indicator": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~vertical: string=?,
    ~flexContainer: string=?,
    ~flexContainerVertical: string=?,
    ~centered: string=?,
    ~scroller: string=?,
    ~fixed: string=?,
    ~scrollableX: string=?,
    ~scrollableY: string=?,
    ~hideScrollbar: string=?,
    ~scrollButtons: string=?,
    ~scrollButtonHideMobile: string=?,
    ~indicator: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module IndicatorColor = {
  type variant = [#primary | #secondary]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module ScrollButtons = {
  type variant = [#auto]
  type t
  external variant: variant => t = "%identity"
  external bool: bool => t = "%identity"
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

@react.component @module("@mui/material/Tabs")
external make: (
  ~action: ReactDOM.domRef=?,
  ~allowScrollButtonsMobile: bool=?,
  ~\"aria-label": string=?,
  ~\"aria-labelledby": string=?,
  ~centered: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~indicatorColor: IndicatorColor.t=?,
  ~onChange: (ReactEvent.Synthetic.t, 'anyValueOnChange) => unit=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~\"ScrollButtonComponent": Component.t=?,
  ~scrollButtons: ScrollButtons.t=?,
  ~selectionFollowsFocus: bool=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TabIndicatorProps": Js.Types.obj_val=?,
  ~\"TabScrollButtonProps": Js.Types.obj_val=?,
  ~textColor: [#inherit | #primary | #secondary]=?,
  ~value: 'anyValue=?,
  ~variant: [#fullWidth | #scrollable | #standard]=?,
  ~visibleScrollbar: bool=?,
) => React.element = "default"
