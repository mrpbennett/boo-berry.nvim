---@class BooberryPalette
---@field bg string
---@field fg string
---@field selection string
---@field comment string
---@field red string
---@field orange string
---@field yellow string
---@field green string
---@field purple string
---@field cyan string
---@field pink string
---@field bright_red string
---@field bright_green string
---@field bright_yellow string
---@field bright_blue string
---@field bright_magenta string
---@field bright_cyan string
---@field bright_white string
---@field menu string
---@field visual string
---@field gutter_fg string
---@field nontext string
---@field white string
---@field black string

-- Boo Berry palette ported from Helix editor (by bootra)
-- https://github.com/helix-editor/helix/blob/master/runtime/themes/boo_berry.toml
--
-- Original helix palette:
--   berry           = "#3A2A4D"
--   berry_fade      = "#5A3D6E"
--   berry_dim       = "#47345E"
--   berry_saturated = "#2B1C3D"
--   berry_desaturated = "#886C9C"
--   bubblegum       = "#D678B5"
--   gold            = "#E3C0A8"
--   lilac           = "#C7B8E0"
--   mint            = "#7FC9AB"
--   violet          = "#C78DFC"

local palette = {
  -- Core backgrounds
  bg              = "#3A2A4D",   -- berry
  fg              = "#C7B8E0",   -- lilac (main text)
  selection        = "#5A3D6E",   -- berry_fade
  comment         = "#886C9C",   -- berry_desaturated

  -- Syntax colours mapped from boo_berry
  red             = "#D678B5",   -- bubblegum (keywords, operators, macros)
  orange          = "#E3C0A8",   -- gold (constants, strings, tags)
  yellow          = "#E3C0A8",   -- gold
  green           = "#7FC9AB",   -- mint (functions, diff.plus)
  purple          = "#C78DFC",   -- violet (types, variable.builtin)
  cyan            = "#7FC9AB",   -- mint
  pink            = "#D678B5",   -- bubblegum

  -- Bright variants (slightly lightened)
  bright_red      = "#E08CC3",
  bright_green    = "#96D6BC",
  bright_yellow   = "#EDCFB8",
  bright_blue     = "#D4A3FD",
  bright_magenta  = "#E08CC3",
  bright_cyan     = "#96D6BC",
  bright_white    = "#DDD0EE",

  -- UI colours
  menu            = "#2B1C3D",   -- berry_saturated
  visual          = "#5A3D6E",   -- berry_fade
  gutter_fg       = "#886C9C",   -- berry_desaturated
  nontext         = "#47345E",   -- berry_dim
  white           = "#C7B8E0",   -- lilac
  black           = "#2B1C3D",   -- berry_saturated
}

return palette
