%dw 1.0

%var exchangeRate = 1.35

%function processByType(input)
input match {
    :array -> "input is an array of size $(sizeOf input)",
    :object  -> (type:"object") ++ input,
    :number -> $ as :string {format: "#,###.00"} as :number,
    "SFO" -> "San Francisco",
    default -> "input $(input) is of type " ++ typeOf input
}

---

//Provide external names for variables and functions defined in the header
{
  exchangeRate: exchangeRate,
  processByType: processByType
}
