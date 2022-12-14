module Classes = {
  type t = {
    "root": option<string>,
    "marked": option<string>,
    "vertical": option<string>,
    "disabled": option<string>,
    "dragging": option<string>,
    "rail": option<string>,
    "track": option<string>,
    "trackFalse": option<string>,
    "trackInverted": option<string>,
    "thumb": option<string>,
    "active": option<string>,
    "focusVisible": option<string>,
    "valueLabel": option<string>,
    "valueLabelOpen": option<string>,
    "valueLabelCircle": option<string>,
    "valueLabelLabel": option<string>,
    "mark": option<string>,
    "markActive": option<string>,
    "markLabel": option<string>,
    "markLabelActive": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "sizeSmall": option<string>,
    "thumbColorPrimary": option<string>,
    "thumbColorSecondary": option<string>,
    "thumbSizeSmall": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~marked: string=?,
    ~vertical: string=?,
    ~disabled: string=?,
    ~dragging: string=?,
    ~rail: string=?,
    ~track: string=?,
    ~trackFalse: string=?,
    ~trackInverted: string=?,
    ~thumb: string=?,
    ~active: string=?,
    ~focusVisible: string=?,
    ~valueLabel: string=?,
    ~valueLabelOpen: string=?,
    ~valueLabelCircle: string=?,
    ~valueLabelLabel: string=?,
    ~mark: string=?,
    ~markActive: string=?,
    ~markLabel: string=?,
    ~markLabelActive: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~sizeSmall: string=?,
    ~thumbColorPrimary: string=?,
    ~thumbColorSecondary: string=?,
    ~thumbSizeSmall: string=?,
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
    \"Mark"?: Component.t,
    \"MarkLabel"?: Component.t,
    \"Rail"?: Component.t,
    \"Root"?: Component.t,
    \"Thumb"?: Component.t,
    \"Track"?: Component.t,
    \"ValueLabel"?: Component.t,
  }
}

module DefaultValue = {
  type t
  external array: array<int> => t = "%identity"
  external number: int => t = "%identity"
}

module Marks = {
  type object = {
    label?: React.element,
    value: int,
  }
  type t
  external array: array<object> => t = "%identity"
  external bool: bool => t = "%identity"
}

module Size = {
  type variant = [#small | #medium]
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

module Track = {
  type variant = [#inverted | #normal]
  type t
  external variant: variant => t = "%identity"
  external bool: bool => t = "%identity"
}

module Value = {
  type t
  external array: array<int> => t = "%identity"
  external number: int => t = "%identity"
}

module ValueLabelFormat = {
  type t
  external func: Js.Types.t<Js.Types.function_val> => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Slider")
external make: (
  ~\"aria-label": string=?,
  ~\"aria-labelledby": string=?,
  ~\"aria-valuetext": string=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~components: Components.t=?,
  ~componentsProps: Js.Types.t<Js.Types.obj_val>=?,
  ~defaultValue: DefaultValue.t=?,
  ~disabled: bool=?,
  ~disableSwap: bool=?,
  ~getAriaLabel: Js.Types.t<Js.Types.function_val>=?,
  ~isRtl: bool=?,
  ~marks: Marks.t=?,
  ~max: int=?,
  ~min: int=?,
  ~className: string=?,
  ~onChange: ReactEvent.Synthetic.t => unit=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~scale: Js.Types.t<Js.Types.function_val>=?,
  ~size: Size.t=?,
  ~step: int=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~tabIndex: int=?,
  ~track: Track.t=?,
  ~value: Value.t=?,
  ~valueLabelDisplay: [#auto | #off | #on]=?,
  ~valueLabelFormat: ValueLabelFormat.t=?,
) => React.element = "default"
