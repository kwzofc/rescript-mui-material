@react.component @module("@mui/material/RadioGroup")
external make: (
  ~children: React.element=?,
  ~defaultValue: 'any=?,
  ~className: string=?,
  ~onChange: ReactEvent.Form.t => unit=?,
  ~value: 'any=?,
  ~\"aria-labelledby": string=?,
) => React.element = "default"
