RailsAdmin.config do |config| 
  
  config.models do
    list do
      fields do
        label do
          label.upcase # in this context label refers to default label method
        end
      end
    end
  end

  
  config.model Post do
    edit do
      field :title
      field :body, :text do
        ckeditor true
      end
      field :featured
      field :featured_img_url do
        help 'Required if featured (590px x 300px)'
      end
      field :published_date
      field :author
    end
  end

  config.model Release do
    edit do
      field :artist_id, :belongs_to_association
      field :title
      field :description
      field :release_img_url do
        help 'Required (270px x 160px)'
      end
      field :release_img_hover_url do
        help 'Required (270px x 160px)'
      end
      field :video_url
      field :is_featured      
    end
  end
  
  config.model Artist do
    edit do
      field :name
      field :biography_text
      field :bio_pic_url do
        help 'Required (220px x 280px)'
      end
      field :bio_pic_hover_url do
        help 'Required (220px x 280px)'
      end
      field :twitter_id
      field :roster_pic_url do
        help 'Required (270px x 100px)'
      end
      field :roster_pic_hover_url do
        help 'Required (270px x 100px)'
      end
      field :artist_home_img_url do
        help 'Required (292px x height)'
      end
      field :artist_home_img_hover_url do
        help 'Required (292px x height)'
      end
      field :bio_video_url do
        help 'Required - Youtube or Vimeo only!'
      end
      field :bio_video_img_url do
        help 'Required (260px x 160px)'
      end
      field :bio_video_img_hover_url do
        help 'Required (260px x 160px)'
      end
    end
  end
  
  
  config.model Page do
    edit do
      field :title
      field :body, :text do
        ckeditor true
      end
      field :page_img_url do
        help 'Required - (910px x height?)'
      end
      field :activate_as_splash
      field :page_name do
        help 'Required - Do not change!'
      end
    end
  end
  
end
