module Classes = {
  type t = {"root": option<string>}
  @obj
  external make: (~root: string=?) => t = ""
}

@react.component @module("@mui/material/DialogTitle")
external make: (~children: React.element=?) => React.element = "default"
