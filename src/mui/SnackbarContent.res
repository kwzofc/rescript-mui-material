module Classes = {
  type t = {"root": option<string>, "message": option<string>, "action": option<string>}
  @obj
  external make: (~root: string=?, ~message: string=?, ~action: string=?) => t = ""
}

@react.component @module("@mui/material/SnackbarContent")
external make: (
  ~action: React.element=?,
  ~classes: Classes.t=?,
  ~message: React.element=?,
  ~role: string=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
