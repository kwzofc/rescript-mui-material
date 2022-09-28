module Classes = {
  type t = {
    "root": option<string>,
    "sizeSmall": option<string>,
    "sizeMedium": option<string>,
    "colorError": option<string>,
    "colorInfo": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "colorSuccess": option<string>,
    "colorWarning": option<string>,
    "disabled": option<string>,
    "clickable": option<string>,
    "clickableColorPrimary": option<string>,
    "clickableColorSecondary": option<string>,
    "deletable": option<string>,
    "deletableColorPrimary": option<string>,
    "deletableColorSecondary": option<string>,
    "outlined": option<string>,
    "filled": option<string>,
    "outlinedPrimary": option<string>,
    "outlinedSecondary": option<string>,
    "filledPrimary": option<string>,
    "filledSecondary": option<string>,
    "avatar": option<string>,
    "avatarSmall": option<string>,
    "avatarMedium": option<string>,
    "avatarColorPrimary": option<string>,
    "avatarColorSecondary": option<string>,
    "icon": option<string>,
    "iconSmall": option<string>,
    "iconMedium": option<string>,
    "iconColorPrimary": option<string>,
    "iconColorSecondary": option<string>,
    "label": option<string>,
    "labelSmall": option<string>,
    "labelMedium": option<string>,
    "deteleIcon": option<string>,
    "deleteIconSmall": option<string>,
    "deleteIconMedium": option<string>,
    "deleteIconColorPrimary": option<string>,
    "deleteIconColorSecondary": option<string>,
    "deleteIconOutlinedColorPrimary": option<string>,
    "deleteIconOutlinedColorSecondary": option<string>,
    "deleteIconFilledColorPrimary": option<string>,
    "deleteIconFilledColorSecondary": option<string>,
    "focusVisible": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~sizeSmall: string=?,
    ~sizeMedium: string=?,
    ~colorError: string=?,
    ~colorInfo: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~colorSuccess: string=?,
    ~colorWarning: string=?,
    ~disabled: string=?,
    ~clickable: string=?,
    ~clickableColorPrimary: string=?,
    ~clickableColorSecondary: string=?,
    ~deletable: string=?,
    ~deletableColorPrimary: string=?,
    ~deletableColorSecondary: string=?,
    ~outlined: string=?,
    ~filled: string=?,
    ~outlinedPrimary: string=?,
    ~outlinedSecondary: string=?,
    ~filledPrimary: string=?,
    ~filledSecondary: string=?,
    ~avatar: string=?,
    ~avatarSmall: string=?,
    ~avatarMedium: string=?,
    ~avatarColorPrimary: string=?,
    ~avatarColorSecondary: string=?,
    ~icon: string=?,
    ~iconSmall: string=?,
    ~iconMedium: string=?,
    ~iconColorPrimary: string=?,
    ~iconColorSecondary: string=?,
    ~label: string=?,
    ~labelSmall: string=?,
    ~labelMedium: string=?,
    ~deteleIcon: string=?,
    ~deleteIconSmall: string=?,
    ~deleteIconMedium: string=?,
    ~deleteIconColorPrimary: string=?,
    ~deleteIconColorSecondary: string=?,
    ~deleteIconOutlinedColorPrimary: string=?,
    ~deleteIconOutlinedColorSecondary: string=?,
    ~deleteIconFilledColorPrimary: string=?,
    ~deleteIconFilledColorSecondary: string=?,
    ~focusVisible: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Chip")
external make: (
  ~avatar: React.element=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~clickable: bool=?,
  ~color: [
    | #default
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
    | #string(string)
  ]=?,
  ~component: Component.t=?,
  ~deleteIcon: React.element=?,
  ~disabled: bool=?,
  ~icon: React.element=?,
  ~label: React.element=?,
  ~onDelete: unit=?,
  ~size: [#medium | #small | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [#filled | #outlined | #string(string)]=?,
) => React.element = "default"
