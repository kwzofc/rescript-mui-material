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
  ~style: ReactDOM.Style.t=?,
  ~transitionDuration: TransitionDuration.t=?,
  ~\"TransitionProps": Js.Types.obj_val=?,
  ~variant: [#menu | #selectedMenu]=?,
  ~id: string=?,
  ~anchorOrigin: AnchorOrigin.t=?,
  ~keepMounted: bool=?,
  ~transformOrigin: TransformOrigin.t=?,
) => React.element = "default"
