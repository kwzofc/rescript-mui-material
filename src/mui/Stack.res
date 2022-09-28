module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Direction = {
  type direction = [#"column-reverse" | #column | #"row-reverse" | #row]
  type t
  external string: direction => t = "%identity"
  external array: array<direction> => t = "%identity"
  external object: Js.Types.t<Js.Types.obj_val> => t = "%identity"
}

module Spacing = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
  external arrayNumber: array<int> => t = "%identity"
  external arrayString: array<string> => t = "%identity"
  external object: Js.Types.t<Js.Types.obj_val> => t = "%identity"
}

@react.component @module("@mui/material/Stack")
external make: (
  ~children: React.element=?,
  ~component: Component.t=?,
  ~direction: Direction.t=?,
  ~divider: React.element=?,
  ~spacing: Spacing.t=?,
  ~style: ReactDOM.Style.t=?,
  ~alignItems: string=?,
) => React.element = "default"
