
.PHONY: .bundle
.bundle:
	@mkdir -p ".bundle/usr/gem"
	@mkdir -p ".bundle/usr/local/bundle"
	@mkdir -p ".bundle/root/.gem"
	@mkdir -p ".bundle/home/jekyll/.bundle"
	@mkdir -p ".bundle/cache"

.PHONY: Gemfile
Gemfile:
	@echo 'source "https://rubygems.org"' > Gemfile
	@echo 'gem "github-pages", "~> 219", group: :jekyll_plugins' >> Gemfile
	@echo 'gem "kramdown-parser-gfm"' >> Gemfile
	@echo 'gem "jekyll-include-cache"' >> Gemfile

.PHONY: _config.dev.yml
_config.dev.yml:
	@echo 'baseurl: ""' > _config.dev.yml
	@echo 'repository: "francescobianco/dx-tech-papers"' >> _config.dev.yml

.PHONY: serve
serve: .bundle Gemfile _config.dev.yml
	@docker run --rm -it \
		-v "$$PWD:/srv/jekyll" \
		-v "$$PWD/.bundle/usr/gem:/usr/gem" \
		-v "$$PWD/.bundle/usr/local/bundle:/usr/local/bundle" \
		-v "$$PWD/.bundle/root/.gem:/root/.gem" \
		-v "$$PWD/.bundle/home/jekyll/.bundle:/home/jekyll/.bundle" \
		-e "BUNDLE_PATH=/srv/jekyll/.bundle/cache" \
		-p 4000:4000 \
		jekyll/builder:3.8 \
		bash -c "gem install bundler -v 2.4.22 --verbose && bundle install && \
				 bundle exec jekyll serve --host 0.0.0.0 --verbose --config _config.yml,_config.dev.yml "
