#!/bin/sh

# Hexo configuration
patch $1/_config.yml < ConfHexo.patch

# toc patch
patch $1/themes/landscape/source/css/_partial/article.styl < StylArticle.patch
patch $1/themes/landscape/layout/_partial/article.ejs < EjsArticle.patch
