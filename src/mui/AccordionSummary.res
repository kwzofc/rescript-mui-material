module Classes = {
  type t = {
    "root": option<string>,
    "expanded": option<string>,
    "focusVisible": option<string>,
    "disabled": option<string>,
    "gutters": option<string>,
    "contentGutters": option<string>,
    "content": option<string>,
    "expandIconWrapper": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~expanded: string=?,
    ~focusVisible: string=?,
    ~disabled: string=?,
    ~gutters: string=?,
    ~contentGutters: string=?,
    ~content: string=?,
    ~expandIconWrapper: string=?,
  ) => t = ""
}

@react.component @module("@mui/material/AccordionSummary")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~expandIcon: React.element=?,
  ~focusVisibleClassName: string=?,
  ~style: ReactDOM.Style.t=?,
  ~\"aria-controls": string=?,
  ~id: string=?,
) => React.element = "default"
