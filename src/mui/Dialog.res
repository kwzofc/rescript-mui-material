module Classes = {
  type t = {
    "root": option<string>,
    "scrollPaper": option<string>,
    "scrollBody": option<string>,
    "container": option<string>,
    "paper": option<string>,
    "paperScrollPaper": option<string>,
    "paperScrollBody": option<string>,
    "paperWidthFalse": option<string>,
    "paperWidthXs": option<string>,
    "paperWidthSm": option<string>,
    "paperWidthMd": option<string>,
    "paperWidthLg": option<string>,
    "paperWidthXl": option<string>,
    "paperFullWidth": option<string>,
    "paperFullScreen": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~scrollPaper: string=?,
    ~scrollBody: string=?,
    ~container: string=?,
    ~paper: string=?,
    ~paperScrollPaper: string=?,
    ~paperScrollBody: string=?,
    ~paperWidthFalse: string=?,
    ~paperWidthXs: string=?,
    ~paperWidthSm: string=?,
    ~paperWidthMd: string=?,
    ~paperWidthLg: string=?,
    ~paperWidthXl: string=?,
    ~paperFullWidth: string=?,
    ~paperFullScreen: string=?,
  ) => t = ""
}

module MaxWidth = {
  type variant = [#xs | #sm | #md | #lg | #xl]
  type t
  external variant: variant => t = "%identity"
  external bool: bool => t = "%identity"
  external string: string => t = "%identity"
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

@react.component @module("@mui/material/Dialog")
external make: (
  ~\"open": bool=?,
  ~\"aria-describedby": string=?,
  ~\"aria-labelledby": string=?,
  ~\"BackdropComponent": Component.t=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~disableEscapeKeyDown: bool=?,
  ~fullScreen: bool=?,
  ~maxWidth: MaxWidth.t=?,
  ~onBackDropClick: (Js.Types.t<Js.Types.obj_val>, string) => unit=?,
  ~onClose: (Js.Types.t<Js.Types.obj_val>, string) => unit=?,
  ~\"PaperComponent": Component.t=?,
  ~scroll: [#body | #paper]=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TransitionComponent": Component.t=?,
  ~transitionDuration: TransitionDuration.t=?,
  ~\"TransitionProps": Js.Types.t<Js.Types.obj_val>=?,
) => React.element = "default"
