module AdapterLocale = {
  type t
  external object: Js.Types.obj_val => t = "%identity"
  external string: string => t = "%identity"
}

module DateFormats = {
  type t = {
    dayOfMonth?: string,
    fullDate?: string,
    fullDateTime?: string,
    fullDateTime12h?: string,
    fullDateTime24h?: string,
    fullDateWithWeekday?: string,
    fullTime?: string,
    fullTime12h?: string,
    fullTime24h?: string,
    hours12h?: string,
    hours24h?: string,
    keyboardDate?: string,
    keyboardDateTime?: string,
    keyboardDateTime12h?: string,
    keyboardDateTime24h?: string,
    minutes?: string,
    month?: string,
    monthAndDate?: string,
    monthAndYear?: string,
    monthShort?: string,
    normalDate?: string,
    normalDateWithWeekday?: string,
    seconds?: string,
    shortDate?: string,
    weekday?: string,
    weekdayShort?: string,
    year?: string,
  }
}

module Locale = {
  type t
  external object: Js.Types.obj_val => t = "%identity"
  external string: string => t = "%identity"
}

@react.component @module("@mui/x-date-pickers/LocalizationProvider")
external make: (
  ~dateAdapter: 'anyDateAdapter=?,
  ~adapterLocale: AdapterLocale.t=?,
  ~dateFormats: DateFormats.t=?,
  ~dateLibInstance: 'anyDateLibInstance=?,
  ~locale: Locale.t=?,
  ~localeText: Js.Types.obj_val=?,
  ~children: React.element=?,
) => React.element = "LocalizationProvider"
