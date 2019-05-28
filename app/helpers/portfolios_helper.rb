module PortfoliosHelper
  def image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"
  end

  def portfolio_img img, type
    if img == nil
      if type == "thumb"
        image_generator(height: '350', width: '200')
      elsif type == "main"
        image_generator(height: '600', width: '400')
      end
    else
      img
    end
  end
end
