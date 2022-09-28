module Classes = {
  type t = {
    "root": option<string>,
    "horizontal": option<string>,
    "entered": option<string>,
    "hidden": option<string>,
    "wrapper": option<string>,
    "wrapperInner": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~horizontal: string=?,
    ~entered: string=?,
    ~hidden: string=?,
    ~wrapper: string=?,
    ~wrapperInner: string=?,
  ) => t = ""
}

module CollapsedSize = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Easing = {
  type object = {
    enter?: string,
    exit?: string,
  }
  type t
  external object: object => t = "%identity"
  external string: string => t = "%identity"
}

module Timeout = {
  type object = {
    appear?: int,
    enter?: int,
    exit?: int,
  }
  type t = [#auto | #number(int) | #object(object)]
}

@react.component @module("@mui/material/Collapse")
external make: (
  ~addEndListener: unit => ReactDOM.domProps=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~collapsedSize: CollapsedSize.t=?,
  ~component: Component.t=?,
  ~easing: Easing.t=?,
  ~\"in": bool=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~style: ReactDOM.Style.t=?,
  ~timeout: Timeout.t=?,
) => React.element = "default"