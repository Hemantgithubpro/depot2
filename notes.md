

## To test a product in rails console

```ruby
product = Product.new(
  title: "Advanced Rails Development",
  description: "<p>Learn advanced Ruby on Rails development.</p>",
  price: 39.99
)
product.image.attach(
  io: File.open(Rails.root.join("app/assets/images/rails.png")),
  filename: "rails.png",
  content_type: "image/png"
)
```

### to reload rails console
`reload!`