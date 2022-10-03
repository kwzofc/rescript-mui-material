module Classes = {
  type t = {
    "root": option<string>,
    "rounded": option<string>,
    "expanded": option<string>,
    "disabled:": option<string>,
    "gutters": option<string>,
    "region": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~rounded: string=?,
    ~expanded: string=?,
    ~disabled: string=?,
    ~gutters: string=?,
    ~region: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Transition = {
  type timeoutObject = {
    enter?: int,
    exit?: int,
    appear?: int,
  }
  type t = {
    "nodeRef": option<ReactDOM.domRef>,
    "children": option<React.element>,
    "in": option<bool>,
    "mountOnEnter": option<bool>,
    "unmountOnExit": option<bool>,
    "appear": option<bool>,
    "enter": option<bool>,
    "exit": option<bool>,
    "timeout": option<timeoutObject>,
    "addEndListener": option<Js.Types.function_val>,
    "onEnter": option<(React.element, bool) => unit>,
    "onEntering": option<(React.element, bool)>,
    "onEntered": option<(React.element, bool) => unit>,
    "onExit": option<React.element => unit>,
    "onExiting": option<React.element => unit>,
    "onExited": option<React.element => unit>,
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
    ~timeout: timeoutObject=?,
    ~addEndListener: Js.Types.function_val=?,
    ~onEnter: (React.element, bool) => unit=?,
    ~onEntering: (React.element, bool)=?,
    ~onExit: React.element => unit=?,
    ~onExiting: React.element => unit=?,
    ~onExited: React.element => unit=?,
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

@react.component @module("@mui/material/Accordion")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~defaultExpanded: bool=?,
  ~disabled: bool=?,
  ~disablueGutters: bool=?,
  ~expanded: bool=?,
  ~onChange: (ReactEvent.Synthetic.t, bool) => unit=?,
  ~square: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TransitionComponent": Component.t=?,
  ~\"TransitionProps": Transition.t=?,
  ~sx: Sx.t=?,
) => React.element = "default"
