return {
  "chrisgrieser/nvim-chainsaw",
  event = "VeryLazy",
  opts = {},
  keys = {
    { "glv", function() require("chainsaw").variableLog() end, desc = "variableLog" },
    { "glt", function() require("chainsaw").typeLog() end,     desc = "typeLog" },
    { "glm", function() require("chainsaw").emojiLog() end,    desc = "emojiLog" },
    { "glr", function() require("chainsaw").removeLogs() end,  desc = "removeLogs" }
  },

}
