return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      -- disable document highlight on cursor hold
      local orig = vim.lsp.buf.document_highlight
      vim.lsp.handlers["textDocument/documentHighlight"] = function() end
    end,
  },
}
