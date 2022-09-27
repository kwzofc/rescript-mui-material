%%raw(`import "../../../public/css/Index.scss"`)

type root

@module("react-dom/client")
external createRoot: Dom.element => root = "createRoot"

@send
external render: (root, React.element) => unit = "render"

switch ReactDOM.querySelector("#root") {
| None => Js.log("No root element")
| Some(el) => el->createRoot->render(<App />)
}
