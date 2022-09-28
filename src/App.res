@react.component
let make = () => {
  <FormGroup>
    <FormControlLabel control={<Switch defaultChecked=true />} label={"Label"->React.string} />
    <FormControlLabel disabled=true control={<Switch />} label={"Disabled"->React.string} />
  </FormGroup>
}
