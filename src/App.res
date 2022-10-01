@react.component
let make = () => {
  let (auth, setAuth) = React.useState(_ => true)
  let (anchorEl, setAnchorEl) = React.useState(_ => None)

  let handleChange = (event: ReactEvent.Mouse.t) => {
    let newValue = (event->ReactEvent.Mouse.target)["checked"]
    setAuth(_ => newValue)
  }

  let handleMenu = (event: ReactEvent.Mouse.t) => {
    let newValue = (event->ReactEvent.Mouse.currentTarget)["value"]
    setAnchorEl(_ => Some(newValue))
  }

  let handleClose = () => {
    setAnchorEl(_ => None)
  }

  <Box style={ReactDOM.Style.make(~flexGrow="1", ())}>
    <FormGroup>
      <FormControlLabel
        control={<Switch checked=auth onChange={handleChange} \"aria-label"="login switch" />}
        label={auth ? "Logout"->React.string : "Login"->React.string}
      />
      <AppBar position=#static>
        <Toolbar>
          <IconButton
            size={#large->IconButton.Size.variant}
            edge={#start->IconButton.Edge.variant}
            color={#inherit->IconButton.Color.variant}
            \"aria-label"="menu"
            style={ReactDOM.Style.make(~marginRight="2px", ())}>
            <MenuIcon />
          </IconButton>
          <Typography
            variant={#h6->Typography.Variant.variant}
            component={"div"->Typography.Component.string}
            style={ReactDOM.Style.make(~flexGrow="1", ())}>
            {"Photos"->React.string}
          </Typography>
          {switch auth {
          | false => <> </>
          | true =>
            <div>
              <IconButton
                size={#large->IconButton.Size.variant}
                \"aria-label"="account of current user"
                \"aria-controls"="menu-appbar"
                \"aria-haspopup"="true"
                onClick={handleMenu}
                color={#inherit->IconButton.Color.variant}>
                <AccountCircle />
              </IconButton>
              <Menu
                id="menu-appbar"
                anchorEl={switch anchorEl {
                | Some(d) => d->Menu.AnchorEl.element
                | None => None->Menu.AnchorEl.element
                }}
                anchorOrigin={{vertical: #top->Menu.AnchorOrigin.variant, horizontal: #right}}
                keepMounted=true
                transformOrigin={{
                  vertical: #top->Menu.Vertical.variant,
                  horizontal: #right->Menu.Horizontal.variant,
                }}
                \"open"={switch anchorEl {
                | Some(_) => true
                | None => false
                }}
                onClose={evt => handleClose()}>
                <MenuItem onClick={evt => handleClose()}> {"Profile"->React.string} </MenuItem>
                <MenuItem onClick={evt => handleClose()}> {"My account"->React.string} </MenuItem>
              </Menu>
            </div>
          }}
        </Toolbar>
      </AppBar>
    </FormGroup>
  </Box>
}
