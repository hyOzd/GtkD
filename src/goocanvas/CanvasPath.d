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


module goocanvas.CanvasPath;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import goocanvas.CanvasItemIF;
private import goocanvas.CanvasItemSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasPath represents a path item, which is a series of one or more
 * lines, bezier curves, or elliptical arcs.
 * 
 * It is a subclass of #GooCanvasItemSimple and so inherits all of the style
 * properties such as "stroke-color", "fill-color" and "line-width".
 * 
 * It also implements the #GooCanvasItem interface, so you can use the
 * #GooCanvasItem functions such as goo_canvas_item_raise() and
 * goo_canvas_item_rotate().
 * 
 * #GooCanvasPath uses the same path specification strings as the Scalable
 * Vector Graphics (SVG) path element. For details see the
 * <ulink url="http://www.w3.org/Graphics/SVG/">SVG specification</ulink>.
 * 
 * To create a #GooCanvasPath use goo_canvas_path_new().
 * 
 * To get or set the properties of an existing #GooCanvasPath, use
 * g_object_get() and g_object_set().
 */
public class CanvasPath : CanvasItemSimple
{
	/** the main Gtk struct */
	protected GooCanvasPath* gooCanvasPath;

	/** Get the main Gtk struct */
	public GooCanvasPath* getCanvasPathStruct()
	{
		return gooCanvasPath;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasPath;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasPath = cast(GooCanvasPath*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasPath* gooCanvasPath, bool ownedRef = false)
	{
		this.gooCanvasPath = gooCanvasPath;
		super(cast(GooCanvasItemSimple*)gooCanvasPath, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_path_get_type();
	}
}