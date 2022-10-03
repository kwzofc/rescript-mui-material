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

module Color = {
  type variant = [
    | #default
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
  ]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Size = {
  type variant = [#medium | #small]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Sx = {
  type prop = {
    border?: int,
    borderTop?: int,
    borderRight?: int,
    borderBottom?: int,
    borderLeft?: int,
    borderColor?: string,
    borderTopColor?: string,
    borderRightColor?: string,
    borderBottomColor?: string,
    borderLeftColor?: string,
    borderRadius?: int,
    displayPrint?: string,
    displayRaw?: string,
    overflow?: string,
    textOverFlow?: string,
    visibility?: string,
    whiteSpace?: string,
    gap?: int,
    columnGap?: int,
    rowGap?: int,
    gridColumn?: string,
    gridRow?: string,
    gridAutoFlow?: string,
    gridAutoColumns?: string,
    gridAutoRows?: string,
    gridTemplateColumns?: string,
    gridTemplateRows?: string,
    gridTemplateAreas?: string,
    gridArea?: string,
    color?: string,
    bgcolor?: string,
    position?: string,
    zIndex?: string,
    top?: int,
    right?: int,
    bottom?: int,
    left?: int,
    boxShadow?: int,
    width?: [#string(string) | #number(int)],
    maxWidth?: [#string(string) | #number(int)],
    minWidth?: [#string(string) | #number(int)],
    height?: [#string(string) | #number(int)],
    maxHeight?: [#string(string) | #number(int)],
    minHeight?: [#string(string) | #number(int)],
    boxSizing?: string,
    m?: int,
    mt?: int,
    mr?: int,
    mb?: int,
    ml?: int,
    mx?: int,
    my?: int,
    p?: int,
    pt?: int,
    pr?: int,
    pb?: int,
    pl?: int,
    px?: int,
    py?: int,
    typography?: string,
    fontFamily?: string,
    fontSize?: [#string(string) | #number(int)],
    fontStyle?: string,
    fontWeight?: [#string(string) | #number(int)],
    letterSpacing?: int,
    lineHeight?: [#string(string) | #number(int)],
    textAlign?: string,
    textTransform?: string,
  }
  type t
  external arrayFunc: array<unit> => t = "%identity"
  external arrayObject: array<prop> => t = "%identity"
  external arrayBool: array<bool> => t = "%identity"
  external func: unit => t = "%identity"
  external object: prop => t = "%identity"
}

module Variant = {
  type variant = [#filled | #outlined]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Chip")
external make: (
  ~avatar: React.element=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~clickable: bool=?,
  ~color: Color.t=?,
  ~component: Component.t=?,
  ~deleteIcon: React.element=?,
  ~disabled: bool=?,
  ~icon: React.element=?,
  ~label: React.element=?,
  ~onDelete: unit=?,
  ~size: Size.t=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
) => React.element = "default"
