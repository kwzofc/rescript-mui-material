module Expanded = {
  type t
  external string: string => t = "%identity"
  external bool: bool => t = "%identity"
}

@react.component
let make = () => {
  let (expanded, setExpanded) = React.useState(_ => false->Expanded.bool)

  let handleChange = (panel: string, _event: ReactEvent.Synthetic.t, isExpanded: bool) => {
    setExpanded(_ => isExpanded ? panel->Expanded.string : false->Expanded.bool)
  }

  <div>
    <Accordion
      expanded={expanded === ("panel1"->Expanded.string)} onChange={handleChange("panel1")}>
      <AccordionSummary
        expandIcon={<ExpandMoreIcon />} \"aria-controls"="panel1bh-content" id="panel1bh-header">
        <Typography style={ReactDOM.Style.make(~width="33%", ~flexShrink="0px", ())}>
          {"General settings"->React.string}
        </Typography>
        <Typography style={ReactDOM.Style.make(~color="gray", ())}>
          {"I am an accordion"->React.string}
        </Typography>
      </AccordionSummary>
      <AccordionDetails>
        <Typography>
          {"Nulla facilisi. Phasellus sollicitudin nulla et quam mattis feugiat. 
            Aliquam eget maximus est, id dignissim quam."->React.string}
        </Typography>
      </AccordionDetails>
    </Accordion>
    <Accordion expanded={expanded === "panel2"->Expanded.string} onChange={handleChange("panel2")}>
      <AccordionSummary
        expandIcon={<ExpandMoreIcon />} \"aria-controls"="panel2bh-content" id="panel2bh-header">
        <Typography style={ReactDOM.Style.make(~width="33%", ~flexShrink="0px", ())}>
          {"Users"->React.string}
        </Typography>
        <Typography style={ReactDOM.Style.make(~color="gray", ())}>
          {"You are currently not an owner"->React.string}
        </Typography>
      </AccordionSummary>
      <AccordionDetails>
        <Typography>
          {"Donec placerat, lectus sed mattis semper, neque lectus feugiat lectus,
            varius pulvinar diam eros in elit. Pellentesque convallis laoreet 
            laoreet."->React.string}
        </Typography>
      </AccordionDetails>
    </Accordion>
    <Accordion expanded={expanded === "panel3"->Expanded.string} onChange={handleChange("panel3")}>
      <AccordionSummary
        expandIcon={<ExpandMoreIcon />} \"aria-controls"="panel3bh-content" id="panel3bh-header">
        <Typography style={ReactDOM.Style.make(~width="33%", ~flexShrink="0px", ())}>
          {"Advanced settings"->React.string}
        </Typography>
        <Typography style={ReactDOM.Style.make(~color="gray", ())}>
          {"Filtering has been entirely disabled for whole web server"->React.string}
        </Typography>
      </AccordionSummary>
      <AccordionDetails>
        <Typography>
          {"Nunc vitae orci ultricies, auctor nunc in, volutpat nisl. Integer sit 
            amet egestas eros, vitae egestas augue. Duis vel est augue."->React.string}
        </Typography>
      </AccordionDetails>
    </Accordion>
    <Accordion expanded={expanded === "panel4"->Expanded.string} onChange={handleChange("panel4")}>
      <AccordionSummary
        expandIcon={<ExpandMoreIcon />} \"aria-controls"="panel4bh-content" id="panel4bh-header">
        <Typography style={ReactDOM.Style.make(~width="33%", ~flexShrink="0px", ())}>
          {"Personal data"->React.string}
        </Typography>
      </AccordionSummary>
      <AccordionDetails>
        <Typography>
          {"Nunc vitae orci ultricies, auctor nunc in, volutpat nisl. Integer sit 
            amet egestas eros, vitae egestas augue. Duis vel est augue."->React.string}
        </Typography>
      </AccordionDetails>
    </Accordion>
  </div>
}
