module Classes = {
  type t = {
    "root": option<string>,
    "colorSecondary": option<string>,
    "focused": option<string>,
    "disabled": option<string>,
    "error": option<string>,
    "filled": option<string>,
    "required": option<string>,
    "asterisk": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~colorSecondary: string=?,
    ~focused: string=?,
    ~disabled: string=?,
    ~error: string=?,
    ~filled: string=?,
    ~required: string=?,
    ~asterisk: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#error | #info | #primary | #secondary | #success | #warning]
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

@react.component @module("@mui/material/FormLabel")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~component: Component.t=?,
  ~disabled: bool=?,
  ~error: bool=?,
  ~filled: bool=?,
  ~focused: bool=?,
  ~required: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~id: string=?,
) => React.element = "default"
