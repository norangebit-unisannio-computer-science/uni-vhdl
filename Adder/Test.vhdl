entity Test is
end Test;

architecture cr_tb of Test is
    component adder
      port(a, b: in bit;
          Cin: in bit;
          Cout: out bit;
          S: out bit);
    end component;
    signal a0, b0, Cin0, Cout0, S0: bit;
    begin
      add0: adder port map(a0, b0, Cin0, S0, Cout0);
      a0<='1' after 0 ms, '1' after 5 ms, '0' after 7 ms, '1' after 10 ms;
      b0<='0' after 1 ms, '1' after 6 ms, '1' after 10 ms;
    end architecture cr_tb;
