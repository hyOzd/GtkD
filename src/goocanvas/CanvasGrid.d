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


module goocanvas.CanvasGrid;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasItemIF;
private import goocanvas.CanvasItemSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasGrid represents a grid item.
 * A grid consists of a number of equally-spaced horizontal and vertical
 * grid lines, plus an optional border.
 * 
 * It is a subclass of #GooCanvasItemSimple and so inherits all of the style
 * properties such as "stroke-color", "fill-color" and "line-width".
 * 
 * It also implements the #GooCanvasItem interface, so you can use the
 * #GooCanvasItem functions such as goo_canvas_item_raise() and
 * goo_canvas_item_rotate().
 * 
 * To create a #GooCanvasGrid use goo_canvas_grid_new().
 * 
 * To get or set the properties of an existing #GooCanvasGrid, use
 * g_object_get() and g_object_set().
 * 
 * The grid's position and size is specified with the #GooCanvasGrid:x,
 * #GooCanvasGrid:y, #GooCanvasGrid:width and #GooCanvasGrid:height properties.
 * 
 * The #GooCanvasGrid:x-step and #GooCanvasGrid:y-step properties specify the
 * distance between grid lines. The  #GooCanvasGrid:x-offset and
 * #GooCanvasGrid:y-offset properties specify the distance before the first
 * grid lines.
 * 
 * The horizontal or vertical grid lines can be hidden using the
 * #GooCanvasGrid:show-horz-grid-lines and #GooCanvasGrid:show-vert-grid-lines
 * properties.
 * 
 * The width of the border can be set using the #GooCanvasGrid:border-width
 * property. The border is drawn outside the area specified with the
 * #GooCanvasGrid:x, #GooCanvasGrid:y, #GooCanvasGrid:width and
 * #GooCanvasGrid:height properties.
 * 
 * Other properties allow the colors and widths of the grid lines to be set.
 * The grid line color and width properties override the standard
 * #GooCanvasItemSimple:stroke-color and #GooCanvasItemSimple:line-width
 * properties, enabling different styles for horizontal and vertical grid lines.
 */
public class CanvasGrid : CanvasItemSimple
{
	/** the main Gtk struct */
	protected GooCanvasGrid* gooCanvasGrid;

	/** Get the main Gtk struct */
	public GooCanvasGrid* getCanvasGridStruct()
	{
		return gooCanvasGrid;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasGrid;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasGrid = cast(GooCanvasGrid*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasGrid* gooCanvasGrid, bool ownedRef = false)
	{
		this.gooCanvasGrid = gooCanvasGrid;
		super(cast(GooCanvasItemSimple*)gooCanvasGrid, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_grid_get_type();
	}
}
