-- Credits to original https://github.com/one-dark
-- This is modified version of it

local M = {}

M.base_30 = {
  white = "#d7dae0",
  darker_black = "#1b1f27",
  black = "#23272e", --  nvim bg
  black2 = "#252931",
  one_bg = "#282c34", -- real bg of onedark
  one_bg2 = "#353b45",
  one_bg3 = "#373b43",
  grey = "#42464e",
  grey_fg = "#565c64",
  grey_fg2 = "#6f737b",
  light_grey = "#6f737b",
  red = "#e06c75",
  baby_pink = "#DE8C92",
  pink = "#ff75a0",
  line = "#31353d", -- for lines like vertsplit
  green = "#98c379",
  vibrant_green = "#7eca9c",
  nord_blue = "#81A1C1",
  blue = "#61afef",
  yellow = "#e7c787",
  sun = "#EBCB8B",
  purple = "#de98fd",
  dark_purple = "#c882e7",
  teal = "#519ABA",
  orange = "#fca2aa",
  cyan = "#a3b8ef",
  statusline_bg = "#1e2228",
  lightbg = "#2d3139",
  pmenu_bg = "#61afef",
  folder_bg = "#61afef",
}

M.base_16 = {
  base00 = "#23272e",
  base01 = "#353b45",
  base02 = "#3e4451",
  base03 = "#545862",
  base04 = "#565c64",
  base05 = "#abb2bf",
  base06 = "#b6bdca",
  base07 = "#abb2bf",
  base08 = "#e06c75",
  base09 = "#d18f52",
  base0A = "#e5c07b",
  base0B = "#8cc265",
  base0C = "#42b3c2",
  base0D = "#4aa5f0",
  base0E = "#c162de",
  base0F = "#e05561",
}

M.type = "dark"

M = require("base46").override_theme(M, "onedark")

return M
