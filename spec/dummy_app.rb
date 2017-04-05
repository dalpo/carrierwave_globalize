# frozen_string_literal: true
require 'rails'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'dummy_app/config'

# config
app = Class.new(Rails::Application)
app.config.secret_token = '00cd5b5b19431a54b3ec65452e0483abf18dab42783ea0835f466c1e9a2a4c19f736832396f0ded26a6c5cb015'
app.config.session_store :cookie_store, key: '_dummy_app_session'
app.config.active_support.deprecation = :log
app.config.eager_load = false
app.config.i18n.available_locales = [:en, :it]
app.config.i18n.default_locale = :en

# Rais.root
app.config.root = File.dirname(__FILE__)
Rails.backtrace_cleaner.remove_silencers!
app.initialize!

# routes
# app.routes.draw do
#   root 'homepage#index'
#   resources :posts, only: [:index, :show]
# end

# models
require 'dummy_app/schema'
require 'dummy_app/uploaders/attachment_uploader'
require 'dummy_app/models/asset'

# controllers
# class ApplicationController < ActionController::Base; end
# class HomepageController < ApplicationController
#   def index; end
# end

# class PostsController < ApplicationController
#   def index
#     @posts = Post.all
#   end
#
#   def show
#     @post = Post.find(params[:id])
#   end
# end

# helpers
# Object.const_set(:ApplicationHelper, Module.new)
