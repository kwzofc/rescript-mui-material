let emails = ["username@gmail.com", "user02@gmail.com"]

type simpleDialogProps = {
  \"open": bool,
  selectedValue: string,
  onClose: string => unit,
}

module SimpleDialog = {
  @react.component
  let make = (~props: simpleDialogProps) => {
    let {onClose, selectedValue, \"open"} = props

    let handleClose = (_, _) => {
      onClose(selectedValue)
    }

    let handleListItemClick = (value: string) => {
      onClose(value)
    }

    <Dialog onClose={handleClose} \"open"={\"open"}>
      <DialogTitle> {"Set backup account"->React.string} </DialogTitle>
      <List style={ReactDOM.Style.make(~paddingTop="0px", ())}>
        {emails
        ->Js.Array2.map(email => {
          <ListItem button=true onClick={() => handleListItemClick(email)} key={email}>
            <ListItemAvatar>
              <Avatar style={ReactDOM.Style.make(~backgroundColor="#bbdefb", ~color="#1e88e5", ())}>
                <PersonIcon />
              </Avatar>
            </ListItemAvatar>
            <ListItemText primary={email->React.string} />
          </ListItem>
        })
        ->React.array}
        <ListItem autoFocus=true button=true onClick={() => handleListItemClick("addAccount")}>
          <ListItemAvatar>
            <Avatar>
              <AddIcon />
            </Avatar>
          </ListItemAvatar>
          <ListItemText primary={"Add account"->React.string} />
        </ListItem>
      </List>
    </Dialog>
  }
}

@react.component
let make = () => {
  let (\"open", setOpen) = React.useState(_ => false)
  let (selectedValue, setSelectedValue) = React.useState(_ => emails[1])

  let handleClickOpen = () => {
    setOpen(_ => true)
  }

  let handleClose = (value: string) => {
    setOpen(_ => false)
    setSelectedValue(_ => value)
  }

  <div>
    <Typography variant=#subtitle1 component={"div"->Typography.Component.string}>
      {`Selected: ${selectedValue}`->React.string}
    </Typography>
    <br />
    <Button variant=#outlined onClick={handleClickOpen}>
      {"Open simple dialog"->React.string}
    </Button>
    <SimpleDialog props={selectedValue, \"open", onClose: handleClose} />
  </div>
}
