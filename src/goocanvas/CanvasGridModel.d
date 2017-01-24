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


module goocanvas.CanvasGridModel;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasItemModelIF;
private import goocanvas.CanvasItemModelSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasGridModel represents a model for grid items.
 * A grid consists of a number of equally-spaced horizontal and vertical
 * grid lines, plus an optional border.
 * 
 * It is a subclass of #GooCanvasItemModelSimple and so inherits all of the
 * style properties such as "stroke-color", "fill-color" and "line-width".
 * 
 * It also implements the #GooCanvasItemModel interface, so you can use the
 * #GooCanvasItemModel functions such as goo_canvas_item_model_raise() and
 * goo_canvas_item_model_rotate().
 * 
 * To create a #GooCanvasGridModel use goo_canvas_grid_model_new().
 * 
 * To get or set the properties of an existing #GooCanvasGridModel, use
 * g_object_get() and g_object_set().
 * 
 * To respond to events such as mouse clicks on the grid you must connect
 * to the signal handlers of the corresponding #GooCanvasGrid objects.
 * (See goo_canvas_get_item() and #GooCanvas::item-created.)
 * 
 * The grid's position and size is specified with the #GooCanvasGridModel:x,
 * #GooCanvasGridModel:y, #GooCanvasGridModel:width and
 * #GooCanvasGridModel:height properties.
 * 
 * The #GooCanvasGridModel:x-step and #GooCanvasGridModel:y-step properties
 * specify the distance between grid lines. The  #GooCanvasGridModel:x-offset
 * and #GooCanvasGridModel:y-offset properties specify the distance before the
 * first grid lines.
 * 
 * The horizontal or vertical grid lines can be hidden using the
 * #GooCanvasGridModel:show-horz-grid-lines and
 * #GooCanvasGridModel:show-vert-grid-lines properties.
 * 
 * The width of the border can be set using the #GooCanvasGridModel:border-width
 * property. The border is drawn outside the area specified with the
 * #GooCanvasGridModel:x, #GooCanvasGridModel:y, #GooCanvasGridModel:width and
 * #GooCanvasGridModel:height properties.
 * 
 * Other properties allow the colors and widths of the grid lines to be set.
 * The grid line color and width properties override the standard
 * #GooCanvasItemModelSimple:stroke-color and
 * #GooCanvasItemModelSimple:line-width properties, enabling different styles
 * for horizontal and vertical grid lines.
 */
public class CanvasGridModel : CanvasItemModelSimple
{
	/** the main Gtk struct */
	protected GooCanvasGridModel* gooCanvasGridModel;

	/** Get the main Gtk struct */
	public GooCanvasGridModel* getCanvasGridModelStruct()
	{
		return gooCanvasGridModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasGridModel;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasGridModel = cast(GooCanvasGridModel*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasGridModel* gooCanvasGridModel, bool ownedRef = false)
	{
		this.gooCanvasGridModel = gooCanvasGridModel;
		super(cast(GooCanvasItemModelSimple*)gooCanvasGridModel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_grid_model_get_type();
	}
}
