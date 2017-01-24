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


module goocanvas.CanvasItemSimple;

private import cairo.Context;
private import gobject.ObjectG;
private import goocanvas.CanvasItemIF;
private import goocanvas.CanvasItemModelIF;
private import goocanvas.CanvasItemT;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * #GooCanvasItemSimple is used as a base class for all of the standard canvas
 * items. It can also be used as the base class for new custom canvas items.
 * 
 * It provides default implementations for many of the #GooCanvasItem
 * methods.
 * 
 * For very simple items, all that is needed is to implement the create_path()
 * method. (#GooCanvasEllipse, #GooCanvasRect and #GooCanvasPath do this.)
 * 
 * More complicated items need to implement the update(), paint() and
 * is_item_at() methods instead. (#GooCanvasImage, #GooCanvasPolyline,
 * #GooCanvasText and #GooCanvasWidget do this.) They may also need to
 * override some of the other GooCanvasItem methods such as set_canvas(),
 * set_parent() or allocate_area() if special code is needed. (#GooCanvasWidget
 * does this to make sure the #GtkWidget is embedded in the #GooCanvas widget
 * correctly.)
 */
public class CanvasItemSimple : ObjectG, CanvasItemIF
{
	/** the main Gtk struct */
	protected GooCanvasItemSimple* gooCanvasItemSimple;

	/** Get the main Gtk struct */
	public GooCanvasItemSimple* getCanvasItemSimpleStruct()
	{
		return gooCanvasItemSimple;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasItemSimple;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasItemSimple = cast(GooCanvasItemSimple*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasItemSimple* gooCanvasItemSimple, bool ownedRef = false)
	{
		this.gooCanvasItemSimple = gooCanvasItemSimple;
		super(cast(GObject*)gooCanvasItemSimple, ownedRef);
	}

	// add the CanvasItem capabilities
	mixin CanvasItemT!(GooCanvasItemSimple);


	/** */
	public static GType getType()
	{
		return goo_canvas_item_simple_get_type();
	}

	/**
	 * This function is intended to be used by subclasses of #GooCanvasItemSimple.
	 *
	 * It is used as a callback for the "changed" signal of the item models.
	 * It requests an update or redraw of the item as appropriate.
	 *
	 * Params:
	 *     recomputeBounds = if the item's bounds need to be recomputed.
	 */
	public void changed(bool recomputeBounds)
	{
		goo_canvas_item_simple_changed(gooCanvasItemSimple, recomputeBounds);
	}

	/**
	 * This function is intended to be used by subclasses of #GooCanvasItemSimple.
	 *
	 * It checks if the given point is in the current path, using the item's
	 * style settings.
	 *
	 * Params:
	 *     x = the x coordinate of the point.
	 *     y = the y coordinate of the point.
	 *     cr = a cairo context.
	 *     pointerEvents = specifies which parts of the path to check.
	 *
	 * Return: %TRUE if the given point is in the current path.
	 */
	public bool checkInPath(double x, double y, Context cr, GooCanvasPointerEvents pointerEvents)
	{
		return goo_canvas_item_simple_check_in_path(gooCanvasItemSimple, x, y, (cr is null) ? null : cr.getContextStruct(), pointerEvents) != 0;
	}

	/**
	 * This function is intended to be used by subclasses of #GooCanvasItemSimple,
	 * typically in their update() or get_requested_area() methods.
	 *
	 * It ensures that the item's style is setup correctly. If the item has its
	 * own #GooCanvasStyle it makes sure the parent is set correctly. If it
	 * doesn't have its own style it uses the parent item's style.
	 */
	public void checkStyle()
	{
		goo_canvas_item_simple_check_style(gooCanvasItemSimple);
	}

	/**
	 * Gets the item's line width.
	 *
	 * Return: the item's line width.
	 */
	public double getLineWidth()
	{
		return goo_canvas_item_simple_get_line_width(gooCanvasItemSimple);
	}

	/**
	 * This function is intended to be used by subclasses of #GooCanvasItemSimple,
	 * typically in their update() or get_requested_area() methods.
	 *
	 * It calculates the bounds of the current path, using the item's style
	 * settings, and stores the results in the given #GooCanvasBounds struct.
	 *
	 * The returned bounds contains the bounding box of the path in device space,
	 * converted to user space coordinates. To calculate the bounds completely in
	 * user space, use cairo_identity_matrix() to temporarily reset the current
	 * transformation matrix to the identity matrix.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *     bounds = the #GooCanvasBounds struct to store the resulting bounding box.
	 */
	public void getPathBounds(Context cr, GooCanvasBounds* bounds)
	{
		goo_canvas_item_simple_get_path_bounds(gooCanvasItemSimple, (cr is null) ? null : cr.getContextStruct(), bounds);
	}

	/**
	 * This function is intended to be used by subclasses of #GooCanvasItemSimple.
	 *
	 * It paints the current path, using the item's style settings.
	 *
	 * Params:
	 *     cr = a cairo context.
	 */
	public void paintPath(Context cr)
	{
		goo_canvas_item_simple_paint_path(gooCanvasItemSimple, (cr is null) ? null : cr.getContextStruct());
	}

	/**
	 * This function should be called by subclasses of #GooCanvasItemSimple
	 * in their set_model() method.
	 *
	 * Params:
	 *     model = the model that @item will view.
	 */
	public void setModel(CanvasItemModelIF model)
	{
		goo_canvas_item_simple_set_model(gooCanvasItemSimple, (model is null) ? null : model.getCanvasItemModelStruct());
	}

	/**
	 * This function is intended to be used by subclasses of #GooCanvasItemSimple,
	 * typically in their update() or get_requested_area() methods.
	 *
	 * It converts the item's bounds to a bounding box in the canvas (device)
	 * coordinate space.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *     bounds = the bounds of the item, in the item's coordinate space.
	 */
	public void userBoundsToDevice(Context cr, GooCanvasBounds* bounds)
	{
		goo_canvas_item_simple_user_bounds_to_device(gooCanvasItemSimple, (cr is null) ? null : cr.getContextStruct(), bounds);
	}

	/**
	 * This function is intended to be used by subclasses of #GooCanvasItemSimple,
	 * typically in their get_requested_area() method.
	 *
	 * It converts the item's bounds to a bounding box in its parent's coordinate
	 * space. If the item has no transformation matrix set then no conversion is
	 * needed.
	 *
	 * Params:
	 *     cr = a cairo context.
	 *     bounds = the bounds of the item, in the item's coordinate space.
	 */
	public void userBoundsToParent(Context cr, GooCanvasBounds* bounds)
	{
		goo_canvas_item_simple_user_bounds_to_parent(gooCanvasItemSimple, (cr is null) ? null : cr.getContextStruct(), bounds);
	}
}
