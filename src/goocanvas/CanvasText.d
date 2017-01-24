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


module goocanvas.CanvasText;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import goocanvas.CanvasItemIF;
private import goocanvas.CanvasItemSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasText represents a text item.
 * 
 * It is a subclass of #GooCanvasItemSimple and so inherits all of the style
 * properties such as "fill-color".
 * 
 * It also implements the #GooCanvasItem interface, so you can use the
 * #GooCanvasItem functions such as goo_canvas_item_raise() and
 * goo_canvas_item_rotate().
 * 
 * The #GooCanvasText:width and #GooCanvasText:height properties specify the
 * area of the item. If it exceeds that area because there is too much text,
 * it is clipped. The properties can be set to -1 to disable clipping.
 * 
 * To create a #GooCanvasText use goo_canvas_text_new().
 * 
 * To get or set the properties of an existing #GooCanvasText, use
 * g_object_get() and g_object_set().
 */
public class CanvasText : CanvasItemSimple
{
	/** the main Gtk struct */
	protected GooCanvasText* gooCanvasText;

	/** Get the main Gtk struct */
	public GooCanvasText* getCanvasTextStruct()
	{
		return gooCanvasText;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasText;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasText = cast(GooCanvasText*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasText* gooCanvasText, bool ownedRef = false)
	{
		this.gooCanvasText = gooCanvasText;
		super(cast(GooCanvasItemSimple*)gooCanvasText, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_text_get_type();
	}

	/**
	 * Gets the natural extents of the text, in the text item's coordinate space.
	 *
	 * The final extents of the text may be different, if the text item is placed
	 * in a layout container such as #GooCanvasTable.
	 *
	 * Params:
	 *     inkRect = the location to return the ink rect, or %NULL.
	 *     logicalRect = the location to return the logical rect, or %NULL.
	 */
	public void getNaturalExtents(PangoRectangle* inkRect, PangoRectangle* logicalRect)
	{
		goo_canvas_text_get_natural_extents(gooCanvasText, inkRect, logicalRect);
	}
}
