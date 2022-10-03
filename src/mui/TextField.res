module Classes = {
  type t = {"root": option<string>}
  @obj
  external make: (~root: string=?) => t = ""
}

module Color = {
  type variant = [#primary | #secondary | #error | #info | #success | #warning]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module MaxRows = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

module MinRows = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

module Rows = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
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

@react.component @module("@mui/material/TextField")
external make: (
  ~autoComplete: string=?,
  ~autoFocus: bool=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~defaultValue: 'anyDefaultValue=?,
  ~disabled: bool=?,
  ~error: bool=?,
  ~\"FormHelperTextProps": Js.Types.obj_val=?,
  ~fullWidth: bool=?,
  ~helperText: React.element=?,
  ~id: string=?,
  ~\"InputLabelProps": Js.Types.obj_val=?,
  ~inputProps: Js.Types.obj_val=?,
  ~\"InputProps": Js.Types.obj_val=?,
  ~inputRef: ReactDOM.domRef=?,
  ~label: React.element=?,
  ~margin: [#dense | #none | #normal]=?,
  ~maxRows: MaxRows.t=?,
  ~minRows: MinRows.t=?,
  ~multiline: bool=?,
  ~className: string=?,
  ~onChange: Js.Types.obj_val => unit=?,
  ~placeholder: string=?,
  ~required: bool=?,
  ~rows: Rows.t=?,
  ~select: bool=?,
  ~\"SelectProps": Js.Types.obj_val=?,
  ~size: Size.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~\"type": string=?,
  ~value: 'anyValue=?,
  ~variant: [#filled | #outlined | #standard]=?,
  ~spreadProps: Js.Types.obj_val=?,
) => React.element = "default"
