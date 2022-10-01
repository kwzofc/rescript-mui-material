@react.component
let make = () => {
  let bull = {
    <Box
      component={"span"->Box.Component.string}
      style={ReactDOM.Style.make(
        ~display="inline-block",
        ~marginLeft="2px",
        ~marginRight="2px",
        ~transform="scale(0.8)",
        (),
      )}>
      {`•`->React.string}
    </Box>
  }

  <Card style={ReactDOM.Style.make(~minWidth="275px", ())}>
    <CardContent>
      <Typography
        style={ReactDOM.Style.make(~fontSize="14px", ())} color="text.secondary" gutterBottom=true>
        {"Word of the Day"->React.string}
      </Typography>
      <Typography
        variant={#h5->Typography.Variant.variant} component={"div"->Typography.Component.string}>
        {"be"->React.string}
        {bull}
        {"nev"->React.string}
        {bull}
        {"o"->React.string}
        {bull}
        {"lent"->React.string}
      </Typography>
      <Typography style={ReactDOM.Style.make(~marginBottom="15px", ())} color="text.secondary">
        {"adjective"->React.string}
      </Typography>
      <Typography variant={#body2->Typography.Variant.variant}>
        {"well meaning and kindly."->React.string}
        <br />
        {`"a benevolent smile"`->React.string}
      </Typography>
    </CardContent>
    <CardActions>
      <Button size={#small->Button.Size.variant}> {"Learn More"->React.string} </Button>
    </CardActions>
  </Card>
}
