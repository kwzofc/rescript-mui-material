module Classes = {
  type t = {
    "root": option<string>,
    "horizontal": option<string>,
    "vertical": option<string>,
    "touchRipple": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~horizontal: string=?,
    ~vertical: string=?,
    ~touchRipple: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/StepButton")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~icon: React.element=?,
  ~optional: React.element=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
