-- Netman is a framework that plugins can utilize to expose remote resources
-- (such as ssh filesystems, docker containers, database tables, etc) to the user via a standard API.
return {
	"miversen33/netman.nvim",
	-- Note, you do not need this if you plan on using Netman with any of the
	-- supported UI Tools such as Neo-tree
	config = true,
}
