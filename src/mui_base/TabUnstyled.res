module FocusVisible = {
  type t = {focusvisible: Js.Types.function_val}
}

module Action = {
  type object = {current?: FocusVisible.t}
  type t
  external func: Js.Types.function_val => t = "%identity"
  external object: object => t = "%identity"
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

module Root = {
  type t
  external func: Js.Types.function_val => t = "%identity"
  external object: Js.Types.obj_val => t = "%identity"
}

module ComponentsProps = {
  type t = {root?: Root.t}
}

module Value = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/base/TabUnstyled")
external make: (
  ~action: Action.t=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~disabled: bool=?,
  ~onChange: 'anyEvent => unit=?,
  ~value: Value.t=?,
) => React.element = "default"
