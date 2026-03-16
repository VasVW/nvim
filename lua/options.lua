require("nvchad.options")

-- add yours here!

-- 1. Simple path/filename matching
vim.filetype.add({
	pattern = {
		-- Gitlab
		[".*%.gitlab%-ci%.ya?ml"] = "yaml.gitlab",

		-- |==================================|
		-- |============ ansible =============|
		-- |==================================|
		-- Playbooks
		[".*playbook.*%.ya?ml"] = "yaml.ansible",
		[".*/playbooks?/.*%.ya?ml"] = "yaml.ansible",

		-- Roles (most common locations)
		[".*/roles/[^/]+/.*%.ya?ml"] = "yaml.ansible",

		-- Vars and inventory
		[".*/group_vars/.*%.ya?ml"] = "yaml.ansible",
		[".*/host_vars/.*%.ya?ml"] = "yaml.ansible",
		[".*/inventory/.*%.ya?ml"] = "yaml.ansible",

		-- Common top-level files
		["site%.ya?ml"] = "yaml.ansible",
		["main%.ya?ml"] = "yaml.ansible",
		["requirements%.ya?ml"] = "yaml.ansible",
	},
})

-- 2. Advanced directory-searching fallback for Ansible
-- Uses the exact markers ansiblels + ansible-lint look for
local ansible_markers = {
	"ansible.cfg",
	".ansible.cfg",
	".ansible-lint",
	"roles",
	"playbooks",
	"inventory",
}

vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "*.yaml", "*.yml" },
	callback = function(ev)
		-- Only run if it hasn't been set to ansible yet
		if vim.bo[ev.buf].filetype ~= "yaml" then
			return
		end

		-- Skip common non-Ansible YAML files
		local filename = vim.fn.fnamemodify(ev.file, ":t")
		if
			filename:match("^%.?gitlab%-ci")
			or filename:match("docker%-compose")
			or filename:match("compose%.ya?ml")
			or filename:match("k8s")
			or filename:match("kubernetes")
			or filename:match("^%.?github")
		then
			return
		end

		-- Look upward for any Ansible project marker
		local dir = vim.fn.fnamemodify(ev.file, ":h")
		for _, marker in ipairs(ansible_markers) do
			local found = vim.fs.find(marker, {
				upward = true,
				path = dir,
				type = marker:match("%.") and "file" or "directory",
			})[1]

			if found then
				vim.bo[ev.buf].filetype = "yaml.ansible"
				return
			end
		end
	end,
})

-- |==================================|
-- |=========== folding ==============|
-- |==================================|

-- Set Treesitter as the folding engine
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- Keep folds open by default when you open a file (otherwise it looks like a mess)
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99

-- local o = vim.o
-- o.cursorlinept ='both' -- to enable cursorline
