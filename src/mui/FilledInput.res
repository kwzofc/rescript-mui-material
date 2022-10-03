module Classes = {
  type t = {
    "root": option<string>,
    "colorSecondary": option<string>,
    "underline": option<string>,
    "focused": option<string>,
    "disabled": option<string>,
    "adornedStart": option<string>,
    "adornedEnd": option<string>,
    "error": option<string>,
    "sizeSmall": option<string>,
    "multiline": option<string>,
    "hiddenLabel": option<string>,
    "input": option<string>,
    "inputSizeSmall": option<string>,
    "inputHiddenLabel": option<string>,
    "inputMultiline": option<string>,
    "inputAdornedStart": option<string>,
    "inputAdornedEnd": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~colorSecondary: string=?,
    ~underline: string=?,
    ~focused: string=?,
    ~disabled: string=?,
    ~adornedStart: string=?,
    ~adornedEnd: string=?,
    ~error: string=?,
    ~sizeSmall: string=?,
    ~multiline: string=?,
    ~hiddenLabel: string=?,
    ~input: string=?,
    ~inputSizeSmall: string=?,
    ~inputHiddenLabel: string=?,
    ~inputMultiline: string=?,
    ~inputAdornedStart: string=?,
    ~inputAdornedEnd: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#primary | #secondary]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Components = {
  type t = {
    \"Input"?: Component.t,
    \"Root"?: Component.t,
  }
}

module ComponentsProps = {
  type t = {
    input?: Js.Types.obj_val,
    root?: Js.Types.obj_val,
  }
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

@react.component @module("@mui/material/FilledInput")
external make: (
  ~autoComplete: string=?,
  ~autoFocus: bool=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~defaultValue: 'anyDefaultValue=?,
  ~disabled: bool=?,
  ~disableUnderline: bool=?,
  ~endAdornment: React.element=?,
  ~error: bool=?,
  ~fullWidth: bool=?,
  ~hiddenLabel: bool=?,
  ~id: string=?,
  ~inputComponent: Component.t=?,
  ~inputProps: Js.Types.obj_val=?,
  ~inputRef: ReactDOM.domRef=?,
  ~margin: [#dense | #none]=?,
  ~maxRows: MaxRows.t=?,
  ~minRows: MinRows.t=?,
  ~multiline: bool=?,
  ~className: string=?,
  ~onChange: 'changeEvent => unit=?,
  ~placeholder: string=?,
  ~readOnly: bool=?,
  ~required: bool=?,
  ~rows: Rows.t=?,
  ~startAdornment: React.element=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~\"type": string=?,
  ~value: 'anyValue=?,
) => React.element = "default"
