module Classes = {
  type t = {
    "root": option<string>,
    "edgeStart": option<string>,
    "edgeEnd": option<string>,
    "switchBase": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "sizeSmall": option<string>,
    "sizeMedium": option<string>,
    "checked": option<string>,
    "disabled": option<string>,
    "input": option<string>,
    "thumb": option<string>,
    "track": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~edgeStart: string=?,
    ~edgeEnd: string=?,
    ~switchBase: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~sizeSmall: string=?,
    ~sizeMedium: string=?,
    ~checked: string=?,
    ~disabled: string=?,
    ~input: string=?,
    ~thumb: string=?,
    ~track: string=?,
  ) => t = ""
}

module Color = {
  type variant = [
    | #default
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
  ]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Edge = {
  type variant = [#end | #start]
  type t
  external variant: variant => t = "%identity"
  external bool: bool => t = "%identity"
}

module Size = {
  type variant = [#medium | #small]
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

@react.component @module("@mui/material/Switch")
external make: (
  ~checked: bool=?,
  ~checkedIcon: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~defaultChecked: bool=?,
  ~disabled: bool=?,
  ~disableRipple: bool=?,
  ~edge: Edge.t=?,
  ~icon: React.element=?,
  ~id: string=?,
  ~inputProps: Js.Types.t<Js.Types.obj_val>=?,
  ~inputRef: ReactDOM.domRef=?,
  ~onChange: ReactEvent.Mouse.t => unit=?,
  ~required: bool=?,
  ~size: Size.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'any=?,
  ~\"aria-label": string=?,
) => React.element = "default"
