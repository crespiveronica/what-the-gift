class ProductMailer < ActionMailer::Base
  default from: "wtgproject@gmail.com"

  def publication_result(selling_product)
    @selling_product = selling_product
    mail(to: @selling_product.seller.email, subject: 'Resultado publicacion ' + @selling_product.product.name)
  end

end