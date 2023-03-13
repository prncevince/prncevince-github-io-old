.PHONY: docs docs-deploy docs-dev docs-preview conda-env-export conda-env-create

docs:
	nbdev_docs

docs-dev:
	nbdev_preview

docs-preview:
	python -m http.server -d _site

docs-deploy:
	rm -rf _site
	cp -rp _proc/_site _site

conda-env-create:
	conda env create -f prncevince.yml

conda-env-export:
	conda env export > prncevince.yml
