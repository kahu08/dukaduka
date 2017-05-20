class Spree::StoreController
  before_filter :load_taxonomies
# enable all taxonomies to be loaded on every page after every request
  def load_taxonomies
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end
end
