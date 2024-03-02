require("nvim-treesitter.configs").setup{
    ensure_installed = {"python", "lua", "cpp", "go"},
    auto_insall = true,
    highlight = {enable = true}
}
