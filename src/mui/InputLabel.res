module Classes = {
  type t = {
    "root": option<string>,
    "focused": option<string>,
    "disabled": option<string>,
    "error": option<string>,
    "required": option<string>,
    "asterisk": option<string>,
    "formControl": option<string>,
    "sizeSmall": option<string>,
    "shrink": option<string>,
    "animated": option<string>,
    "filled": option<string>,
    "outlined": option<string>,
    "standard": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~focused: string=?,
    ~disabled: string=?,
    ~error: string=?,
    ~required: string=?,
    ~asterisk: string=?,
    ~formControl: string=?,
    ~sizeSmall: string=?,
    ~shrink: string=?,
    ~animated: string=?,
    ~filled: string=?,
    ~outlined: string=?,
    ~standard: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/InputLabel")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: [#error | #info | #primary | #secondary | #success | #warning | #string(string)]=?,
  ~disableAnimation: bool=?,
  ~disabled: bool=?,
  ~error: bool=?,
  ~focused: bool=?,
  ~margin: [#dense]=?,
  ~required: bool=?,
  ~shrink: bool=?,
  ~size: [#normal | #small]=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [#filled | #outlined | #standard]=?,
  ~id: string=?,
) => React.element = "default"
