export interface NavbarProps {
    title?: string;
}

export interface NavbarState {
    active?: string;
}

export interface NavbarController {
    setActive?: (value: string) => void;
}