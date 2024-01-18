-- Inject meta configs
function Inject_Meta()
  local home_dir = vim.fn.expand('$HOME')
  local script_path = home_dir .. '/.dotfiles/metadata_inject.py'
  local command = string.format('python3 %s', script_path)
        
  local output_content = vim.fn.systemlist(command)

  local current_buf = vim.fn.bufnr()
  
  vim.api.nvim_buf_set_lines(current_buf, 0, 0, false, output_content)

end

-- Create a command and key mapping
vim.cmd([[
    command! InjectMetadata lua Inject_Meta()
    nnoremap <Leader>h :InjectMetadata<CR>
]])

-- Rollup job
function Rollup()
    local root_path = vim.fn.input("Root directory to scan: ")
    if root_path ~= "" then
        local home_dir = vim.fn.expand('$HOME')
        local script_path = home_dir .. '/.dotfiles/build_change_chart.py'
        local command = string.format('python3 %s %s', script_path, root_path)
        
        local output_content = vim.fn.systemlist(command)

        vim.api.nvim_put(output_content, 'l', true, true)
    else
        print("No path provided")
    end
end

vim.cmd([[
    command! DailyRollup lua Rollup()
    nnoremap <Leader>rr :DailyRollup<CR>
]])

-- CSV to Markdown configs

function Csv_To_Markdown()
    local csv_path = vim.fn.input("Enter CSV file path: ")
    if csv_path ~= "" then
        local home_dir = vim.fn.expand('$HOME')
        local script_path = home_dir .. '/.dotfiles/csv_to_markdown_table.py'
        local command = string.format('python3 %s %s', script_path, csv_path)
        
        -- Capture the standard output as a list of strings
        local output_content = vim.fn.systemlist(command)

        -- Insert the content into the current buffer
        vim.api.nvim_put(output_content, 'l', true, true)
    else
        print("CSV file path cannot be empty.")
    end
end

vim.cmd([[
    command! CsvToMarkdown lua Csv_To_Markdown()
    nnoremap <Leader>mt :CsvToMarkdown<CR>
]])
