module Animation = {
  type variant = [#pulse | #wave]
  type t
  external variant: variant => t = "%identity"
  external bool: bool => t = "%identity"
}

module Classes = {
  type t = {
    "root": option<string>,
    "text": option<string>,
    "rectangular": option<string>,
    "rounded": option<string>,
    "circular": option<string>,
    "pulse": option<string>,
    "wave": option<string>,
    "withChildren": option<string>,
    "fitContent": option<string>,
    "heightAuto": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~text: string=?,
    ~rectangular: string=?,
    ~rounded: string=?,
    ~circular: string=?,
    ~pulse: string=?,
    ~wave: string=?,
    ~withChildren: string=?,
    ~fitContent: string=?,
    ~heightAuto: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Height = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

module Variant = {
  type variant = [#circular | #rectangular | #rounded | #text]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Width = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Skeleton")
external make: (
  ~animation: Animation.t=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~height: Height.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
  ~width: Width.t=?,
) => React.element = "default"
