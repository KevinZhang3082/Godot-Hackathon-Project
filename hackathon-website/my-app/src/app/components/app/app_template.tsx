import React from "react";
import Navbar from "../navbar/navbar";
import type { AppController, AppProps, AppState } from "./app_interface";
import reactLogo from "../../../assets/react.svg";
import viteLogo from "../../../vite.svg";
import "./app.css";

export function template(
  controller: AppController,
  props: AppProps,
  state: AppState
) {
  return (
    <>
      <Navbar />
      
    </>
  );
}

export default template;
