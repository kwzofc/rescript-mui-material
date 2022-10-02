module Classes = {
  type t = {
    "root": option<string>,
    "text": option<string>,
    "active": option<string>,
    "completed": option<string>,
    "error": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~text: string=?,
    ~active: string=?,
    ~completed: string=?,
    ~error: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/StepIcon")
external make: (
  ~active: bool=?,
  ~classes: Classes.t=?,
  ~completed: bool=?,
  ~error: bool=?,
  ~icon: React.element=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
