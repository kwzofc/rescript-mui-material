module Classes = {
  type t = {
    "root": option<string>,
    "container": option<string>,
    "focusVisible": option<string>,
    "dense": option<string>,
    "alignItemsFlexStart": option<string>,
    "disabled": option<string>,
    "divider": option<string>,
    "gutters": option<string>,
    "padding": option<string>,
    "button": option<string>,
    "secondaryAction": option<string>,
    "selected": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~container: string=?,
    ~focusVisible: string=?,
    ~dense: string=?,
    ~alignItemsFlexStart: string=?,
    ~disabled: string=?,
    ~divider: string=?,
    ~gutters: string=?,
    ~padding: string=?,
    ~button: string=?,
    ~secondaryAction: string=?,
    ~selected: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Components = {
  type t = {\"Root"?: Component.t}
}

module ComponentsProps = {
  type t = {root?: Components.t}
}

@react.component @module("@mui/material/ListItem")
external make: (
  ~alignItems: [#center | #"flex-start"]=?,
  ~autoFocus: bool=?,
  ~button: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~\"ContainerComponent": React.element=?,
  ~dense: bool=?,
  ~disabled: bool=?,
  ~disableGutters: bool=?,
  ~disablePadding: bool=?,
  ~divider: bool=?,
  ~secondaryAction: bool=?,
  ~selected: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~onClick: 'any => unit=?,
) => React.element = "default"
