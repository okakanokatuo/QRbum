class SitesController < ApplicationController

  def show
    @album = Album.find(params[:id])
    qr = RQRCode::QRCode.new(album_url(@album), size: 10)
    @qr_code = qr.to_img.resize(200, 200).to_data_url
end

end
