/*
 * This file is part of gtkD.
 *
 * gtkD is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * gtkD is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with gtkD; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */
 
// generated automatically - do not change
// find conversion definition on APILookup.txt
// implement new conversion functionalities on the wrap.utils pakage

/*
 * Conversion parameters:
 * inFile  = 
 * outPack = gtk
 * outFile = IconInfo
 * strct   = GtkIconInfo
 * realStrct=
 * ctorStrct=
 * clss    = IconInfo
 * interf  = 
 * class Code: No
 * interface Code: No
 * template for:
 * extend  = 
 * implements:
 * prefixes:
 * 	- gtk_icon_info_
 * omit structs:
 * omit prefixes:
 * omit code:
 * imports:
 * 	- glib.Str
 * 	- gtk.IconInfo
 * 	- gdk.Pixbuf
 * structWrap:
 * 	- GdkPixbuf* -> Pixbuf
 * 	- GtkIconInfo* -> IconInfo
 * module aliases:
 * local aliases:
 */

module gtk.IconInfo;

private import gtkc.gtktypes;

private import gtkc.gtk;

private import glib.Str;
private import gtk.IconInfo;
private import gdk.Pixbuf;



/**
 * Description
 * GtkIconTheme provides a facility for looking up icons by name
 * and size. The main reason for using a name rather than simply
 * providing a filename is to allow different icons to be used
 * depending on what icon theme is selecetd
 * by the user. The operation of icon themes on Linux and Unix
 * follows the Icon
 * Theme Specification. There is a default icon theme,
 * named hicolor where applications should install
 * their icons, but more additional application themes can be
 * installed as operating system vendors and users choose.
 * Named icons are similar to the Themeable Stock Images(3)
 * facility, and the distinction between the two may be a bit confusing.
 * A few things to keep in mind:
 * Stock images usually are used in conjunction with
 * Stock Items(3)., such as GTK_STOCK_OK or
 * GTK_STOCK_OPEN. Named icons are easier to set up and therefore
 * are more useful for new icons that an application wants to
 * add, such as application icons or window icons.
 * Stock images can only be loaded at the symbolic sizes defined
 * by the GtkIconSize enumeration, or by custom sizes defined
 * by gtk_icon_size_register(), while named icons are more flexible
 * and any pixel size can be specified.
 * Because stock images are closely tied to stock items, and thus
 * to actions in the user interface, stock images may come in
 * multiple variants for different widget states or writing
 * directions.
 * A good rule of thumb is that if there is a stock image for what
 * you want to use, use it, otherwise use a named icon. It turns
 * out that internally stock images are generally defined in
 * terms of one or more named icons. (An example of the
 * more than one case is icons that depend on writing direction;
 * GTK_STOCK_GO_FORWARD uses the two themed icons
 * "gtk-stock-go-forward-ltr" and "gtk-stock-go-forward-rtl".)
 * In many cases, named themes are used indirectly, via GtkImage
 * or stock items, rather than directly, but looking up icons
 * directly is also simple. The GtkIconTheme object acts
 * as a database of all the icons in the current theme. You
 * can create new GtkIconTheme objects, but its much more
 * efficient to use the standard icon theme for the GdkScreen
 * so that the icon information is shared with other people
 * looking up icons. In the case where the default screen is
 * being used, looking up an icon can be as simple as:
 * GError *error = NULL;
 * GtkIconTheme *icon_theme;
 * GdkPixbuf *pixbuf;
 * icon_theme = gtk_icon_theme_get_default ();
 * pixbuf = gtk_icon_theme_load_icon (icon_theme,
 *  "my-icon-name", /+* icon name +/
 *  48, /+* size +/
 *  0, /+* flags +/
 *  error);
 * if (!pixbuf)
 *  {
	 *  g_warning ("Couldn't load icon: %s", error->message);
	 *  g_error_free (error);
 *  }
 * else
 *  {
	 *  /+* Use the pixbuf +/
	 *  g_object_unref (pixbuf);
 *  }
 */
public class IconInfo
{
	
	/** the main Gtk struct */
	protected GtkIconInfo* gtkIconInfo;
	
	
	public GtkIconInfo* getIconInfoStruct()
	{
		return gtkIconInfo;
	}
	
	
	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)gtkIconInfo;
	}
	
	/**
	 * Sets our main struct and passes it to the parent class
	 */
	public this (GtkIconInfo* gtkIconInfo)
	{
		this.gtkIconInfo = gtkIconInfo;
	}
	
	/**
	 */
	
	// imports for the signal processing
	private import gobject.Signals;
	private import gtkc.gdktypes;
	int[char[]] connectedSignals;
	
	void delegate(IconInfo)[] onChangedListeners;
	void addOnChanged(void delegate(IconInfo) dlg)
	{
		if ( !("changed" in connectedSignals) )
		{
			Signals.connectData(
			getStruct(),
			"changed",
			cast(GCallback)&callBackChanged,
			cast(void*)this,
			null,
			cast(ConnectFlags)0);
			connectedSignals["changed"] = 1;
		}
		onChangedListeners ~= dlg;
	}
	extern(C) static void callBackChanged(GtkIconTheme* iconThemeStruct, IconInfo iconInfo)
	{
		bit consumed = false;
		
		foreach ( void delegate(IconInfo) dlg ; iconInfo.onChangedListeners )
		{
			dlg(iconInfo);
		}
		
		return consumed;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	/**
	 * Make a copy of a GtkIconInfo.
	 * icon_info:
	 *  a GtkIconInfo
	 * Returns:
	 *  the new GtkIconInfo
	 * Since 2.4
	 */
	public IconInfo copy()
	{
		// GtkIconInfo* gtk_icon_info_copy (GtkIconInfo *icon_info);
		return new IconInfo( gtk_icon_info_copy(gtkIconInfo) );
	}
	
	/**
	 * Free a GtkIconInfo and associated information
	 * icon_info:
	 *  a GtkIconInfo
	 * Since 2.4
	 */
	public void free()
	{
		// void gtk_icon_info_free (GtkIconInfo *icon_info);
		gtk_icon_info_free(gtkIconInfo);
	}
	
	/**
	 * Gets the base size for the icon. The base size
	 * is a size for the icon that was specified by
	 * the icon theme creator. This may be different
	 * than the actual size of image; an example of
	 * this is small emblem icons that can be attached
	 * to a larger icon. These icons will be given
	 * the same base size as the larger icons to which
	 * they are attached.
	 * icon_info:
	 *  a GtkIconInfo
	 * Returns:
	 *  the base size, or 0, if no base
	 *  size is known for the icon.
	 * Since 2.4
	 */
	public int getBaseSize()
	{
		// gint gtk_icon_info_get_base_size (GtkIconInfo *icon_info);
		return gtk_icon_info_get_base_size(gtkIconInfo);
	}
	
	/**
	 * Gets the filename for the icon. If the
	 * GTK_ICON_LOOKUP_USE_BUILTIN flag was passed
	 * to gtk_icon_theme_lookup_icon(), there may be
	 * no filename if a builtin icon is returned; in this
	 * case, you should use gtk_icon_info_get_builtin_pixbuf().
	 * icon_info:
	 *  a GtkIconInfo
	 * Returns:
	 *  the filename for the icon, or NULL
	 *  if gtk_icon_info_get_builtin_pixbuf() should
	 *  be used instead. The return value is owned by
	 *  GTK+ and should not be modified or freed.
	 * Since 2.4
	 */
	public char[] getFilename()
	{
		// const gchar* gtk_icon_info_get_filename (GtkIconInfo *icon_info);
		return Str.toString(gtk_icon_info_get_filename(gtkIconInfo) );
	}
	
	/**
	 * Gets the built-in image for this icon, if any. To allow
	 * GTK+ to use built in icon images, you must pass the
	 * GTK_ICON_LOOKUP_USE_BUILTIN to
	 * gtk_icon_theme_lookup_icon().
	 * icon_info:
	 *  a GtkIconInfo structure
	 * Returns:
	 *  the built-in image pixbuf, or NULL. No
	 *  extra reference is added to the returned pixbuf, so if
	 *  you want to keep it around, you must use g_object_ref().
	 *  The returned image must not be modified.
	 * Since 2.4
	 */
	public Pixbuf getBuiltinPixbuf()
	{
		// GdkPixbuf* gtk_icon_info_get_builtin_pixbuf (GtkIconInfo *icon_info);
		return new Pixbuf( gtk_icon_info_get_builtin_pixbuf(gtkIconInfo) );
	}
	
	/**
	 * Renders an icon previously looked up in an icon theme using
	 * gtk_icon_theme_lookup_icon(); the size will be based on the size
	 * passed to gtk_icon_theme_lookup_icon(). Note that the resulting
	 * pixbuf may not be exactly this size; an icon theme may have icons
	 * that differ slightly from their nominal sizes, and in addition GTK+
	 * will avoid scaling icons that it considers sufficiently close to the
	 * requested size or for which the source image would have to be scaled
	 * up too far. (This maintains sharpness.)
	 * icon_info:
	 *  a GtkIconInfo structure from gtk_icon_theme_lookup_icon()
	 * error:
	 *  location to store error information on failure, or NULL.
	 * Returns:
	 *  the rendered icon; this may be a newly created icon
	 *  or a new reference to an internal icon, so you must not modify
	 *  the icon. Use g_object_unref() to release your reference to the
	 *  icon.
	 * Since 2.4
	 */
	public Pixbuf loadIcon(GError** error)
	{
		// GdkPixbuf* gtk_icon_info_load_icon (GtkIconInfo *icon_info,  GError **error);
		return new Pixbuf( gtk_icon_info_load_icon(gtkIconInfo, error) );
	}
	
	/**
	 * Sets whether the coordinates returned by gtk_icon_info_get_embedded_rect()
	 * and gtk_icon_info_get_attach_points() should be returned in their
	 * original form as specified in the icon theme, instead of scaled
	 * appropriately for the pixbuf returned by gtk_icon_info_load_icon().
	 * Raw coordinates are somewhat strange; they are specified to be with
	 * respect to the unscaled pixmap for PNG and XPM icons, but for SVG
	 * icons, they are in a 1000x1000 coordinate space that is scaled
	 * to the final size of the icon. You can determine if the icon is an SVG
	 * icon by using gtk_icon_info_get_filename(), and seeing if it is non-NULL
	 * and ends in '.svg'.
	 * This function is provided primarily to allow compatibility wrappers
	 * for older API's, and is not expected to be useful for applications.
	 * icon_info:
	 *  a GtkIconInfo
	 * raw_coordinates:
	 *  whether the coordinates of embedded rectangles
	 *  and attached points should be returned in their original
	 *  (unscaled) form.
	 * Since 2.4
	 */
	public void setRawCoordinates(int rawCoordinates)
	{
		// void gtk_icon_info_set_raw_coordinates (GtkIconInfo *icon_info,  gboolean raw_coordinates);
		gtk_icon_info_set_raw_coordinates(gtkIconInfo, rawCoordinates);
	}
	
	/**
	 * Gets the coordinates of a rectangle within the icon
	 * that can be used for display of information such
	 * as a preview of the contents of a text file.
	 * See gtk_icon_info_set_raw_coordinates() for further
	 * information about the coordinate system.
	 * icon_info:
	 *  a GtkIconInfo
	 * rectangle:
	 *  GdkRectangle in which to store embedded
	 *  rectangle coordinates; coordinates are only stored
	 *  when this function returns TRUE.
	 * Returns:
	 *  TRUE if the icon has an embedded rectangle
	 * Since 2.4
	 */
	public int getEmbeddedRect(GdkRectangle* rectangle)
	{
		// gboolean gtk_icon_info_get_embedded_rect (GtkIconInfo *icon_info,  GdkRectangle *rectangle);
		return gtk_icon_info_get_embedded_rect(gtkIconInfo, rectangle);
	}
	
	/**
	 * Fetches the set of attach points for an icon. An attach point
	 * is a location in the icon that can be used as anchor points for attaching
	 * emblems or overlays to the icon.
	 * icon_info:
	 *  a GtkIconInfo
	 * points:
	 *  location to store pointer to an array of points, or NULL
	 *  free the array of points with g_free().
	 * n_points:
	 *  location to store the number of points in points, or NULL
	 * Returns:
	 *  TRUE if there are any attach points for the icon.
	 * Since 2.4
	 */
	public int getAttachPoints(GdkPoint** points, int* nPoints)
	{
		// gboolean gtk_icon_info_get_attach_points (GtkIconInfo *icon_info,  GdkPoint **points,  gint *n_points);
		return gtk_icon_info_get_attach_points(gtkIconInfo, points, nPoints);
	}
	
	/**
	 * Gets the display name for an icon. A display name is a
	 * string to be used in place of the icon name in a user
	 * visible context like a list of icons.
	 * icon_info:
	 *  a GtkIconInfo
	 * Returns:
	 *  the display name for the icon or NULL, if
	 *  the icon doesn't have a specified display name. This value
	 *  is owned icon_info and must not be modified or free.
	 * Since 2.4
	 * Signal Details
	 * The "changed" signal
	 * void user_function (GtkIconTheme *icon_theme,
	 *  gpointer user_data) : Run Last
	 * Emitted when the current icon theme is switched or GTK+ detects
	 * that a change has occurred in the contents of the current
	 * icon theme.
	 * icon_theme:
	 *  the icon theme
	 * user_data:
	 * user data set when the signal handler was connected.
	 */
	public char[] getDisplayName()
	{
		// const gchar* gtk_icon_info_get_display_name (GtkIconInfo *icon_info);
		return Str.toString(gtk_icon_info_get_display_name(gtkIconInfo) );
	}
}
