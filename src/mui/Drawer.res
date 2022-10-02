module Classes = {
  type t = {
    "root": option<string>,
    "docked": option<string>,
    "paper": option<string>,
    "paperAnchorLeft": option<string>,
    "paperAnchorRight": option<string>,
    "paperAnchorTop": option<string>,
    "paperAnchorBottom": option<string>,
    "paperAnchorDockedLeft": option<string>,
    "paperAnchorDockedTop": option<string>,
    "paperAnchorDockedRight": option<string>,
    "paperAnchorDockedBottom": option<string>,
    "modal": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~docked: string=?,
    ~paper: string=?,
    ~paperAnchorLeft: string=?,
    ~paperAnchorRight: string=?,
    ~paperAnchorTop: string=?,
    ~paperAnchorBottom: string=?,
    ~paperAnchorDockedLeft: string=?,
    ~paperAnchorDockedTop: string=?,
    ~paperAnchorDockedRight: string=?,
    ~paperAnchorDockedBottom: string=?,
    ~modal: string=?,
  ) => t = ""
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

@react.component @module("@mui/material/Drawer")
external make: (
  ~anchor: [#bottom | #left | #right | #top]=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~elevation: int=?,
  ~hideBackdrop: bool=?,
  ~\"ModalProps": Js.Types.obj_val=?,
  ~onClose: 'event => unit=?,
  ~\"open": bool=?,
  ~\"PaperProps": Js.Types.obj_val=?,
  ~\"SlideProps": Js.Types.obj_val=?,
  ~style: ReactDOM.Style.t=?,
  ~transitionDuration: TransitionDuration.t=?,
  ~variant: [#permanent | #persistent | #temporary]=?,
) => React.element = "default"
