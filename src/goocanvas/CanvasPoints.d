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


module goocanvas.CanvasPoints;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;


/**
 * #GooCairoPoints represents an array of points.
 */
public class CanvasPoints
{
	/** the main Gtk struct */
	protected GooCanvasPoints* gooCanvasPoints;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public GooCanvasPoints* getCanvasPointsStruct()
	{
		return gooCanvasPoints;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gooCanvasPoints;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GooCanvasPoints* gooCanvasPoints, bool ownedRef = false)
	{
		this.gooCanvasPoints = gooCanvasPoints;
		this.ownedRef = ownedRef;
	}


	/** */
	public static GType getType()
	{
		return goo_canvas_points_get_type();
	}

	/**
	 * Creates a new #GooCanvasPoints struct with space for the given number of
	 * points. It should be freed with goo_canvas_points_unref().
	 *
	 * Params:
	 *     numPoints = the number of points to create space for.
	 *
	 * Return: a new #GooCanvasPoints struct.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(int numPoints)
	{
		auto p = goo_canvas_points_new(numPoints);
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GooCanvasPoints*) p);
	}

	/**
	 * Gets the coordinates of a point in the #GooCanvasPoints struct.
	 *
	 * Params:
	 *     idx = index of point to get.
	 *     x = location to store x coordinate.
	 *     y = location to store y coordinate.
	 *
	 * Since: 2.0.1
	 */
	public void getPoint(int idx, out double x, out double y)
	{
		goo_canvas_points_get_point(gooCanvasPoints, idx, &x, &y);
	}

	/**
	 * Increments the reference count of the given #GooCanvasPoints struct.
	 *
	 * Return: the #GooCanvasPoints struct.
	 */
	public CanvasPoints doref()
	{
		auto p = goo_canvas_points_ref(gooCanvasPoints);
		
		if(p is null)
		{
			return null;
		}
		
		return ObjectG.getDObject!(CanvasPoints)(cast(GooCanvasPoints*) p, true);
	}

	/**
	 * Sets the coordinates of a point in the #GooCanvasPoints struct.
	 *
	 * Params:
	 *     idx = index of point to set.
	 *     x = x value to set point coordinate to.
	 *     y = y value to set point coordinate to.
	 *
	 * Since: 2.0.1
	 */
	public void setPoint(int idx, double x, double y)
	{
		goo_canvas_points_set_point(gooCanvasPoints, idx, x, y);
	}

	/**
	 * Decrements the reference count of the given #GooCanvasPoints struct,
	 * freeing it if the reference count falls to zero.
	 */
	public void unref()
	{
		goo_canvas_points_unref(gooCanvasPoints);
	}
}
