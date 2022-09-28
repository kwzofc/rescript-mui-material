module Classes = {
  type t = {
    "popper": option<string>,
    "popperInteractive": option<string>,
    "popperArrow": option<string>,
    "popperClose": option<string>,
    "tooltip": option<string>,
    "tooltipArrow": option<string>,
    "arrow": option<string>,
    "touch": option<string>,
    "tooltipPlacementLeft": option<string>,
    "tooltipPlacementRight": option<string>,
    "tooltipPlacementTop": option<string>,
    "tooltipPlacementBottom": option<string>,
  }
  @obj
  external make: (
    ~popper: string=?,
    ~popperInteractive: string=?,
    ~popperArrow: string=?,
    ~popperClose: string=?,
    ~tooltip: string=?,
    ~tooltipArrow: string=?,
    ~arrow: string=?,
    ~touch: string=?,
    ~tooltipPlacementLeft: string=?,
    ~tooltipPlacementRight: string=?,
    ~tooltipPlacementTop: string=?,
    ~tooltipPlacementBottom: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Components = {
  type t = {
    \"Arrow"?: Component.t,
    \"Popper"?: Component.t,
    \"Tooltip"?: Component.t,
    \"Transition"?: Component.t,
  }
}

module ComponentsProps = {
  type t = {
    arrow?: Component.t,
    popper?: Component.t,
    tooltip?: Component.t,
    transition?: Component.t,
  }
}

@react.component @module("@mui/material/Tooltip")
external make: (
  ~children: React.element=?,
  ~arrow: bool=?,
  ~classes: Classes.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~describeChild: bool=?,
  ~disableFocusListener: bool=?,
  ~disableInteractive: bool=?,
  ~disableTouchListener: bool=?,
  ~enterDelay: int=?,
  ~enterNextDelay: int=?,
  ~enterTouchDelay: int=?,
  ~followCursor: bool=?,
  ~id: string=?,
  ~leaveDelay: int=?,
  ~leaveTouchDelay: int=?,
  ~onClose: ReactEvent.Synthetic.t => unit=?,
  ~onOpen: ReactEvent.Synthetic.t => unit=?,
  ~open_: bool=?,
  ~placement: [
    | #"bottom-end"
    | #"bottom-start"
    | #bottom
    | #"left-end"
    | #"left-start"
    | #left
    | #"right-end"
    | #"right-start"
    | #right
    | #"top-end"
    | #"top-start"
    | #top
  ]=?,
  ~\"PopperComponent": Popper.ComponentsProps.t=?,
  ~\"PopperProps": Popper.Component.t=?,
  ~style: ReactDOM.Style.t=?,
  ~title: React.element=?,
  ~\"TransitionComponent": Component.t=?,
  ~\"TransitionProps": Js.Types.t<Js.Types.obj_val>=?,
) => React.element = "default"
