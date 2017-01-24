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


module goocanvas.CanvasGroupModel;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasItemModelIF;
private import goocanvas.CanvasItemModelSimple;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * #GooCanvasGroupModel represents a group of items. Groups can be nested to
 * any depth, to create a hierarchy of items. Items are ordered within each
 * group, with later items being displayed above earlier items.
 * 
 * #GooCanvasGroupModel is a subclass of #GooCanvasItemModelSimple and so
 * inherits all of the style properties such as "stroke-color", "fill-color"
 * and "line-width". Setting a style property on a #GooCanvasGroupModel will
 * affect all children of the #GooCanvasGroupModel (unless the children
 * override the property setting).
 * 
 * #GooCanvasGroupModel implements the #GooCanvasItemModel interface, so you
 * can use the #GooCanvasItemModel functions such as
 * goo_canvas_item_model_raise() and goo_canvas_item_model_rotate(), and the
 * properties such as "visibility" and "pointer-events".
 * 
 * To create a #GooCanvasGroupModel use goo_canvas_group_model_new().
 * 
 * To get or set the properties of an existing #GooCanvasGroupModel, use
 * g_object_get() and g_object_set().
 * 
 * To respond to events such as mouse clicks on the group you must connect
 * to the signal handlers of the corresponding #GooCanvasGroup objects.
 * (See goo_canvas_get_item() and #GooCanvas::item-created.)
 */
public class CanvasGroupModel : CanvasItemModelSimple
{
	/** the main Gtk struct */
	protected GooCanvasGroupModel* gooCanvasGroupModel;

	/** Get the main Gtk struct */
	public GooCanvasGroupModel* getCanvasGroupModelStruct()
	{
		return gooCanvasGroupModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasGroupModel;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasGroupModel = cast(GooCanvasGroupModel*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasGroupModel* gooCanvasGroupModel, bool ownedRef = false)
	{
		this.gooCanvasGroupModel = gooCanvasGroupModel;
		super(cast(GooCanvasItemModelSimple*)gooCanvasGroupModel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_group_model_get_type();
	}
}
