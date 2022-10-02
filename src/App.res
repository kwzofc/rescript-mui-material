@react.component
let make = () => {
  <Stack spacing={2->Stack.Spacing.number}>
    <Pagination count=10 color={#primary->Pagination.Color.variant} />
  </Stack>
}
