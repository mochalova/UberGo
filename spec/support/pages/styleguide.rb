class StyleguidePage < GeneralPage
  set_url '/styleguide'

  class HeaderItem < SitePrism::Section
    element :logo, 'b'
    element :phone1, '.header__link'
  end

  section :header, HeaderItem, '.header'
end
