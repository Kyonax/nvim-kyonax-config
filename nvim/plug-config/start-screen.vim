"Safe the Sessions
let g:startify_session_dir = '~/AppData/Local/nvim/session'

let g:startify_lists = [
      \ { 'type': 'files',     'header': ['   Files']             },
      \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()]  },
      \ { 'type': 'sessions',  'header': ['   Sessions']        },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']       },
      \]

let g:startify_bookmarks = [
      \ {'h': '~/AppData/Roaming/Hyper/.hyper.js'},
      \ {'sc': '~/AppData/Local/nvim/plug-config/start-screen.vim'},
      \ {'vi': '~/AppData/Local/nvim'},
      \{'mnt': '~/Documents/MTAServer/server/mods/deathmatch'}
      \]

let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_session_persistence = 1

let g:startify_custom_header = [
      \'',                                                            
      \'                                ---/os-  ',                    
      \'                         -:/sssmNNMMMMMmhd:  ',                
      \'                     ./smNMMMMMMMMMMMMMMMMMNho- ',             
      \'                    /NMMMMMMMMMMMMMMMMMMMMMMMMNd+ ',          
      \'                  omNMMMMMMMMMMMMMMMMMMMMMMMMMMMMmo ',        
      \'                 yMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMd.  ',    
      \'                hMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMm- ',   
      \'                yMMMMMMMMMMMMMMNhy//oohNMMMMMMMMMMMMMm   ',   
      \'               :NMMMMMMMMMMMMMm-       -:+mMMMMMMMMMMMs  ',   
      \'               oMMMMMMMMMMMMd:.           .dMMMMMMMMMMN  ',   
      \'     --         mMMMMMMMMMMMMs.              mMMMMMMMMMM: ',   
      \'     s.+      :MMMMMMMMMMMMMMh/-+os          oMMMMMMMMMM+ ',   
      \'    ym/d/     .NMmyMMMMMMMMMMMNsohMy         sMMMMMMMMMM+ ',   
      \'    sMMM+.     .os-dMMMMMMMMMMMMMMN+         NMMMMMMMMMMs ',  
      \'    /MMMds          :hMMMMMMMMMMMMh/       .hMMMMMMMMMMs ',   
      \'    /MMMMh            oshmdsooyhy/         oMMMMMMMMMM/. ',   
      \'    oNMMMMy:-.        :--syy.            .smMMMMMMMMMh   ',   
      \'     sMMMMMMMo            ..             yMMMMMMMMMMh.  ',    
      \'     +dMMMMMMd++...                    .+NMMMMMMMMM+   ',     
      \'     -mMMMMMMMMMNNNho-..             :smMMMMMMMMMMy  ',      
      \'      -yNMMMMMMMMMMMMMNmysy/::..-/ohmMMMMMMMMMNh/:  ',        
      \'        ./NMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNy:  ',           
      \'          -yNMMMMMMMMMMMMMMMMMMMMMMMMMMMMNd+.  ',             
      \'            :ommMMMMMMMMMMMMMMMMMMMMNNds/.   ',               
      \'                +hdyhNMMNNNNNmmdhso/-    ',                   
      \'                      /s:....          ',                     
      \'                                      ', 
      \'                      KYONAX DEVELOPER',
      \'                  DONT STOP - KEEP CODING',
      \
      \]

