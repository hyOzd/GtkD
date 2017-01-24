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


module goocanvas.CanvasWidget;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import goocanvas.CanvasItemIF;
private import goocanvas.CanvasItemSimple;
private import gtk.Widget;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * GooCanvasWidget provides support for placing any GtkWidget in the canvas.
 * 
 * The #GooCanvasWidget:width and #GooCanvasWidget:height properties specify
 * the widget's size. If either of them is -1, then the requested size of the
 * widget is used instead, which is the default for both width and height.
 * 
 * Note that there are a number of limitations in the use of #GooCanvasWidget:
 * 
 * <itemizedlist><listitem><para>
 * It doesn't support any transformation besides simple translation.
 * This means you can't scale a canvas with a #GooCanvasWidget in it.
 * </para></listitem><listitem><para>
 * It doesn't support layering, so you can't place other items beneath
 * or above the #GooCanvasWidget.
 * </para></listitem><listitem><para>
 * It doesn't support rendering of widgets to a given cairo_t, which
 * means you can't output the widget to a pdf or postscript file.
 * </para></listitem><listitem><para>
 * It doesn't have a model/view variant like the other standard items,
 * so it can only be used in a simple canvas without a model.
 * </para></listitem><listitem><para>
 * It can't be made a static item.
 * </para></listitem></itemizedlist>
 */
public class CanvasWidget : CanvasItemSimple
{
	/** the main Gtk struct */
	protected GooCanvasWidget* gooCanvasWidget;

	/** Get the main Gtk struct */
	public GooCanvasWidget* getCanvasWidgetStruct()
	{
		return gooCanvasWidget;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gooCanvasWidget;
	}

	protected override void setStruct(GObject* obj)
	{
		gooCanvasWidget = cast(GooCanvasWidget*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasWidget* gooCanvasWidget, bool ownedRef = false)
	{
		this.gooCanvasWidget = gooCanvasWidget;
		super(cast(GooCanvasItemSimple*)gooCanvasWidget, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_widget_get_type();
	}
}
