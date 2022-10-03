module Classes = {
  type t = {
    "root": option<string>,
    "text": option<string>,
    "textInherit": option<string>,
    "textPrimary": option<string>,
    "textSecondary": option<string>,
    "textSuccess": option<string>,
    "textError": option<string>,
    "textInfo": option<string>,
    "textWarning": option<string>,
    "outlined": option<string>,
    "outlinedInherit": option<string>,
    "outlinedPrimary": option<string>,
    "outlinedSecondary": option<string>,
    "outlinedSuccess": option<string>,
    "outlinedError": option<string>,
    "outlinedInfo": option<string>,
    "outlinedWarning": option<string>,
    "contained": option<string>,
    "containedInherit": option<string>,
    "containedPrimary": option<string>,
    "containedSecondary": option<string>,
    "containedSuccess": option<string>,
    "containedInfo": option<string>,
    "containedError": option<string>,
    "containedWarning": option<string>,
    "disableElevation": option<string>,
    "focusVisible": option<string>,
    "disabled": option<string>,
    "colorInherit": option<string>,
    "textSizeSmall": option<string>,
    "textSizeMedium": option<string>,
    "textSizeLarge": option<string>,
    "outlinedSizeSmall": option<string>,
    "outlinedSizeMedium": option<string>,
    "outlinedSizeLarge": option<string>,
    "containedSizeSmall": option<string>,
    "containedSizeMedium": option<string>,
    "containedSizeLarge": option<string>,
    "sizeSmall": option<string>,
    "sizeMedium": option<string>,
    "sizeLarge": option<string>,
    "fullWidth": option<string>,
    "startIcon": option<string>,
    "endIcon": option<string>,
    "iconSizeSmall": option<string>,
    "iconSizeMedium": option<string>,
    "iconSizeLarge": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~text: string=?,
    ~textInherit: string=?,
    ~textPrimary: string=?,
    ~textSecondary: string=?,
    ~textSuccess: string=?,
    ~textError: string=?,
    ~textInfo: string=?,
    ~textWarning: string=?,
    ~outlined: string=?,
    ~outlinedInherit: string=?,
    ~outlinedPrimary: string=?,
    ~outlinedSecondary: string=?,
    ~outlinedSuccess: string=?,
    ~outlinedError: string=?,
    ~outlinedInfo: string=?,
    ~outlinedWarning: string=?,
    ~contained: string=?,
    ~containedInherit: string=?,
    ~containedPrimary: string=?,
    ~containedSecondary: string=?,
    ~containedSuccess: string=?,
    ~containedInfo: string=?,
    ~containedError: string=?,
    ~containedWarning: string=?,
    ~disableElevation: string=?,
    ~focusVisible: string=?,
    ~disabled: string=?,
    ~colorInherit: string=?,
    ~textSizeSmall: string=?,
    ~textSizeMedium: string=?,
    ~textSizeLarge: string=?,
    ~outlinedSizeSmall: string=?,
    ~outlinedSizeMedium: string=?,
    ~outlinedSizeLarge: string=?,
    ~containedSizeSmall: string=?,
    ~containedSizeMedium: string=?,
    ~containedSizeLarge: string=?,
    ~sizeSmall: string=?,
    ~sizeMedium: string=?,
    ~sizeLarge: string=?,
    ~fullWidth: string=?,
    ~startIcon: string=?,
    ~endIcon: string=?,
    ~iconSizeSmall: string=?,
    ~iconSizeMedium: string=?,
    ~iconSizeLarge: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Size = {
  type variant = [#small | #medium | #large]
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
  type variant = [#contained | #outlined | #text]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Button")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: [
    | #inherit
    | #primary
    | #secondary
    | #success
    | #error
    | #info
    | #warning
    | #string(string)
  ]=?,
  ~component: Component.t=?,
  ~disabled: bool=?,
  ~disableElevation: bool=?,
  ~disableFocusRipple: bool=?,
  ~disableRipple: bool=?,
  ~endIcon: React.element=?,
  ~fullWidth: bool=?,
  ~href: string=?,
  ~size: Size.t=?,
  ~startIcon: React.element=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
  ~onClick: (ReactEvent.Synthetic.t, string) => unit=?,
) => React.element = "default"
