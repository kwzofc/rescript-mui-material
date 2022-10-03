module AnchorEl = {
  type t
  external element: React.element => t = "%identity"
  external func: Js.Types.function_val => t = "%identity"
}

module AnchorOrigin = {
  type horizontal = [#center | #left | #right]
  type vertical
  external variant: [#bottom | #center | #top] => vertical = "%identity"
  external number: int => vertical = "%identity"
  type t = {
    horizontal: horizontal,
    vertical: vertical,
  }
}

module AnchorPosition = {
  type t = {left: int, top: int}
}

module Classes = {
  type t = {"root": option<string>, "paper": option<string>}
  @obj
  external make: (~root: string=?, ~paper: string=?) => t = ""
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

module Container = {
  type t
  external element: React.element => t = "%identity"
  external func: Js.Types.function_val => t = "%identity"
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module PaperProps = {
  type t = {component?: Component.t}
}

module Horizontal = {
  type variant = [#center | #left | #right]
  type t
  external variant: variant => t = "%identity"
  external number: int => t = "%identity"
}

module Vertical = {
  type variant = [#bottom | #center | #top]
  type t
  external variant: variant => t = "%identity"
  external number: int => t = "%identity"
}

module TransformOrigin = {
  type t = {
    horizontal: Horizontal.t,
    vertical: Vertical.t,
  }
}

module TransitionDuration = {
  type variant = [#auto]
  type object = {
    appear?: int,
    enter?: int,
    exit?: int,
  }
  type t
  external variant: variant => t = "%identity"
  external number: int => t = "%identity"
  external object: object => t = "%identity"
}

@react.component @module("@mui/material/Popover")
external make: (
  ~\"open": bool=?,
  ~action: ReactDOM.domRef=?,
  ~anchorEl: AnchorEl.t=?,
  ~anchorOrigin: AnchorOrigin.t=?,
  ~anchorPosition: AnchorPosition.t=?,
  ~anchorReference: [#anchorEl | #anchorPosition | #none]=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~elevation: int=?,
  ~marginThreshold: int=?,
  ~onClose: ReactEvent.Synthetic.t => unit=?,
  ~\"PaperProps": PaperProps.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~transformOrigin: TransformOrigin.t=?,
  ~\"TransitionComponent": Component.t=?,
  ~transitionDuration: TransitionDuration.t=?,
  ~\"TransitionProps": Js.Types.obj_val=?,
) => React.element = "default"
