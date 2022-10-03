module Classes = {
  type t = {
    "popper": option<string>,
    "popperInteractive": option<string>,
    "popperArrow": option<string>,
    "popperClose": option<string>,
    "tooltip": option<string>,
    "tooltipArrow": option<string>,
    "arrow": option<string>,
    "touch": option<string>,
    "tooltipPlacementLeft": option<string>,
    "tooltipPlacementRight": option<string>,
    "tooltipPlacementTop": option<string>,
    "tooltipPlacementBottom": option<string>,
  }
  @obj
  external make: (
    ~popper: string=?,
    ~popperInteractive: string=?,
    ~popperArrow: string=?,
    ~popperClose: string=?,
    ~tooltip: string=?,
    ~tooltipArrow: string=?,
    ~arrow: string=?,
    ~touch: string=?,
    ~tooltipPlacementLeft: string=?,
    ~tooltipPlacementRight: string=?,
    ~tooltipPlacementTop: string=?,
    ~tooltipPlacementBottom: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Components = {
  type t = {
    \"Arrow"?: Component.t,
    \"Popper"?: Component.t,
    \"Tooltip"?: Component.t,
    \"Transition"?: Component.t,
  }
}

module ComponentsProps = {
  type t = {
    arrow?: Component.t,
    popper?: Component.t,
    tooltip?: Component.t,
    transition?: Component.t,
  }
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

@react.component @module("@mui/material/Tooltip")
external make: (
  ~children: React.element=?,
  ~arrow: bool=?,
  ~classes: Classes.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~describeChild: bool=?,
  ~disableFocusListener: bool=?,
  ~disableInteractive: bool=?,
  ~disableTouchListener: bool=?,
  ~enterDelay: int=?,
  ~enterNextDelay: int=?,
  ~enterTouchDelay: int=?,
  ~followCursor: bool=?,
  ~id: string=?,
  ~leaveDelay: int=?,
  ~leaveTouchDelay: int=?,
  ~onClose: ReactEvent.Synthetic.t => unit=?,
  ~onOpen: ReactEvent.Synthetic.t => unit=?,
  ~\"open": bool=?,
  ~placement: [
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
  ~\"PopperComponent": Popper.ComponentsProps.t=?,
  ~\"PopperProps": Popper.Component.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~title: React.element=?,
  ~\"TransitionComponent": Component.t=?,
  ~\"TransitionProps": Js.Types.t<Js.Types.obj_val>=?,
) => React.element = "default"
