module Classes = {
  type t = {
    "root": option<string>,
    "underlineNone": option<string>,
    "underlineHover": option<string>,
    "underlineAlways": option<string>,
    "button": option<string>,
    "focusVisible": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~underlineNone: string=?,
    ~underlineHover: string=?,
    ~underlineAlways: string=?,
    ~button: string=?,
    ~focusVisible: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Variant = {
  type variant = [
    | #body1
    | #body2
    | #button
    | #caption
    | #h1
    | #h2
    | #h3
    | #h4
    | #h5
    | #h6
    | #inherit
    | #overline
    | #subtitle1
    | #subtitle2
  ]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Link")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: 'anyColor=?,
  ~component: Component.t=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TypographyClasses": Js.Types.obj_val=?,
  ~underline: [#always | #hover | #none]=?,
  ~variant: Variant.t=?,
  ~href: string=?,
) => React.element = "default"
