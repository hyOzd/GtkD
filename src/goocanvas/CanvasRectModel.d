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


module goocanvas.CanvasRectModel;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasItemModelIF;
private import goocanvas.CanvasItemModelSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasRectModel represents a model for rectangle items.
 * 
 * It is a subclass of #GooCanvasItemModelSimple and so inherits all of the
 * style properties such as "stroke-color", "fill-color" and "line-width".
 * 
 * It also implements the #GooCanvasItemModel interface, so you can use the
 * #GooCanvasItemModel functions such as goo_canvas_item_model_raise() and
 * goo_canvas_item_model_rotate().
 * 
 * To create a #GooCanvasRectModel use goo_canvas_rect_model_new().
 * 
 * To get or set the properties of an existing #GooCanvasRectModel, use
 * g_object_get() and g_object_set().
 * 
 * To respond to events such as mouse clicks on the rectangle you must connect
 * to the signal handlers of the corresponding #GooCanvasRect objects.
 * (See goo_canvas_get_item() and #GooCanvas::item-created.)
 */
public class CanvasRectModel : CanvasItemModelSimple
{
	/** the main Gtk struct */
	protected GooCanvasRectModel* gooCanvasRectModel;

	/** Get the main Gtk struct */
	public GooCanvasRectModel* getCanvasRectModelStruct()
	{
		return gooCanvasRectModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasRectModel;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasRectModel = cast(GooCanvasRectModel*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasRectModel* gooCanvasRectModel, bool ownedRef = false)
	{
		this.gooCanvasRectModel = gooCanvasRectModel;
		super(cast(GooCanvasItemModelSimple*)gooCanvasRectModel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_rect_model_get_type();
	}
}
