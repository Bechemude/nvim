return {
	"markdown-tables-local",
	dir = vim.fn.stdpath("config"),
	ft = "markdown",

	config = function()
		-- Основная функция: сканирует буфер и выравнивает все таблицы
		local function format_all_tables()
			local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
			local tables_to_format = {}
			local in_table = false
			local start_idx = nil

			-- Шаг 1: Находим границы всех таблиц в файле
			for i, line in ipairs(lines) do
				if line:find("|") then
					if not in_table then
						in_table = true
						start_idx = i
					end
				else
					if in_table then
						table.insert(tables_to_format, { start_idx, i - 1 })
						in_table = false
					end
				end
			end
			if in_table then
				table.insert(tables_to_format, { start_idx, #lines })
			end

			-- Шаг 2: Форматируем каждую найденную таблицу
			for _, bounds in ipairs(tables_to_format) do
				local s, e = bounds[1] - 1, bounds[2] - 1
				local table_lines = vim.api.nvim_buf_get_lines(0, s, e + 1, false)

				-- Защита: проверяем, есть ли разделительная строка (---), чтобы не ломать блоки с кодом
				local has_separator = false
				for _, t_line in ipairs(table_lines) do
					if t_line:match("^%s*|?[%-%s:|]+|?%s*$") and t_line:find("%-") then
						has_separator = true
						break
					end
				end

				if has_separator then
					local parsed, widths = {}, {}

					for _, line in ipairs(table_lines) do
						local clean = line:match("^%s*|?(.-)|?%s*$") or ""
						local row = vim.split(clean, "|")
						local is_sep = true
						for j, c in ipairs(row) do
							c = vim.trim(c)
							row[j] = c
							if c ~= "" and not c:match("^:?%-+:?$") then
								is_sep = false
							end
							widths[j] = math.max(widths[j] or 0, vim.fn.strdisplaywidth(c))
						end
						row.is_sep = is_sep
						table.insert(parsed, row)
					end

					local out = {}
					for _, row in ipairs(parsed) do
						local res = {}
						for j, c in ipairs(row) do
							local w = widths[j] or 3
							if row.is_sep then
								local l = c:match("^:") and ":" or ""
								local r_col = c:match(":$") and ":" or ""
								table.insert(res, l .. string.rep("-", math.max(1, w - #l - #r_col)) .. r_col)
							else
								table.insert(res, c .. string.rep(" ", w - vim.fn.strdisplaywidth(c)))
							end
						end
						table.insert(out, "| " .. table.concat(res, " | ") .. " |")
					end

					-- Проверяем, изменилось ли что-то, чтобы зря не модифицировать буфер
					local changed = false
					for idx, out_line in ipairs(out) do
						if table_lines[idx] ~= out_line then
							changed = true
							break
						end
					end

					if changed then
						vim.api.nvim_buf_set_lines(0, s, e + 1, false, out)
					end
				end
			end
		end


-- АВТОМАТИЧЕСКИ ПРИ ВХОДЕ в Markdown файл
    vim.api.nvim_create_autocmd("BufEnter", {
      pattern = "*.md",
      once = true, -- Сработает только один раз при открытии файла
      callback = function()
        -- Используем чуть большую задержку, чтобы дать Neovim время "выдохнуть" после открытия
        vim.defer_fn(format_all_tables, 500) 
      end,
    })

-- АВТОМАТИЧЕСКИ ПРИ СОХРАНЕНИИ файла (Рекомендуется)
		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*.md",
			callback = format_all_tables,
		})
	end,
}
