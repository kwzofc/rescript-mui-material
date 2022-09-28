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
  ~color: [#primary | #secondary | #string(string)]=?,
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
  ~size: [#small | #medium | #string(string)]=?,
  ~step: int=?,
  ~style: ReactDOM.Style.t=?,
  ~tabIndex: int=?,
  ~track: [#inverted | #normal | #"false"(bool)]=?,
  ~value: Value.t=?,
  ~valueLabelDisplay: [#auto | #off | #on]=?,
) => React.element = "default"
