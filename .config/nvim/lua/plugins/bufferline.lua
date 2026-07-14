return {
    'akinsho/bufferline.nvim',
    dependencies = {
        'moll/vim-bbye',
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        require('bufferline').setup {
            options = {
                mode = 'buffers',
                themable = true,
                numbers = 'none',
                close_command = 'Bdelete! %d', -- wtf
                buffer_close_icon = 'x',
                close_icon = 'x',
                path_components = 1,
                tab_size = 21,
                color_icons = true,
                show_buffer_icons = true,
                show_buffer_close_icons = true,
                show_close_icons = true,
                diagnostics = false,
                diagnostics_update_in_insert = false,
                modified_icon = '●',
                max_name_length = 30,
                max_prefix_length = 30,
            },
            highlights = {
                buffer_selected = {
                    bold = true,
                    italic = false,
                },
            },
        }
    end,
}
