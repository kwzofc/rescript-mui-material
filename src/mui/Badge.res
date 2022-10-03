module AnchorOrigin = {
  type t = {
    horizontal: [#left | #right],
    vertical: [#bottom | #top],
  }
}

module Classes = {
  type t = {
    "root": option<string>,
    "badge": option<string>,
    "dot": option<string>,
    "standard": option<string>,
    "anchorOriginTopRight": option<string>,
    "anchorOriginBottomRight": option<string>,
    "anchorOriginTopLeft": option<string>,
    "anchorOriginBottomLeft": option<string>,
    "invisible": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "colorError": option<string>,
    "colorInfo": option<string>,
    "colorSuccess": option<string>,
    "colorWarning": option<string>,
    "anchorOriginTopRightRectangular": option<string>,
    "anchorOriginBottomRightRectangular": option<string>,
    "anchorOriginTopLeftRectangular": option<string>,
    "anchorOriginBottomLeftRectangular": option<string>,
    "anchorOriginTopRightCircular": option<string>,
    "anchorOriginBottomRightCircular": option<string>,
    "anchorOriginTopLeftCircular": option<string>,
    "anchorOriginBottomLeftCircular": option<string>,
    "overlapRectangular": option<string>,
    "overlapCircular": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~badge: string=?,
    ~dot: string=?,
    ~standard: string=?,
    ~anchorOriginTopRight: string=?,
    ~anchorOriginBottomRight: string=?,
    ~anchorOriginTopLeft: string=?,
    ~anchorOriginBottomLeft: string=?,
    ~invisible: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~colorError: string=?,
    ~colorInfo: string=?,
    ~colorSuccess: string=?,
    ~colorWarning: string=?,
    ~anchorOriginTopRightRectangular: string=?,
    ~anchorOriginBottomRightRectangular: string=?,
    ~anchorOriginTopLeftRectangular: string=?,
    ~anchorOriginBottomLeftRectangular: string=?,
    ~anchorOriginTopRightCircular: string=?,
    ~anchorOriginBottomRightCircular: string=?,
    ~anchorOriginTopLeftCircular: string=?,
    ~anchorOriginBottomLeftCircular: string=?,
    ~overlapRectangular: string=?,
    ~overlapCircular: string=?,
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

module Components = {
  type t = {
    \"Badge"?: Component.t,
    \"Root"?: Component.t,
  }
}

module ComponentsProps = {
  type badge = [#func(unit) | #object(Component.t)]
  type root = [#func(unit) | #object(Component.t)]
  type t = {
    badge?: badge,
    root?: root,
  }
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
  type variant = [#dot | #standard]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Badge")
external make: (
  ~anchorOrigin: AnchorOrigin.t=?,
  ~badgeContent: React.element=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~invisible: bool=?,
  ~max: int=?,
  ~overlap: [#circular | #rectangular]=?,
  ~showZero: bool=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
) => React.element = "default"
