module Classes = {
  type t = {
    "root": option<string>,
    "body2": option<string>,
    "body1": option<string>,
    "caption": option<string>,
    "button": option<string>,
    "h1": option<string>,
    "h2": option<string>,
    "h3": option<string>,
    "h4": option<string>,
    "h5": option<string>,
    "h6": option<string>,
    "subtitle1": option<string>,
    "subtitle2": option<string>,
    "overline": option<string>,
    "inherit": option<string>,
    "alignLeft": option<string>,
    "alignCenter": option<string>,
    "alignRight": option<string>,
    "alignJustify": option<string>,
    "noWrap": option<string>,
    "gutterBottom": option<string>,
    "paragraph": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~body2: string=?,
    ~body1: string=?,
    ~caption: string=?,
    ~button: string=?,
    ~h1: string=?,
    ~h2: string=?,
    ~h3: string=?,
    ~h4: string=?,
    ~h5: string=?,
    ~h6: string=?,
    ~subtitle1: string=?,
    ~subtitle2: string=?,
    ~overline: string=?,
    ~inherit: string=?,
    ~alignLeft: string=?,
    ~alignCenter: string=?,
    ~alignRight: string=?,
    ~alignJustify: string=?,
    ~noWrap: string=?,
    ~gutterBottom: string=?,
    ~paragraph: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/Typography")
external make: (
  ~align: [#center | #inherit | #justify | #left | #right]=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~gutterBottom: bool=?,
  ~noWrap: bool=?,
  ~paragraph: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [
    | #body1
    | #body2
    | #button
    | #caption
    | #h1
    | #h2
    | #h3
    | #h4
    | #h5
    | #h6
    | #inherit
    | #overline
    | #subtitle1
    | #subtitle2
    | #string(string)
  ]=?,
  ~variantMapping: Js.Types.t<Js.Types.obj_val>=?,
) => React.element = "default"
