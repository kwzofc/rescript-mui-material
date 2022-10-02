module Classes = {
  type t = {
    "root": option<string>,
    "fab": option<string>,
    "directionUp": option<string>,
    "directionDown": option<string>,
    "directionLeft": option<string>,
    "directionRight": option<string>,
    "actions": option<string>,
    "actionClosed": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~fab: string=?,
    ~directionUp: string=?,
    ~directionDown: string=?,
    ~directionLeft: string=?,
    ~directionRight: string=?,
    ~actions: string=?,
    ~actionClosed: string=?,
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

@react.component @module("@mui/material/SpeedDial")
external make: (
  ~ariaLabel: string=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~direction: [#down | #left | #right | #up]=?,
  ~\"FabProps": Js.Types.obj_val=?,
  ~hidden: bool=?,
  ~icon: React.element=?,
  ~onClose: ('closeEvent, string) => unit=?,
  ~onOpen: ('openEvent, string) => unit=?,
  ~\"open": bool=?,
  ~openIcon: React.element=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TransitionComponent": Component.t=?,
  ~transitionDuration: TransitionDuration.t=?,
  ~\"TransitionProps": Js.Types.obj_val=?,
) => React.element = "default"
