RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'User' do
    list do
      field :email
    end
    edit do
      field :email
      field :password
      field :password_confirmation
    end
  end

  config.model 'Page' do
    list do
      field :title
    end
    edit do
      field :title
      field :permalink
      field :content, :wysihtml5
    end
  end

  config.model 'Image' do
    visible false
    edit do
      field :title
      field :image
      field :position
    end
  end

  config.model 'Project' do
    list do
      field :title
    end
    edit do
      field :title
      field :permalink
      field :text, :wysihtml5
      field :thumbnail
      field :images do
        orderable true
      end
    end
  end
end
