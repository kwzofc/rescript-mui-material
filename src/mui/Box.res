module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Box")
external make: (
  ~component: Component.t=?,
  ~style: ReactDOM.Style.t=?,
  ~children: React.element=?,
) => React.element = "default"
