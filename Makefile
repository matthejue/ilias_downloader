.PHONY: install

install:
	python -m venv .virtualenv && source .virtualenv/bin/activate && pip install -r requirements.txt
	@sudo bash -c "([[ ! -f /usr/local/bin/ilias_downloader ]] || rm /usr/local/bin/ilias_downloader) && sed -i \"s|#!.*|#!$(realpath .)/.virtualenv/bin/python|\" ./ilias_downloader && chmod 755 ./ilias_downloader && sudo ln -s $(realpath .)/ilias_downloader /usr/local/bin/ilias_downloader"
