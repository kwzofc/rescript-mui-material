module Classes = {
  type t = {
    "root": option<string>,
    "avatar": option<string>,
    "action": option<string>,
    "content": option<string>,
    "title": option<string>,
    "subheader": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~avatar: string=?,
    ~action: string=?,
    ~content: string=?,
    ~title: string=?,
    ~subheader: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/CardHeader")
external make: (
  ~action: React.element=?,
  ~avatar: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~disableTypography: bool=?,
  ~subheader: React.element=?,
  ~subheaderTypographyProps: Js.Types.obj_val=?,
  ~style: ReactDOM.Style.t=?,
  ~title: React.element=?,
  ~titleTypographyProps: Js.Types.obj_val=?,
) => React.element = "default"
