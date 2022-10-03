module Classes = {
  type t = {
    "fab": option<string>,
    "fabClosed": option<string>,
    "staticTooltip": option<string>,
    "staticTooltipClosed": option<string>,
    "staticTooltipLabel": option<string>,
    "tooltipPlacementLeft": option<string>,
    "tooltipPlacementRight": option<string>,
  }
  @obj
  external make: (
    ~fab: string=?,
    ~fabClosed: string=?,
    ~staticTooltip: string=?,
    ~staticTooltipClosed: string=?,
    ~staticTooltipLabel: string=?,
    ~tooltipPlacementLeft: string=?,
    ~tooltipPlacementRight: string=?,
  ) => t = ""
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

@react.component @module("@mui/material/SpeedDialAction")
external make: (
  ~classes: Classes.t=?,
  ~delay: int=?,
  ~\"FabProps": Js.Types.obj_val=?,
  ~icon: React.element=?,
  ~id: string=?,
  ~\"open": bool=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TooltipClasses": Js.Types.obj_val=?,
  ~tooltipOpen: bool=?,
  ~tooltipPlacement: [
    | #"bottom-end"
    | #"bottom-start"
    | #bottom
    | #"left-end"
    | #"left-start"
    | #left
    | #"right-end"
    | #"right-start"
    | #right
    | #"top-end"
    | #"top-start"
    | #top
  ]=?,
  ~tooltipTitle: React.element=?,
) => React.element = "default"
