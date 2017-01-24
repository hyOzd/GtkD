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


module goocanvas.CanvasTableModel;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasGroupModel;
private import goocanvas.CanvasItemModelIF;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * #GooCanvasTableModel is a model for a table container used to lay out other
 * canvas items. It is used in a similar way to how the GtkTable widget is used
 * to lay out GTK+ widgets.
 * 
 * Item models are added to the table using the normal methods, then
 * goo_canvas_item_model_set_child_properties() is used to specify how each
 * child item is to be positioned within the table (i.e. which row and column
 * it is in, how much padding it should have and whether it should expand or
 * shrink).
 * 
 * #GooCanvasTableModel is a subclass of #GooCanvasItemModelSimple and so
 * inherits all of the style properties such as "stroke-color", "fill-color"
 * and "line-width". Setting a style property on a #GooCanvasTableModel will
 * affect all children of the #GooCanvasTableModel (unless the children
 * override the property setting).
 * 
 * #GooCanvasTableModel implements the #GooCanvasItemModel interface, so you
 * can use the #GooCanvasItemModel functions such as
 * goo_canvas_item_model_raise() and goo_canvas_item_rotate(), and the
 * properties such as "visibility" and "pointer-events".
 * 
 * To create a #GooCanvasTableModel use goo_canvas_table_model_new().
 * 
 * To get or set the properties of an existing #GooCanvasTableModel, use
 * g_object_get() and g_object_set().
 */
public class CanvasTableModel : CanvasGroupModel
{
	/** the main Gtk struct */
	protected GooCanvasTableModel* gooCanvasTableModel;

	/** Get the main Gtk struct */
	public GooCanvasTableModel* getCanvasTableModelStruct()
	{
		return gooCanvasTableModel;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasTableModel;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasTableModel = cast(GooCanvasTableModel*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasTableModel* gooCanvasTableModel, bool ownedRef = false)
	{
		this.gooCanvasTableModel = gooCanvasTableModel;
		super(cast(GooCanvasGroupModel*)gooCanvasTableModel, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_table_model_get_type();
	}
}
