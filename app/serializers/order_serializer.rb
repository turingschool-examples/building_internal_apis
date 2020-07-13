class OrderSerializer
  # -With FastJSONApi-
  # include FastJsonapi::ObjectSerializer
  # attributes :id, :order_number
  #
  # has_many :items
  #
  # attribute :num_items do |order|
  #   order.items.count
  # end

   # -Without FastJSONApi-
   def initialize(orders)
     @data = orders
   end

   def order_info
     order_info = {}
     order_info[:data] = []
     @data.each do |order|
       order_details = {
         id: order.id,
         type: 'order',
         attributes: {
           id: order.id,
           order_number: order.order_number
         }
       }
       order_info[:data] << order_details
     end
     order_info
   end

end
