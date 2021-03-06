let s:menus = {}

let s:menus.dein = { 'description': 'βοΈ  Plugin management' }
let s:menus.dein.command_candidates = [
  \   ['π¬ Dein: Plugins update       πΈ', 'call dein#update()'],
  \   ['π¬ Dein: Plugins List         πΈ', 'Denite dein'],
  \   ['π¬ Dein: RecacheRuntimePath   πΈ', 'call dein#recache_runtimepath()'],
  \   ['π¬ Dein: Update log           πΈ', 'echo dein#get_updates_log()'],
  \   ['π¬ Dein: Log                  πΈ', 'echo dein#get_log()'],
  \ ]

let s:menus.project = { 'description': 'π   Project & Structure' }
let s:menus.project.command_candidates = [
  \   ['π³ File Explorer        πΈ<Leader>e',        'Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>'],
  \   ['π³ Outline              πΈ<LocalLeader>t',   'TagbarToggle'],
  \   ['π³ Git Status           πΈ<LocalLeader>gs',  'Denite gitstatus'],
  \   ['π³ Mundo Tree           πΈ<Leader>m',  'MundoToggle'],
  \ ]

let s:menus.files = { 'description': 'π File tools' }
let s:menus.files.command_candidates = [
  \   ['π Denite: Find in filesβ¦    πΉ ',  'Denite grep:.'],
  \   ['π Denite: Find files        πΉ ',  'Denite file/rec'],
  \   ['π Denite: Buffers           πΉ ',  'Denite buffer'],
  \   ['π Denite: MRU               πΉ ',  'Denite file/old'],
  \   ['π Denite: Line              πΉ ',  'Denite line'],
  \ ]

let s:menus.tools = { 'description': 'βοΈ  Dev Tools' }
let s:menus.tools.command_candidates = [
  \   ['π  Git commands       πΉ', 'Git'],
  \   ['π  Git log            πΉ', 'Denite gitlog:all'],
  \   ['π  Goyo               πΉ', 'Goyo'],
  \   ['π  Tagbar             πΉ', 'TagbarToggle'],
  \   ['π  File explorer      πΉ', 'Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>'],
  \ ]

let s:menus.config = { 'description': 'π§ Zsh Tmux Configuration' }
let s:menus.config.file_candidates = [
  \   ['π  Zsh Configurationfile            πΈ', '~/.zshrc'],
  \   ['π  Tmux Configurationfile           πΈ', '~/.tmux.conf'],
  \ ]

let s:menus.thinkvim = {'description': 'π ThinkVim Configuration files'}
let s:menus.thinkvim.file_candidates = [
  \   ['π  MainVimrc          settings: vimrc               πΉ', $VIMPATH.'/core/vimrc'],
  \   ['π  Initial            settings: init.vim            πΉ', $VIMPATH.'/core/init.vim'],
  \   ['π  General            settings: general.vim         πΉ', $VIMPATH.'/core/general.vim'],
  \   ['π  DeinConfig         settings: deinrc.vim          πΉ', $VIMPATH.'/core/deinrc.vim'],
  \   ['π  FileTypes          settings: filetype.vim        πΉ', $VIMPATH.'/core/filetype.vim'],
  \   ['π  ColorScheme        settings: theme.vim           πΉ', $VIMPATH.'/core/themes/theme.vim'],
  \   ['π  Installed       LoadPlugins: plugins.yaml        πΉ', $VIMPATH.'/core/dein/plugins.yaml'],
  \   ['π  Installed      LocalPlugins: local_plugins.yaml  πΉ', $VIMPATH.'/core/dein/local_plugins.yaml'],
  \   ['π  Global   Key    Vimmappings: mappings.vim        πΉ', $VIMPATH.'/core/mappings.vim'],
  \   ['π  Global   Key Pluginmappings: Pluginmappings      πΉ', $VIMPATH.'/core/plugins/allkey.vim'],
  \ ]

call denite#custom#var('menu', 'menus', s:menus)

"let s:menus.sessions = { 'description': 'Sessions' }
"let s:menus.sessions.command_candidates = [
  "\   ['βΆ Restore session β ;s', 'Denite session'],
  "\   ['βΆ Save sessionβ¦   β', 'Denite session/new'],
  "\ ]
