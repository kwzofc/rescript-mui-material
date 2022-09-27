module DatePicker = {
  @react.component @module("react-datepicker")
  external make: (
    ~title: string=?,
    ~selected: Js.Date.t=?,
    ~maxDate: Js.Date.t=?,
    ~minDate: Js.Date.t=?,
    ~showTimeSelect: bool=?,
    ~shouldCloseOnSelect: bool=?,
    ~autoFocus: bool=?,
    ~onChange: Js.Date.t => _=?,
    ~onFocus: ReactEvent.Form.t => _=?,
    ~onCalendarClose: _ => _=?,
    ~onCalendarOpen: _ => _=?,
    ~monthsShown: int=?,
    ~calendarClassName: string=?,
    ~dateFormat: string=?,
    ~showMonthDropdown: bool=?,
    ~showYearDropdown: bool=?,
    ~disabled: bool=?,
    ~dropdownMode: [#select | #scroll]=?,
    ~placeholderText: string=?,
  ) => React.element = "default"
}
