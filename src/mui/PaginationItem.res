module Classes = {
  type t = {
    "root": option<string>,
    "page": option<string>,
    "sizeSmall": option<string>,
    "sizeLarge": option<string>,
    "text": option<string>,
    "textPrimary": option<string>,
    "textSecondary": option<string>,
    "outlined": option<string>,
    "outlinedPrimary": option<string>,
    "outlinedSecondary": option<string>,
    "rounded": option<string>,
    "ellipsis": option<string>,
    "firstLast": option<string>,
    "previousNext": option<string>,
    "focusVisible": option<string>,
    "disabled": option<string>,
    "selected": option<string>,
    "icon": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~page: string=?,
    ~sizeSmall: string=?,
    ~sizeLarge: string=?,
    ~text: string=?,
    ~textPrimary: string=?,
    ~textSecondary: string=?,
    ~outlined: string=?,
    ~outlinedPrimary: string=?,
    ~outlinedSecondary: string=?,
    ~rounded: string=?,
    ~ellipsis: string=?,
    ~firstLast: string=?,
    ~previousNext: string=?,
    ~ocusVisible: string=?,
    ~disabled: string=?,
    ~selected: string=?,
    ~icon: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#primary | #secondary | #standard]
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
    first?: Component.t,
    last?: Component.t,
    next?: Component.t,
    previous?: Component.t,
  }
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

@react.component @module("@mui/material/PaginationItem")
external make: (
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~disabled: bool=?,
  ~page: React.element=?,
  ~selected: bool=?,
  ~shape: [#circular | #rounded]=?,
  ~size: Size.t=?,
  ~style: ReactDOM.Style.t=?,
  ~\"type": [#"end-ellipsis" | #first | #last | #next | #page | #previous | #"start-ellipsis"]=?,
  ~variant: Variant.t=?,
) => React.element = "default"
