module Classes = {
  type t = {
    "root": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "colorAction": option<string>,
    "colorError": option<string>,
    "colorDisabled": option<string>,
    "fontSizeInherit": option<string>,
    "fontSizesmall": option<string>,
    "fontSizeLarge": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~colorPrimary: string=?,
    ~colorAction: string=?,
    ~colorError: string=?,
    ~colorDisabled: string=?,
    ~fontSizeInherit: string=?,
    ~fontSizeSmall: string=?,
    ~fontSizeLarge: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/icons-material/VolumeUp")
external make: (
  ~baseClassName: string=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: [
    | #inherit
    | #action
    | #disabled
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
    | #string(string)
  ]=?,
  ~component: Component.t=?,
  ~fontSize: [#inherit | #large | #medium | #small | #string(string)]=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
