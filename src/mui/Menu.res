module AnchorEl = {
  type t
  external element: option<React.element> => t = "%identity"
  external func: Js.Types.function_val => t = "%identity"
}

module Classes = {
  type t = {"root": option<string>, "paper": option<string>, "list": option<string>}
  @obj
  external make: (~root: string=?, ~paper: string=?, ~list: string=?) => t = ""
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

@react.component @module("@mui/material/Menu")
external make: (
  ~\"open": bool=?,
  ~anchorEl: AnchorEl.t=?,
  ~autoFocus: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~disableAutoFocusItem: bool=?,
  ~\"MenuListProps": React.element=?,
  ~onClose: ReactEvent.Synthetic.t => unit=?,
  ~\"PopoverClasses": Js.Types.obj_val=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~transitionDuration: TransitionDuration.t=?,
  ~\"TransitionProps": Js.Types.obj_val=?,
  ~variant: [#menu | #selectedMenu]=?,
  ~id: string=?,
  ~anchorOrigin: AnchorOrigin.t=?,
  ~keepMounted: bool=?,
  ~transformOrigin: TransformOrigin.t=?,
) => React.element = "default"
