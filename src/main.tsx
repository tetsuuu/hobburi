import React from "react";
import ReactDOM from "react-dom/client";
import App from "./App";
import "./style.css";

ReactDOM.createRoot(document.getElementById("root") as HTMLElement).render(
  // https://github.com/atlassian/react-beautiful-dnd/issues/2396
  // <React.StrictMode>
    <App />
  // </React.StrictMode>
);
