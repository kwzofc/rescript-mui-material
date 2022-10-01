module Classes = {
  type t = {"root": option<string>, "media": option<string>, "img": option<string>}
  @obj
  external make: (~root: string=?, ~media: string=?, ~img: string=?) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/material/CardMedia")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~image: string=?,
  ~src: string=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
