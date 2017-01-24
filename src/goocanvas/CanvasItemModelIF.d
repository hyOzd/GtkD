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


module goocanvas.CanvasItemModelIF;

private import cairo.Matrix;
private import glib.Str;
private import gobject.ObjectClass;
private import gobject.ObjectG;
private import gobject.ParamSpec;
private import gobject.Signals;
private import gobject.Value;
private import goocanvas.CanvasItemModel;
private import goocanvas.CanvasItemModelIF;
private import goocanvas.CanvasStyle;
public  import gtkc.gdktypes;
private import gtkc.goocanvas;
public  import gtkc.goocanvastypes;
private import std.algorithm;


/**
 * #GooCanvasItemModel defines the interface that models for canvas items must
 * implement, and contains methods for operating on canvas item models.
 * 
 * <note><para>
 * The Model/View canvas feature may be removed in a future version of
 * GooCanvas.
 * </para></note>
 */
public interface CanvasItemModelIF{
	/** Get the main Gtk struct */
	public GooCanvasItemModel* getCanvasItemModelStruct();

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/**
	 * This function is only intended to be used when implementing new canvas
	 * item models, specifically layout container item models such as
	 * #GooCanvasTableModel.
	 *
	 * It finds a child property of a canvas item class by name.
	 *
	 * Params:
	 *     mclass = a #GObjectClass
	 *     propertyName = the name of the child property to find
	 *
	 * Return: The #GParamSpec of the child
	 *     property or %NULL if @class has no child property with that name.
	 */
	public static ParamSpec classFindChildProperty(ObjectClass mclass, string propertyName);

	/**
	 * This function is only intended to be used when implementing new canvas
	 * item models, specifically layout container item models such as
	 * #GooCanvasTableModel.
	 *
	 * It installs a child property on a canvas item class.
	 *
	 * Params:
	 *     mclass = a #GObjectClass
	 *     propertyId = the id for the property
	 *     pspec = the #GParamSpec for the property
	 */
	public static void classInstallChildProperty(ObjectClass mclass, uint propertyId, ParamSpec pspec);

	/**
	 * This function is only intended to be used when implementing new canvas
	 * item models, specifically layout container item models such as
	 * #GooCanvasTableModel.
	 *
	 * It returns all child properties of a canvas item class.
	 *
	 * Params:
	 *     mclass = a #GObjectClass
	 *
	 * Return: a newly allocated array of #GParamSpec*. The array must be freed with g_free().
	 */
	public static ParamSpec[] classListChildProperties(ObjectClass mclass);

	/**
	 * Adds a child at the given stack position.
	 *
	 * Params:
	 *     child = the child to add.
	 *     position = the position of the child, or -1 to place it last (at the top of
	 *         the stacking order).
	 */
	public void addChild(CanvasItemModelIF child, int position);

	/**
	 * Animates a model from its current position to the given offsets, scale
	 * and rotation.
	 *
	 * Params:
	 *     x = the final x coordinate.
	 *     y = the final y coordinate.
	 *     scale = the final scale.
	 *     degrees = the final rotation. This can be negative to rotate anticlockwise,
	 *         and can also be greater than 360 to rotate a number of times.
	 *     absolute = if the @x, @y, @scale and @degrees values are absolute, or
	 *         relative to the current transform. Note that absolute animations only work
	 *         if the model currently has a simple transform. If the model has a shear or
	 *         some other complicated transform it may result in strange animations.
	 *     duration = the duration of the animation, in milliseconds (1/1000ths of a
	 *         second).
	 *     stepTime = the time between each animation step, in milliseconds.
	 *     type = specifies what happens when the animation finishes.
	 */
	public void animate(double x, double y, double scale, double degrees, bool absolute, int duration, int stepTime, GooCanvasAnimateType type);

	/**
	 * Attempts to find the given child with the container's stack.
	 *
	 * Params:
	 *     child = the child to find.
	 *
	 * Return: the position of the given @child, or -1 if it isn't found.
	 */
	public int findChild(CanvasItemModelIF child);

	/**
	 * Gets the child at the given stack position.
	 *
	 * Params:
	 *     childNum = the position of a child in the container's stack.
	 *
	 * Return: the child at the given stack position, or %NULL
	 *     if @child_num is out of range.
	 */
	public CanvasItemModelIF getChild(int childNum);

	/**
	 * Gets the values of one or more child properties of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItemModel.
	 *     varArgs = pairs of property names and value pointers, and a terminating
	 *         %NULL.
	 */
	public void getChildPropertiesValist(CanvasItemModelIF child, void* varArgs);

	/**
	 * Gets a child property of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItemModel.
	 *     propertyName = the name of the child property to get.
	 *     value = a location to return the value.
	 */
	public void getChildProperty(CanvasItemModelIF child, string propertyName, Value value);

	/**
	 * Gets the number of children of the container.
	 *
	 * Return: the number of children.
	 */
	public int getNChildren();

	/**
	 * Gets the parent of the given model.
	 *
	 * Return: the parent model, or %NULL if the model has no parent.
	 */
	public CanvasItemModelIF getParent();

	/**
	 * This function can be used to get the position, scale and rotation of an
	 * item model, providing that the model has a simple transformation matrix
	 * (e.g. set with goo_canvas_item_model_set_simple_transform(), or using a
	 * combination of simple translate, scale and rotate operations). If the model
	 * has a complex transformation matrix the results will be incorrect.
	 *
	 * Params:
	 *     x = returns the x coordinate of the origin of the model's coordinate space.
	 *     y = returns the y coordinate of the origin of the model's coordinate space.
	 *     scale = returns the scale of the model.
	 *     rotation = returns the clockwise rotation of the model, in degrees (0-360).
	 *
	 * Return: %TRUE if a transform is set.
	 */
	public bool getSimpleTransform(double* x, double* y, double* scale, double* rotation);

	/**
	 * Gets the model's style. If the model doesn't have its own style it will
	 * return its parent's style.
	 *
	 * Return: the model's style.
	 */
	public CanvasStyle getStyle();

	/**
	 * Gets the transformation matrix of an item model.
	 *
	 * Params:
	 *     transform = the place to store the transform.
	 *
	 * Return: %TRUE if a transform is set.
	 */
	public bool getTransform(Matrix transform);

	/**
	 * Tests to see if the given item model is a container.
	 *
	 * Return: %TRUE if the item model is a container.
	 */
	public bool isContainer();

	/**
	 * Lowers a model in the stacking order.
	 *
	 * Params:
	 *     below = the item model to lower @model below, or %NULL to lower @model to the
	 *         bottom of the stack.
	 */
	public void lower(CanvasItemModelIF below);

	/**
	 * Moves a child to a new stack position.
	 *
	 * Params:
	 *     oldPosition = the current position of the child.
	 *     newPosition = the new position of the child.
	 */
	public void moveChild(int oldPosition, int newPosition);

	/**
	 * Raises a model in the stacking order.
	 *
	 * Params:
	 *     above = the item model to raise @model above, or %NULL to raise @model to the top
	 *         of the stack.
	 */
	public void raise(CanvasItemModelIF above);

	/**
	 * Removes a model from its parent. If the model is in a canvas it will be
	 * removed.
	 *
	 * This would normally also result in the model being freed.
	 */
	public void remove();

	/**
	 * Removes the child at the given position.
	 *
	 * Params:
	 *     childNum = the position of the child to remove.
	 */
	public void removeChild(int childNum);

	/**
	 * Rotates the model's coordinate system by the given amount, about the given
	 * origin.
	 *
	 * Params:
	 *     degrees = the clockwise angle of rotation.
	 *     cx = the x coordinate of the origin of the rotation.
	 *     cy = the y coordinate of the origin of the rotation.
	 */
	public void rotate(double degrees, double cx, double cy);

	/**
	 * Scales the model's coordinate system by the given amounts.
	 *
	 * Params:
	 *     sx = the amount to scale the horizontal axis.
	 *     sy = the amount to scale the vertical axis.
	 */
	public void scale(double sx, double sy);

	/**
	 * Sets the values of one or more child properties of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItemModel.
	 *     varArgs = pairs of property names and values, and a terminating %NULL.
	 */
	public void setChildPropertiesValist(CanvasItemModelIF child, void* varArgs);

	/**
	 * Sets a child property of @child.
	 *
	 * Params:
	 *     child = a child #GooCanvasItemModel.
	 *     propertyName = the name of the child property to set.
	 *     value = the value to set the property to.
	 */
	public void setChildProperty(CanvasItemModelIF child, string propertyName, Value value);

	/**
	 * This function is only intended to be used when implementing new canvas
	 * item models (specifically container models such as #GooCanvasGroupModel).
	 * It sets the parent of the child model.
	 * <!--PARAMETERS-->
	 * <note><para>
	 * This function cannot be used to add a model to a group
	 * or to change the parent of a model.
	 * To do that use the #GooCanvasItemModel:parent property.
	 * </para></note>
	 *
	 * Params:
	 *     parent = the new parent item model.
	 */
	public void setParent(CanvasItemModelIF parent);

	/**
	 * A convenience function to set the item model's transformation matrix.
	 *
	 * Params:
	 *     x = the x coordinate of the origin of the model's coordinate space.
	 *     y = the y coordinate of the origin of the model's coordinate space.
	 *     scale = the scale of the model.
	 *     rotation = the clockwise rotation of the model, in degrees.
	 */
	public void setSimpleTransform(double x, double y, double scale, double rotation);

	/**
	 * Sets the model's style, by copying the properties from the given style.
	 *
	 * Params:
	 *     style = a style.
	 */
	public void setStyle(CanvasStyle style);

	/**
	 * Sets the transformation matrix of an item model.
	 *
	 * Params:
	 *     transform = the new transformation matrix, or %NULL to reset the
	 *         transformation to the identity matrix.
	 */
	public void setTransform(Matrix transform);

	/**
	 * Skews the model's coordinate system along the x axis by the given amount,
	 * about the given origin.
	 *
	 * Params:
	 *     degrees = the skew angle.
	 *     cx = the x coordinate of the origin of the skew transform.
	 *     cy = the y coordinate of the origin of the skew transform.
	 */
	public void skewX(double degrees, double cx, double cy);

	/**
	 * Skews the model's coordinate system along the y axis by the given amount,
	 * about the given origin.
	 *
	 * Params:
	 *     degrees = the skew angle.
	 *     cx = the x coordinate of the origin of the skew transform.
	 *     cy = the y coordinate of the origin of the skew transform.
	 */
	public void skewY(double degrees, double cx, double cy);

	/**
	 * Stops any current animation for the given model, leaving it at its current
	 * position.
	 */
	public void stopAnimation();

	/**
	 * Translates the origin of the model's coordinate system by the given amounts.
	 *
	 * Params:
	 *     tx = the amount to move the origin in the horizontal direction.
	 *     ty = the amount to move the origin in the vertical direction.
	 */
	public void translate(double tx, double ty);
	/**
	 * Emitted when the item model animation has finished.
	 *
	 * Params:
	 *     stopped = if the animation was explicitly stopped.
	 */
	gulong addOnAnimationFinished(void delegate(bool, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

	/**
	 * Emitted when the item model has been changed.
	 *
	 * Params:
	 *     recomputeBounds = if the bounds of the item need to be recomputed.
	 */
	gulong addOnChanged(void delegate(bool, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

	/**
	 * Emitted when a child has been added.
	 *
	 * Params:
	 *     childNum = the index of the new child.
	 */
	gulong addOnChildAdded(void delegate(int, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

	/**
	 * Emitted when a child has been moved in the stacking order.
	 *
	 * Params:
	 *     oldChildNum = the old index of the child.
	 *     newChildNum = the new index of the child.
	 */
	gulong addOnChildMoved(void delegate(int, int, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

	/**
	 * Emitted for each child property that has changed.
	 * The signal's detail holds the property name.
	 *
	 * Params:
	 *     pspec = the #GParamSpec of the changed child property.
	 */
	gulong addOnChildNotify(void delegate(ParamSpec, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

	/**
	 * Emitted when a child has been removed.
	 *
	 * Params:
	 *     childNum = the index of the child that was removed.
	 */
	gulong addOnChildRemoved(void delegate(int, CanvasItemModelIF) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	;

}
