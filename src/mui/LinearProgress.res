module Classes = {
  type t = {
    "root": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "determinate": option<string>,
    "indeterminate": option<string>,
    "buffer": option<string>,
    "query": option<string>,
    "dashed": option<string>,
    "dashedColorPrimary": option<string>,
    "dashedColorSecondary": option<string>,
    "bar": option<string>,
    "barColorPrimary": option<string>,
    "barColorSecondary": option<string>,
    "bar1Indeterminate": option<string>,
    "bar1Determinate": option<string>,
    "bar1Buffer": option<string>,
    "bar2Indeterminate": option<string>,
    "bar2Buffer": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~determinate: string=?,
    ~indeterminate: string=?,
    ~buffer: string=?,
    ~query: string=?,
    ~dashed: string=?,
    ~dashedColorPrimary: string=?,
    ~dashedColorSecondary: string=?,
    ~bar: string=?,
    ~barColorPrimary: string=?,
    ~barColorSecondary: string=?,
    ~bar1Indeterminate: string=?,
    ~bar1Determinate: string=?,
    ~bar1Buffer: string=?,
    ~bar2Indeterminate: string=?,
    ~bar2Buffer: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/LinearProgress")
external make: (
  ~classes: Classes.t=?,
  ~color: [#inherit | #primary | #secondary | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
  ~value: int=?,
  ~valueBuffer: int=?,
  ~variant: [#buffer | #determinate | #indeterminate | #query]=?,
) => React.element = "default"
