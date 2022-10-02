module Classes = {
  type t = {
    "root": option<string>,
    "icon": option<string>,
    "iconOpen": option<string>,
    "iconWithOpenIconOpen": option<string>,
    "openIcon": option<string>,
    "openIconOpen": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~icon: string=?,
    ~iconOpen: string=?,
    ~iconWithOpenIconOpen: string=?,
    ~openIcon: string=?,
    ~openIconOpen: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/SpeedDialIcon")
external make: (
  ~classes: Classes.t=?,
  ~icon: React.element=?,
  ~openIcon: React.element=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
