Product.destroy_all
# instead of delete_all, it allows for multiple time running rails db:seed commands

product = Product.create!(
  title: "Rails Scales!",
  description: %(
    <p>
      <em>Practical Techniques for Performance and Growth</em>
      Rails doesn't scale. So say the naysayers. They're wrong.
      Ruby on Rails runs some of the biggest sites in the world.
    </p>
  ),
  price: 30.95
)

product.image.attach(
  io: File.open(Rails.root.join("db/images/cprpo.jpg")),
  filename: "cprpo.jpg"
)
