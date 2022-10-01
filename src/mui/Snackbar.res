module AnchorOrigin = {
  type t = {
    horizontal: [#center | #left | #right],
    vertical: [#bottom | #top],
  }
}

module Classes = {
  type t = {
    "root": option<string>,
    "anchorOriginTopCenter": option<string>,
    "anchorOriginBottomCenter": option<string>,
    "anchorOriginTopRight": option<string>,
    "anchorOriginBottomRight": option<string>,
    "anchorOriginTopLeft": option<string>,
    "anchorOriginBottomLeft": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~anchorOriginTopCenter: string=?,
    ~anchorOriginBottomCenter: string=?,
    ~anchorOriginTopRight: string=?,
    ~anchorOriginBottomRight: string=?,
    ~anchorOriginTopLeft: string=?,
    ~anchorOriginBottomLeft: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
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

module Transition = {
  type t = {
    "nodeRef": option<ReactDOM.domRef>,
    "children": option<React.element>,
    "in": option<bool>,
    "mountOnEnter": option<bool>,
    "unmountOnExit": option<bool>,
    "appear": option<bool>,
    "enter": option<bool>,
    "exit": option<bool>,
    "timeout": option<TransitionDuration.t>,
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
    ~timeout: TransitionDuration.t=?,
  ) => t = ""
}

@react.component @module("@mui/material/Snackbar")
external make: (
  ~action: React.element=?,
  ~anchorOrigin: AnchorOrigin.t=?,
  ~autoHideDuration: int=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~\"ClickAwayListenerProps": {..}=?,
  ~\"ContentProps": {..}=?,
  ~disableWindowBlurListener: bool=?,
  ~key: 'key=?,
  ~message: React.element=?,
  ~onClose: (ReactEvent.Synthetic.t, string) => unit=?,
  ~\"open": bool=?,
  ~resumeHideDuration: int=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TransitionComponent": Component.t=?,
  ~transitionDuration: TransitionDuration.t=?,
  ~\"TransitionProps": Transition.t=?,
) => React.element = "default"
