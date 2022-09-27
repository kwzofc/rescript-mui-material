module Classes = {
  type t = {
    "root": option<string>,
    "active": option<string>,
    "icon": option<string>,
    "iconDirectionDesc": option<string>,
    "iconDirectionAsc": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~active: string=?,
    ~icon: string=?,
    ~iconDirectionDesc: string=?,
    ~iconDirectionAsc: string=?,
  ) => t = ""
}

module IconComponentType = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/TableSortLabel")
external make: (
  ~active: bool=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~direction: [#asc | #desc]=?,
  ~hideSortIcon: bool=?,
  ~\"IconComponent": IconComponentType.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
