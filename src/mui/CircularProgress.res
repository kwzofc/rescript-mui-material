module Classes = {
  type t = {
    "root": option<string>,
    "determinate": option<string>,
    "indeterminate": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "svg": option<string>,
    "circle": option<string>,
    "circleDeterminate": option<string>,
    "circleIndeterminate": option<string>,
    "circleDisableShrink": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~determinate: string=?,
    ~indeterminate: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~svg: string=?,
    ~circle: string=?,
    ~circleDeterminate: string=?,
    ~circleIndeterminate: string=?,
    ~circleDisableShrink: string=?,
  ) => t = ""
}

module Color = {
  type variant = [
    | #inherit
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

module Size = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/CircularProgress")
external make: (
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~disableShrink: bool=?,
  ~size: Size.t=?,
  ~style: ReactDOM.Style.t=?,
  ~thickness: float=?,
  ~value: int=?,
  ~variant: [#determinate | #indeterminate]=?,
) => React.element = "default"
