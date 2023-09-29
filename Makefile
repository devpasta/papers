
Gemfile:
	@echo "source 'https://rubygems.org'" > Gemfile
	@echo "gem 'github-pages', '~> 219', group: :jekyll_plugins" >> Gemfile
    @echo "gem 'kramdown-parser-gfm'" >> Gemfile
    @echo "gem 'jekyll-include-cache'" >> Gemfile

serve: Gemfile
	@mkdir -p ".bundles_cache"
	@docker run --rm \
      -v "$$PWD:/srv/jekyll" \
      -e BUNDLE_PATH="/srv/jekyll/.bundles_cache" \
      -p 4000:4000 \
      jekyll/builder:3.8 \
      bash -c "gem install bundler && bundle install && bundle exec jekyll serve --host 0.0.0.0 --verbose --config _config.yml"
