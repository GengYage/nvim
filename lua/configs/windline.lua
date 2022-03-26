require('wlsample.vscode')
local lsp_comps = require('windline.components.lsp')

local basic = {}

basic.lsp_diagnos = {
    name = 'diagnostic',
    hl_colors = {
        red_text = {'red', 'black'}
    },
    text = function(bufnr, winid, width)
        if lsp_comps.check_lsp() then
            return {

                { '[ lsp: ', 'red_text' },
                -- red_text define in hl_colors. It make easy cache value first
                -- because text function run multiple time on redraw

                { lsp_comps.lsp_name() , 'IncSearch'},
                -- it use a hightlight group IncSearch

                -- but you can create a hightlight on child component too
                { lsp_comps.lsp_error({ format = '  %s' }), {'red','black'} },

                { lsp_comps.lsp_warning({ format = '  %s' }), {'yellow',''} },
                -- it have same background black with the previous component

                { lsp_comps.lsp_hint({ format = '  %s' }), {'', 'blue'} },
                -- it have same foreground yellow with the previous component

                { ' ] ' },
            }
        end
        return ''
    end,
}
