module Classes = {
  type t = {
    "root": option<string>,
    "absolute": option<string>,
    "inset": option<string>,
    "fullWidth": option<string>,
    "light": option<string>,
    "middle": option<string>,
    "vertical": option<string>,
    "flexItem": option<string>,
    "withChildren": option<string>,
    "withChildrenVertical": option<string>,
    "textAlignRight": option<string>,
    "textAlignLeft": option<string>,
    "wrapper": option<string>,
    "wrapperVertical": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~absolute: string=?,
    ~inset: string=?,
    ~fullWidth: string=?,
    ~light: string=?,
    ~middle: string=?,
    ~vertical: string=?,
    ~flexItem: string=?,
    ~withChildren: string=?,
    ~withChildrenVertical: string=?,
    ~textAlignRight: string=?,
    ~textAlignLeft: string=?,
    ~wrapper: string=?,
    ~wrapperVertical: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Divider")
external make: (
  ~absolute: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~flexItem: bool=?,
  ~light: bool=?,
  ~orientation: [#horizontal | #vertical]=?,
  ~style: ReactDOM.Style.t=?,
  ~textAlign: [#center | #left | #right]=?,
  ~variant: [#fullWidth | #inset | #middle | #string(string)]=?,
) => React.element = "default"
