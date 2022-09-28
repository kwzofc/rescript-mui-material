module Classes = {
  type t = {"root": option<string>, "disabled": option<string>, "focusVisible": option<string>}
  @obj
  external make: (~root: string=?, ~disabled: string=?, ~focusVisible: string=?) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module TouchRippleRef = {
  type current = {
    pulsate: Js.Types.t<Js.Types.function_val>,
    start: Js.Types.t<Js.Types.function_val>,
    stop: Js.Types.t<Js.Types.function_val>,
  }
  type touchRippleRef = {current?: current}
  type t
  external func: Js.Types.t<Js.Types.function_val> => t = "%identity"
  external object: touchRippleRef => t = "%identity"
}

@react.component @module("@mui/material/ButtonBase")
external make: (
  ~action: ReactDOM.domRef=?,
  ~centerRipple: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~disabled: bool=?,
  ~disableRipple: bool=?,
  ~disableTouchRipple: bool=?,
  ~focusRipple: bool=?,
  ~focusVisibleClassName: string=?,
  ~\"LinkComponent": Component.t=?,
  ~onFocusVisible: Js.Types.t<Js.Types.function_val>=?,
  ~style: ReactDOM.Style.t=?,
  ~\"TouchRippleProps": Js.Types.t<Js.Types.obj_val>=?,
  ~touchRippleRef: TouchRippleRef.t=?,
) => React.element = "default"
