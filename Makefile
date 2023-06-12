.PHONY: serve test_deps test check appcfg-update deploy

serve:
	python main.py

test_deps:
	pip install -r requirements-dev.txt

test:
	pytest

typecheck:
	pyright

appcfg-update deploy:
	gcloud app deploy

create-indexes:
	gcloud datastore indexes create index.yaml
