module Classes = {
  type t = {
    "root": option<string>,
    "multiline": option<string>,
    "dense": option<string>,
    "inset": option<string>,
    "primary": option<string>,
    "secondary": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~multiline: string=?,
    ~dense: string=?,
    ~inset: string=?,
    ~primary: string=?,
    ~secondary: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/ListItemText")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~disableTypography: bool=?,
  ~inset: bool=?,
  ~primary: React.element=?,
  ~primaryTypographyProps: {..}=?,
  ~secondary: React.element=?,
  ~secondaryTypographyProps: {..}=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
