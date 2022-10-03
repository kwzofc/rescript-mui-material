module AnchorOrigin = {
  type t = {
    horizontal: [#center | #left | #right],
    vertical: [#bottom | #top],
  }
}

module Classes = {
  type t = {
    "root": option<string>,
    "anchorOriginTopCenter": option<string>,
    "anchorOriginBottomCenter": option<string>,
    "anchorOriginTopRight": option<string>,
    "anchorOriginBottomRight": option<string>,
    "anchorOriginTopLeft": option<string>,
    "anchorOriginBottomLeft": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~anchorOriginTopCenter: string=?,
    ~anchorOriginBottomCenter: string=?,
    ~anchorOriginTopRight: string=?,
    ~anchorOriginBottomRight: string=?,
    ~anchorOriginTopLeft: string=?,
    ~anchorOriginBottomLeft: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module TransitionDuration = {
  type object = {
    appear?: int,
    enter?: int,
    exit?: int,
  }
  type t
  external number: int => t = "%identity"
  external object: object => t = "%identity"
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

module Transition = {
  type t = {
    "nodeRef": option<ReactDOM.domRef>,
    "children": option<React.element>,
    "in": option<bool>,
    "mountOnEnter": option<bool>,
    "unmountOnExit": option<bool>,
    "appear": option<bool>,
    "enter": option<bool>,
    "exit": option<bool>,
    "timeout": option<TransitionDuration.t>,
  }
  @react.component @obj
  external make: (
    ~nodeRef: ReactDOM.domRef=?,
    ~children: React.element=?,
    ~\"in": bool=?,
    ~mountOnEnter: bool=?,
    ~unmountOnExit: bool=?,
    ~appear: bool=?,
    ~enter: bool=?,
    ~exit: bool=?,
    ~timeout: TransitionDuration.t=?,
  ) => t = ""
}

@react.component @module("@mui/material/Snackbar")
external make: (
  ~action: React.element=?,
  ~anchorOrigin: AnchorOrigin.t=?,
  ~autoHideDuration: int=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~\"ClickAwayListenerProps": {..}=?,
  ~\"ContentProps": {..}=?,
  ~disableWindowBlurListener: bool=?,
  ~key: 'key=?,
  ~message: React.element=?,
  ~onClose: (ReactEvent.Synthetic.t, string) => unit=?,
  ~\"open": bool=?,
  ~resumeHideDuration: int=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TransitionComponent": Component.t=?,
  ~transitionDuration: TransitionDuration.t=?,
  ~\"TransitionProps": Transition.t=?,
) => React.element = "default"
