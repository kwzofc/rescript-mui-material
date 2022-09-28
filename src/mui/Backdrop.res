module Classes = {
  type t = {"root": option<string>, "invisible": option<string>}
  @obj
  external make: (~root: string=?, ~invisible: string=?) => t = ""
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
  type t = {root?: Js.Types.t<Js.Types.obj_val>}
}

module TransitionDuration = {
  type object = {
    appear?: int,
    enter?: int,
    exit?: int,
  }
  type t
  external number: int => t = "%identity"
  external object: object => t = "%identity"
}

@react.component @module("@mui/material/Backdrop")
external make: (
  ~\"open": bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~invisible: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~transitionDuration: TransitionDuration.t=?,
) => React.element = "default"
