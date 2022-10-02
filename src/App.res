@react.component
let make = () => {
  let handleClick = (event: ReactEvent.Mouse.t) => {
    event->ReactEvent.Mouse.preventDefault
  }
  <div role="presentation" onClick={handleClick}>
    <Breadcrumbs \"aria-label"="breadcrumb">
      <Link
        underline=#hover
        style={ReactDOM.Style.make(~display="flex", ~alignItems="center", ())}
        color="inherit"
        href="/">
        <HomeIcon
          style={ReactDOM.Style.make(~marginRight="0.5px", ())}
          fontSize={#inherit->HomeIcon.FontSize.variant}
        />
        {"MUI"->React.string}
      </Link>
      <Link
        underline=#hover
        style={ReactDOM.Style.make(~display="flex", ~alignItems="center", ())}
        color="inherit"
        href="/material-ui/getting-started/installation/">
        <WhatshotIcon
          style={ReactDOM.Style.make(~marginRight="0.5px", ())}
          fontSize={#inherit->WhatshotIcon.FontSize.variant}
        />
        {"Core"->React.string}
      </Link>
      <Typography
        style={ReactDOM.Style.make(~display="flex", ~alignItems="center", ())} color="text.primary">
        <GrainIcon
          style={ReactDOM.Style.make(~marginRight="0.5px", ())}
          fontSize={#inherit->GrainIcon.FontSize.variant}
        />
        {"Breadcrumb"->React.string}
      </Typography>
    </Breadcrumbs>
  </div>
}
