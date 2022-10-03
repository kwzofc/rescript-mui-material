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

module DefaultValue = {
  type t
  external bool: bool => t = "%identity"
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

module Value = {
  type t
  external bool: bool => t = "%identity"
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/base/TabsUnstyled")
external make: (
  ~children: React.element=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~defaultValue: DefaultValue.t=?,
  ~direction: [#ltr | #rtl]=?,
  ~onChange: 'anyEvent => unit=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~selectionFollowsFocus: bool=?,
  ~value: Value.t=?,
) => React.element = "default"
