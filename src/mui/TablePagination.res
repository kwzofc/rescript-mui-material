module ActionsComponentType = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Classes = {
  type t = {
    "root": option<string>,
    "toolbar": option<string>,
    "spacer": option<string>,
    "selectLabel": option<string>,
    "selectRoot": option<string>,
    "select": option<string>,
    "selectIcon": option<string>,
    "input": option<string>,
    "menuItem": option<string>,
    "displayedRows": option<string>,
    "actions": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~toolbar: string=?,
    ~spacer: string=?,
    ~selectLabel: string=?,
    ~selectRoot: string=?,
    ~select: string=?,
    ~selectIcon: string=?,
    ~input: string=?,
    ~menuItem: string=?,
    ~displayedRows: string=?,
    ~actions: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module LabelDisplayedRows = {
  type t = {
    from?: int,
    to?: int,
    count?: int,
    page?: int,
  }
}

module OnRowsPerPageChange = {
  type object = {
    label: string,
    value: int,
  }
  type t
  external arrayNumber: array<int> => t = "%identity"
  external arrayObject: array<object> => t = "%identity"
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

@react.component @module("@mui/material/TablePagination")
external make: (
  ~count: int=?,
  ~onPageChange: ReactEvent.Mouse.t => unit=?,
  ~page: int=?,
  ~rowsPerPage: int=?,
  ~\"ActionsComponent": ActionsComponentType.t=?,
  ~backIconButtonProps: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~getItemAriaLabel: string => string=?,
  ~labelDisplayedRows: LabelDisplayedRows.t => string=?,
  ~labelRowsPerPage: React.element=?,
  ~nextIconButtonProps: React.element=?,
  ~onRowsPerPageChange: ReactEvent.Form.t => unit=?,
  ~rowsPerPageOptions: OnRowsPerPageChange.t=?,
  ~\"SelectProps": React.element=?,
  ~showFirstButton: bool=?,
  ~showLastButton: bool=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
