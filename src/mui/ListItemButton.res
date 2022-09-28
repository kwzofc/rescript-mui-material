module Classes = {
  type t = {
    "root": option<string>,
    "focusVisible": option<string>,
    "dense": option<string>,
    "alignItemsFlexStart": option<string>,
    "disabled": option<string>,
    "divider": option<string>,
    "gutters": option<string>,
    "selected": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~focusVisible: string=?,
    ~dense: string=?,
    ~alignItemsFlexStart: string=?,
    ~disabled: string=?,
    ~divider: string=?,
    ~gutters: string=?,
    ~selected: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/ListItemButton")
external make: (
  ~alignItems: [#center | #"flex-start"]=?,
  ~autoFocus: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~dense: bool=?,
  ~disabled: bool=?,
  ~disableGutters: bool=?,
  ~divider: bool=?,
  ~focusVisibleClassName: string=?,
  ~selected: bool=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
