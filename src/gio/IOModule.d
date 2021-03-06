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


module gio.IOModule;

private import gio.IOModuleScope;
private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.TypeModule;
private import gobject.TypePluginIF;
private import gobject.TypePluginT;
private import gtkc.gio;
public  import gtkc.giotypes;


/**
 * Provides an interface and default functions for loading and unloading
 * modules. This is used internally to make GIO extensible, but can also
 * be used by others to implement module loading.
 */
public class IOModule : TypeModule
{
	/** the main Gtk struct */
	protected GIOModule* gIOModule;

	/** Get the main Gtk struct */
	public GIOModule* getIOModuleStruct()
	{
		return gIOModule;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)gIOModule;
	}

	protected override void setStruct(GObject* obj)
	{
		gIOModule = cast(GIOModule*)obj;
		super.setStruct(obj);
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (GIOModule* gIOModule, bool ownedRef = false)
	{
		this.gIOModule = gIOModule;
		super(cast(GTypeModule*)gIOModule, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return g_io_module_get_type();
	}

	/**
	 * Creates a new GIOModule that will load the specific
	 * shared library when in use.
	 *
	 * Params:
	 *     filename = filename of the shared library module.
	 *
	 * Return: a #GIOModule from given @filename,
	 *     or %NULL on error.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string filename)
	{
		auto p = g_io_module_new(Str.toStringz(filename));
		
		if(p is null)
		{
			throw new ConstructionException("null returned by new");
		}
		
		this(cast(GIOModule*) p, true);
	}

	/**
	 * Optional API for GIO modules to implement.
	 *
	 * Should return a list of all the extension points that may be
	 * implemented in this module.
	 *
	 * This method will not be called in normal use, however it may be
	 * called when probing existing modules and recording which extension
	 * points that this model is used for. This means we won't have to
	 * load and initialize this module unless its needed.
	 *
	 * If this function is not implemented by the module the module will
	 * always be loaded, initialized and then unloaded on application
	 * startup so that it can register its extension points during init.
	 *
	 * Note that a module need not actually implement all the extension
	 * points that g_io_module_query() returns, since the exact list of
	 * extension may depend on runtime issues. However all extension
	 * points actually implemented must be returned by g_io_module_query()
	 * (if defined).
	 *
	 * When installing a module that implements g_io_module_query() you must
	 * run gio-querymodules in order to build the cache files required for
	 * lazy loading.
	 *
	 * Return: A %NULL-terminated array of strings,
	 *     listing the supported extension points of the module. The array
	 *     must be suitable for freeing with g_strfreev().
	 *
	 * Since: 2.24
	 */
	public static string[] query()
	{
		auto retStr = g_io_module_query();
		
		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Required API for GIO modules to implement.
	 *
	 * This function is run after the module has been loaded into GIO,
	 * to initialize the module. Typically, this function will call
	 * g_io_extension_point_implement().
	 */
	public void load()
	{
		g_io_module_load(gIOModule);
	}

	/**
	 * Required API for GIO modules to implement.
	 *
	 * This function is run when the module is being unloaded from GIO,
	 * to finalize the module.
	 */
	public void unload()
	{
		g_io_module_unload(gIOModule);
	}

	/**
	 * Loads all the modules in the specified directory.
	 *
	 * If don't require all modules to be initialized (and thus registering
	 * all gtypes) then you can use g_io_modules_scan_all_in_directory()
	 * which allows delayed/lazy loading of modules.
	 *
	 * Params:
	 *     dirname = pathname for a directory containing modules
	 *         to load.
	 *
	 * Return: a list of #GIOModules loaded
	 *     from the directory,
	 *     All the modules are loaded into memory, if you want to
	 *     unload them (enabling on-demand loading) you must call
	 *     g_type_module_unuse() on all the modules. Free the list
	 *     with g_list_free().
	 */
	public static ListG loadAllInDirectory(string dirname)
	{
		auto p = g_io_modules_load_all_in_directory(Str.toStringz(dirname));
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Loads all the modules in the specified directory.
	 *
	 * If don't require all modules to be initialized (and thus registering
	 * all gtypes) then you can use g_io_modules_scan_all_in_directory()
	 * which allows delayed/lazy loading of modules.
	 *
	 * Params:
	 *     dirname = pathname for a directory containing modules
	 *         to load.
	 *     scop = a scope to use when scanning the modules.
	 *
	 * Return: a list of #GIOModules loaded
	 *     from the directory,
	 *     All the modules are loaded into memory, if you want to
	 *     unload them (enabling on-demand loading) you must call
	 *     g_type_module_unuse() on all the modules. Free the list
	 *     with g_list_free().
	 *
	 * Since: 2.30
	 */
	public static ListG loadAllInDirectoryWithScope(string dirname, IOModuleScope scop)
	{
		auto p = g_io_modules_load_all_in_directory_with_scope(Str.toStringz(dirname), (scop is null) ? null : scop.getIOModuleScopeStruct());
		
		if(p is null)
		{
			return null;
		}
		
		return new ListG(cast(GList*) p, true);
	}

	/**
	 * Scans all the modules in the specified directory, ensuring that
	 * any extension point implemented by a module is registered.
	 *
	 * This may not actually load and initialize all the types in each
	 * module, some modules may be lazily loaded and initialized when
	 * an extension point it implementes is used with e.g.
	 * g_io_extension_point_get_extensions() or
	 * g_io_extension_point_get_extension_by_name().
	 *
	 * If you need to guarantee that all types are loaded in all the modules,
	 * use g_io_modules_load_all_in_directory().
	 *
	 * Params:
	 *     dirname = pathname for a directory containing modules
	 *         to scan.
	 *
	 * Since: 2.24
	 */
	public static void scanAllInDirectory(string dirname)
	{
		g_io_modules_scan_all_in_directory(Str.toStringz(dirname));
	}

	/**
	 * Scans all the modules in the specified directory, ensuring that
	 * any extension point implemented by a module is registered.
	 *
	 * This may not actually load and initialize all the types in each
	 * module, some modules may be lazily loaded and initialized when
	 * an extension point it implementes is used with e.g.
	 * g_io_extension_point_get_extensions() or
	 * g_io_extension_point_get_extension_by_name().
	 *
	 * If you need to guarantee that all types are loaded in all the modules,
	 * use g_io_modules_load_all_in_directory().
	 *
	 * Params:
	 *     dirname = pathname for a directory containing modules
	 *         to scan.
	 *     scop = a scope to use when scanning the modules
	 *
	 * Since: 2.30
	 */
	public static void scanAllInDirectoryWithScope(string dirname, IOModuleScope scop)
	{
		g_io_modules_scan_all_in_directory_with_scope(Str.toStringz(dirname), (scop is null) ? null : scop.getIOModuleScopeStruct());
	}
}
