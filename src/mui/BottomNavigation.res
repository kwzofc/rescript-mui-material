module Classes = {
  type t = {"root": option<string>}
  @obj
  external make: (~root: string=?) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/BottomNavigation")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~onChange: (ReactEvent.Synthetic.t, 'a) => unit=?,
  ~showLabels: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'anyValue=?,
) => React.element = "default"
