type data = {
  name: string,
  calories: int,
  fat: float,
  carbs: int,
  protein: float,
}

@react.component
let make = () => {
  let createData = (name: string, calories: int, fat: float, carbs: int, protein: float) => {
    {name, calories, fat, carbs, protein}
  }

  let rows = [
    createData("Frozen yoghurt", 159, 6.0, 24, 4.0),
    createData("Ice cream sandwich", 237, 9.0, 37, 4.3),
    createData("Eclair", 262, 16.0, 24, 6.0),
    createData("Cupcake", 305, 3.7, 67, 4.3),
    createData("Gingerbread", 356, 16.0, 49, 3.9),
  ]

  <TableContainer component={Paper.make->TableContainer.Component.any}>
    <Table style={ReactDOM.Style.make(~minWidth="700px", ())} \"aria-label"="customized table">
      <TableHead>
        <TableRow>
          <TableCell style={ReactDOM.Style.make(~background="black", ~color="white", ())}>
            {"Dessert (100g serving)"->React.string}
          </TableCell>
          <TableCell
            style={ReactDOM.Style.make(~background="black", ~color="white", ())} align=#right>
            {"Calories"->React.string}
          </TableCell>
          <TableCell
            style={ReactDOM.Style.make(~background="black", ~color="white", ())} align=#right>
            {"Fat (g)"->React.string}
          </TableCell>
          <TableCell
            style={ReactDOM.Style.make(~background="black", ~color="white", ())} align=#right>
            {"Carbs (g)"->React.string}
          </TableCell>
          <TableCell
            style={ReactDOM.Style.make(~background="black", ~color="white", ())} align=#right>
            {"Protein (g)"->React.string}
          </TableCell>
        </TableRow>
      </TableHead>
      <TableBody>
        {rows
        ->Js.Array2.map(row => {
          <TableRow key=row.name>
            <TableCell component={"th"->TableCell.Component.string} scope="row">
              {row.name->React.string}
            </TableCell>
            <TableCell align=#right> {row.calories->React.int} </TableCell>
            <TableCell align=#right> {row.fat->React.float} </TableCell>
            <TableCell align=#right> {row.carbs->React.int} </TableCell>
            <TableCell align=#right> {row.protein->React.float} </TableCell>
          </TableRow>
        })
        ->React.array}
      </TableBody>
    </Table>
  </TableContainer>
}
