--[===[
## キーバインドとコマンド

* タグジャンプ由来
  * CTRL-] 定義へジャンプ。
  * CTRL-O 戻る。
* lsp由来
  * grr 参照箇所一覧。
  * grt 型定義へジャンプ。
  * <leader>ch C/C++で関数の定義と宣言の相互ジャンプ。
* エラーや警告
  * <leader>q quickfixウィンドウを開く、閉じるのトグル。
  * ]q quickfixの次の行
  * [q quickfixの前の行
* 左の2列（signcolumn）の表示制御
  * :set scl=no 左の2列を非表示
  * :set scl=auto 左の2列の表示を自動制御
]===]

vim.pack.add {
  { src = "https://github.com/romus204/tree-sitter-manager.nvim" },
  { src = 'https://github.com/neovim/nvim-lspconfig' },
  { src = 'https://github.com/nvim-mini/mini.files' },
}

require("tree-sitter-manager").setup()

-- language-server
vim.lsp.config("emmylua_ls", {
	cmd = { "emmylua_ls" },
	filetypes = { "lua" },
	root_markers = { ".emmyrc.json", ".luarc.json", ".git" },
})

vim.lsp.enable("emmylua_ls")

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.name == "clangd" then
      vim.keymap.set(
        "n",
        "<leader>ch",
        "<cmd>LspClangdSwitchSourceHeader<CR>",
        { buffer = args.buf, desc = "Switch source/header" }
      )
    end
  end,
})
vim.lsp.enable("clangd")

vim.lsp.enable("gopls")
vim.lsp.enable("pyright")
vim.lsp.enable("rust_analyzer")

-- diagnotic quickfix
vim.keymap.set("n", "<leader>q", function()
  for _, win in ipairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then
      vim.cmd.cclose()
      return
    end
  end

  vim.diagnostic.setqflist()
  vim.cmd.copen()
end, { desc = "Toggle diagnostic quickfix" })

-- file browser
-- キーマップの表示は以下のコマンドで確認できる。
-- :lua =require("mini.files").config.mappings
require('mini.files').setup()

vim.keymap.set("n", "<leader>e", function()
  MiniFiles.open(vim.api.nvim_buf_get_name(0), true)
end, { desc = "Open mini.files at current file" })
