import React, { useState } from 'react'
import { Component } from 'react'
import type { AppController, AppProps, AppState } from './app_interface'
import './app.css'
import { template } from "./app_template"
import 'bootstrap/dist/css/bootstrap.min.css';

export const App: React.FC<AppProps> = (props) => {
  const [count, setCount] = useState<number>(0);

  const state: AppState = {
    count,
  };

  const controller: AppController = {
    increment: () => setCount(count + 1),
  };

  return template(controller, props, state);
};

export default App
