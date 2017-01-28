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


module goocanvas.CanvasEllipse;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasItemIF;
private import goocanvas.CanvasItemSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasEllipse represents an ellipse item.
 * 
 * It is a subclass of #GooCanvasItemSimple and so inherits all of the style
 * properties such as "stroke-color", "fill-color" and "line-width".
 * 
 * It also implements the #GooCanvasItem interface, so you can use the
 * #GooCanvasItem functions such as goo_canvas_item_raise() and
 * goo_canvas_item_rotate().
 * 
 * To create a #GooCanvasEllipse use goo_canvas_ellipse_new().
 * 
 * To get or set the properties of an existing #GooCanvasEllipse, use
 * g_object_get() and g_object_set().
 * 
 * The ellipse can be specified either with the "center-x", "center-y",
 * "radius-x" and "radius-y" properties, or with the "x", "y", "width" and
 * "height" properties.
 */
public class CanvasEllipse : CanvasItemSimple
{
	/** the main Gtk struct */
	protected GooCanvasEllipse* gooCanvasEllipse;

	/** Get the main Gtk struct */
	public GooCanvasEllipse* getCanvasEllipseStruct()
	{
		return gooCanvasEllipse;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasEllipse;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasEllipse = cast(GooCanvasEllipse*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasEllipse* gooCanvasEllipse, bool ownedRef = false)
	{
		this.gooCanvasEllipse = gooCanvasEllipse;
		super(cast(GooCanvasItemSimple*)gooCanvasEllipse, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_ellipse_get_type();
	}

	/**
	 * Creates a new ellipse item.
	 *
	 * <!--PARAMETERS-->
	 *
	 * Here's an example showing how to create an ellipse centered at (100.0,
	 * 100.0), with a horizontal radius of 50.0 and a vertical radius of 30.0.
	 * It is drawn with a red outline with a width of 5.0 and filled with blue:
	 *
	 * <informalexample><programlisting>
	 * GooCanvasItem *ellipse = goo_canvas_ellipse_new (mygroup, 100.0, 100.0, 50.0, 30.0,
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
	 *     centerX = the x coordinate of the center of the ellipse.
	 *     centerY = the y coordinate of the center of the ellipse.
	 *     radiusX = the horizontal radius of the ellipse.
	 *     radiusY = the vertical radius of the ellipse.
	 *
	 * Return: a new ellipse item.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(CanvasItemIF parent, double centerX, double centerY, double radiusX, double radiusY)
	{
		auto p = goo_canvas_ellipse_new((parent is null) ? null : parent.getCanvasItemStruct(), centerX, centerY, radiusX, radiusY);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GooCanvasEllipse*) p, true);
	}
}
