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

@react.component @module("@mui/base/TabsListUnstyled")
external make: (
  ~children: React.element=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
) => React.element = "default"
