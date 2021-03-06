#' Average flowpath slope
#'
#' Measures the average slope gradient from each grid cell to all upslope divide cells.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
average_flowpath_slope <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Average upslope flowpath length
#'
#' Measures the average length of all upslope flowpaths draining each grid cell.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
average_upslope_flowpath_length <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Basins
#'
#' Identifies drainage basins that drain to the DEM edge.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
basins <- function(d8_pntr, output, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Breach depressions
#'
#' Breaches all of the depressions in a DEM using Lindsay's (2016) algorithm. This should be preferred over depression filling in most cases.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param max_depth Optional maximum breach depth (default is Inf).
#' @param max_length Optional maximum breach channel length (in grid cells; default is Inf).
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
breach_depressions <- function(dem, output, max_depth=NULL, max_length=NULL, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(max_depth)) {
    args <- paste(args, paste0("--max_depth=", max_depth))
  }
  if (!is.null(max_length)) {
    args <- paste(args, paste0("--max_length=", max_length))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Breach single cell pits
#'
#' Removes single-cell pits from an input DEM by breaching.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
breach_single_cell_pits <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' D8 flow accumulation
#'
#' Calculates a D8 flow accumulation raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param out_type Output type; one of 'cells' (default), 'catchment area', and 'specific contributing area'.
#' @param log Optional flag to request the output be log-transformed.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
d8_flow_accumulation <- function(dem, output, out_type="cells", log=FALSE, clip=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(log)) {
    args <- paste(args, paste0("--log=", log))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' D8 mass flux
#'
#' Performs a D8 mass flux calculation.
#'
#' @param dem Input raster DEM file.
#' @param loading Input loading raster file.
#' @param efficiency Input efficiency raster file.
#' @param absorption Input absorption raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
d8_mass_flux <- function(dem, loading, efficiency, absorption, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--loading=", loading))
  args <- paste(args, paste0("--efficiency=", efficiency))
  args <- paste(args, paste0("--absorption=", absorption))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' D8 pointer
#'
#' Calculates a D8 flow pointer raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
d8_pointer <- function(dem, output, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' D inf flow accumulation
#'
#' Calculates a D-infinity flow accumulation raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param out_type Output type; one of 'cells', 'sca' (default), and 'ca'.
#' @param threshold Optional convergence threshold parameter, in grid cells; default is inifinity.
#' @param log Optional flag to request the output be log-transformed.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
d_inf_flow_accumulation <- function(dem, output, out_type="Specific Contributing Area", threshold=NULL, log=FALSE, clip=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(log)) {
    args <- paste(args, paste0("--log=", log))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' D inf mass flux
#'
#' Performs a D-infinity mass flux calculation.
#'
#' @param dem Input raster DEM file.
#' @param loading Input loading raster file.
#' @param efficiency Input efficiency raster file.
#' @param absorption Input absorption raster file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
d_inf_mass_flux <- function(dem, loading, efficiency, absorption, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--loading=", loading))
  args <- paste(args, paste0("--efficiency=", efficiency))
  args <- paste(args, paste0("--absorption=", absorption))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' D inf pointer
#'
#' Calculates a D-infinity flow pointer (flow direction) raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
d_inf_pointer <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Depth in sink
#'
#' Measures the depth of sinks (depressions) in a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zero_background Flag indicating whether the background value of zero should be used.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
depth_in_sink <- function(dem, output, zero_background=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(zero_background)) {
    args <- paste(args, paste0("--zero_background=", zero_background))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Downslope distance to stream
#'
#' Measures distance to the nearest downslope stream cell.
#'
#' @param dem Input raster DEM file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
downslope_distance_to_stream <- function(dem, streams, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Downslope flowpath length
#'
#' Calculates the downslope flowpath length from each cell to basin outlet.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param watersheds Optional input watershed raster file.
#' @param weights Optional input weights raster file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
downslope_flowpath_length <- function(d8_pntr, output, watersheds=NULL, weights=NULL, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(watersheds)) {
    args <- paste(args, paste0("--watersheds=", watersheds))
  }
  if (!is.null(weights)) {
    args <- paste(args, paste0("--weights=", weights))
  }
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Elevation above stream
#'
#' Calculates the elevation of cells above the nearest downslope stream cell.
#'
#' @param dem Input raster DEM file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
elevation_above_stream <- function(dem, streams, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Elevation above stream euclidean
#'
#' Calculates the elevation of cells above the nearest (Euclidean distance) stream cell.
#'
#' @param dem Input raster DEM file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
elevation_above_stream_euclidean <- function(dem, streams, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fd8 flow accumulation
#'
#' Calculates an FD8 flow accumulation raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param out_type Output type; one of 'cells', 'specific contributing area' (default), and 'catchment area'.
#' @param exponent Optional exponent parameter; default is 1.1.
#' @param threshold Optional convergence threshold parameter, in grid cells; default is inifinity.
#' @param log Optional flag to request the output be log-transformed.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
fd8_flow_accumulation <- function(dem, output, out_type="specific contributing area", exponent=1.1, threshold=NULL, log=FALSE, clip=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(exponent)) {
    args <- paste(args, paste0("--exponent=", exponent))
  }
  if (!is.null(threshold)) {
    args <- paste(args, paste0("--threshold=", threshold))
  }
  if (!is.null(log)) {
    args <- paste(args, paste0("--log=", log))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fd8 pointer
#'
#' Calculates an FD8 flow pointer raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
fd8_pointer <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fill burn
#'
#' Burns streams into a DEM using the FillBurn (Saunders, 1999) method.
#'
#' @param dem Input raster DEM file.
#' @param streams Input vector streams file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
fill_burn <- function(dem, streams, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fill depressions
#'
#' Fills all of the depressions in a DEM. Depression breaching should be preferred in most cases.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param fix_flats Optional flag indicating whether flat areas should have a small gradient applied.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
fill_depressions <- function(dem, output, fix_flats=TRUE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(fix_flats)) {
    args <- paste(args, paste0("--fix_flats=", fix_flats))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Fill single cell pits
#'
#' Raises pit cells to the elevation of their lowest neighbour.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
fill_single_cell_pits <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Find no flow cells
#'
#' Finds grid cells with no downslope neighbours.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
find_no_flow_cells <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Find parallel flow
#'
#' Finds areas of parallel flow in D8 flow direction rasters.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
find_parallel_flow <- function(d8_pntr, streams, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flatten lakes
#'
#' Flattens lake polygons in a raster DEM.
#'
#' @param dem Input raster DEM file.
#' @param lakes Input lakes vector polygons file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
flatten_lakes <- function(dem, lakes, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--lakes=", lakes))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flood order
#'
#' Assigns each DEM grid cell its order in the sequence of inundations that are encountered during a search starting from the edges, moving inward at increasing elevations.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
flood_order <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flow accumulation full workflow
#'
#' Resolves all of the depressions in a DEM, outputting a breached DEM, an aspect-aligned non-divergent flow pointer, and a flow accumulation raster.
#'
#' @param dem Input raster DEM file.
#' @param out_dem Output raster DEM file.
#' @param out_pntr Output raster flow pointer file.
#' @param out_accum Output raster flow accumulation file.
#' @param out_type Output type; one of 'cells', 'sca' (default), and 'ca'.
#' @param log Optional flag to request the output be log-transformed.
#' @param clip Optional flag to request clipping the display max by 1 percent.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
flow_accumulation_full_workflow <- function(dem, out_dem, out_pntr, out_accum, out_type="Specific Contributing Area", log=FALSE, clip=FALSE, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--out_dem=", out_dem))
  args <- paste(args, paste0("--out_pntr=", out_pntr))
  args <- paste(args, paste0("--out_accum=", out_accum))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  if (!is.null(log)) {
    args <- paste(args, paste0("--log=", log))
  }
  if (!is.null(clip)) {
    args <- paste(args, paste0("--clip=", clip))
  }
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Flow length diff
#'
#' Calculates the local maximum absolute difference in downslope flowpath length, useful in mapping drainage divides and ridges.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
flow_length_diff <- function(d8_pntr, output, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Hillslopes
#'
#' Identifies the individual hillslopes draining to each link in a stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
hillslopes <- function(d8_pntr, streams, output, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Impoundment index
#'
#' Calculates the impoundment size resulting from damming a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output file.
#' @param out_type Output type; one of 'depth' (default), 'volume', and 'area'.
#' @param damlength Maximum length of thr dam.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
impoundment_index <- function(dem, output, damlength, out_type="depth", verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--damlength=", damlength))
  if (!is.null(out_type)) {
    args <- paste(args, paste0("--out_type=", out_type))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Isobasins
#'
#' Divides a landscape into nearly equal sized drainage basins (i.e. watersheds).
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param size Target basin size, in grid cells.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
isobasins <- function(dem, output, size, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--size=", size))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Jenson snap pour points
#'
#' Moves outlet points used to specify points of interest in a watershedding operation to the nearest stream cell.
#'
#' @param pour_pts Input vector pour points (outlet) file.
#' @param streams Input raster streams file.
#' @param output Output vector file.
#' @param snap_dist Maximum snap distance in map units.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
jenson_snap_pour_points <- function(pour_pts, streams, output, snap_dist, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--pour_pts=", pour_pts))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--snap_dist=", snap_dist))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Longest flowpath
#'
#' Delineates the longest flowpaths for a group of subbasins or watersheds.
#'
#' @param dem Input raster DEM file.
#' @param basins Input raster basins file.
#' @param output Output vector file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
longest_flowpath <- function(dem, basins, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--basins=", basins))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Max upslope flowpath length
#'
#' Measures the maximum length of all upslope flowpaths draining each grid cell.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
max_upslope_flowpath_length <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Num inflowing neighbours
#'
#' Computes the number of inflowing neighbours to each cell in an input DEM based on the D8 algorithm.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
num_inflowing_neighbours <- function(dem, output, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Raise walls
#'
#' Raises walls in a DEM along a line or around a polygon, e.g. a watershed.
#'
#' @param input Input vector lines or polygons file.
#' @param breach Optional input vector breach lines.
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param height Wall height.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
raise_walls <- function(input, dem, output, breach=NULL, height=100.0, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--input=", input))
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(breach)) {
    args <- paste(args, paste0("--breach=", breach))
  }
  if (!is.null(height)) {
    args <- paste(args, paste0("--height=", height))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Rho8 pointer
#'
#' Calculates a stochastic Rho8 flow pointer raster from an input DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
rho8_pointer <- function(dem, output, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Sink
#'
#' Identifies the depressions in a DEM, giving each feature a unique identifier.
#'
#' @param dem Input raster DEM file.
#' @param output Output raster file.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
sink <- function(dem, output, zero_background=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(zero_background)) {
    args <- paste(args, paste0("--zero_background=", zero_background))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Snap pour points
#'
#' Moves outlet points used to specify points of interest in a watershedding operation to the cell with the highest flow accumulation in its neighbourhood.
#'
#' @param pour_pts Input vector pour points (outlet) file.
#' @param flow_accum Input raster D8 flow accumulation file.
#' @param output Output vector file.
#' @param snap_dist Maximum snap distance in map units.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
snap_pour_points <- function(pour_pts, flow_accum, output, snap_dist, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--pour_pts=", pour_pts))
  args <- paste(args, paste0("--flow_accum=", flow_accum))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--snap_dist=", snap_dist))
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Stochastic depression analysis
#'
#' Preforms a stochastic analysis of depressions within a DEM.
#'
#' @param dem Input raster DEM file.
#' @param output Output file.
#' @param rmse The DEM's root-mean-square-error (RMSE), in z units. This determines error magnitude.
#' @param range The error field's correlation length, in xy-units.
#' @param iterations The number of iterations.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
stochastic_depression_analysis <- function(dem, output, rmse, range, iterations=1000, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--dem=", dem))
  args <- paste(args, paste0("--output=", output))
  args <- paste(args, paste0("--rmse=", rmse))
  args <- paste(args, paste0("--range=", range))
  if (!is.null(iterations)) {
    args <- paste(args, paste0("--iterations=", iterations))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Strahler order basins
#'
#' Identifies Strahler-order basins from an input stream network.
#'
#' @param d8_pntr Input raster D8 pointer file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
strahler_order_basins <- function(d8_pntr, streams, output, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Subbasins
#'
#' Identifies the catchments, or sub-basin, draining to each link in a stream network.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param streams Input raster streams file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
subbasins <- function(d8_pntr, streams, output, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--streams=", streams))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Trace downslope flowpaths
#'
#' Traces downslope flowpaths from one or more target sites (i.e. seed points).
#'
#' @param seed_pts Input vector seed points file.
#' @param d8_pntr Input D8 pointer raster file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param zero_background Flag indicating whether a background value of zero should be used.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
trace_downslope_flowpaths <- function(seed_pts, d8_pntr, output, esri_pntr=FALSE, zero_background=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--seed_pts=", seed_pts))
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  if (!is.null(zero_background)) {
    args <- paste(args, paste0("--zero_background=", zero_background))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Unnest basins
#'
#' Extract whole watersheds for a set of outlet points.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param pour_pts Input vector pour points (outlet) file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
unnest_basins <- function(d8_pntr, pour_pts, output, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--pour_pts=", pour_pts))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


#' Watershed
#'
#' Identifies the watershed, or drainage basin, draining to a set of target cells.
#'
#' @param d8_pntr Input D8 pointer raster file.
#' @param pour_pts Input vector pour points (outlet) file.
#' @param output Output raster file.
#' @param esri_pntr D8 pointer uses the ESRI style scheme.
#' @param verbose_mode Sets verbose mode. If verbose mode is False, tools will not print output messages.
#'
#' @return Returns the tool text outputs.
#' @export
watershed <- function(d8_pntr, pour_pts, output, esri_pntr=FALSE, verbose_mode=FALSE) {
  args <- ""
  args <- paste(args, paste0("--d8_pntr=", d8_pntr))
  args <- paste(args, paste0("--pour_pts=", pour_pts))
  args <- paste(args, paste0("--output=", output))
  if (!is.null(esri_pntr)) {
    args <- paste(args, paste0("--esri_pntr=", esri_pntr))
  }
  tool_name <- match.call()[[1]]
  wbt_run_tool(tool_name, args, verbose_mode)
}


