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

@react.component @module("@mui/material/SwipeableDrawer")
external make: (
  ~onClose: 'closeEvent => unit=?,
  ~onOpen: 'openEvent => unit=?,
  ~\"open": bool=?,
  ~children: React.element=?,
  ~disableBackdropTransition: bool=?,
  ~disableDiscovery: bool=?,
  ~disableSwipeToOpen: bool=?,
  ~hysteresis: float=?,
  ~minFlingVelocity: int=?,
  ~\"SwipeAreaProps": Js.Types.obj_val=?,
  ~swipeAreaWidth: int=?,
  ~transitionDuration: TransitionDuration.t=?,
) => React.element = "default"
