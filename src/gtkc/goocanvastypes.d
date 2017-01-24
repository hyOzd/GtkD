/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License
 * as published by the Free Software Foundation; either version 3
 * of the License, or (at your option) any later version, with
 * some exceptions, please read the COPYING file.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110, USA
 */

// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage


module gtkc.goocanvastypes;

public import gtkc.cairotypes;
public import gtkc.gdkpixbuftypes;
public import gtkc.gdktypes;
public import gtkc.gtktypes;

/**
 * #GooCairoAntialias is simply a wrapper for the #cairo_antialias_t type,
 * allowing it to be used for #GObject properties.
 *
 * See the #cairo_antialias_t documentation.
 */
public enum GooCairoAntialias
{
	DEFAULT = 0,
	NONE = 1,
	GRAY = 2,
	SUBPIXEL = 3,
}
alias GooCairoAntialias CairoAntialias;

/**
 * #GooCairoFillRule is simply a wrapper for the #cairo_fill_rule_t type,
 * allowing it to be used for #GObject properties.
 *
 * See the #cairo_fill_rule_t documentation.
 */
public enum GooCairoFillRule
{
	WINDING = 0,
	EVEN_ODD = 1,
}
alias GooCairoFillRule CairoFillRule;

/**
 * #GooCairoHintMetrics is simply a wrapper for the #cairo_hint_metrics_t type,
 * allowing it to be used for #GObject properties.
 *
 * See the #cairo_hint_metrics_t documentation.
 */
public enum GooCairoHintMetrics
{
	DEFAULT = 0,
	OFF = 1,
	ON = 2,
}
alias GooCairoHintMetrics CairoHintMetrics;

/**
 * #GooCairoLineCap is simply a wrapper for the #cairo_line_cap_t type,
 * allowing it to be used for #GObject properties.
 *
 * See the #cairo_line_cap_t documentation.
 */
public enum GooCairoLineCap
{
	BUTT = 0,
	ROUND = 1,
	SQUARE = 2,
}
alias GooCairoLineCap CairoLineCap;

/**
 * #GooCairoLineJoin is simply a wrapper for the #cairo_line_join_t type,
 * allowing it to be used for #GObject properties.
 *
 * See the #cairo_line_join_t documentation.
 */
public enum GooCairoLineJoin
{
	MITER = 0,
	ROUND = 1,
	BEVEL = 2,
}
alias GooCairoLineJoin CairoLineJoin;

/**
 * #GooCairoOperator is simply a wrapper for the #cairo_operator_t type,
 * allowing it to be used for #GObject properties.
 *
 * See the #cairo_operator_t documentation.
 */
public enum GooCairoOperator
{
	CLEAR = 0,
	SOURCE = 1,
	OVER = 2,
	IN = 3,
	OUT = 4,
	ATOP = 5,
	DEST = 6,
	DEST_OVER = 7,
	DEST_IN = 8,
	DEST_OUT = 9,
	DEST_ATOP = 10,
	XOR = 11,
	ADD = 12,
	SATURATE = 13,
}
alias GooCairoOperator CairoOperator;

/**
 * GooCanvasAnchorType is used to specify the positions of objects relative to
 * a particular anchor point.
 */
public enum GooCanvasAnchorType
{
	/**
	 * the anchor is in the center of the object.
	 */
	CENTER = 0,
	/**
	 * the anchor is at the top of the object, centered horizontally.
	 */
	NORTH = 1,
	/**
	 * the anchor is at the top-left of the object.
	 */
	NORTH_WEST = 2,
	/**
	 * the anchor is at the top-right of the object.
	 */
	NORTH_EAST = 3,
	/**
	 * the anchor is at the bottom of the object, centered horizontally.
	 */
	SOUTH = 4,
	/**
	 * the anchor is at the bottom-left of the object.
	 */
	SOUTH_WEST = 5,
	/**
	 * the anchor is at the bottom-right of the object.
	 */
	SOUTH_EAST = 6,
	/**
	 * the anchor is on the left of the object, centered vertically.
	 */
	WEST = 7,
	/**
	 * the anchor is on the right of the object, centered vertically.
	 */
	EAST = 8,
	/**
	 * see GOO_CANVAS_ANCHOR_NORTH.
	 */
	N = 1,
	/**
	 * see GOO_CANVAS_ANCHOR_NORTH_WEST.
	 */
	NW = 2,
	/**
	 * see GOO_CANVAS_ANCHOR_NORTH_EAST.
	 */
	NE = 3,
	/**
	 * see GOO_CANVAS_ANCHOR_SOUTH.
	 */
	S = 4,
	/**
	 * see GOO_CANVAS_ANCHOR_SOUTH_WEST.
	 */
	SW = 5,
	/**
	 * see GOO_CANVAS_ANCHOR_SOUTH_EAST.
	 */
	SE = 6,
	/**
	 * see GOO_CANVAS_ANCHOR_WEST.
	 */
	W = 7,
	/**
	 * see GOO_CANVAS_ANCHOR_EAST.
	 */
	E = 8,
}
alias GooCanvasAnchorType CanvasAnchorType;

/**
 * #GooCanvasAnimateType is used to specify what happens when the end of an
 * animation is reached.
 */
public enum GooCanvasAnimateType
{
	/**
	 * the item remains in the final position.
	 */
	FREEZE = 0,
	/**
	 * the item is moved back to the initial position.
	 */
	RESET = 1,
	/**
	 * the animation is restarted from the initial
	 * position.
	 */
	RESTART = 2,
	/**
	 * the animation bounces back and forth between the
	 * start and end positions.
	 */
	BOUNCE = 3,
}
alias GooCanvasAnimateType CanvasAnimateType;

/**
 * The #GooCanvasItemVisibility enumeration is used to specify when a canvas
 * item is visible.
 */
public enum GooCanvasItemVisibility
{
	/**
	 * the item is invisible, and is not allocated any
	 * space in layout container items such as #GooCanvasTable.
	 */
	HIDDEN = 0,
	/**
	 * the item is invisible, but it is still allocated
	 * space in layout container items.
	 */
	INVISIBLE = 1,
	/**
	 * the item is visible.
	 */
	VISIBLE = 2,
	/**
	 * the item is visible when the
	 * canvas scale setting is greater than or equal to the item's visibility
	 * threshold setting.
	 */
	VISIBLE_ABOVE_THRESHOLD = 3,
}
alias GooCanvasItemVisibility CanvasItemVisibility;

/**
 * GooCanvasPathCommandType specifies the type of each command in the path.
 * See the path element in the <ulink url="http://www.w3.org/Graphics/SVG/">
 * Scalable Vector Graphics (SVG) specification</ulink> for more details.
 */
public enum GooCanvasPathCommandType
{
	/**
	 * move to the given point.
	 */
	MOVE_TO = 0,
	/**
	 * close the current path, drawing a line from the
	 * current position to the start of the path.
	 */
	CLOSE_PATH = 1,
	/**
	 * draw a line to the given point.
	 */
	LINE_TO = 2,
	/**
	 * draw a horizontal line to the given
	 * x coordinate.
	 */
	HORIZONTAL_LINE_TO = 3,
	/**
	 * draw a vertical line to the given y
	 * coordinate.
	 */
	VERTICAL_LINE_TO = 4,
	/**
	 * draw a bezier curve using two control
	 * points to the given point.
	 */
	CURVE_TO = 5,
	/**
	 * draw a bezier curve using a reflection
	 * of the last control point of the last curve as the first control point,
	 * and one new control point, to the given point.
	 */
	SMOOTH_CURVE_TO = 6,
	/**
	 * draw a quadratic bezier curve using
	 * a single control point to the given point.
	 */
	QUADRATIC_CURVE_TO = 7,
	/**
	 * draw a quadratic bezier curve
	 * using a reflection of the control point from the previous curve as the
	 * control point, to the given point.
	 */
	SMOOTH_QUADRATIC_CURVE_TO = 8,
	/**
	 * draw an elliptical arc, using the given
	 * 2 radii, the x axis rotation, and the 2 flags to disambiguate the arc,
	 * to the given point.
	 */
	ELLIPTICAL_ARC = 9,
}
alias GooCanvasPathCommandType CanvasPathCommandType;

/**
 * Specifies when an item receives pointer events such as mouse clicks.
 */
public enum GooCanvasPointerEvents
{
	/**
	 * a mask indicating that the item only
	 * receives events when it is visible.
	 */
	VISIBLE_MASK = 1,
	/**
	 * a mask indicating that the item only
	 * receives events when the specified parts of it are painted.
	 */
	PAINTED_MASK = 2,
	/**
	 * a mask indicating that the filled part of
	 * the item receives events.
	 */
	FILL_MASK = 4,
	/**
	 * a mask indicating that the stroked part
	 * of the item receives events.
	 */
	STROKE_MASK = 8,
	/**
	 * the item doesn't receive events at all.
	 */
	NONE = 0,
	/**
	 * the item receives events in its
	 * painted areas when it is visible (the default).
	 */
	VISIBLE_PAINTED = 15,
	/**
	 * the item's interior receives events
	 * when it is visible.
	 */
	VISIBLE_FILL = 5,
	/**
	 * the item's perimeter receives
	 * events when it is visible.
	 */
	VISIBLE_STROKE = 9,
	/**
	 * the item receives events when it is visible,
	 * whether it is painted or not.
	 */
	VISIBLE = 13,
	/**
	 * the item receives events in its painted areas,
	 * whether it is visible or not.
	 */
	PAINTED = 14,
	/**
	 * the item's interior receives events, whether it
	 * is visible or painted or not.
	 */
	FILL = 4,
	/**
	 * the item's perimeter receives events, whether
	 * it is visible or painted or not.
	 */
	STROKE = 8,
	/**
	 * the item's perimeter and interior receive events,
	 * whether it is visible or painted or not.
	 */
	ALL = 12,
}
alias GooCanvasPointerEvents CanvasPointerEvents;

struct GooCanvas
{
	GtkContainer container;
	GooCanvasItemModel* rootItemModel;
	GooCanvasItem* rootItem;
	GooCanvasBounds bounds;
	double scaleX;
	double scaleY;
	double scale;
	GooCanvasAnchorType anchor;
	uint idleId;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "needUpdate", 1,
		uint, "needEntireSubtreeUpdate", 1,
		uint, "integerLayout", 1,
		uint, "automaticBounds", 1,
		uint, "boundsFromOrigin", 1,
		uint, "clearBackground", 1,
		uint, "redrawWhenScrolled", 1,
		uint, "beforeInitialDraw", 1,
		uint, "hscrollPolicy", 1,
		uint, "vscrollPolicy", 1,
		uint, "", 22
	));
	double boundsPadding;
	GooCanvasItem* pointerItem;
	GooCanvasItem* pointerGrabItem;
	GooCanvasItem* pointerGrabInitialItem;
	uint pointerGrabButton;
	GooCanvasItem* focusedItem;
	GooCanvasItem* keyboardGrabItem;
	GdkEventCrossing crossingEvent;
	GdkWindow* canvasWindow;
	int canvasXOffset;
	int canvasYOffset;
	GtkAdjustment* hadjustment;
	GtkAdjustment* vadjustment;
	int freezeCount;
	GdkWindow* tmpWindow;
	GHashTable* modelToItem;
	GtkUnit units;
	double resolutionX;
	double resolutionY;
	double deviceToPixelsX;
	double deviceToPixelsY;
	GList* widgetItems;
}


/**
 * #GooCanvasBounds represents the bounding box of an item in the canvas.
 */
struct GooCanvasBounds
{
	/**
	 * the left edge.
	 */
	double x1;
	/**
	 * the top edge.
	 */
	double y1;
	/**
	 * the right edge.
	 */
	double x2;
	/**
	 * the bottom edge.
	 */
	double y2;
}

/**
 * The #GooCanvasClass-struct struct contains one virtual method that
 * subclasses may override.
 */
struct GooCanvasClass
{
	GtkContainerClass parentClass;
	/**
	 *
	 * Params:
	 *     canvas = a #GooCanvas.
	 *     model = the item model to create a canvas item for.
	 * Return: a new canvas item.
	 */
	extern(C) GooCanvasItem* function(GooCanvas* canvas, GooCanvasItemModel* model) createItem;
	/** */
	extern(C) void function(GooCanvas* canvas, GooCanvasItem* item, GooCanvasItemModel* model) itemCreated;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
	/** */
	extern(C) void function() GooCanvasReserved5;
	/** */
	extern(C) void function() GooCanvasReserved6;
	/** */
	extern(C) void function() GooCanvasReserved7;
	/** */
	extern(C) void function() GooCanvasReserved8;
}

struct GooCanvasEllipse
{
	GooCanvasItemSimple parentObject;
	GooCanvasEllipseData* ellipseData;
}

struct GooCanvasEllipseClass
{
	GooCanvasItemSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasEllipseData
{
	double centerX;
	double centerY;
	double radiusX;
	double radiusY;
}

struct GooCanvasEllipseModel
{
	GooCanvasItemModelSimple parentObject;
	GooCanvasEllipseData ellipseData;
}

struct GooCanvasEllipseModelClass
{
	GooCanvasItemModelSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasGrid
{
	GooCanvasItemSimple parentObject;
	GooCanvasGridData* gridData;
}

struct GooCanvasGridClass
{
	GooCanvasItemSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasGridData
{
	double x;
	double y;
	double width;
	double height;
	double xStep;
	double yStep;
	double xOffset;
	double yOffset;
	double horzGridLineWidth;
	double vertGridLineWidth;
	cairo_pattern_t* horzGridLinePattern;
	cairo_pattern_t* vertGridLinePattern;
	double borderWidth;
	cairo_pattern_t* borderPattern;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "showHorzGridLines", 1,
		uint, "showVertGridLines", 1,
		uint, "vertGridLinesOnTop", 1,
		uint, "", 29
	));
}

struct GooCanvasGridModel
{
	GooCanvasItemModelSimple parentObject;
	GooCanvasGridData gridData;
}

struct GooCanvasGridModelClass
{
	GooCanvasItemModelSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasGroup
{
	GooCanvasItemSimple parentObject;
	GPtrArray* items;
}

struct GooCanvasGroupClass
{
	GooCanvasItemSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasGroupModel
{
	GooCanvasItemModelSimple parentObject;
	GPtrArray* children;
}

struct GooCanvasGroupModelClass
{
	GooCanvasItemModelSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasImage
{
	GooCanvasItemSimple parentObject;
	GooCanvasImageData* imageData;
}

struct GooCanvasImageClass
{
	GooCanvasItemSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasImageData
{
	cairo_pattern_t* pattern;
	double x;
	double y;
	double width;
	double height;
}

struct GooCanvasImageModel
{
	GooCanvasItemModelSimple parentObject;
	GooCanvasImageData imageData;
}

struct GooCanvasImageModelClass
{
	GooCanvasItemModelSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasItem;


/**
 * #GooCanvasItemIFace holds the virtual methods that make up the
 * #GooCanvasItem interface.
 *
 * Simple canvas items only need to implement the get_parent(), set_parent(),
 * get_bounds(), get_items_at(), update() and paint() methods (and also
 * get_requested_area() and allocate_area() if they are going to be used
 * inside a layout container like #GooCanvasTable).
 *
 * Items that support transforms should also implement get_transform() and
 * set_transform(). Items that support styles should implement get_style()
 * and set_style().
 *
 * Container items must implement get_canvas(), set_canvas(),
 * get_n_children(), get_child() and request_update(). Containers that support
 * dynamic changes to their children should implement add_child(),
 * move_child() and remove_child(). Layout containers like #GooCanvasTable
 * may implement get_child_property(), set_child_property() and
 * get_transform_for_child().
 */
struct GooCanvasItemIface
{
	GTypeInterface baseIface;
	/**
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 * Return: the #GooCanvas.
	 */
	extern(C) GooCanvas* function(GooCanvasItem* item) getCanvas;
	/** */
	extern(C) void function(GooCanvasItem* item, GooCanvas* canvas) setCanvas;
	/**
	 *
	 * Params:
	 *     item = a container item.
	 * Return: the number of children.
	 */
	extern(C) int function(GooCanvasItem* item) getNChildren;
	/**
	 *
	 * Params:
	 *     item = a container item.
	 *     childNum = the position of a child in the container's stack.
	 * Return: the child item at the given stack position, or
	 *     %NULL if @child_num is out of range.
	 */
	extern(C) GooCanvasItem* function(GooCanvasItem* item, int childNum) getChild;
	/** */
	extern(C) void function(GooCanvasItem* item) requestUpdate;
	/** */
	extern(C) void function(GooCanvasItem* item, GooCanvasItem* child, int position) addChild;
	/** */
	extern(C) void function(GooCanvasItem* item, int oldPosition, int newPosition) moveChild;
	/** */
	extern(C) void function(GooCanvasItem* item, int childNum) removeChild;
	/** */
	extern(C) void function(GooCanvasItem* item, GooCanvasItem* child, uint propertyId, GValue* value, GParamSpec* pspec) getChildProperty;
	/** */
	extern(C) void function(GooCanvasItem* item, GooCanvasItem* child, uint propertyId, GValue* value, GParamSpec* pspec) setChildProperty;
	/**
	 *
	 * Params:
	 *     item = an item.
	 *     child = a child of @item.
	 *     transform = the place to store the transform.
	 * Return: %TRUE if a transform is set.
	 */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* child, cairo_matrix_t* transform) getTransformForChild;
	/**
	 *
	 * Params:
	 *     item = an item.
	 * Return: the parent item, or %NULL if the item has no parent.
	 */
	extern(C) GooCanvasItem* function(GooCanvasItem* item) getParent;
	/** */
	extern(C) void function(GooCanvasItem* item, GooCanvasItem* parent) setParent;
	/** */
	extern(C) void function(GooCanvasItem* item, GooCanvasBounds* bounds) getBounds;
	/**
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 *     x = the x coordinate of the point.
	 *     y = the y coordinate of the point.
	 *     cr = a cairo contect.
	 *     isPointerEvent = %TRUE if the "pointer-events" properties of items should
	 *         be used to determine which parts of the item are tested.
	 *     parentIsVisible = %TRUE if the parent item is visible (which
	 *         implies that all ancestors are also visible).
	 *     foundItems = the list of items found
	 *         so far.
	 * Return: the
	 *     @found_items list, with any more found items
	 *     added onto the start of the list, leaving the top item first.
	 */
	extern(C) GList* function(GooCanvasItem* item, double x, double y, cairo_t* cr, int isPointerEvent, int parentIsVisible, GList* foundItems) getItemsAt;
	/** */
	extern(C) void function(GooCanvasItem* item, int entireTree, cairo_t* cr, GooCanvasBounds* bounds) update;
	/** */
	extern(C) void function(GooCanvasItem* item, cairo_t* cr, GooCanvasBounds* bounds, double scale) paint;
	/**
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 *     cr = a cairo context.
	 *     requestedArea = a #GooCanvasBounds to return the requested area in, in the
	 *         parent's coordinate space.
	 * Return: %TRUE if the item should be allocated space.
	 */
	extern(C) int function(GooCanvasItem* item, cairo_t* cr, GooCanvasBounds* requestedArea) getRequestedArea;
	/** */
	extern(C) void function(GooCanvasItem* item, cairo_t* cr, GooCanvasBounds* requestedArea, GooCanvasBounds* allocatedArea, double xOffset, double yOffset) allocateArea;
	/**
	 *
	 * Params:
	 *     item = an item.
	 *     transform = the place to store the transform.
	 * Return: %TRUE if a transform is set.
	 */
	extern(C) int function(GooCanvasItem* item, cairo_matrix_t* transform) getTransform;
	/** */
	extern(C) void function(GooCanvasItem* item, cairo_matrix_t* transform) setTransform;
	/**
	 *
	 * Params:
	 *     item = an item.
	 * Return: the item's style.
	 */
	extern(C) GooCanvasStyle* function(GooCanvasItem* item) getStyle;
	/** */
	extern(C) void function(GooCanvasItem* item, GooCanvasStyle* style) setStyle;
	/**
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 * Return: %TRUE if the item is visible.
	 */
	extern(C) int function(GooCanvasItem* item) isVisible;
	/**
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 *     cr = a cairo context.
	 *     width = the width that the item may be allocated.
	 * Return: the requested height of the item, given the allocated width,
	 *     or %-1 if the item doesn't support this method or its height doesn't
	 *     change when allocated different widths.
	 */
	extern(C) double function(GooCanvasItem* item, cairo_t* cr, double width) getRequestedHeight;
	/**
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 * Return: the item's model, or %NULL if it has no model.
	 */
	extern(C) GooCanvasItemModel* function(GooCanvasItem* item) getModel;
	/** */
	extern(C) void function(GooCanvasItem* item, GooCanvasItemModel* model) setModel;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventCrossing* event) enterNotifyEvent;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventCrossing* event) leaveNotifyEvent;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventMotion* event) motionNotifyEvent;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventButton* event) buttonPressEvent;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventButton* event) buttonReleaseEvent;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventFocus* event) focusInEvent;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventFocus* event) focusOutEvent;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventKey* event) keyPressEvent;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventKey* event) keyReleaseEvent;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventGrabBroken* event) grabBrokenEvent;
	/** */
	extern(C) void function(GooCanvasItem* item, GParamSpec* pspec) childNotify;
	/** */
	extern(C) int function(GooCanvasItem* item, double x, double y, int keyboardTooltip, GtkTooltip* tooltip) queryTooltip;
	/**
	 *
	 * Params:
	 *     item = an item.
	 * Return: %TRUE if the item is static.
	 */
	extern(C) int function(GooCanvasItem* item) getIsStatic;
	/** */
	extern(C) void function(GooCanvasItem* item, int isStatic) setIsStatic;
	/** */
	extern(C) void function(GooCanvasItem* item, int stopped) animationFinished;
	/** */
	extern(C) int function(GooCanvasItem* item, GooCanvasItem* target, GdkEventScroll* event) scrollEvent;
	/**
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 *     cr = a cairo context.
	 *     width = the allocated width.
	 *     requestedArea = a #GooCanvasBounds to return the requested area in, in the
	 *         parent's coordinate space. If %FALSE is returned, this is undefined.
	 * Return: %TRUE if the item's requested area changes due to the new allocated
	 *     width.
	 */
	extern(C) int function(GooCanvasItem* item, cairo_t* cr, double width, GooCanvasBounds* requestedArea) getRequestedAreaForWidth;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
}

struct GooCanvasItemModel;

/**
 * #GooCanvasItemModelIFace holds the virtual methods that make up the
 * #GooCanvasItemModel interface.
 *
 * Simple item models only need to implement the get_parent(), set_parent()
 * and create_item() methods.
 *
 * Items that support transforms should also implement get_transform() and
 * set_transform(). Items that support styles should implement get_style()
 * and set_style().
 *
 * Container items must implement get_n_children() and get_child().
 * Containers that support dynamic changes to their children should implement
 * add_child(), move_child() and remove_child().
 * Layout containers like #GooCanvasTable may implement
 * get_child_property() and set_child_property().
 */
struct GooCanvasItemModelIface
{
	GTypeInterface baseIface;
	/**
	 *
	 * Params:
	 *     model = an item model.
	 * Return: the number of children.
	 */
	extern(C) int function(GooCanvasItemModel* model) getNChildren;
	/**
	 *
	 * Params:
	 *     model = an item model.
	 *     childNum = the position of a child in the container's stack.
	 * Return: the child at the given stack position, or %NULL
	 *     if @child_num is out of range.
	 */
	extern(C) GooCanvasItemModel* function(GooCanvasItemModel* model, int childNum) getChild;
	/** */
	extern(C) void function(GooCanvasItemModel* model, GooCanvasItemModel* child, int position) addChild;
	/** */
	extern(C) void function(GooCanvasItemModel* model, int oldPosition, int newPosition) moveChild;
	/** */
	extern(C) void function(GooCanvasItemModel* model, int childNum) removeChild;
	/** */
	extern(C) void function(GooCanvasItemModel* model, GooCanvasItemModel* child, uint propertyId, GValue* value, GParamSpec* pspec) getChildProperty;
	/** */
	extern(C) void function(GooCanvasItemModel* item, GooCanvasItemModel* child, uint propertyId, GValue* value, GParamSpec* pspec) setChildProperty;
	/**
	 *
	 * Params:
	 *     model = an item model.
	 * Return: the parent model, or %NULL if the model has no parent.
	 */
	extern(C) GooCanvasItemModel* function(GooCanvasItemModel* model) getParent;
	/** */
	extern(C) void function(GooCanvasItemModel* model, GooCanvasItemModel* parent) setParent;
	/** */
	extern(C) GooCanvasItem* function(GooCanvasItemModel* model, GooCanvas* canvas) createItem;
	/**
	 *
	 * Params:
	 *     model = an item model.
	 *     transform = the place to store the transform.
	 * Return: %TRUE if a transform is set.
	 */
	extern(C) int function(GooCanvasItemModel* model, cairo_matrix_t* transform) getTransform;
	/** */
	extern(C) void function(GooCanvasItemModel* model, cairo_matrix_t* transform) setTransform;
	/**
	 *
	 * Params:
	 *     model = an item model.
	 * Return: the model's style.
	 */
	extern(C) GooCanvasStyle* function(GooCanvasItemModel* model) getStyle;
	/** */
	extern(C) void function(GooCanvasItemModel* model, GooCanvasStyle* style) setStyle;
	/** */
	extern(C) void function(GooCanvasItemModel* model, int childNum) childAdded;
	/** */
	extern(C) void function(GooCanvasItemModel* model, int oldChildNum, int newChildNum) childMoved;
	/** */
	extern(C) void function(GooCanvasItemModel* model, int childNum) childRemoved;
	/** */
	extern(C) void function(GooCanvasItemModel* model, int recomputeBounds) changed;
	/** */
	extern(C) void function(GooCanvasItemModel* model, GParamSpec* pspec) childNotify;
	/** */
	extern(C) void function(GooCanvasItemModel* model, int stopped) animationFinished;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
	/** */
	extern(C) void function() GooCanvasReserved5;
	/** */
	extern(C) void function() GooCanvasReserved6;
	/** */
	extern(C) void function() GooCanvasReserved7;
}

struct GooCanvasItemModelSimple
{
	GObject parentObject;
	/**
	 * the parent model.
	 */
	GooCanvasItemModel* parent;
	/**
	 * data used by the canvas item for viewing the model.
	 */
	GooCanvasItemSimpleData simpleData;
	char* title;
	char* description;
}

struct GooCanvasItemModelSimpleClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasItemSimple
{
	GObject parentObject;
	/**
	 * the canvas.
	 */
	GooCanvas* canvas;
	/**
	 * the parent item.
	 */
	GooCanvasItem* parent;
	/**
	 * the item's model, if it has one.
	 */
	GooCanvasItemModelSimple* model;
	/**
	 * data that is common to both the model and view classes. If
	 * the canvas item has a model, this will point to the model's
	 * #GooCanvasItemSimpleData, otherwise the canvas item will have its own
	 * #GooCanvasItemSimpleData.
	 */
	GooCanvasItemSimpleData* simpleData;
	/**
	 * the bounds of the item, in device space.
	 */
	GooCanvasBounds bounds;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "needUpdate", 1,
		uint, "needEntireSubtreeUpdate", 1,
		uint, "", 30
	));
	void* priv;
}

/**
 * The #GooCanvasItemSimpleClass-struct struct contains several methods that
 * subclasses can override.
 *
 * Simple items need only implement the create_path() method. More complex
 * items must override the update(), paint() and is_item_at() methods instead.
 */
struct GooCanvasItemSimpleClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function(GooCanvasItemSimple* simple, cairo_t* cr) simpleCreatePath;
	/** */
	extern(C) void function(GooCanvasItemSimple* simple, cairo_t* cr) simpleUpdate;
	/** */
	extern(C) void function(GooCanvasItemSimple* simple, cairo_t* cr, GooCanvasBounds* bounds) simplePaint;
	/** */
	extern(C) int function(GooCanvasItemSimple* simple, double x, double y, cairo_t* cr, int isPointerEvent) simpleIsItemAt;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

/**
 * This is the data common to both the model and view classes.
 */
struct GooCanvasItemSimpleData
{
	/**
	 * the style to draw with.
	 */
	GooCanvasStyle* style;
	/**
	 * the transformation matrix of the item, or %NULL.
	 */
	cairo_matrix_t* transform;
	/**
	 * an array of #GooCanvasPathCommand specifying the clip
	 * path of the item, or %NULL.
	 */
	GArray* clipPathCommands;
	/**
	 * the item's tooltip.
	 */
	char* tooltip;
	/**
	 * the threshold scale setting at which to show the item
	 * (if the @visibility setting is set to %VISIBLE_ABOVE_THRESHOLD).
	 */
	double visibilityThreshold;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "visibility", 2,
		uint, "pointerEvents", 4,
		uint, "canFocus", 1,
		uint, "ownStyle", 1,
		uint, "clipFillRule", 4,
		uint, "isStatic", 1,
		uint, "cacheSetting", 2,
		uint, "hasTooltip", 1,
		uint, "", 16
	));
}

struct GooCanvasLineDash
{
	/**
	 * the reference count of the struct.
	 */
	int refCount;
	/**
	 * the number of dashes and gaps between them.
	 */
	int numDashes;
	/**
	 * the sizes of each dash and gap.
	 */
	double* dashes;
	/**
	 * the start offset into the dash pattern.
	 */
	double dashOffset;
}

struct GooCanvasPath
{
	GooCanvasItemSimple parent;
	GooCanvasPathData* pathData;
}

struct GooCanvasPathClass
{
	GooCanvasItemSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

/**
 * GooCanvasPathCommand holds the data for each command in the path.
 *
 * The @relative flag specifies that the coordinates for the command are
 * relative to the current point. Otherwise they are assumed to be absolute
 * coordinates.
 */
struct GooCanvasPathCommand
{
	union
	{
		struct Simple
		{
			import std.bitmanip: bitfields;
			mixin(bitfields!(
				uint, "type", 5,
				uint, "relative", 1,
				uint, "", 26
			));
			double x;
			double y;
		}
		Simple simple;
		struct Curve
		{
			import std.bitmanip: bitfields;
			mixin(bitfields!(
				uint, "type", 5,
				uint, "relative", 1,
				uint, "", 26
			));
			double x;
			double y;
			double x1;
			double y1;
			double x2;
			double y2;
		}
		Curve curve;
		struct Arc
		{
			import std.bitmanip: bitfields;
			mixin(bitfields!(
				uint, "type", 5,
				uint, "relative", 1,
				uint, "largeArcFlag", 1,
				uint, "sweepFlag", 1,
				uint, "", 24
			));
			double rx;
			double ry;
			double xAxisRotation;
			double x;
			double y;
		}
		Arc arc;
	}
}

struct GooCanvasPathData
{
	GArray* pathCommands;
}

struct GooCanvasPathModel
{
	GooCanvasItemModelSimple parentObject;
	GooCanvasPathData pathData;
}

struct GooCanvasPathModelClass
{
	GooCanvasItemModelSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasPoints
{
	/**
	 * the coordinates of the points, in pairs.
	 */
	double* coords;
	/**
	 * the number of points.
	 */
	int numPoints;
	/**
	 * the reference count of the struct.
	 */
	int refCount;
}

struct GooCanvasPolyline
{
	GooCanvasItemSimple parent;
	GooCanvasPolylineData* polylineData;
}

struct GooCanvasPolylineArrowData
{
	double arrowWidth;
	double arrowLength;
	double arrowTipLength;
	double[2] lineStart;
	double[2] lineEnd;
	double[10] startArrowCoords;
	double[10] endArrowCoords;
}

struct GooCanvasPolylineClass
{
	GooCanvasItemSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasPolylineData
{
	double* coords;
	GooCanvasPolylineArrowData* arrowData;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "numPoints", 16,
		uint, "closePath", 1,
		uint, "startArrow", 1,
		uint, "endArrow", 1,
		uint, "reconfigureArrows", 1,
		uint, "", 12
	));
}

struct GooCanvasPolylineModel
{
	GooCanvasItemModelSimple parentObject;
	GooCanvasPolylineData polylineData;
}

struct GooCanvasPolylineModelClass
{
	GooCanvasItemModelSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasRect
{
	GooCanvasItemSimple parent;
	GooCanvasRectData* rectData;
}

struct GooCanvasRectClass
{
	GooCanvasItemSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasRectData
{
	double x;
	double y;
	double width;
	double height;
	double radiusX;
	double radiusY;
}

struct GooCanvasRectModel
{
	GooCanvasItemModelSimple parentObject;
	GooCanvasRectData rectData;
}

struct GooCanvasRectModelClass
{
	GooCanvasItemModelSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasStyle
{
	GObject parentObject;
	/**
	 * the parent style.
	 */
	GooCanvasStyle* parent;
	/**
	 * an array of #GooCanvasStyleProperty property settings.
	 */
	GArray* properties;
}

struct GooCanvasStyleClass
{
	GObjectClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

/**
 * #GooCanvasStyleProperty represents a property setting.
 */
struct GooCanvasStyleProperty
{
	/**
	 * the unique property identifier.
	 */
	GQuark id;
	/**
	 * the value of the property.
	 */
	GValue value;
}

struct GooCanvasTable
{
	GooCanvasGroup parent;
	GooCanvasTableData* tableData;
}

struct GooCanvasTableClass
{
	GooCanvasGroupClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasTableData
{
	double width;
	double height;
	GooCanvasTableDimension[2] dimensions;
	double borderWidth;
	GArray* children;
	GooCanvasTableLayoutData* layoutData;
}

struct GooCanvasTableDimension
{
	int size;
	double defaultSpacing;
	double* spacings;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "homogeneous", 1,
		uint, "", 31
	));
}

struct GooCanvasTableLayoutData;

struct GooCanvasTableModel
{
	GooCanvasGroupModel parentObject;
	GooCanvasTableData tableData;
}

struct GooCanvasTableModelClass
{
	GooCanvasGroupModelClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasText
{
	GooCanvasItemSimple parent;
	GooCanvasTextData* textData;
	double layoutWidth;
}

struct GooCanvasTextClass
{
	GooCanvasItemSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasTextData
{
	char* text;
	double x;
	double y;
	double width;
	import std.bitmanip: bitfields;
	mixin(bitfields!(
		uint, "useMarkup", 1,
		uint, "anchor", 5,
		uint, "alignment", 3,
		uint, "ellipsize", 3,
		uint, "wrap", 3,
		uint, "", 17
	));
}

struct GooCanvasTextModel
{
	GooCanvasItemModelSimple parentObject;
	GooCanvasTextData textData;
}

struct GooCanvasTextModelClass
{
	GooCanvasItemModelSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}

struct GooCanvasWidget
{
	GooCanvasItemSimple parentObject;
	GtkWidget* widget;
	double x;
	double y;
	double width;
	double height;
	GooCanvasAnchorType anchor;
}


struct GooCanvasWidgetClass
{
	GooCanvasItemSimpleClass parentClass;
	/** */
	extern(C) void function() GooCanvasReserved1;
	/** */
	extern(C) void function() GooCanvasReserved2;
	/** */
	extern(C) void function() GooCanvasReserved3;
	/** */
	extern(C) void function() GooCanvasReserved4;
}
