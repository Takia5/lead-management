import React from "react";
import ReactDOM from "react-dom/client";
import './index.css'; // Global CSS for custom styling
import 'bootstrap/dist/css/bootstrap.min.css'; // Import Bootstrap for styling
import App from "./App";
import reportWebVitals from './reportWebVitals';

// Create the root element and render the app
const root = ReactDOM.createRoot(document.getElementById("root"));

root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);

// Optional: Performance measuring
reportWebVitals();
