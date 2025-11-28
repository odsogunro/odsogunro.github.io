###
# 20251127 
###

# https://quarto.org/docs/publishing/github-pages.html


# ------------------------------------------------------------
# 0. Help
# ------------------------------------------------------------

.PHONY: help
help:
	@echo "Makefile commands:"
	@echo "  quarto-preview      - Preview the Quarto site locally"
	@echo "  quarto-render       - Render the Quarto site"
	@echo "  quarto-publish    	 - Publish the Quarto site to GitHub Pages"
	@echo "  gh-pages-initialize - Initialize the gh-pages branch for GitHub Pages deployment"
	@echo "  gh-pages-deploy     - Deploy the site to GitHub Pages (customize as needed)"

# ------------------------------------------------------------
# 1. Quarto commands
# ------------------------------------------------------------

.PHONY: quarto-preview quarto-render quarto-publish

quarto-preview:
	@quarto preview

quarto-render:
	@quarto render

quarto-publish:
	@quarto publish
# 	@quarto publish gh-pages odsogunro.github.io

# ------------------------------------------------------------
# 2. GitHub Pages Deployment (if needed)
# ------------------------------------------------------------

.PHONY: gh-pages-deploy gh-pages-initialize

# Initialize an orphan GitHub Pages branch
gh-pages-initialize:
	@git checkout --orphan gh-pages
	@git reset --hard  # Make sure all changes are committed before running this!
	@git commit --allow-empty -m "Initializing gh-pages branch"
	@git push origin gh-pages

# Deploy to GitHub Pages (placeholder target)
gh-pages-deploy:
	@echo "Deploying to GitHub Pages..."
	# Add your build + push commands here
