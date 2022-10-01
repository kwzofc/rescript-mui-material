module Classes = {
  type t = {
    "root": option<string>,
    "checked": option<string>,
    "disabled": option<string>,
    "indeterminate": option<string>,
    "colorPrimary": option<string>,
    "colorSecondary": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~checked: string=?,
    ~disabled: string=?,
    ~indeterminate: string=?,
    ~colorPrimary: string=?,
    ~colorSecondary: string=?,
  ) => t = ""
}

module Color = {
  type variant = [
    | #default
    | #primary
    | #secondary
    | #error
    | #info
    | #success
    | #warning
  ]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

module InputProps = {
  type t = {
    accept?: string,
    alt?: string,
    autocomplete?: string,
    capture?: string,
    checked?: bool,
    dirname?: string,
    disabled?: bool,
    form?: string,
    formaction?: string,
    formenctype?: string,
    formmethod?: string,
    formnovalidate?: bool,
    formtarget?: string,
    height?: int,
    list?: array<string>,
    max?: int,
    maxlength?: int,
    min?: int,
    minlength?: int,
    multiple?: bool,
    className?: string,
    pattern?: string,
    placeholder?: string,
    readonly?: bool,
    size?: int,
    src?: string,
    step?: int,
    \"type"?: string,
    value?: string,
    width?: int,
  }
}

module Size = {
  type variant = [#medium | #small]
  type t
  external variant: variant => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/material/Checkbox")
external make: (
  ~checked: bool=?,
  ~checkedIcon: React.element=?,
  ~classes: Classes.t=?,
  ~color: Color.t=?,
  ~defaultChecked: bool=?,
  ~disabled: bool=?,
  ~disableRipple: bool=?,
  ~icon: React.element=?,
  ~id: string=?,
  ~indeterminate: bool=?,
  ~indeterminateIcon: React.element=?,
  ~inputProps: InputProps.t=?,
  ~inputRef: ReactDOM.domRef=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~required: bool=?,
  ~size: Size.t=?,
  ~style: ReactDOM.Style.t=?,
  ~value: 'any=?,
) => React.element = "default"
