function CompileCppFile()
  local current_file = vim.fn.expand("%:p")
  local filetype = vim.bo.filetype

  if filetype == "go" then
    local go_command = string.format("go build %s", current_file)
    vim.cmd(string.format("!echo '%s'", go_command))
    vim.cmd(string.format("!%s", go_command))
    print("Opening ToggleTerm")
    vim.cmd(':ToggleTerm direction=float')
  elseif filetype == "cpp" then
    local output_file = vim.fn.expand("%:p:r")
    local command = string.format(
    "g++ -std=c++17 -O2 -Wall -Wextra -Wshadow -Wconversion -Wno-sign-conversion -Wno-unused-result %s -o %s",
      current_file, output_file)
    vim.cmd(string.format("!echo '%s'", command))
    vim.cmd(string.format("!%s", command))
    print("Opening ToggleTerm")
    vim.cmd(':ToggleTerm direction=float')
  end
end

vim.cmd('command! Cp call v:lua.CompileCppFile()')


vim.api.nvim_create_user_command("Binupdate", function()
  local location = vim.g.binary
  -- local nvimlocation = "~/.config/nvim"
  vim.fn.system(string.format("git -C %s pull", location))
  -- vim.fn.system(string.format("git -C %s pull", nvimlocation))
  require('notify')('Update Finished')
end, {})
