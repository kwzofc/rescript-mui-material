module ActionsComponentType = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Classes = {
  type t = {
    "root": option<string>,
    "toolbar": option<string>,
    "spacer": option<string>,
    "selectLabel": option<string>,
    "selectRoot": option<string>,
    "select": option<string>,
    "selectIcon": option<string>,
    "input": option<string>,
    "menuItem": option<string>,
    "displayedRows": option<string>,
    "actions": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~toolbar: string=?,
    ~spacer: string=?,
    ~selectLabel: string=?,
    ~selectRoot: string=?,
    ~select: string=?,
    ~selectIcon: string=?,
    ~input: string=?,
    ~menuItem: string=?,
    ~displayedRows: string=?,
    ~actions: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module LabelDisplayedRows = {
  type t = {
    from?: int,
    to?: int,
    count?: int,
    page?: int,
  }
}

module OnRowsPerPageChange = {
  type object = {
    label: string,
    value: int,
  }
  type t
  external arrayNumber: array<int> => t = "%identity"
  external arrayObject: array<object> => t = "%identity"
}

@react.component @module("@mui/material/TablePagination")
external make: (
  ~count: int=?,
  ~onPageChange: ReactEvent.Mouse.t => unit=?,
  ~page: int=?,
  ~rowsPerPage: int=?,
  ~\"ActionsComponent": ActionsComponentType.t=?,
  ~backIconButtonProps: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~getItemAriaLabel: string => string=?,
  ~labelDisplayedRows: LabelDisplayedRows.t => string=?,
  ~labelRowsPerPage: React.element=?,
  ~nextIconButtonProps: React.element=?,
  ~onRowsPerPageChange: ReactEvent.Form.t => unit=?,
  ~rowsPerPageOptions: OnRowsPerPageChange.t=?,
  ~\"SelectProps": React.element=?,
  ~showFirstButton: bool=?,
  ~showLastButton: bool=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
