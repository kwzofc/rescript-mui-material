module Classes = {
  type t = {
    "root": option<string>,
    "filled": option<string>,
    "outlined": option<string>,
    "standard": option<string>,
    "standardSuccess": option<string>,
    "standardInfo": option<string>,
    "standardWarning": option<string>,
    "standardError": option<string>,
    "outlinedSuccess": option<string>,
    "outlinedInfo": option<string>,
    "outlinedWarning": option<string>,
    "outlinedError": option<string>,
    "filledSuccess": option<string>,
    "filledInfo": option<string>,
    "filledWarning": option<string>,
    "filledError": option<string>,
    "icon": option<string>,
    "message": option<string>,
    "action": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~filled: string=?,
    ~outlined: string=?,
    ~standard: string=?,
    ~standardSuccess: string=?,
    ~standardInfo: string=?,
    ~standardWarning: string=?,
    ~standardError: string=?,
    ~outlinedSuccess: string=?,
    ~outlinedInfo: string=?,
    ~outlinedWarning: string=?,
    ~outlinedError: string=?,
    ~filledSuccess: string=?,
    ~filledInfo: string=?,
    ~filledWarning: string=?,
    ~filledError: string=?,
    ~icon: string=?,
    ~message: string=?,
    ~action: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#error | #info | #success | #warning]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module IconMapping = {
  type t = {
    error?: React.element,
    info?: React.element,
    success?: React.element,
    warning?: React.element,
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

module Variant = {
  type variant = [#filled | #outlined | #standard]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Alert")
external make: (
  ~action: React.element=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~closeText: string=?,
  ~color: Color.t=?,
  ~icon: React.element=?,
  ~iconMapping: IconMapping.t=?,
  ~onClose: ReactEvent.Synthetic.t => unit=?,
  ~role: string=?,
  ~severity: [#error | #info | #success | #warning]=?,
  ~style: ReactDOM.Style.t=?,
  ~sx: Sx.t=?,
  ~variant: Variant.t=?,
  ~onClose: ReactEvent.Synthetic.t => unit=?,
) => React.element = "default"
