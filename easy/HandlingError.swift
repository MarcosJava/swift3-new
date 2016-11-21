var totalSpending = 0.0

enum SpedingError: Error {	
	case minus
	case limit
}

func calculatorSpending(morningSpending: Double, eveningSpending: Double) -> Double {
	if morningSpending < 0 || eveningSpending < 0 {
		//throws error minus
		throws SpedingError.minus
	}

	if (morningSpending + eveningSpending) > 1000 {
		//throws error limits
		throws SpedingError.limits
	}
	return morningSpending + eveningSpending
}

do {
	try calculatorSpending(morningSpending: 100, eveningSpending: 230.50)
} catch SpedingError.minus {
	print("How is it possible")
} catch SpedingError.limits {
	print("You've reached the limit")
}