import React, { useState } from 'react'
import { Component } from 'react'
import type { NavbarController, NavbarProps, NavbarState } from './navbar_interface'
import './navbar.css'
import { template } from "./navbar_template"

export const Navbar: React.FC<NavbarProps> = (props) => {
    const [active, setActive] = useState<string>("home");

    const state: NavbarState = {
        active,
    }

    const controller: NavbarController = {
        setActive,
    }

    return template(controller, props, state);
}

export default Navbar