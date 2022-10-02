module Classes = {
  type t = {"root": option<string>, "last": option<string>, "transition": option<string>}
  @obj
  external make: (~root: string=?, ~last: string=?, ~transition: string=?) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
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

@react.component @module("@mui/material/StepContent")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TransitionComponent": Component.t=?,
  ~transitionDuration: TransitionDuration.t=?,
  ~\"TransitionProps": Js.Types.obj_val=?,
) => React.element = "default"
