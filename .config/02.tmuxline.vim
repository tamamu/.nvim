let g:tmuxline_preset = {
  \'a'    : '#S',
  \'c'    : ['#(whoami)', '#(uptime | cud -d " " -f 1,2,3)'],
  \'win'  : ['#I', '#W'],
  \'cwin' : ['#I', '#W', '#F'],
  \'x'    : ['#(~/.tmux/get_load_average_tmux) #(~/.tmux/get_volume_tmux)'],
  \'y'    : ['%R', '%a', '%Y'],
  \'z'    : '#H'}

