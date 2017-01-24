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


module goocanvas.CanvasImage;

private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasItemIF;
private import goocanvas.CanvasItemSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasImage represents an image item.
 * 
 * <note><para>
 * It is usually necessary to set the "scale-to-fit" property to %TRUE to
 * scale the image to fit the given rectangle.
 * </para></note>
 * 
 * It is a subclass of #GooCanvasItemSimple and so inherits all of the style
 * properties such as "operator" and "pointer-events".
 * 
 * It also implements the #GooCanvasItem interface, so you can use the
 * #GooCanvasItem functions such as goo_canvas_item_raise() and
 * goo_canvas_item_rotate().
 * 
 * To create a #GooCanvasImage use goo_canvas_image_new().
 * 
 * To get or set the properties of an existing #GooCanvasImage, use
 * g_object_get() and g_object_set().
 */
public class CanvasImage : CanvasItemSimple
{
	/** the main Gtk struct */
	protected GooCanvasImage* gooCanvasImage;

	/** Get the main Gtk struct */
	public GooCanvasImage* getCanvasImageStruct()
	{
		return gooCanvasImage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasImage;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasImage = cast(GooCanvasImage*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasImage* gooCanvasImage, bool ownedRef = false)
	{
		this.gooCanvasImage = gooCanvasImage;
		super(cast(GooCanvasItemSimple*)gooCanvasImage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_image_get_type();
	}
}
