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


module goocanvas.Canvas;

private import cairo.Context;
private import cairo.Pattern;
private import cairo.Surface;
private import gdk.Cursor;
private import gdkpixbuf.Pixbuf;
private import glib.ArrayG;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.PtrArray;
private import glib.Str;
private import gobject.Closure;
private import gobject.ObjectG;
private import gobject.Signals;
private import gobject.Value;
private import goocanvas.CanvasItem;
private import goocanvas.CanvasItemIF;
private import goocanvas.CanvasItemModel;
private import goocanvas.CanvasItemModelIF;
private import goocanvas.CanvasStyle;
private import goocanvas.CanvasWidget;
private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Container;
private import gtk.ScrollableIF;
private import gtk.ScrollableT;
private import gtk.Widget;
public  import gtkc.gdktypes;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;
private import std.algorithm;


/**
 * #GooCanvas is the main widget containing a number of canvas items.
 * 
 * Here is a simple example:
 * 
 * <informalexample><programlisting>
 * &num;include &lt;goocanvas.h&gt;
 * 
 * static gboolean on_rect_button_press (GooCanvasItem  *view,
 * GooCanvasItem  *target,
 * GdkEventButton *event,
 * gpointer        data);
 * 
 * int
 * main (int argc, char *argv[])
 * {
 * GtkWidget *window, *scrolled_win, *canvas;
 * GooCanvasItem *root, *rect_item, *text_item;
 * 
 * /&ast; Initialize GTK+. &ast;/
 * gtk_init (&amp;argc, &amp;argv);
 * 
 * /&ast; Create the window and widgets. &ast;/
 * window = gtk_window_new (GTK_WINDOW_TOPLEVEL);
 * gtk_window_set_default_size (GTK_WINDOW (window), 640, 600);
 * gtk_widget_show (window);
 * g_signal_connect (window, "delete_event", (GtkSignalFunc) on_delete_event,
 * NULL);
 * 
 * scrolled_win = gtk_scrolled_window_new (NULL, NULL);
 * gtk_scrolled_window_set_shadow_type (GTK_SCROLLED_WINDOW (scrolled_win),
 * GTK_SHADOW_IN);
 * gtk_widget_show (scrolled_win);
 * gtk_container_add (GTK_CONTAINER (window), scrolled_win);
 * 
 * canvas = goo_canvas_new&nbsp;();
 * gtk_widget_set_size_request (canvas, 600, 450);
 * goo_canvas_set_bounds (GOO_CANVAS (canvas), 0, 0, 1000, 1000);
 * gtk_widget_show (canvas);
 * gtk_container_add (GTK_CONTAINER (scrolled_win), canvas);
 * 
 * root = goo_canvas_get_root_item (GOO_CANVAS (canvas));
 * 
 * /&ast; Add a few simple items. &ast;/
 * rect_item = goo_canvas_rect_new (root, 100, 100, 400, 400,
 * "line-width", 10.0,
 * "radius-x", 20.0,
 * "radius-y", 10.0,
 * "stroke-color", "yellow",
 * "fill-color", "red",
 * NULL);
 * 
 * text_item = goo_canvas_text_new (root, "Hello World", 300, 300, -1,
 * GOO_CANVAS_ANCHOR_CENTER,
 * "font", "Sans 24",
 * NULL);
 * goo_canvas_item_rotate (text_item, 45, 300, 300);
 * 
 * /&ast; Connect a signal handler for the rectangle item. &ast;/
 * g_signal_connect (rect_item, "button_press_event",
 * (GtkSignalFunc) on_rect_button_press, NULL);
 * 
 * /&ast; Pass control to the GTK+ main event loop. &ast;/
 * gtk_main&nbsp;();
 * 
 * return 0;
 * }
 * 
 * 
 * /&ast; This handles button presses in item views. We simply output a message to
 * the console. &ast;/
 * static gboolean
 * on_rect_button_press (GooCanvasItem  *item,
 * GooCanvasItem  *target,
 * GdkEventButton *event,
 * gpointer        data)
 * {
 * g_print ("rect item received button press event\n");
 * return TRUE;
 * }
 * 
 * </programlisting></informalexample>
 * 
 * A #GooCanvas widget is usually placed inside a #GtkScrolledWindow widget
 * and can be scrolled with the scrollbar or with the scroll wheel on a mouse.
 * To disable mouse wheel scrolling, do this:
 * <informalexample><programlisting>
 * g_signal_connect (canvas, "scroll-event", G_CALLBACK (gtk_true), NULL);
 * </programlisting></informalexample>
 */
public class Canvas : Container, ScrollableIF
{
	/** the main Gtk struct */
	protected GooCanvas* gooCanvas;

	/** Get the main Gtk struct */
	public GooCanvas* getCanvasStruct()
	{
		return gooCanvas;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvas;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvas = cast(GooCanvas*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvas* gooCanvas, bool ownedRef = false)
	{
		this.gooCanvas = gooCanvas;
		super(cast(GtkContainer*)gooCanvas, ownedRef);
	}

	// add the Scrollable capabilities
	mixin ScrollableT!(GooCanvas);


	/** */
	public static GType getType()
	{
		return goo_canvas_get_type();
	}

	/**
	 * Creates a new #GooCanvas widget.
	 *
	 * A #GooCanvasGroup is created automatically as the root item of the canvas,
	 * though this can be overriden with goo_canvas_set_root_item() or
	 * goo_canvas_set_root_item_model().
	 *
	 * Return: a new #GooCanvas widget.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto p = goo_canvas_new();
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GooCanvas*) p);
	}

	/** */
	public static bool booleanHandledAccumulator(GSignalInvocationHint* ihint, Value returnAccu, Value handlerReturn, void* dummy)
	{
		return goo_canvas_boolean_handled_accumulator(ihint, (returnAccu is null) ? null : returnAccu.getValueStruct(), (handlerReturn is null) ? null : handlerReturn.getValueStruct(), dummy) != 0;
	}

	/** */
	public static Pattern cairoPatternFromPixbuf(Pixbuf pixbuf)
	{
		auto p = goo_canvas_cairo_pattern_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Pattern(cast(cairo_pattern_t*) p);
	}

	/** */
	public static Surface cairoSurfaceFromPixbuf(Pixbuf pixbuf)
	{
		auto p = goo_canvas_cairo_surface_from_pixbuf((pixbuf is null) ? null : pixbuf.getPixbufStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Surface(cast(cairo_surface_t*) p);
	}

	/** */
	public static uint convertColorsToRgba(double red, double green, double blue, double alpha)
	{
		return goo_canvas_convert_colors_to_rgba(red, green, blue, alpha);
	}

	/**
	 * Creates the path specified by the given #GooCanvasPathCommand array.
	 *
	 * Params:
	 *     commands = an array of #GooCanvasPathCommand.
	 *     cr = a cairo context.
	 */
	public static void createPath(ArrayG commands, Context cr)
	{
		goo_canvas_create_path((commands is null) ? null : commands.getArrayGStruct(), (cr is null) ? null : cr.getContextStruct());
	}

	/** */
	public static Pattern createPatternFromColorValue(Value value)
	{
		auto p = goo_canvas_create_pattern_from_color_value((value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Pattern(cast(cairo_pattern_t*) p);
	}

	/** */
	public static Pattern createPatternFromGdkRgbaValue(Value value)
	{
		auto p = goo_canvas_create_pattern_from_gdk_rgba_value((value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Pattern(cast(cairo_pattern_t*) p);
	}

	/** */
	public static Pattern createPatternFromPixbufValue(Value value)
	{
		auto p = goo_canvas_create_pattern_from_pixbuf_value((value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Pattern(cast(cairo_pattern_t*) p);
	}

	/** */
	public static Pattern createPatternFromRgbaValue(Value value)
	{
		auto p = goo_canvas_create_pattern_from_rgba_value((value is null) ? null : value.getValueStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new Pattern(cast(cairo_pattern_t*) p);
	}

	/** */
	public static void getGdkRgbaValueFromPattern(Pattern pattern, Value value)
	{
		goo_canvas_get_gdk_rgba_value_from_pattern((pattern is null) ? null : pattern.getPatternStruct(), (value is null) ? null : value.getValueStruct());
	}

	/** */
	public static void getRgbaValueFromPattern(Pattern pattern, Value value)
	{
		goo_canvas_get_rgba_value_from_pattern((pattern is null) ? null : pattern.getPatternStruct(), (value is null) ? null : value.getValueStruct());
	}

	/** */
	public static void marshalBOOLEANBOXED(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		goo_canvas_marshal_BOOLEAN__BOXED((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/** */
	public static void marshalBOOLEANDOUBLEDOUBLEBOOLEANOBJECT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		goo_canvas_marshal_BOOLEAN__DOUBLE_DOUBLE_BOOLEAN_OBJECT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/** */
	public static void marshalBOOLEANOBJECTBOXED(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		goo_canvas_marshal_BOOLEAN__OBJECT_BOXED((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/** */
	public static void marshalVOIDINTINT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		goo_canvas_marshal_VOID__INT_INT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/** */
	public static void marshalVOIDOBJECTOBJECT(Closure closure, Value returnValue, uint nParamValues, Value paramValues, void* invocationHint, void* marshalData)
	{
		goo_canvas_marshal_VOID__OBJECT_OBJECT((closure is null) ? null : closure.getClosureStruct(), (returnValue is null) ? null : returnValue.getValueStruct(), nParamValues, (paramValues is null) ? null : paramValues.getValueStruct(), invocationHint, marshalData);
	}

	/**
	 * Parses the given SVG path specification string.
	 *
	 * Params:
	 *     pathData = the sequence of path commands, specified as a string using the
	 *         same syntax as in the <ulink url="http://www.w3.org/Graphics/SVG/">Scalable
	 *         Vector Graphics (SVG)</ulink> path element.
	 *
	 * Return: a #GArray of #GooCanvasPathCommand elements.
	 */
	public static ArrayG parsePathData(string pathData)
	{
		auto p = goo_canvas_parse_path_data(Str.toStringz(pathData));
		
		if(p is null)
		{
			return null;
		}
		
		return new ArrayG(cast(GArray*) p, true);
	}

	/** */
	public static void setStylePropertyFromPattern(CanvasStyle style, GQuark propertyId, Pattern pattern)
	{
		goo_canvas_set_style_property_from_pattern((style is null) ? null : style.getCanvasStyleStruct(), propertyId, (pattern is null) ? null : pattern.getPatternStruct());
	}

	/** */
	public static int utilPtrArrayFindIndex(PtrArray ptrArray, void* data)
	{
		return goo_canvas_util_ptr_array_find_index((ptrArray is null) ? null : ptrArray.getPtrArrayStruct(), data);
	}

	/** */
	public static void utilPtrArrayInsert(PtrArray ptrArray, void* data, int index)
	{
		goo_canvas_util_ptr_array_insert((ptrArray is null) ? null : ptrArray.getPtrArrayStruct(), data, index);
	}

	/** */
	public static void utilPtrArrayMove(PtrArray ptrArray, int oldIndex, int newIndex)
	{
		goo_canvas_util_ptr_array_move((ptrArray is null) ? null : ptrArray.getPtrArrayStruct(), oldIndex, newIndex);
	}

	/**
	 * Converts the given bounds in the canvas coordinate space to a bounding box
	 * in item space. This is useful in the item paint() methods to convert the
	 * bounds to be painted to the item's coordinate space.
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 *     bounds = the bounds in canvas coordinate space, to be converted.
	 */
	public void convertBoundsToItemSpace(CanvasItemIF item, GooCanvasBounds* bounds)
	{
		goo_canvas_convert_bounds_to_item_space(gooCanvas, (item is null) ? null : item.getCanvasItemStruct(), bounds);
	}

	/**
	 * Converts a coordinate from the given item's coordinate space to the canvas
	 * coordinate space, applying all transformation matrices including the
	 * item's own transformation matrix, if it has one.
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 *     x = a pointer to the x coordinate to convert.
	 *     y = a pointer to the y coordinate to convert.
	 */
	public void convertFromItemSpace(CanvasItemIF item, ref double x, ref double y)
	{
		goo_canvas_convert_from_item_space(gooCanvas, (item is null) ? null : item.getCanvasItemStruct(), &x, &y);
	}

	/**
	 * Converts a coordinate from pixels to the canvas coordinate space.
	 *
	 * The pixel coordinate space specifies pixels from the top-left of the entire
	 * canvas window, according to the current scale setting.
	 * See goo_canvas_set_scale().
	 *
	 * The canvas coordinate space is specified in the call to
	 * goo_canvas_set_bounds().
	 *
	 * Params:
	 *     x = a pointer to the x coordinate to convert.
	 *     y = a pointer to the y coordinate to convert.
	 */
	public void convertFromPixels(ref double x, ref double y)
	{
		goo_canvas_convert_from_pixels(gooCanvas, &x, &y);
	}

	/**
	 * Converts a coordinate from the canvas coordinate space to the given
	 * item's coordinate space, applying all transformation matrices including the
	 * item's own transformation matrix, if it has one.
	 *
	 * Params:
	 *     item = a #GooCanvasItem.
	 *     x = a pointer to the x coordinate to convert.
	 *     y = a pointer to the y coordinate to convert.
	 */
	public void convertToItemSpace(CanvasItemIF item, ref double x, ref double y)
	{
		goo_canvas_convert_to_item_space(gooCanvas, (item is null) ? null : item.getCanvasItemStruct(), &x, &y);
	}

	/**
	 * Converts a coordinate from the canvas coordinate space to pixels.
	 *
	 * The canvas coordinate space is specified in the call to
	 * goo_canvas_set_bounds().
	 *
	 * The pixel coordinate space specifies pixels from the top-left of the entire
	 * canvas window, according to the current scale setting.
	 * See goo_canvas_set_scale().
	 *
	 * Params:
	 *     x = a pointer to the x coordinate to convert.
	 *     y = a pointer to the y coordinate to convert.
	 */
	public void convertToPixels(ref double x, ref double y)
	{
		goo_canvas_convert_to_pixels(gooCanvas, &x, &y);
	}

	/**
	 * Converts a coordinate from pixels to the canvas's units,
	 * ignoring scaling and ignoring the coordinate space specified
	 * in the call to goo_canvas_set_bounds().
	 *
	 * Params:
	 *     x = a pointer to the x coordinate to convert.
	 *     y = a pointer to the y coordinate to convert.
	 *
	 * Since: 2.0.1
	 */
	public void convertUnitsFromPixels(ref double x, ref double y)
	{
		goo_canvas_convert_units_from_pixels(gooCanvas, &x, &y);
	}

	/**
	 * Converts a coordinate from the canvas's units to pixels,
	 * ignoring scaling and ignoring the coordinate space specified
	 * in the call to goo_canvas_set_bounds().
	 *
	 * Params:
	 *     x = a pointer to the x coordinate to convert.
	 *     y = a pointer to the y coordinate to convert.
	 *
	 * Since: 2.0.1
	 */
	public void convertUnitsToPixels(ref double x, ref double y)
	{
		goo_canvas_convert_units_to_pixels(gooCanvas, &x, &y);
	}

	/**
	 * Creates a cairo context, initialized with the default canvas settings.
	 *
	 * Return: a new cairo context. It should be freed with cairo_destroy().
	 */
	public Context createCairoContext()
	{
		auto p = goo_canvas_create_cairo_context(gooCanvas);
		
		if(p is null)
		{
			return null;
		}
		
		return new Context(cast(cairo_t*) p);
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items, typically container items such as #GooCanvasGroup.
	 *
	 * It creates a new canvas item for the given item model, and recursively
	 * creates items for any children.
	 *
	 * It uses the create_item() virtual method if it has been set.
	 * Subclasses of #GooCanvas can define this method if they want to use
	 * custom views for items.
	 *
	 * It emits the #GooCanvas::item-created signal after creating the view, so
	 * application code can connect signal handlers to the new view if desired.
	 *
	 * Params:
	 *     model = the item model to create a canvas item for.
	 *
	 * Return: a new canvas item.
	 */
	public CanvasItemIF createItem(CanvasItemModelIF model)
	{
		auto p = goo_canvas_create_item(gooCanvas, (model is null) ? null : model.getCanvasItemModelStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItem, CanvasItemIF)(cast(GooCanvasItem*) p, true);
	}

	/**
	 * Gets the bounds of the canvas, in canvas units.
	 *
	 * By default, canvas units are pixels, though the #GooCanvas:units property
	 * can be used to change the units to points, inches or millimeters.
	 *
	 * Params:
	 *     left = a pointer to a #gdouble to return the left edge, or %NULL.
	 *     top = a pointer to a #gdouble to return the top edge, or %NULL.
	 *     right = a pointer to a #gdouble to return the right edge, or %NULL.
	 *     bottom = a pointer to a #gdouble to return the bottom edge, or %NULL.
	 */
	public void getBounds(double* left, double* top, double* right, double* bottom)
	{
		goo_canvas_get_bounds(gooCanvas, left, top, right, bottom);
	}

	/**
	 * Gets the default line width, which depends on the current units setting.
	 *
	 * Return: the default line width of the canvas.
	 */
	public double getDefaultLineWidth()
	{
		return goo_canvas_get_default_line_width(gooCanvas);
	}

	/**
	 * Gets the canvas item associated with the given #GooCanvasItemModel.
	 * This is only useful when goo_canvas_set_root_item_model() has been used to
	 * set a model for the canvas.
	 *
	 * For simple applications you can use goo_canvas_get_item() to set up
	 * signal handlers for your items, e.g.
	 *
	 * <informalexample><programlisting>
	 * item = goo_canvas_get_item (GOO_CANVAS (canvas), my_item);
	 * g_signal_connect (item, "button_press_event",
	 * (GtkSignalFunc) on_my_item_button_press, NULL);
	 * </programlisting></informalexample>
	 *
	 * More complex applications may want to use the #GooCanvas::item-created
	 * signal to hook up their signal handlers.
	 *
	 * Params:
	 *     model = a #GooCanvasItemModel.
	 *
	 * Return: the canvas item corresponding to the given
	 *     #GooCanvasItemModel, or %NULL if no canvas item has been created for it yet.
	 */
	public CanvasItemIF getItem(CanvasItemModelIF model)
	{
		auto p = goo_canvas_get_item(gooCanvas, (model is null) ? null : model.getCanvasItemModelStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItem, CanvasItemIF)(cast(GooCanvasItem*) p);
	}

	/**
	 * Gets the item at the given point.
	 *
	 * Params:
	 *     x = the x coordinate of the point.
	 *     y = the y coordinate of the point
	 *     isPointerEvent = %TRUE if the "pointer-events" property of
	 *         items should be used to determine which parts of the item are tested.
	 *
	 * Return: the item found at the given point, or %NULL if no
	 *     item was found.
	 */
	public CanvasItemIF getItemAt(double x, double y, bool isPointerEvent)
	{
		auto p = goo_canvas_get_item_at(gooCanvas, x, y, isPointerEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItem, CanvasItemIF)(cast(GooCanvasItem*) p);
	}

	/**
	 * Gets all items at the given point.
	 *
	 * Params:
	 *     x = the x coordinate of the point.
	 *     y = the y coordinate of the point
	 *     isPointerEvent = %TRUE if the "pointer-events" property of
	 *         items should be used to determine which parts of the item are tested.
	 *
	 * Return: a list of
	 *     items found at the given point, with the top item at the start of the list,
	 *     or %NULL if no items were found. The list must be freed with g_list_free().
	 */
	public ListG getItemsAt(double x, double y, bool isPointerEvent)
	{
		auto p = goo_canvas_get_items_at(gooCanvas, x, y, isPointerEvent);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Gets a list of items inside or outside a given area.
	 *
	 * Params:
	 *     area = the area to compare with each item's bounds.
	 *     insideArea = %TRUE if items inside @area should be returned, or %FALSE if
	 *         items outside @area should be returned.
	 *     allowOverlaps = %TRUE if items which are partly inside and partly outside
	 *         should be returned.
	 *     includeContainers = %TRUE if containers should be checked as well as
	 *         normal items.
	 *
	 * Return: a list of
	 *     items in the given area, or %NULL if no items are found.
	 *     The list should be freed with g_list_free().
	 */
	public ListG getItemsInArea(GooCanvasBounds* area, bool insideArea, bool allowOverlaps, bool includeContainers)
	{
		auto p = goo_canvas_get_items_in_area(gooCanvas, area, insideArea, allowOverlaps, includeContainers);
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p);
	}

	/**
	 * Gets the root item of the canvas, usually a #GooCanvasGroup.
	 *
	 * Return: the root item, or %NULL if there is no root item.
	 */
	public CanvasItemIF getRootItem()
	{
		auto p = goo_canvas_get_root_item(gooCanvas);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItem, CanvasItemIF)(cast(GooCanvasItem*) p);
	}

	/**
	 * Gets the root item model of the canvas.
	 *
	 * Return: the root item model, or %NULL if there is no root
	 *     item model.
	 */
	public CanvasItemModelIF getRootItemModel()
	{
		auto p = goo_canvas_get_root_item_model(gooCanvas);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItemModel, CanvasItemModelIF)(cast(GooCanvasItemModel*) p);
	}

	/**
	 * Gets the current scale of the canvas.
	 *
	 * The scale specifies the magnification factor of the canvas, e.g. if an item
	 * has a width of 2 pixels and the scale is set to 3, it will be displayed with
	 * a width of 2 x 3 = 6 pixels.
	 *
	 * Return: the current scale setting.
	 */
	public double getScale()
	{
		return goo_canvas_get_scale(gooCanvas);
	}

	/**
	 * Gets the static root item of the canvas.
	 *
	 * Static items are exactly the same as ordinary canvas items, except that
	 * they do not move or change size when the canvas is scrolled or the scale
	 * changes.
	 *
	 * Static items are added to the static root item in exactly the same way that
	 * ordinary items are added to the root item.
	 *
	 * Return: the static root item, or %NULL.
	 */
	public CanvasItemIF getStaticRootItem()
	{
		auto p = goo_canvas_get_static_root_item(gooCanvas);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItem, CanvasItemIF)(cast(GooCanvasItem*) p);
	}

	/**
	 * Gets the static root item model of the canvas.
	 *
	 * Static item models are exactly the same as ordinary item models, except that
	 * the corresponding items do not move or change size when the canvas is
	 * scrolled or the scale changes.
	 *
	 * Static items models are added to the static root item model in exactly the
	 * same way that ordinary item models are added to the root item model.
	 *
	 * Return: the static root item model, or %NULL.
	 */
	public CanvasItemModelIF getStaticRootItemModel()
	{
		auto p = goo_canvas_get_static_root_item_model(gooCanvas);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasItemModel, CanvasItemModelIF)(cast(GooCanvasItemModel*) p);
	}

	/**
	 * Grabs the keyboard focus for the given item.
	 *
	 * Params:
	 *     item = the item to grab the focus.
	 */
	public void grabFocus(CanvasItemIF item)
	{
		goo_canvas_grab_focus(gooCanvas, (item is null) ? null : item.getCanvasItemStruct());
	}

	/**
	 * Attempts to grab the keyboard for the given item.
	 *
	 * Params:
	 *     item = the item to grab the keyboard for.
	 *     ownerEvents = %TRUE if keyboard events for this application will be
	 *         reported normally, or %FALSE if all keyboard events will be reported with
	 *         respect to the grab item.
	 *     time = the time of the event that lead to the keyboard grab. This should
	 *         come from the relevant #GdkEvent.
	 *
	 * Return: %GDK_GRAB_SUCCESS if the grab succeeded.
	 */
	public GdkGrabStatus keyboardGrab(CanvasItemIF item, bool ownerEvents, uint time)
	{
		return goo_canvas_keyboard_grab(gooCanvas, (item is null) ? null : item.getCanvasItemStruct(), ownerEvents, time);
	}

	/**
	 * Ungrabs the keyboard, if the given item has the keyboard grab.
	 *
	 * Params:
	 *     item = the item that has the keyboard grab.
	 *     time = the time of the event that lead to the keyboard ungrab. This should
	 *         come from the relevant #GdkEvent.
	 */
	public void keyboardUngrab(CanvasItemIF item, uint time)
	{
		goo_canvas_keyboard_ungrab(gooCanvas, (item is null) ? null : item.getCanvasItemStruct(), time);
	}

	/**
	 * Attempts to grab the pointer for the given item.
	 *
	 * Params:
	 *     item = the item to grab the pointer for.
	 *     eventMask = the events to receive during the grab.
	 *     cursor = the cursor to display during the grab, or NULL.
	 *     time = the time of the event that lead to the pointer grab. This should
	 *         come from the relevant #GdkEvent.
	 *
	 * Return: %GDK_GRAB_SUCCESS if the grab succeeded.
	 */
	public GdkGrabStatus pointerGrab(CanvasItemIF item, GdkEventMask eventMask, Cursor cursor, uint time)
	{
		return goo_canvas_pointer_grab(gooCanvas, (item is null) ? null : item.getCanvasItemStruct(), eventMask, (cursor is null) ? null : cursor.getCursorStruct(), time);
	}

	/**
	 * Ungrabs the pointer, if the given item has the pointer grab.
	 *
	 * Params:
	 *     item = the item that has the grab.
	 *     time = the time of the event that lead to the pointer ungrab. This should
	 *         come from the relevant #GdkEvent.
	 */
	public void pointerUngrab(CanvasItemIF item, uint time)
	{
		goo_canvas_pointer_ungrab(gooCanvas, (item is null) ? null : item.getCanvasItemStruct(), time);
	}

	/**
	 * This function should only be used by #GooCanvasWidget and subclass
	 * implementations.
	 *
	 * It registers a widget item with the canvas, so that the canvas can do the
	 * necessary actions to move and resize the widget as needed.
	 *
	 * Params:
	 *     witem = a #GooCanvasWidget item.
	 */
	public void registerWidgetItem(CanvasWidget witem)
	{
		goo_canvas_register_widget_item(gooCanvas, (witem is null) ? null : witem.getCanvasWidgetStruct());
	}

	/**
	 * Renders all or part of a canvas to the given cairo context.
	 *
	 * This example code could be used in a #GtkPrintOperation
	 * #GtkPrintOperation::draw-page callback to print each page in a multi-page
	 * document (assuming the pages appear one after the other vertically in the
	 * canvas). Note the call to cairo_translate() to translate the output to
	 * the correct position on the printed page.
	 *
	 * <informalexample><programlisting>
	 * GooCanvasBounds bounds;
	 * bounds.x1 = 0;
	 * bounds.x2 = A4_PAGE_WIDTH;
	 * bounds.y1 = A4_PAGE_HEIGHT * page_num;
	 * bounds.y2 = A4_PAGE_HEIGHT * (page_num + 1);
	 *
	 * cr = gtk_print_context_get_cairo_context (print_context);
	 * cairo_translate (cr, 0, -A4_PAGE_HEIGHT * page_num);
	 * goo_canvas_render (GOO_CANVAS (canvas), cr, &bounds, 0.0);
	 * </programlisting></informalexample>
	 *
	 * Params:
	 *     cr = a cairo context.
	 *     bounds = the area to render, or %NULL to render the entire canvas.
	 *     scale = the scale to compare with each item's visibility
	 *         threshold to see if they should be rendered. This only affects items that
	 *         have their visibility set to %GOO_CANVAS_ITEM_VISIBLE_ABOVE_THRESHOLD.
	 */
	public void render(Context cr, GooCanvasBounds* bounds, double scale)
	{
		goo_canvas_render(gooCanvas, (cr is null) ? null : cr.getContextStruct(), bounds, scale);
	}

	/**
	 * This function is only intended to be used by subclasses of #GooCanvas or
	 * #GooCanvasItem implementations.
	 *
	 * Requests that the given bounds be redrawn. If @is_static is %TRUE the bounds
	 * are assumed to be in the static item coordinate space, otherwise they are
	 * assumed to be in the canvas coordinate space.
	 *
	 * If @is_static is %FALSE this function behaves the same as
	 * goo_canvas_request_redraw().
	 *
	 * Params:
	 *     bounds = the bounds of the item to redraw.
	 *     isStatic = if the item is static.
	 */
	public void requestItemRedraw(GooCanvasBounds* bounds, bool isStatic)
	{
		goo_canvas_request_item_redraw(gooCanvas, bounds, isStatic);
	}

	/**
	 * This function is only intended to be used by subclasses of #GooCanvas or
	 * #GooCanvasItem implementations.
	 *
	 * Requests that the given bounds be redrawn. The bounds must be in the canvas
	 * coordinate space.
	 *
	 * Params:
	 *     bounds = the bounds to redraw, in device space.
	 */
	public void requestRedraw(GooCanvasBounds* bounds)
	{
		goo_canvas_request_redraw(gooCanvas, bounds);
	}

	/**
	 * This function is only intended to be used by subclasses of #GooCanvas or
	 * #GooCanvasItem implementations.
	 *
	 * It schedules an update of the #GooCanvas. This will be performed in
	 * the idle loop, after all pending events have been handled, but before
	 * the canvas has been repainted.
	 */
	public void requestUpdate()
	{
		goo_canvas_request_update(gooCanvas);
	}

	/**
	 * Scrolls the canvas, placing the given point as close to the top-left of
	 * the view as possible.
	 *
	 * Params:
	 *     left = the x coordinate to scroll to.
	 *     top = the y coordinate to scroll to.
	 */
	public void scrollTo(double left, double top)
	{
		goo_canvas_scroll_to(gooCanvas, left, top);
	}

	/**
	 * Sets the bounds of the #GooCanvas, in canvas units.
	 *
	 * By default, canvas units are pixels, though the #GooCanvas:units property
	 * can be used to change the units to points, inches or millimeters.
	 *
	 * Params:
	 *     left = the left edge.
	 *     top = the top edge.
	 *     right = the right edge.
	 *     bottom = the bottom edge.
	 */
	public void setBounds(double left, double top, double right, double bottom)
	{
		goo_canvas_set_bounds(gooCanvas, left, top, right, bottom);
	}

	/**
	 * Sets the root item of the canvas. Any existing canvas items are removed.
	 *
	 * Params:
	 *     item = the root canvas item.
	 */
	public void setRootItem(CanvasItemIF item)
	{
		goo_canvas_set_root_item(gooCanvas, (item is null) ? null : item.getCanvasItemStruct());
	}

	/**
	 * Sets the root item model of the canvas.
	 *
	 * A hierarchy of canvas items will be created, corresponding to the hierarchy
	 * of items in the model. Any current canvas items will be removed.
	 *
	 * Params:
	 *     model = a #GooCanvasItemModel.
	 */
	public void setRootItemModel(CanvasItemModelIF model)
	{
		goo_canvas_set_root_item_model(gooCanvas, (model is null) ? null : model.getCanvasItemModelStruct());
	}

	/**
	 * Sets the scale of the canvas.
	 *
	 * The scale specifies the magnification factor of the canvas, e.g. if an item
	 * has a width of 2 pixels and the scale is set to 3, it will be displayed with
	 * a width of 2 x 3 = 6 pixels.
	 *
	 * Params:
	 *     scale = the new scale setting.
	 */
	public void setScale(double scale)
	{
		goo_canvas_set_scale(gooCanvas, scale);
	}

	/**
	 * Sets the static root item. Any existing static items are removed.
	 *
	 * Static items are exactly the same as ordinary canvas items, except that
	 * they do not move or change size when the canvas is scrolled or the scale
	 * changes.
	 *
	 * Static items are added to the static root item in exactly the same way that
	 * ordinary items are added to the root item.
	 *
	 * Params:
	 *     item = the static root item.
	 */
	public void setStaticRootItem(CanvasItemIF item)
	{
		goo_canvas_set_static_root_item(gooCanvas, (item is null) ? null : item.getCanvasItemStruct());
	}

	/**
	 * Sets the static root item model. Any existing static item models are
	 * removed.
	 *
	 * Static item models are exactly the same as ordinary item models, except that
	 * the corresponding items do not move or change size when the canvas is
	 * scrolled or the scale changes.
	 *
	 * Static items models are added to the static root item model in exactly the
	 * same way that ordinary item models are added to the root item model.
	 *
	 * Params:
	 *     model = the static root item model.
	 */
	public void setStaticRootItemModel(CanvasItemModelIF model)
	{
		goo_canvas_set_static_root_item_model(gooCanvas, (model is null) ? null : model.getCanvasItemModelStruct());
	}

	/**
	 * This function is only intended to be used when implementing new canvas
	 * items.
	 *
	 * It should be called in the finalize method of #GooCanvasItem
	 * objects, to remove the canvas item from the #GooCanvas's hash table.
	 *
	 * Params:
	 *     model = the item model whose canvas item is being finalized.
	 */
	public void unregisterItem(CanvasItemModelIF model)
	{
		goo_canvas_unregister_item(gooCanvas, (model is null) ? null : model.getCanvasItemModelStruct());
	}

	/**
	 * This function should only be used by #GooCanvasWidget and subclass
	 * implementations.
	 *
	 * It unregisters a widget item from the canvas, when the item is no longer in
	 * the canvas.
	 *
	 * Params:
	 *     witem = a #GooCanvasWidget item.
	 */
	public void unregisterWidgetItem(CanvasWidget witem)
	{
		goo_canvas_unregister_widget_item(gooCanvas, (witem is null) ? null : witem.getCanvasWidgetStruct());
	}

	/**
	 * This function is only intended to be used by subclasses of #GooCanvas or
	 * #GooCanvasItem implementations.
	 *
	 * It updates any items that need updating.
	 *
	 * If the bounds of items change, they will request a redraw of the old and
	 * new bounds so the display is updated correctly.
	 */
	public void update()
	{
		goo_canvas_update(gooCanvas);
	}

	protected class OnItemCreatedDelegateWrapper
	{
		void delegate(CanvasItemIF, CanvasItemModelIF, Canvas) dlg;
		gulong handlerId;
		ConnectFlags flags;
		this(void delegate(CanvasItemIF, CanvasItemModelIF, Canvas) dlg, gulong handlerId, ConnectFlags flags)
		{
			this.dlg = dlg;
			this.handlerId = handlerId;
			this.flags = flags;
		}
	}
	protected OnItemCreatedDelegateWrapper[] onItemCreatedListeners;

	/**
	 * This is emitted when a new canvas item is created, in model/view mode.
	 *
	 * Applications can set up signal handlers for the new items here.
	 *
	 * Params:
	 *     item = the new item.
	 *     model = the item's model.
	 */
	gulong addOnItemCreated(void delegate(CanvasItemIF, CanvasItemModelIF, Canvas) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		onItemCreatedListeners ~= new OnItemCreatedDelegateWrapper(dlg, 0, connectFlags);
		onItemCreatedListeners[onItemCreatedListeners.length - 1].handlerId = Signals.connectData(
			this,
			"item-created",
			cast(GCallback)&callBackItemCreated,
			cast(void*)onItemCreatedListeners[onItemCreatedListeners.length - 1],
			cast(GClosureNotify)&callBackItemCreatedDestroy,
			connectFlags);
		return onItemCreatedListeners[onItemCreatedListeners.length - 1].handlerId;
	}
	
	extern(C) static void callBackItemCreated(GooCanvas* canvasStruct, GooCanvasItem* item, GooCanvasItemModel* model,OnItemCreatedDelegateWrapper wrapper)
	{
		wrapper.dlg(ObjectG.getDObject!(CanvasItem, CanvasItemIF)(item), ObjectG.getDObject!(CanvasItemModel, CanvasItemModelIF)(model), wrapper.outer);
	}
	
	extern(C) static void callBackItemCreatedDestroy(OnItemCreatedDelegateWrapper wrapper, GClosure* closure)
	{
		wrapper.outer.internalRemoveOnItemCreated(wrapper);
	}

	protected void internalRemoveOnItemCreated(OnItemCreatedDelegateWrapper source)
	{
		foreach(index, wrapper; onItemCreatedListeners)
		{
			if (wrapper.dlg == source.dlg && wrapper.flags == source.flags && wrapper.handlerId == source.handlerId)
			{
				onItemCreatedListeners[index] = null;
				onItemCreatedListeners = std.algorithm.remove(onItemCreatedListeners, index);
				break;
			}
		}
	}
	
}
