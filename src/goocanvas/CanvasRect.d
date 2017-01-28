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


module goocanvas.CanvasRect;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasItemIF;
private import goocanvas.CanvasItemSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasRect represents a rectangle item.
 * 
 * It is a subclass of #GooCanvasItemSimple and so inherits all of the style
 * properties such as "stroke-color", "fill-color" and "line-width".
 * 
 * It also implements the #GooCanvasItem interface, so you can use the
 * #GooCanvasItem functions such as goo_canvas_item_raise() and
 * goo_canvas_item_rotate().
 * 
 * To create a #GooCanvasRect use goo_canvas_rect_new().
 * 
 * To get or set the properties of an existing #GooCanvasRect, use
 * g_object_get() and g_object_set().
 */
public class CanvasRect : CanvasItemSimple
{
	/** the main Gtk struct */
	protected GooCanvasRect* gooCanvasRect;

	/** Get the main Gtk struct */
	public GooCanvasRect* getCanvasRectStruct()
	{
		return gooCanvasRect;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasRect;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasRect = cast(GooCanvasRect*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasRect* gooCanvasRect, bool ownedRef = false)
	{
		this.gooCanvasRect = gooCanvasRect;
		super(cast(GooCanvasItemSimple*)gooCanvasRect, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_rect_get_type();
	}

	/**
	 * Creates a new rectangle item.
	 *
	 * <!--PARAMETERS-->
	 *
	 * Here's an example showing how to create a rectangle at (100,100) with a
	 * width of 200 and a height of 100.
	 *
	 * <informalexample><programlisting>
	 * GooCanvasItem *rect = goo_canvas_rect_new (mygroup, 100.0, 100.0, 200.0, 100.0,
	 * "stroke-color", "red",
	 * "line-width", 5.0,
	 * "fill-color", "blue",
	 * NULL);
	 * </programlisting></informalexample>
	 *
	 * Params:
	 *     parent = the parent item, or %NULL. If a parent is specified, it will assume
	 *         ownership of the item, and the item will automatically be freed when it is
	 *         removed from the parent. Otherwise call g_object_unref() to free it.
	 *     x = the x coordinate of the left of the rectangle.
	 *     y = the y coordinate of the top of the rectangle.
	 *     width = the width of the rectangle.
	 *     height = the height of the rectangle.
	 *
	 * Return: a new rectangle item.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(CanvasItemIF parent, double x, double y, double width, double height)
	{
		auto p = goo_canvas_rect_new((parent is null) ? null : parent.getCanvasItemStruct(), x, y, width, height);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GooCanvasRect*) p, true);
	}
}
