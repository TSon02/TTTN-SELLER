// exports.constants = {
//     VALIDATION_ERROR: 400,
//     UNAUTHORIZED: 401,
//     FORBIDDEN: 403,
//     NOT_FOUND: 404,
//     SERVER_ERROR: 500,
// }

 const OrderStatus = {
	Processing: "processing",
	Confirmed: "confirmed",
	Shipped: "shipped",
	Delivered: "delivered"
}

 const PaymentStatus = {
	Paid: "paid",
	Unpaid: "unpaid",
}

const PaymentMethod = {
	Cash: "cash",
	Card: "card",
 }


module.exports ={ OrderStatus,PaymentStatus}