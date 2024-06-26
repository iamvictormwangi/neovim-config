local languages = require("user.languages")

local filename = vim.fn.expand("%")

-- Get the extension of the file
local extension = string.match(filename, "%.([^%.]+)$")

-- Function to check if a string is in the table
local function is_in_table(str, tbl)
	for _, value in ipairs(tbl) do
		if value == str then
			return true
		end
	end
	return false
end

-- Define the supported languages table with properties
local supported_languages = {
	{
		name = "javascript",
		extension = "js",
		run = "node %",
		compiled = false,
	},
	{
		name = "markdown",
		extension = "md",
		run = "MarkdownPreview",
		compiled = false,
	},
	{
		name = "html",
		extension = "html",
		run = "xdg-open %",
		compiled = false,
	},
	{
		name = "typescript",
		build = "tsc %",
		extension = "ts",
		run = "tsc % && node *.js",
		compiled = true,
	},
	{
		name = "rust",
		extension = "rs",
		build = "cargo build",
		run = "cargo run",
		compiled = true,
	},
	{
		name = "C++",
		extension = "cpp",
		build = "g++ -o output_file source_file.cpp",
		run = "./output_file",
		compiled = true,
	},
	{
		name = "c",
		extension = "c",
		build = "gcc -o output_file source_file.c",
		run = "./output_file",
		compiled = true,
	},
}

-- Define a function to check if a string is in a table
function is_in_table(str, tbl)
	for _, value in ipairs(tbl) do
		if value == str then
			return true
		end
	end
	return false
end

-- Loop through each language
for _, lang in ipairs(supported_languages) do
	local lang_name = lang.name
	local build_command = lang.build
	local run_command = lang.run
	local compiled = lang.compiled

	-- Check if the language is Rust

	if extension == lang.extension then
		print(lang.name, " detected")
		if compiled == true then
			vim.cmd(string.format("command! KikapuRun TermExec cmd=%q", run_command))
			vim.cmd(string.format("command! KikapuBuild TermExec cmd=%q", build_command))
		else
			vim.cmd(string.format("command! KikapuRun TermExec cmd=%q", run_command))
		end
	end
end
