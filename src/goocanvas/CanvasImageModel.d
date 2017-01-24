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


module goocanvas.CanvasImageModel;

private import gdkpixbuf.Pixbuf;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasItemModelIF;
private import goocanvas.CanvasItemModelSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasImageModel represent a model for image items.
 * 
 * <note><para>
 * It is usually necessary to set the "scale-to-fit" property to %TRUE to
 * scale the image to fit the given rectangle. When using units other than
 * %GTK_UNIT_PIXEL it is also necessary to set the "width" and "height"
 * properties to set the desired size.
 * </para></note>
 * 
 * It is a subclass of #GooCanvasItemModelSimple and so inherits all of the
 * style properties such as "operator" and "pointer-events".
 * 
 * It also implements the #GooCanvasItemModel interface, so you can use the
 * #GooCanvasItemModel functions such as goo_canvas_item_model_raise() and
 * goo_canvas_item_model_rotate().
 * 
 * To create a #GooCanvasImageModel use goo_canvas_image_model_new().
 * 
 * To get or set the properties of an existing #GooCanvasImageModel, use
 * g_object_get() and g_object_set().
 * 
 * To respond to events such as mouse clicks on the image you must connect
 * to the signal handlers of the corresponding #GooCanvasImage objects.
 * (See goo_canvas_get_item() and #GooCanvas::item-created.)
 */
public class CanvasImageModel : CanvasItemModelSimple
{
	/** the main Gtk struct */
	protected GooCanvasImageModel* gooCanvasImageModel;

	/** Get the main Gtk struct */
	public GooCanvasImageModel* getCanvasImageModelStruct()
	{
		return gooCanvasImageModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasImageModel;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasImageModel = cast(GooCanvasImageModel*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasImageModel* gooCanvasImageModel, bool ownedRef = false)
	{
		this.gooCanvasImageModel = gooCanvasImageModel;
		super(cast(GooCanvasItemModelSimple*)gooCanvasImageModel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_image_model_get_type();
	}
}
