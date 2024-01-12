-- [NOTE] Already have a terminal avialable with <C-/>
return {
  "numToStr/FTerm.nvim",
  keys = {
    {
      "<A-i>",
      mode = { "t", "n" },
      function() require('FTerm').toggle() end
    },
    {
      "<A-e>",
      mode = { "t", "n" },
      function() require('FTerm').exit() end
    }
  }
}
