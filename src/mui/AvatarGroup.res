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

module Spacing = {
  type variant = [#medium | #small]
  type t
  external variant: variant => t = "%identity"
  external number: int => t = "%identity"
}

module ComponentsProps = {
  type t = {additionalAvatar?: React.element}
}

module Variant = {
  type variant = [#circular | #rounded | #square]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/AvatarGroup")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~max: int=?,
  ~spacing: Spacing.t=?,
  ~style: ReactDOM.Style.t=?,
  ~total: int=?,
  ~variant: Variant.t=?,
) => React.element = "default"
