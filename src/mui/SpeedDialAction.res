module Classes = {
  type t = {
    "fab": option<string>,
    "fabClosed": option<string>,
    "staticTooltip": option<string>,
    "staticTooltipClosed": option<string>,
    "staticTooltipLabel": option<string>,
    "tooltipPlacementLeft": option<string>,
    "tooltipPlacementRight": option<string>,
  }
  @obj
  external make: (
    ~fab: string=?,
    ~fabClosed: string=?,
    ~staticTooltip: string=?,
    ~staticTooltipClosed: string=?,
    ~staticTooltipLabel: string=?,
    ~tooltipPlacementLeft: string=?,
    ~tooltipPlacementRight: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/SpeedDialAction")
external make: (
  ~classes: Classes.t=?,
  ~delay: int=?,
  ~\"FabProps": Js.Types.obj_val=?,
  ~icon: React.element=?,
  ~id: string=?,
  ~\"open": bool=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TooltipClasses": Js.Types.obj_val=?,
  ~tooltipOpen: bool=?,
  ~tooltipPlacement: [
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
  ~tooltipTitle: React.element=?,
) => React.element = "default"
