module ApplicationHelper

  def site_name
    "Mike Kossick Consulting"
  end

  def site_url
    if Rails.env.production?
      # Place your production URL in the quotes below
      "http://www.mikekossick.com/"
    else
      # Our dev & test URL.
      "http://localhost:3000"
    end
  end

  def meta_author
    "Adam Kalnas"
  end

  def meta_description
    "Offical home page for Mike Kossick Consulting"
  end

  def meta_keywords
    "Construction Consulting Chicken Coops"
  end

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    if page_title.empty?
      site_name
    else
      "#{page_title} | #{site_name}"
    end
  end

end
