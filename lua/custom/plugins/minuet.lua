-- Local LLM code completion via Ollama, surfaced as a blink.cmp source.
--
-- Uses fill-in-the-middle (FIM) completion against the local Ollama server,
-- so nothing leaves the machine. The matching `minuet` blink provider is
-- registered in `init.lua` under SECTION 8 (blink.cmp `sources.providers`).
--
-- Requires the `ollama` service to be running:
--    systemctl status ollama
--
-- Swap models by changing `model` below to anything in `ollama list`.
--  qwen2.5-coder:7b  ~4.7GB, fits in 12GB VRAM, ~200ms  <- current
--  qwen2.5-coder:3b  ~2GB, faster, weaker on multi-line
--  qwen2.5-coder:32b ~20GB, best quality but exceeds VRAM, seconds per call
vim.pack.add { 'https://github.com/milanglacier/minuet-ai.nvim' }

require('minuet').setup {
  provider = 'openai_fim_compatible',

  -- One suggestion per request keeps latency down. Raise it if you want
  -- several alternatives to pick between in the completion menu.
  n_completions = 1,

  -- How much surrounding code is sent as context. Larger is smarter but
  -- slower; Ollama's own context length here is 4096 tokens.
  context_window = 1024,

  provider_options = {
    openai_fim_compatible = {
      -- Ollama ignores the key, but the OpenAI-compatible client requires
      -- *some* value or it refuses to send the request.
      api_key = 'TERM',
      name = 'Ollama',
      end_point = 'http://127.0.0.1:11434/v1/completions',
      model = 'qwen2.5-coder:7b',
      optional = {
        max_tokens = 128,
        top_p = 0.9,
      },
    },
  },
}
