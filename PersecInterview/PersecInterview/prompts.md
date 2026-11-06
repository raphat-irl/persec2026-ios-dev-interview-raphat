# Question 2: Custom String Sorting

## Refactor the existing implementation using method chaining

**Prompt:**

> Act as a Swift code reviewer.
>
> Refactor the following function to use Swift method chaining instead
>
> Preserve the existing behavior and sorting rules:
> 1. Remove all whitespace characters from each input string.
> 2. Extract the prefix and numeric portion using the existing `splitPrefixNumber(from:)` helper.
> 3. Sort by prefix in ascending alphabetical order.
> 4. If prefixes are equal, sort by the extracted number in ascending numerical order.
> 5. Return the normalized strings in the sorted order.

>
> Existing implementation:
>
> ```swift
> func sortedByPrefixAndNumber(_ input: [String]) -> [String] {
>     let normalizedItems = input.map { item in
>         String(item.filter { !$0.isWhitespace })
>     }
>
>     let parsedItems = normalizedItems.map { item in
>         let (prefix, number) = splitPrefixNumber(from: item)
>
>         return (
>             value: item,
>             prefix: prefix,
>             number: number
>         )
>     }
>
>     let sortedItems = parsedItems.sorted { first, second in
>         if first.prefix != second.prefix {
>             return first.prefix < second.prefix
>         }
>
>         if first.number != second.number {
>             return first.number < second.number
>         }
>
>         return false
>     }
>
>     let result = sortedItems.map { item in
>         item.value
>     }
>
>     return result
> }
> ```

---

# Question 4: Modern Roman Numerals

The assignment requires two conversion functions:

1. Integer to Roman Numerals.
2. Roman Numerals to Integer.

## Step 1: Design the Integer-to-Roman conversion

**Purpose:** Understand and apply a greedy approach using Roman symbol-value pairs ordered from the largest value to the smallest value.

**Prompt:**

> Help me reason through the Integer-to-Roman problem without changing the assignment requirements.
>
> I plan to use a greedy algorithm:
> - Store Roman symbols and their integer values in tuples.
> - Include the standard subtractive combinations: `CM`, `CD`, `XC`, `XL`, `IX`, and `IV`.
> - Arrange the tuple list in descending order by value.
> - Process each tuple from the largest value to the smallest value.
> - Use integer division (`remaining / value`) to calculate how many times the current Roman symbol can be used.
> - Use modulo (`remaining % value`) to calculate the amount left after using that value.
> - Append the current symbol the calculated number of times using `String(repeating: symbol, count: count)`.
>
> Explain why this greedy strategy works for the standard Roman numeral range in the assignment. Use Swift terminology and walk through an example such as `1989`.
>

## Source References

The following web resources were consulted for algorithm research and understanding.

### 1.Balanced Brackets

https://leetcode.com/problems/valid-parentheses/description/

### A. Integer to Roman Numerals

**1. NeetCode Integer to Roman**

https://neetcode.io/solutions/integer-to-roman

**2. DEV Community Swift program to convert an integer to a Roman numeral**

https://dev.to/harshpdev/swift-program-to-convert-an-integer-to-a-roman-numeral-a-classic-leetcode-problem-integer-to-33l9

### B. Roman Numerals to Integer

**1. NeetCode Roman to Integer**

https://neetcode.io/solutions/roman-to-integer

### 6.N-th Tribonacci Number - Explanation

https://neetcode.io/solutions/n-th-tribonacci-number

---


