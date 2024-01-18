require('neorg').setup {
    load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
            config = {
                workspaces = {
                    work = "/home/dhoenisch/notes/work",
                    home = "/home/dhoenisch/notes/home",
                },
                default_workspace = home,
                index = "index.norg",
                }
            }
        }
    }
