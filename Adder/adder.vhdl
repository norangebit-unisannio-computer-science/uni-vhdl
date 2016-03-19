entity adder is
port(a, b: in bit;
    Cin: in bit ;
    Cout: out bit;
    S: out bit);
end adder;

architecture sum of adder is
  begin
    S<= a xor b xor Cin;
    Cout<= ((a xor b) and Cin) or (a and b);
  end sum;
