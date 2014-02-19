## Binary Numbers - Answers by Ben Lewis

1. Why are binary numbers used in Computer Science?

Data can be represented by light or electricity in binary: pulse or no pulse; light or no light.
Therefore, data can be transferred over phone lines, airwaves, and optic cables using binary (0s and 1s).

2. Write an algorithm for counting up in binary

def count_up(max)
  (1..max).to_a.each do |d|
    puts d.to_s(2)
  end
end

3. What are the binary equivalents for the decimal numbers 28 through 34?

28 => 11100
29 => 11101
30 => 11110
31 => 11111
32 => 100000
33 => 100001
34 => 100010

4. Write a pseudocode algorithm for converting a binary number to decimal

See binary.js in this folder.

5. What's the sum of the binary numbers 1001 and 1011? Can you find it through two totally different processes?

### Version 1
"1001".to_i(2) == 9
"1011".to_i(2) == 11
9 + 11 == 20

20.to_s(2) == "10110"

### Version 2

Long addition, but 1+1 == 10

1)

 1001
+1011
-----

2) (Carry the 1)
   1
 1001
+1011
-----
    0

3)
  1
 1001
+1011
-----
   00

4)
  1
 1001
+1011
-----
  100

5)
  
 1001
+1011
-----
10100


6. Write a pseudocode algorithm for converting a decimal number to binary

- Take the decimal number
- Divide it by 2
- Record whether the remainder is 0 or 1
- Continue dividing by the result (minus the remainder) and recording until you reach 1
- Join and reverse the remainders you recorded
- This is the binary representation

Example:
724 / 2 #=> Remainders: [0]
362 / 2 #=> [0, 0]
181 / 2 #=> [0, 0, 1]
90 / 2  #=> [0, 0, 1, 0]
45 / 2  #=> [0, 0, 1, 0, 1]
22 / 2  #=> [0, 0, 1, 0, 1, 0]
11 / 2  #=> [0, 0, 1, 0, 1, 0, 1]
5 / 2   #=> [0, 0, 1, 0, 1, 0, 1, 1]
2 / 2   #=> [0, 0, 1, 0, 1, 0, 1, 1, 0]
1 / 2   #=> [0, 0, 1, 0, 1, 0, 1, 1, 0, 1]

[0, 0, 1, 0, 1, 0, 1, 1, 0, 1].reverse.join

Result: "1011010100"

7. If one binary digit is a bit and a byte is eight bits, what's the largest decimal number you can represent with eight bytes?

18_446_744_073_709_551_615

8. In some systems, a 1 in the most significant / leftmost bit means that the number is negative, so "1011" would equate to -3 in decimal. What would the result be in such a system of "1001" minus "0011"?

-1 + 3 == 2

9. Try out our [Fixnum shifting exercises](https://github.com/JumpstartLab/ruby-exercises/blob/master/shovel-and-shift/shift_fixnum_test.rb)

See shift_fixnum_test.rb in this folder.