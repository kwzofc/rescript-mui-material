module Classes = {
  type t = {
    "root": option<string>,
    "selected": option<string>,
    "iconOnly": option<string>,
    "label": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~selected: string=?,
    ~iconOnly: string=?,
    ~label: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/BottomNavigationAction")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~icon: React.element=?,
  ~label: React.element=?,
  ~showLabel: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'anyValue=?,
) => React.element = "default"
