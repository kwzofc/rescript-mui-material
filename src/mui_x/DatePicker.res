module InputRef = {
  type object = {current?: Js.Types.obj_val}
  type t
  external func: Js.Types.function_val => t = "%identity"
  external object: object => t = "%identity"
}

module OnMonthChange = {
  type t
  external void: ('tDate => unit) => t = "%identity"
  external promise: ('tDate => Js.Promise.t<'tDate>) => t = "%identity"
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

@react.component @module("@mui/x-date-pickers/Datepicker")
external make: (
  ~onChange: ('tValue, string) => unit=?,
  ~renderInput: 'muiTextFieldPropsType => React.element=?,
  ~acceptRegex: Js.Re.t=?,
  ~className: string=?,
  ~closeOnSelect: bool=?,
  ~components: Js.Types.obj_val=?,
  ~componentsProps: Js.Types.obj_val=?,
  ~dayOfWeekFormatter: string => string=?,
  ~defaultCalendarMonth: 'anyDefaultCalendarMonth=?,
  ~desktopModeMediaQuery: string=?,
  ~\"DialogPros": Js.Types.obj_val=?,
  ~disabled: bool=?,
  ~disableFuture: bool=?,
  ~disableHighlightToday: bool=?,
  ~disableMaskedInput: bool=?,
  ~disableOpenPicker: bool=?,
  ~disablePast: bool=?,
  ~getOpenDialogAriaText: ('tInputDate, 'muiPickersAdapter) => string=?,
  ~getViewSwitchingButtonText: 'calendarPickerView => string=?,
  ~\"InputAdornmentProps": Js.Types.obj_val=?,
  ~inputFormat: string=?,
  ~inputRef: InputRef.t=?,
  ~leftArrowButtonText: string=?,
  ~loading: bool=?,
  ~mask: string=?,
  ~maxDate: 'anyMaxDate=?,
  ~minDate: 'anyMinDate=?,
  ~onAccept: 'tValue => unit=?,
  ~onClose: 'anyOnClose => unit=?,
  ~onError: ('tError, 'tInputValue) => unit=?,
  ~onMonthChange: OnMonthChange.t=?,
  ~onOpen: 'anyOnOpen => unit=?,
  ~onViewChange: 'calendarPickerView => unit=?,
  ~onYearChange: 'tDate => unit=?,
  ~\"open": bool=?,
  ~\"OpenPickerButtonProps": Js.Types.obj_val=?,
  ~openTo: [#day | #month | #year]=?,
  ~orientation: [#landscape | #portrait]=?,
  ~\"PaperProps": Js.Types.obj_val=?,
  ~\"PopperProps": Js.Types.obj_val=?,
  ~readOnly: bool=?,
  ~reduceAnimations: bool=?,
  ~renderDay: ('tDate, array<'anySelectedDays>, 'pickersDayProps) => React.element=?,
  ~renderLoading: unit => React.element=?,
  ~rifmFormatter: string => string=?,
  ~rightArrowButtonText: string=?,
  ~shouldDisableDate: 'tDate => bool=?,
  ~shouldDisableMonth: 'tDate => bool=?,
  ~shouldDisableYear: 'tDate => bool=?,
  ~showDaysOutsideCurrentMonth: bool=?,
  ~showToolbar: bool=?,
  ~\"ToolbarComponent": Component.t=?,
  ~toolbarFormat: string=?,
  ~toolbarPlaceholder: React.element=?,
  ~toolbarTitle: React.element=?,
  ~\"TransitionComponent": Component.t=?,
  ~value: 'anyValue=?,
  ~views: array<[#day | #month | #year]>=?,
  ~label: React.element=?,
) => React.element = "DatePicker"
