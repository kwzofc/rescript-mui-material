module AnchorEl = {
  type t
  external html: React.element => t = "%identity"
  external object: {..} => t = "%identity"
  external func: unit => t = "%identity"
}

module Children = {
  type t
  external node: React.element => t = "%identity"
  external func: unit => t = "%identity"
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Components = {
  type t = {\"Root"?: Component.t}
}

module ComponentsProps = {
  type root
  external func: unit => root = "%identity"
  external object: {..} => root = "%identity"
  type t = {root?: root}
}

module Container = {
  type t
  external html: React.element => t = "%identity"
  external func: unit => t = "%identity"
}

module Modifiers = {
  type name
  external any: 'any => name = "%identity"

  type modifiers = {
    data?: Js.Types.t<Js.Types.obj_val>,
    effect?: Js.Types.t<Js.Types.function_val>,
    enabled?: bool,
    fn?: Js.Types.t<Js.Types.function_val>,
    name?: name,
    options?: Js.Types.t<Js.Types.obj_val>,
    phase?: [
      | #afterMain
      | #afterRead
      | #afterWrite
      | #beforeMain
      | #beforeRead
      | #beforeWrite
      | #main
      | #read
      | #write
    ],
    requires?: array<string>,
    requiresIfExists?: array<string>,
  }
  type t = array<modifiers>
}

module Placement = {
  type t = [
    | #"auto-end"
    | #"auto-start"
    | #auto
    | #"bottom-end"
    | #"bottom-start"
    | #bottom
    | #"left-end"
    | #"left-start"
    | #left
    | #"right-end"
    | #"right-start"
    | #right
    | #"top-end"
    | #"top-start"
    | #top
  ]
}

module PopperOptions = {
  type t = {
    modifiers?: Modifiers.t,
    onFirstUpdate?: Js.Types.t<Js.Types.function_val>,
    placement?: Placement.t,
    strategy?: [#absolute | #fixed],
  }
}

@react.component @module("@mui/material/Popper")
external make: (
  ~\"open": bool=?,
  ~anchorEl: AnchorEl.t=?,
  ~children: Children.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~container: Container.t=?,
  ~direction: [#ltr | #rtl]=?,
  ~disablePortal: bool=?,
  ~keepMounted: bool=?,
  ~modifiers: Modifiers.t=?,
  ~placement: Placement.t=?,
  ~popperOptions: PopperOptions.t=?,
  ~popperRef: ReactDOM.domRef=?,
  ~style: ReactDOM.Style.t=?,
  ~transition: bool=?,
) => React.element = "default"
