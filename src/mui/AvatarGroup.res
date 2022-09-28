module Classes = {
  type t = {"root": option<string>, "avatar": option<string>}
  @obj
  external make: (~root: string=?, ~avatar: string=?) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module ComponentsProps = {
  type t = {additionalAvatar?: React.element}
}

@react.component @module("@mui/material/AvatarGroup")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~max: int=?,
  ~spacing: [#medium | #small | #number(int)]=?,
  ~style: ReactDOM.Style.t=?,
  ~total: int=?,
  ~variant: [#circular | #rounded | #square | #string(string)]=?,
) => React.element = "default"
