module Classes = {
  type t = {
    "root": option<string>,
    "head": option<string>,
    "body": option<string>,
    "footer": option<string>,
    "sizeSmall": option<string>,
    "sizeMedium": option<string>,
    "paddingCheckbox": option<string>,
    "paddingNone": option<string>,
    "alignLeft": option<string>,
    "alignCenter": option<string>,
    "alignRight": option<string>,
    "alignJustify": option<string>,
    "stickyHeader": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~head: string=?,
    ~body: string=?,
    ~footer: string=?,
    ~sizeSmall: string=?,
    ~sizeMedium: string=?,
    ~paddingCheckbox: string=?,
    ~paddingNone: string=?,
    ~alignLeft: string=?,
    ~alignCenter: string=?,
    ~alignRight: string=?,
    ~alignJustify: string=?,
    ~stickyHeader: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/TableCell")
external make: (
  ~align: [#center | #inherit | #justify | #left | #right]=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~padding: [#checkbox | #none | #normal]=?,
  ~scope: string=?,
  ~size: [#medium | #small | #string(string)]=?,
  ~sortDirection: [#asc | #desc | #"false"(bool)]=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [#body | #footer | #head | #string(string)]=?,
) => React.element = "default"
