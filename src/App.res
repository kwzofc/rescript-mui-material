@react.component
let make = () => {
  <Box style={ReactDOM.Style.make(~width="300px", ())}>
    <Skeleton />
    <Skeleton animation={#wave->Skeleton.Animation.variant} />
    <Skeleton animation={false->Skeleton.Animation.bool} />
  </Box>
}
