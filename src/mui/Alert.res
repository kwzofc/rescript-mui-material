module Classes = {
  type t = {
    "root": option<string>,
    "filled": option<string>,
    "outlined": option<string>,
    "standard": option<string>,
    "standardSuccess": option<string>,
    "standardInfo": option<string>,
    "standardWarning": option<string>,
    "standardError": option<string>,
    "outlinedSuccess": option<string>,
    "outlinedInfo": option<string>,
    "outlinedWarning": option<string>,
    "outlinedError": option<string>,
    "filledSuccess": option<string>,
    "filledInfo": option<string>,
    "filledWarning": option<string>,
    "filledError": option<string>,
    "icon": option<string>,
    "message": option<string>,
    "action": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~filled: string=?,
    ~outlined: string=?,
    ~standard: string=?,
    ~standardSuccess: string=?,
    ~standardInfo: string=?,
    ~standardWarning: string=?,
    ~standardError: string=?,
    ~outlinedSuccess: string=?,
    ~outlinedInfo: string=?,
    ~outlinedWarning: string=?,
    ~outlinedError: string=?,
    ~filledSuccess: string=?,
    ~filledInfo: string=?,
    ~filledWarning: string=?,
    ~filledError: string=?,
    ~icon: string=?,
    ~message: string=?,
    ~action: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#error | #info | #success | #warning]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module IconMapping = {
  type t = {
    error?: React.element,
    info?: React.element,
    success?: React.element,
    warning?: React.element,
  }
}

module Variant = {
  type variant = [#filled | #outlined | #standard]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Alert")
external make: (
  ~action: React.element=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~closeText: string=?,
  ~color: Color.t=?,
  ~icon: React.element=?,
  ~iconMapping: IconMapping.t=?,
  ~onClose: ReactEvent.Synthetic.t => unit=?,
  ~role: string=?,
  ~severity: [#error | #info | #success | #warning]=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: Variant.t=?,
  ~onClose: ReactEvent.Synthetic.t => unit=?,
) => React.element = "default"
