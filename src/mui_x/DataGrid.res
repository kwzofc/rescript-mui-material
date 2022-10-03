module Classes = {
  type t = {
    "actionsCell": option<string>,
    "aggregationColumnHeader": option<string>,
    "aggregationColumnHeader--alignLeft": option<string>,
    "aggregationColumnHeader--alignCenter": option<string>,
    "aggregationColumnHeader--alignRight": option<string>,
    "aggregationColumnHeaderLabel": option<string>,
    "autoHeight": option<string>,
    "booleanCell": option<string>,
    "cell--editable": option<string>,
    "cell--editing": option<string>,
    "cell--textCenter": option<string>,
    "cell--textLeft": option<string>,
    "cell--textRight": option<string>,
    "cell--withRenderer": option<string>,
    "cell": option<string>,
    "cellContent": option<string>,
    "cellCheckbox": option<string>,
    "cellSkeleton": option<string>,
    "checkboxInput": option<string>,
    "columnHeader--alignCenter": option<string>,
    "columnHeader--alignLeft": option<string>,
    "columnHeader--alignRight": option<string>,
    "columnHeader--dragging": option<string>,
    "columnHeader--moving": option<string>,
    "columnHeader--numeric": option<string>,
    "columnHeader--sortable": option<string>,
    "columnHeader--sorted": option<string>,
    "columnHeader--filtered": option<string>,
    "columnHeader": option<string>,
    "columnGroupHeader": option<string>,
    "columnHeaderCheckbox": option<string>,
    "columnHeaderDraggableContainer": option<string>,
    "rowReorderCellPlaceholder": option<string>,
    "columnHeaderDropZone": option<string>,
    "columnHeaderTitle": option<string>,
    "columnHeaderTitleContainer": option<string>,
    "columnHeaderTitleContainerContent": option<string>,
    "columnHeader--filledGroup": option<string>,
    "columnHeader--emptyGroup": option<string>,
    "columnHeader--showColumnBorder": option<string>,
    "columnHeaders": option<string>,
    "columnHeadersInner": option<string>,
    "columnHeadersInner--scrollable": option<string>,
    "columnSeparator--resizable": option<string>,
    "columnSeparator--resizing": option<string>,
    "columnSeparator--sideLeft": option<string>,
    "columnSeparator--sideRight": option<string>,
    "columnSeparator": option<string>,
    "columnsPanel": option<string>,
    "columnsPanelRow": option<string>,
    "detailPanel": option<string>,
    "detailPanels": option<string>,
    "detailPanelToggleCell": option<string>,
    "detailPanelToggleCell--expanded": option<string>,
    "footerCell": option<string>,
    "panel": option<string>,
    "panelHeader": option<string>,
    "panelWrapper": option<string>,
    "panelContent": option<string>,
    "panelFooter": option<string>,
    "paper": option<string>,
    "editBooleanCell": option<string>,
    "filterForm": option<string>,
    "filterFormDeleteIcon": option<string>,
    "filterFormLinkOperatorInput": option<string>,
    "filterFormColumnInput": option<string>,
    "filterFormOperatorInput": option<string>,
    "filterFormValueInput": option<string>,
    "editInputCell": option<string>,
    "filterIcon": option<string>,
    "footerContainer": option<string>,
    "iconButtonContainer": option<string>,
    "iconSeparator": option<string>,
    "main": option<string>,
    "menu": option<string>,
    "menuIcon": option<string>,
    "menuIconButton": option<string>,
    "menuOpen": option<string>,
    "menuList": option<string>,
    "overlay": option<string>,
    "virtualScroller": option<string>,
    "virtualScrollerContent": option<string>,
    "virtualScrollerContent--overflowed": option<string>,
    "virtualScrollerRenderZone": option<string>,
    "pinnedColumns": option<string>,
    "pinnedColumns--left": option<string>,
    "pinnedColumns--right": option<string>,
    "pinnedColumnHeaders": option<string>,
    "pinnedColumnHeaders--left": option<string>,
    "pinnedColumnHeaders--right": option<string>,
    "root": option<string>,
    "root--densityStandard": option<string>,
    "root--densityComfortable": option<string>,
    "root--densityCompact": option<string>,
    "row--editable": option<string>,
    "row--editing": option<string>,
    "row--dragging": option<string>,
    "row--lastVisible": option<string>,
    "row--dynamicHeight": option<string>,
    "row--detailPanelExpanded": option<string>,
    "row": option<string>,
    "rowCount": option<string>,
    "rowReorderCellContainer": option<string>,
    "rowReorderCell": option<string>,
    "rowReorderCell--draggable": option<string>,
    "scrollArea": option<string>,
    "scrollArea--left": option<string>,
    "scrollArea--right": option<string>,
    "selectedRowCount": option<string>,
    "sortIcon": option<string>,
    "toolbarContainer": option<string>,
    "toolbarFilterList": option<string>,
    "withBorder": option<string>,
    "treeDataGroupingCell": option<string>,
    "treeDataGroupingCellToggle": option<string>,
    "groupingCriteriaCell": option<string>,
    "groupingCriteriaCellToggle": option<string>,
    "pinnedRows": option<string>,
    "pinnedRows--top": option<string>,
    "pinnedRows--bottom": option<string>,
    "pinnedRowsRenderZone": option<string>,
  }
  @obj
  external make: (
    ~actionsCell: string=?,
    ~aggregationColumnHeader: string=?,
    ~\"aggregationColumnHeader--alignLeft": string=?,
    ~\"aggregationColumnHeader--alignCenter": string=?,
    ~\"aggregationColumnHeader--alignRight": string=?,
    ~aggregationColumnHeaderLabel: string=?,
    ~autoHeight: string=?,
    ~booleanCell: string=?,
    ~\"cell--editable": string=?,
    ~\"cell--editing": string=?,
    ~\"cell--textCenter": string=?,
    ~\"cell--textLeft": string=?,
    ~\"cell--textRight": string=?,
    ~\"cell--withRenderer": string=?,
    ~cell: string=?,
    ~cellContent: string=?,
    ~cellCheckbox: string=?,
    ~cellSkeleton: string=?,
    ~checkboxInput: string=?,
    ~\"columnHeader--alignCenter": string=?,
    ~\"columnHeader--alignLeft": string=?,
    ~\"columnHeader--alignRight": string=?,
    ~\"columnHeader--dragging": string=?,
    ~\"columnHeader--moving": string=?,
    ~\"columnHeader--numeric": string=?,
    ~\"columnHeader--sortable": string=?,
    ~\"columnHeader--sorted": string=?,
    ~\"columnHeader--filtered": string=?,
    ~columnHeader: string=?,
    ~columnGroupHeader: string=?,
    ~columnHeaderCheckbox: string=?,
    ~columnHeaderDraggableContainer: string=?,
    ~rowReorderCellPlaceholder: string=?,
    ~columnHeaderDropZone: string=?,
    ~columnHeaderTitle: string=?,
    ~columnHeaderTitleContainer: string=?,
    ~columnHeaderTitleContainerContent: string=?,
    ~\"columnHeader--filledGroup": string=?,
    ~\"columnHeader--emptyGroup": string=?,
    ~\"columnHeader--showColumnBorder": string=?,
    ~columnHeaders: string=?,
    ~columnHeadersInner: string=?,
    ~\"columnHeadersInner--scrollable": string=?,
    ~\"columnSeparator--resizable": string=?,
    ~\"columnSeparator--resizing": string=?,
    ~\"columnSeparator--sideLeft": string=?,
    ~\"columnSeparator--sideRight": string=?,
    ~columnSeparator: string=?,
    ~columnsPanel: string=?,
    ~columnsPanelRow: string=?,
    ~detailPanel: string=?,
    ~detailPanels: string=?,
    ~detailPanelToggleCell: string=?,
    ~\"detailPanelToggleCell--expanded": string=?,
    ~footerCell: string=?,
    ~panel: string=?,
    ~panelHeader: string=?,
    ~panelWrapper: string=?,
    ~panelContent: string=?,
    ~panelFooter: string=?,
    ~paper: string=?,
    ~editBooleanCell: string=?,
    ~filterForm: string=?,
    ~filterFormDeleteIcon: string=?,
    ~filterFormLinkOperatorInput: string=?,
    ~filterFormColumnInput: string=?,
    ~filterFormOperatorInput: string=?,
    ~filterFormValueInput: string=?,
    ~editInputCell: string=?,
    ~filterIcon: string=?,
    ~footerContainer: string=?,
    ~iconButtonContainer: string=?,
    ~iconSeparator: string=?,
    ~main: string=?,
    ~menu: string=?,
    ~menuIcon: string=?,
    ~menuIconButton: string=?,
    ~menuOpen: string=?,
    ~menuList: string=?,
    ~overlay: string=?,
    ~virtualScroller: string=?,
    ~virtualScrollerContent: string=?,
    ~\"virtualScrollerContent--overflowed": string=?,
    ~virtualScrollerRenderZone: string=?,
    ~pinnedColumns: string=?,
    ~\"pinnedColumns--left": string=?,
    ~\"pinnedColumns--right": string=?,
    ~pinnedColumnHeaders: string=?,
    ~\"pinnedColumnHeaders--left": string=?,
    ~\"pinnedColumnHeaders--right": string=?,
    ~root: string=?,
    ~\"root--densityStandard": string=?,
    ~\"root--densityComfortable": string=?,
    ~\"root--densityCompact": string=?,
    ~\"row--editable": string=?,
    ~\"row--editing": string=?,
    ~\"row--dragging": string=?,
    ~\"row--lastVisible": string=?,
    ~\"row--dynamicHeight": string=?,
    ~\"row--detailPanelExpanded": string=?,
    ~row: string=?,
    ~rowCount: string=?,
    ~rowReorderCellContainer: string=?,
    ~rowReorderCell: string=?,
    ~\"rowReorderCell--draggable": string=?,
    ~scrollArea: string=?,
    ~\"scrollArea--left": string=?,
    ~\"scrollArea--right": string=?,
    ~selectedRowCount: string=?,
    ~sortIcon: string=?,
    ~toolbarContainer: string=?,
    ~toolbarFilterList: string=?,
    ~withBorder: string=?,
    ~treeDataGroupingCell: string=?,
    ~treeDataGroupingCellToggle: string=?,
    ~groupingCriteriaCell: string=?,
    ~groupingCriteriaCellToggle: string=?,
    ~pinnedRows: string=?,
    ~\"pinnedRows--top": string=?,
    ~\"pinnedRows--bottom": string=?,
    ~pinnedRowsRenderZone: string=?,
  ) => t = ""
}

module ExperimentalFeatures = {
  type t = {
    columnGrouping?: bool,
    newEditingApi?: bool,
    preventCommitWhileValidating?: bool,
    warnIfFocusStateIsNotSynced?: bool,
  }
}

module Id = {
  type t
  external number: int => t = "%identity"
  external string: string => t = "%identity"
}

module Value = {
  type t
  external any: 'anyValue => t = "%identity"
}

module Items = {
  type t = {
    columnField: string,
    id?: Id.t,
    operatorValue?: string,
    value?: Value.t,
  }
}

module QuickFilterValues = {
  type t
  external any: 'anyQuickFilterValues => t = "%identity"
}

module FilterModel = {
  type t = {
    items: array<Items.t>,
    linkOperator?: [#"and" | #or],
    quickFilterLogicOperator?: [#"and" | #or],
    quickFilterValues?: array<QuickFilterValues.t>,
  }
}

module GetEstimatedRowHeight = {
  type t
  external number: ('gridRowHeightParams => int) => t = "%identity"
  external null: ('gridRowHeightParams => Js.Types.null_val) => t = "%identity"
}

module Logger = {
  type t = {
    debug: Js.Types.function_val,
    error: Js.Types.function_val,
    info: Js.Types.function_val,
    warn: Js.Types.function_val,
  }
}

module LogLevel = {
  type variant = [#debug | #error | #info | #warn]
  type t
  external variant: variant => t = "%identity"
  external bool: bool => t = "%identity"
}

module ProcessRowUpdate = {
  type t
  external promise: (('r, 'r) => Js.Promise.t<'r>) => t = "%identity"
  external value: (('r, 'r) => 'r) => t = "%identity"
}

module SelectionModel = {
  type t
  external number: int => t = "%identity"
  external string: int => t = "%identity"
  external array: array<'any> => t = "%identity"
}

module SortModel = {
  type t = {
    field: string,
    sort?: [#asc | #desc],
  }
}

module Sx = {
  type prop = {
    border?: int,
    borderTop?: int,
    borderRight?: int,
    borderBottom?: int,
    borderLeft?: int,
    borderColor?: string,
    borderTopColor?: string,
    borderRightColor?: string,
    borderBottomColor?: string,
    borderLeftColor?: string,
    borderRadius?: int,
    displayPrint?: string,
    displayRaw?: string,
    overflow?: string,
    textOverFlow?: string,
    visibility?: string,
    whiteSpace?: string,
    gap?: int,
    columnGap?: int,
    rowGap?: int,
    gridColumn?: string,
    gridRow?: string,
    gridAutoFlow?: string,
    gridAutoColumns?: string,
    gridAutoRows?: string,
    gridTemplateColumns?: string,
    gridTemplateRows?: string,
    gridTemplateAreas?: string,
    gridArea?: string,
    color?: string,
    bgcolor?: string,
    position?: string,
    zIndex?: string,
    top?: int,
    right?: int,
    bottom?: int,
    left?: int,
    boxShadow?: int,
    width?: [#string(string) | #number(int)],
    maxWidth?: [#string(string) | #number(int)],
    minWidth?: [#string(string) | #number(int)],
    height?: [#string(string) | #number(int)],
    maxHeight?: [#string(string) | #number(int)],
    minHeight?: [#string(string) | #number(int)],
    boxSizing?: string,
    m?: int,
    mt?: int,
    mr?: int,
    mb?: int,
    ml?: int,
    mx?: int,
    my?: int,
    p?: int,
    pt?: int,
    pr?: int,
    pb?: int,
    pl?: int,
    px?: int,
    py?: int,
    typography?: string,
    fontFamily?: string,
    fontSize?: [#string(string) | #number(int)],
    fontStyle?: string,
    fontWeight?: [#string(string) | #number(int)],
    letterSpacing?: int,
    lineHeight?: [#string(string) | #number(int)],
    textAlign?: string,
    textTransform?: string,
  }
  type t
  external arrayFunc: array<unit> => t = "%identity"
  external arrayObject: array<prop> => t = "%identity"
  external arrayBool: array<bool> => t = "%identity"
  external func: unit => t = "%identity"
  external object: prop => t = "%identity"
}

@react.component @module("@mui/x-data-grid")
external make: (
  ~columns: array<'columns>=?,
  ~rows: array<'rows>=?,
  ~\"aria-label": string=?,
  ~\"aria-labelledby": string=?,
  ~autoHeight: bool=?,
  ~autoPageSize: bool=?,
  ~cellModesModel: Js.Types.obj_val=?,
  ~checkboxSelection: bool=?,
  ~classes: Classes.t=?,
  ~columnBuffer: int=?,
  ~columnThreshold: int=?,
  ~columnTypes: Js.Types.obj_val=?,
  ~columnVisibilityModel: Js.Types.obj_val=?,
  ~components: Js.Types.obj_val=?,
  ~componentsProps: Js.Types.obj_val=?,
  ~density: [#comfortable | #compact | #standard]=?,
  ~disableColumnFilter: bool=?,
  ~disableColumnMenu: bool=?,
  ~disableColumnSelector: bool=?,
  ~disableDensitySelector: bool=?,
  ~disableExtendRowFullWidth: bool=?,
  ~disableIgnoreModificationsIfProcessingProps: bool=?,
  ~disableSelectionOnClick: bool=?,
  ~disableVirtualization: bool=?,
  ~editMode: [#cell | #row]=?,
  ~editRowsModel: Js.Types.obj_val=?,
  ~error: 'anyError=?,
  ~experimentalFeatures: ExperimentalFeatures.t=?,
  ~filterMode: [#client | #server]=?,
  ~filterModel: FilterModel.t=?,
  ~getCellClassName: 'gridCellParams => string=?,
  ~getDetailPanelContent: 'gridRowParams => React.element=?,
  ~getEstimatedRowHeight: GetEstimatedRowHeight.t=?,
  ~getRowClassName: 'gridRowClassNameParams => string=?,
  ~getRowHeight: 'gridRowHeightParams => 'gridRowHeightReturnValue=?,
  ~getRowId: 'anyGetRowId => string=?,
  ~getRowSpacing: 'gridRowSpacingParams => 'gridRowSpacing=?,
  ~headerHeight: int=?,
  ~hideFooter: bool=?,
  ~hideFooterPagination: bool=?,
  ~hideFooterSelectedRowCount: bool=?,
  ~initialState: Js.Types.obj_val=?,
  ~isCellEditable: 'gridCellParams => bool=?,
  ~isRowSelectable: 'gridRowParams => bool=?,
  ~keepNonExistentRowsSelected: bool=?,
  ~loading: bool=?,
  ~localeText: Js.Types.obj_val=?,
  ~logger: Logger.t=?,
  ~logLevel: LogLevel.t=?,
  ~nonce: string=?,
  ~onCellClick: ('gridCellParams, ReactEvent.Mouse.t, 'gridCallbackDetails) => unit=?,
  ~onCellDoubleClick: ('gridCellParams, ReactEvent.Mouse.t, 'gridCallbackDetails) => unit=?,
  ~onCellEditCommit: (
    'gridCellEditCommitParams,
    ReactEvent.Synthetic.t,
    'gridCallbackDetails,
  ) => unit=?,
  ~onCellEditStart: ('gridCellParams, 'anyOnCellEditStartEvent) => unit=?,
  ~onCellEditStop: ('gridCellParams, ReactEvent.Synthetic.t) => unit=?,
  ~onCellFocusOut: ('gridCellParams, ReactEvent.Synthetic.t, 'gridCallbackDetails) => unit=?,
  ~onCellKeyDown: ('gridCellParams, ReactEvent.Keyboard.t, 'gridCallbackDetails) => unit=?,
  ~onCellModesModelChange: ('gridCellModesModel, 'gridCallbackDetails) => unit=?,
  ~onColumnHeaderClick: (
    'gridColumnHeaderParams,
    ReactEvent.Mouse.t,
    'gridCallbackDetails,
  ) => unit=?,
  ~onColumnHeaderDoubleClick: (
    'gridColumnHeaderParams,
    ReactEvent.Mouse.t,
    'gridCallbackDetails,
  ) => unit=?,
  ~onColumnHeaderEnter: (
    'gridColumnHeaderParams,
    ReactEvent.Mouse.t,
    'gridCallbackDetails,
  ) => unit=?,
  ~onColumnHeaderLeave: (
    'gridColumnHeaderParams,
    ReactEvent.Mouse.t,
    'gridCallbackDetails,
  ) => unit=?,
  ~onColumnHeaderOut: ('gridColumnHeaderParams, ReactEvent.Mouse.t, 'gridCallbackDetails) => unit=?,
  ~onColumnHeaderOver: (
    'gridColumnHeaderParams,
    ReactEvent.Mouse.t,
    'gridCallbackDetails,
  ) => unit=?,
  ~onColumnOrderChange: ('gridColumnOrderChangeParams, 'muiEvent, 'gridCallbackDetails) => unit=?,
  ~onColumnVisibilityChange: (
    'gridColumnVisibilityChangeParams,
    'muiEvent,
    'gridCallbackDetails,
  ) => unit=?,
  ~onColumnVisibilityModelChange: ('gridColumnVisibilityModel, 'gridCallbackDetails) => unit=?,
  ~onEditCellPropsChange: (
    'gridEditCellPropsParams,
    ReactEvent.Synthetic.t,
    'gridCallbackDetails,
  ) => unit=?,
  ~onEditRowsModelChange: ('gridEditRowsModel, 'gridCallbackDetails) => unit=?,
  ~onError: ('anyOnError, 'muiEvent, 'gridCallbackDetails) => unit=?,
  ~onFilterModelChange: ('gridFilterModel, 'gridCallbackDetails) => unit=?,
  ~onMenuClose: ('gridMenuParams, 'muiEvent, 'gridCallbackDetails) => unit=?,
  ~onMenuOpen: ('gridMenuParams, 'muiEvent, 'gridCallbackDetails) => unit=?,
  ~onPageChange: (int, 'gridCallbackDetails) => unit=?,
  ~onPageSizeChange: (int, 'gridCallbackDetails) => unit=?,
  ~onPreferencePanelClose: ('gridPreferencePanelParams, 'muiEvent, 'gridCallbackDetails) => unit=?,
  ~onPreferencePanelOpen: ('gridPreferencePanelParams, 'muiEvent, 'gridCallbackDetails) => unit=?,
  ~onProcessRowUpdateError: 'anyOnProcessRowUpdateError => unit=?,
  ~onResize: ('elementSize, 'muiEvent, 'gridCallbackDetails) => unit=?,
  ~onRowClick: ('gridRowParams, ReactEvent.Mouse.t, 'gridCallbackDetails) => unit=?,
  ~onRowDoubleClick: ('gridRowParams, ReactEvent.Mouse.t, 'gridCallbackDetails) => unit=?,
  ~onRowEditCommit: ('gridRowId, 'muiEvent) => unit=?,
  ~onRowEditStart: ('gridRowParams, 'muiEvent) => unit=?,
  ~onRowEditStop: ('gridRowParams, 'muiEvent) => unit=?,
  ~onRowModesModelChange: ('gridRowModesModel, 'gridCallbackDetails) => unit=?,
  ~onSelectionModelChange: ('gridSelectionModel, 'gridCallbackDetails) => unit=?,
  ~onSortModelChange: ('gridSortModel, 'gridCallbackDetails) => unit=?,
  ~page: int=?,
  ~pageSize: int=?,
  ~paginationMode: [#client | #server]=?,
  ~processRowUpdate: ProcessRowUpdate.t=?,
  ~rowBuffer: int=?,
  ~rowCount: int=?,
  ~rowHeight: int=?,
  ~rowModesModel: Js.Types.obj_val=?,
  ~rowSpacingType: [#border | #margin]=?,
  ~rowsPerPageOptions: array<int>=?,
  ~rowThreshold: int=?,
  ~scrollbarSize: int=?,
  ~selectionModel: SelectionModel.t=?,
  ~showCellRightBorder: bool=?,
  ~showColumnRightBorder: bool=?,
  ~sortingMode: [#client | #server]=?,
  ~sortingOrder: array<[#asc | #desc]>=?,
  ~sortModel: array<SortModel.t>=?,
  ~sx: Sx.t=?,
  ~style: ReactDOM.Style.t=?,
) => React.element = "default"