module AnchorOrigin = {
  type t = {
    horizontal: [#left | #right],
    vertical: [#bottom | #top],
  }
}

module Classes = {
  type t = {
    "root": option<string>,
    "badge": option<string>,
    "dot": option<string>,
    "standard": option<string>,
    "anchorOriginTopRight": option<string>,
    "anchorOriginBottomRight": option<string>,
    "anchorOriginTopLeft": option<string>,
    "anchorOriginBottomLeft": option<string>,
    "invisible": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "colorError": option<string>,
    "colorInfo": option<string>,
    "colorSuccess": option<string>,
    "colorWarning": option<string>,
    "anchorOriginTopRightRectangular": option<string>,
    "anchorOriginBottomRightRectangular": option<string>,
    "anchorOriginTopLeftRectangular": option<string>,
    "anchorOriginBottomLeftRectangular": option<string>,
    "anchorOriginTopRightCircular": option<string>,
    "anchorOriginBottomRightCircular": option<string>,
    "anchorOriginTopLeftCircular": option<string>,
    "anchorOriginBottomLeftCircular": option<string>,
    "overlapRectangular": option<string>,
    "overlapCircular": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~badge: string=?,
    ~dot: string=?,
    ~standard: string=?,
    ~anchorOriginTopRight: string=?,
    ~anchorOriginBottomRight: string=?,
    ~anchorOriginTopLeft: string=?,
    ~anchorOriginBottomLeft: string=?,
    ~invisible: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~colorError: string=?,
    ~colorInfo: string=?,
    ~colorSuccess: string=?,
    ~colorWarning: string=?,
    ~anchorOriginTopRightRectangular: string=?,
    ~anchorOriginBottomRightRectangular: string=?,
    ~anchorOriginTopLeftRectangular: string=?,
    ~anchorOriginBottomLeftRectangular: string=?,
    ~anchorOriginTopRightCircular: string=?,
    ~anchorOriginBottomRightCircular: string=?,
    ~anchorOriginTopLeftCircular: string=?,
    ~anchorOriginBottomLeftCircular: string=?,
    ~overlapRectangular: string=?,
    ~overlapCircular: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module Components = {
  type t = {
    \"Badge"?: Component.t,
    \"Root"?: Component.t,
  }
}

module ComponentsProps = {
  type badge = [#func(unit) | #object(Component.t)]
  type root = [#func(unit) | #object(Component.t)]
  type t = {
    badge?: badge,
    root?: root,
  }
}

@react.component @module("@mui/material/Badge")
external make: (
  ~anchorOrigin: AnchorOrigin.t=?,
  ~badgeContent: React.element=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: [
    | #default
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
    | #string(string)
  ]=?,
  ~component: Component.t=?,
  ~components: Components.t=?,
  ~componentsProps: ComponentsProps.t=?,
  ~invisible: bool=?,
  ~max: int=?,
  ~overlap: [#circular | #rectangular]=?,
  ~showZero: bool=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [#dot | #standard | #string(string)]=?,
) => React.element = "default"
