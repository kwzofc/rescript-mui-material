module Classes = {
  type t = {
    "root": option<string>,
    "colorDefault": option<string>,
    "circular": option<string>,
    "rounded": option<string>,
    "square": option<string>,
    "img": option<string>,
    "fallback": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~colorDefault: string=?,
    ~circular: string=?,
    ~rounded: string=?,
    ~square: string=?,
    ~img: string=?,
    ~fallback: string=?,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

module ImgProps = {
  type t = {
    alt?: string,
    crossorigin?: React.element,
    height?: int,
    ismap?: bool,
    loading?: bool,
    longdesc?: string,
    referrerpolicy?: string,
    sizes?: string,
    src?: string,
    srcset?: string,
    usemap?: string,
    width?: int,
  }
}

@react.component @module("@mui/material/Avatar")
external make: (
  ~alt: string=?,
  ~children: React.element=?,
  ~classes: Classes.t=?,
  ~component: Component.t=?,
  ~imgProps: ImgProps.t=?,
  ~sizes: string=?,
  ~src: string=?,
  ~srcSet: string=?,
  ~style: ReactDOM.Style.t=?,
  ~variant: [#circular | #rounded | #square | #string(string)]=?,
) => React.element = "default"
