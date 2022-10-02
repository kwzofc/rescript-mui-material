module Classes = {
  type t = {
    "root": option<string>,
    "positionBottom": option<string>,
    "positionTop": option<string>,
    "positionStatic": option<string>,
    "dots": option<string>,
    "dot": option<string>,
    "dotActive": option<string>,
    "progress": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~positionBottom: string=?,
    ~positionTop: string=?,
    ~positionStatic: string=?,
    ~dots: string=?,
    ~dot: string=?,
    ~dotActive: string=?,
    ~progress: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/MobileStepper")
external make: (
  ~steps: int=?,
  ~activeStep: int=?,
  ~backButton: React.element=?,
  ~classes: Classes.t=?,
  ~\"LinearProgressProps": Js.Types.obj_val=?,
  ~nextButton: React.element=?,
  ~position: [#bottom | #static | #top]=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [#dots | #progress | #text]=?,
) => React.element = "default"
