.PHONY: link
link:
	@for proj_file in $(shell find $(CURDIR) -name ".*" -not -name ".git" -not -name ".bashrc" -not -name ".oci"); do \
		base_file=$$(basename $$proj_file); \
		ln -sf $$proj_file $(HOME)/$$base_file; \
	done; \
        ln -sf $$HOME/Projects/myip/myip $$HOME/bin/myip; \
        ln -sf $$HOME/Projects/Projects/go/src/github.com/tschf/unphoto/unphoto $$HOME/bin/unphoto; \
        ln -sf $$HOME/Projects/myconf/.oci/oci_cli_rc $$HOME/.oci/oci_cli_rc;

.PHONY: git
git:
	@sudo apt install git
	@sudo apt install -y libsecret-1-0 libsecret-1-dev
	@sudo make -C /usr/share/doc/git/contrib/credential/libsecret

.PHONY: pkginstall
pkginstall:
	@xargs -rxa apt.pkglist -- sudo apt install --

.PHONY: vscode
vscode: code_data_path=.config/Code/User
vscode:
	mkdir -p $(HOME)/$(code_data_path)
	ln -sf $(realpath $(code_data_path)/settings.json) $(HOME)/$(code_data_path)/settings.json
	ln -sf $(realpath $(code_data_path)/keybindings.json) $(HOME)/$(code_data_path)/keybindings.json
