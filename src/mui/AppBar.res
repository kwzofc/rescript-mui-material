module Classes = {
  type t = {
    "root": option<string>,
    "positionFixed": option<string>,
    "positionAbsolute": option<string>,
    "positionSticky": option<string>,
    "positionStatic": option<string>,
    "positionRelative": option<string>,
    "colorDefault": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
    "colorInherit": option<string>,
    "colorTransparent": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~positionFixed: string=?,
    ~positionAbsolute: string=?,
    ~positionSticky: string=?,
    ~positionStatic: string=?,
    ~positionRelative: string=?,
    ~colorDefault: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
    ~colorInherit: string=?,
    ~colorTransparent: string=?,
  ) => t = ""
}

module Color = {
  type variant = [#default | #inherit | #primary | #secondary | #transparent]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/AppBar")
external make: (
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~enableColorOnDark: bool=?,
  ~position: [#absolute | #fixed | #relative | #static | #sticky]=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"
