import React from "react";
import Navbar from "react-bootstrap/Navbar";
import Nav from "react-bootstrap/Nav";
import type { NavbarController, NavbarProps, NavbarState } from "./navbar_interface";
import "./navbar.css";

export function template(
  controller: NavbarController,
  props: NavbarProps,
  state: NavbarState
) {
  return (
    <Navbar bg="light" expand="lg">
      <Navbar.Brand href="#">MyApp</Navbar.Brand>
      <Nav className="me-auto">
        <Nav.Link
          active={state.active === "home"}
          onClick={() => controller.setActive?.("home")}
        >
          Home
        </Nav.Link>
        <Nav.Link
          active={state.active === "about"}
          onClick={() => controller.setActive?.("about")}
        >
          About
        </Nav.Link>
        <Nav.Link
          active={state.active === "creators"}
          onClick={() => controller.setActive?.("creators")}
        >
          Creators
        </Nav.Link>
      </Nav>
    </Navbar>
  );
}

export default template;
