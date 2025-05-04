local utils = require("config.utils")

return {
	"nvim-java/nvim-java",
	config = false,
	dependencies = {
		{
			"neovim/nvim-lspconfig",
			opts = {
				servers = {
					-- Your JDTLS configuration goes here
					jdtls = {
						cmd = {
							"java",
							"-javaagent:" .. utils.get_lombok_path(),
							"-Declipse.application=org.eclipse.jdt.ls.core.id1",
							"-Dosgi.bundles.defaultStartLevel=4",
							"-Declipse.product=org.eclipse.jdt.ls.core.product",
							"-Dlog.protocol=true",
							"-Dlog.level=ALL",
							"-Xms4g",
							"--add-modules=ALL-SYSTEM",
							"--add-opens",
							"java.base/java.util=ALL-UNNAMED",
							"--add-opens",
							"java.base/java.lang=ALL-UNNAMED",
							"-jar",
							vim.fn.glob(
								vim.fn.stdpath("data")
									.. "/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_*.jar"
							),
							"-configuration",
							vim.fn.stdpath("data") .. "/mason/packages/jdtls/config_linux",
							"-data",
							vim.fn.stdpath("cache") .. "/javac",
						},
						-- settings = {
						--   java = {
						--     configuration = {
						--       runtimes = {
						--         {
						--           name = "JavaSE-23",
						--           path = "/usr/local/sdkman/candidates/java/23-tem",
						--         },
						--       },
						--     },
						--   },
						-- },
					},
				},
				setup = {
					jdtls = function()
						-- Your nvim-java configuration goes here
						require("java").setup({
							root_markers = {
								"settings.gradle",
								"settings.gradle.kts",
								"pom.xml",
								"build.gradle",
								"mvnw",
								"gradlew",
								"build.gradle",
								"build.gradle.kts",
							},
						})
					end,
				},
			},
		},
	},
}
