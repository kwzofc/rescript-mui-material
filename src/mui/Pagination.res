module Classes = {
  type t = {
    "root": option<string>,
    "ul": option<string>,
    "outlined": option<string>,
    "text": option<string>,
  }
  @obj
  external make: (~root: string=?, ~ul: string=?, ~outlined: string=?, ~text: string=?) => t = ""
}

module Color = {
  type variant = [#primary | #secondary | #standard]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Size = {
  type variant = [#small | #medium | #large]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module Variant = {
  type variant = [#outlined | #text]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Pagination")
external make: (
  ~boundaryCount: int=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~count: int=?,
  ~defaultPage: int=?,
  ~disabled: bool=?,
  ~getItemAriaLabel: (string, int, bool) => string=?,
  ~hideNextButton: bool=?,
  ~hidePrevButton: bool=?,
  ~onChange: ('anyEvent, int) => unit=?,
  ~page: int=?,
  ~renderItem: 'paginationRenderItemParams => React.element=?,
  ~shape: [#circular | #rounded]=?,
  ~showFirstButton: bool=?,
  ~showLastButton: bool=?,
  ~siblingCount: int=?,
  ~size: Size.t=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
) => React.element = "default"
