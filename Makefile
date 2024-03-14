.PHONY: link
link: code_data_path=.config/Code/User
link:
	@mkdir -p $(HOME)/.bashrc.d; \
	# Processing bash (aliases, functions, env, inputrc)
	@ln -sf $(realpath .bash_productivity) $(HOME)/.bashrc.d/bash_productivity;
	@ln -sf $(realpath .functions) $(HOME)/.bashrc.d/functions;
	@ln -sf $(realpath .aliases) $(HOME)/.bashrc.d/aliases;
	@ln -sf $(realpath .env) $(HOME)/.bashrc.d/env;
	@ln -sf $(realpath .inputrc) $(HOME)/.inputrc;

	# Processing Git
	@ln -sf $(realpath .gitconfig) $(HOME)/.gitconfig;
	@ln -sf $(realpath .gitignore) $(HOME)/.gitignore;

	# Processing Vim
	@ln -sf $(realpath .vimrc) $(HOME)/.vimrc;

	# Processing Starship (better prompt)
	@ln -sf $(realpath .config/starship.toml) $(HOME)/.config/starship.toml

	# Processing VSCode settings
	@mkdir -p $(HOME)/$(code_data_path);
	@ln -sf $(realpath $(code_data_path)/settings.json) $(HOME)/$(code_data_path)/settings.json;
	@ln -sf $(realpath $(code_data_path)/keybindings.json) $(HOME)/$(code_data_path)/keybindings.json;

	# Processing OCI
	@ln -sf $$HOME/Projects/myconf/.oci/oci_cli_rc $$HOME/.oci/oci_cli_rc;

	# Processing Custom Binaries
	@mkdir -p $(HOME)/bin;
	@ln -sf $$HOME/Projects/myip/myip $$HOME/bin/myip;
	@ln -sf $$HOME/Projects/Projects/go/src/github.com/tschf/unphoto/unphoto $$HOME/bin/unphoto;

	# Done

.PHONY: git
git:
	@sudo apt install git
	@sudo apt install -y libsecret-1-0 libsecret-1-dev
	@sudo make -C /usr/share/doc/git/contrib/credential/libsecret
