-- Официальный стиль Kotlin — четыре пробела, а не два из глобальных настроек.
vim.bo.expandtab = true
vim.bo.shiftwidth = 4
vim.bo.tabstop = 4
vim.bo.softtabstop = 4

-- Gradle-обёртка. Команда всегда запускается из каталога с gradlew, найденного
-- вверх по дереву от текущего файла: в монорепе cwd редактора обычно указывает
-- на корень репозитория, а не на модуль сервиса.
local function gradle(args, title)
  local root = vim.fs.root(vim.api.nvim_buf_get_name(0), { "gradlew" })
  if not root then
    vim.notify("gradlew не найден выше по дереву", vim.log.levels.WARN, { title = "Gradle" })
    return
  end

  vim.cmd("botright 18split")
  vim.cmd(("terminal cd %s && ./gradlew %s"):format(vim.fn.shellescape(root), args))
  vim.bo.buflisted = false
  vim.api.nvim_buf_set_name(0, ("gradle://%s"):format(title or args))
  vim.cmd("startinsert")
end

local function map(lhs, rhs, desc)
  vim.keymap.set("n", lhs, rhs, { buffer = true, silent = true, desc = desc })
end

map("<leader>cb", function() gradle("build") end, "Gradle: build")
map("<leader>ct", function() gradle("test") end, "Gradle: все тесты")
map("<leader>cr", function() gradle("bootRun") end, "Gradle: bootRun")

-- Прогнать тесты только текущего класса: имя файла и имя класса в Kotlin
-- совпадают, поэтому фильтр строится из имени буфера.
map("<leader>cT", function()
  local class = vim.fn.expand("%:t:r")
  gradle(("test --tests '*%s*'"):format(class), "test " .. class)
end, "Gradle: тесты текущего класса")
