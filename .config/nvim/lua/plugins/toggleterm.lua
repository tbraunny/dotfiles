return {
  'akinsho/toggleterm.nvim',
  version = '*', -- can request a specific version here
  opts = {
    hide_numbers = true, -- hide number column in toggleterm buffers
    autochdir = true, -- automatically change directory when dir is changed in nvim (on next open)
    direction = 'float', -- 'vertical' | 'horizontal' | 'tab' | 'float'
    auto_scroll = true, -- only needs to be set when direction is set to float

    float_opts = {
      border = 'curved', -- 'single' | 'double' | 'shadow'
      title_pos = 'left', -- 'center' | 'right'
    },
    -- Other options available from GitHub readme
  },
}
