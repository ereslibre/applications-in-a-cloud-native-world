build:
	@mdbook build

serve:
	@mdbook serve

deps: deps-preconditions
	@cargo install mdbook
	@cargo install mdbook-graphviz
	@cargo install mdbook-plantuml --no-default-features

deps-preconditions:
	@which dot &> /dev/null || (echo "dot executable not found. Please, install graphviz" && exit 1)
	@which plantuml &> /dev/null || (echo "plantuml executable not found. Please, install plantuml" && exit 1)
