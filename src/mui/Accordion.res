module Classes = {
  type t = {
    "root": option<string>,
    "rounded": option<string>,
    "expanded": option<string>,
    "disabled:": option<string>,
    "gutters": option<string>,
    "region": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~rounded: string=?,
    ~expanded: string=?,
    ~disabled: string=?,
    ~gutters: string=?,
    ~region: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Transition = {
  type timeoutObject = {
    enter?: int,
    exit?: int,
    appear?: int,
  }
  type t = {
    "nodeRef": option<ReactDOM.domRef>,
    "children": option<React.element>,
    "in": option<bool>,
    "mountOnEnter": option<bool>,
    "unmountOnExit": option<bool>,
    "appear": option<bool>,
    "enter": option<bool>,
    "exit": option<bool>,
    "timeout": option<timeoutObject>,
    "addEndListener": option<Js.Types.function_val>,
    "onEnter": option<(React.element, bool) => unit>,
    "onEntering": option<(React.element, bool)>,
    "onEntered": option<(React.element, bool) => unit>,
    "onExit": option<React.element => unit>,
    "onExiting": option<React.element => unit>,
    "onExited": option<React.element => unit>,
  }
  @react.component @obj
  external make: (
    ~nodeRef: ReactDOM.domRef=?,
    ~children: React.element=?,
    ~\"in": bool=?,
    ~mountOnEnter: bool=?,
    ~unmountOnExit: bool=?,
    ~appear: bool=?,
    ~enter: bool=?,
    ~exit: bool=?,
    ~timeout: timeoutObject=?,
    ~addEndListener: Js.Types.function_val=?,
    ~onEnter: (React.element, bool) => unit=?,
    ~onEntering: (React.element, bool)=?,
    ~onExit: React.element => unit=?,
    ~onExiting: React.element => unit=?,
    ~onExited: React.element => unit=?,
  ) => t = ""
}

@react.component @module("@mui/material/Accordion")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~defaultExpanded: bool=?,
  ~disabled: bool=?,
  ~disablueGutters: bool=?,
  ~expanded: bool=?,
  ~onChange: (ReactEvent.Synthetic.t, bool) => unit=?,
  ~square: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TransitionComponent": Component.t=?,
  ~\"TransitionProps": Transition.t=?,
) => React.element = "default"
