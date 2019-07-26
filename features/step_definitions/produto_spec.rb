Dado("que {string} é um novo produto") do |product_code|
  file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/products.yaml"))
  @produto = file[product_code]
end

Quando("eu faço o cadastro deste produto") do
  puts @screen.class
  @screen.products.create_product
end

Então("devo ver o novo produto na lista") do
  pending # Write code here that turns the phrase above into concrete actions
end
