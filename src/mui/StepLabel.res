module Classes = {
  type t = {
    "root": option<string>,
    "horizontal": option<string>,
    "vertical": option<string>,
    "label": option<string>,
    "active": option<string>,
    "completed": option<string>,
    "error": option<string>,
    "disabled": option<string>,
    "iconContainer": option<string>,
    "alternativeLabel": option<string>,
    "labelContainer": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~horizontal: string=?,
    ~vertical: string=?,
    ~label: string=?,
    ~active: string=?,
    ~completed: string=?,
    ~error: string=?,
    ~disabled: string=?,
    ~iconContainer: string=?,
    ~alternativeLabel: string=?,
    ~labelContainer: string=?,
  ) => t = ""
}

module ComponentsProps = {
  type t = {label?: Js.Types.obj_val}
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/StepLabel")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~error: bool=?,
  ~icon: React.element=?,
  ~optional: React.element=?,
  ~\"StepIconComponent": Component.t=?,
  ~\"StepIconProps": Js.Types.obj_val=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
