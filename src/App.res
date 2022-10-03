@react.component
let make = () => {
  let (value, setValue) = React.useState(_ => None)

  let handleChange = (_, newValue: string) => {
    setValue(_ => Some(newValue->Js.Date.fromString))
  }

  <LocalizationProvider dateAdapter={DateFns.format}>
    <DatePicker
      label={"Basic example"->React.string}
      value
      onChange={evt => {
        let newValue = (evt->ReactEvent.Form.currentTarget)["value"]
        handleChange(_, newValue)
      }}
      renderInput={params => <TextField spreadProps=params />}
    />
  </LocalizationProvider>
}
