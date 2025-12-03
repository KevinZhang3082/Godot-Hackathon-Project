/*export enum AppTheme {
    DARK = "dark",
    LIGHT = "light"
}
*/
export interface AppProps {}

export interface AppState {
    //theme: AppTheme;
    count?: number;
}

export interface AppController {
    //onThemeChange: (theme: AppTheme) => void;
    increment?: () => void;
}