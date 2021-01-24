-- Defines which version of the project generator to use, by default
-- (can be overriden by the environment variable PROJECT_GENERATOR_VERSION)
PROJECT_GENERATOR_VERSION = 2

newoption({
	trigger = "gmcommon",
	description = "Sets the path to the garrysmod_common (https://github.com/danielga/garrysmod_common) directory",
	value = "path to garrysmod_common directory"
})

include(assert(_OPTIONS.gmcommon or os.getenv("GARRYSMOD_COMMON"),
	"you didn't provide a path to your garrysmod_common (https://github.com/danielga/garrysmod_common) directory"))

-- Workspace definition (if "abi_compatible", compiler restrictions apply)
-- Can define "path" on the config table, where the project files will be placed
CreateWorkspace({name = "{MODULE NAME HERE}", abi_compatible = true})
	-- Serverside module (gmsv prefix)
	-- Can define "source_path", where the source files are located
	-- Can define "manual_files", which allows you to manually add files to the project,
	-- instead of automatically including them from the "source_path"
	-- Can also define "abi_compatible", for project specific compatibility
	CreateProject({serverside = true})
		-- Remove some or all of these includes if they're not needed
		IncludeLuaShared()
		IncludeSDKCommon()
		IncludeSDKTier0()
		IncludeSDKTier1()
		IncludeSDKTier3()
		IncludeSDKMathlib()
		IncludeSDKRaytrace()
		IncludeSDKBitmap()
		IncludeSDKVTF()
		IncludeSteamAPI()
		IncludeDetouring()
		IncludeScanning()

	-- Clientside module (gmcl prefix)
	-- Can define "source_path", where the source files are located
	-- Can define "manual_files", which allows you to manually add files to the project,
	-- instead of automatically including them from the "source_path"
	-- Can also define "abi_compatible", for project specific compatibility
	CreateProject({serverside = false})
		-- Remove some or all of these includes if they're not needed
		IncludeLuaShared()
		IncludeSDKCommon()
		IncludeSDKTier0()
		IncludeSDKTier1()
		IncludeSDKTier2()
		IncludeSDKTier3()
		IncludeSDKMathlib()
		IncludeSDKRaytrace()
		IncludeSDKBitmap()
		IncludeSDKVTF()
		IncludeSteamAPI()
		IncludeDetouring()
		IncludeScanning()
