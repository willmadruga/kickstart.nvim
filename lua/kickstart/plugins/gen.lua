return {
  { -- Ollama
    'David-Kunz/gen.nvim',
    opts = {
      model = 'mistral',
      show_prompt = true,
      show_model = true,
      init = function(options)
        pcall(io.popen, 'ollama serve > /dev/null 2>&1 &')
      end,
      command = 'curl --silent --no-buffer -X POST http://localhost:11434/api/generate -d $body',
      debug = true, -- Prints errors and the command which is run.
    },
  },
}

-- vim: ts=2 sts=2 sw=2 et
