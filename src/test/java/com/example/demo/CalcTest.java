package com.example.demo;

import org.junit.Test;

public class CalcTest {

    @Test
    public void testadd(){
        Calc calc = new Calc();
        Integer result = calc.add(1 ,1);
        assert result == 2;
    }
}
