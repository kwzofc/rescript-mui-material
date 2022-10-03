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
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
  ~onClick: 'any => unit=?,
) => React.element = "default"
