module Classes = {
  type t = {
    "root": option<string>,
    "horizontal": option<string>,
    "vertical": option<string>,
    "alternativeLabel": option<string>,
    "active": option<string>,
    "completed": option<string>,
    "disabled": option<string>,
    "line": option<string>,
    "lineHorizontal": option<string>,
    "lineVertical": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~horizontal: string=?,
    ~vertical: string=?,
    ~alternativeLabel: string=?,
    ~active: string=?,
    ~completed: string=?,
    ~disabled: string=?,
    ~line: string=?,
    ~lineHorizontal: string=?,
    ~lineVertical: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/StepConnector")
external make: (~classes: Classes.t=?, ~style: ReactDOM.Style.t=?) => React.element = "default"
