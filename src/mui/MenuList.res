@react.component @module("@mui/material/MenuList")
external make: (
  ~autoFocus: bool=?,
  ~autoFocusItem: bool=?,
  ~children: React.element=?,
  ~disabledItemsFocusable: bool=?,
  ~disableListWrap: bool=?,
  ~variant: [#menu | #selectedMenu]=?,
) => React.element = "default"
