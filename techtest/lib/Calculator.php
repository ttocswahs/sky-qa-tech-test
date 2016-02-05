<?php

class Calculator implements iCalculator, iScientificCalculator {

    protected $stack;
    protected $op;
    protected $result;

    public function cubeRoot($a){
      return pow($a, 1/3);
    }

    public function factorial($a){
      return $this->getFactorial($a);
    }
    public function decToHex($a){
      return dechex($a);
    }

    public function add($a, $b) {
        return ($a + $b);
    }

    public function subtract($a, $b) {
        return ($a - $b);
    }

    public function multiply($a, $b) {
        return ($a * $b);
    }

    public function divide($a, $b) {
        return ($a / $b);
    }

    public function pressNumber($number) {
        $this->stack[] = $number;
    }

    public function pressAdd() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "+";
    }

    public function pressCubeRoot(){
        if(count($this->stack) > 0) {
            $this->op = "^3";
            $this->evaluateStack();
        }

    }

    public function pressFactorial(){
        if(count($this->stack) > 0) {
            $this->op = "!";
            $this->evaluateStack();
        }

    }

    public function pressDecToHex(){
        if(count($this->stack) > 0) {
            $this->op = "dToH";
            $this->evaluateStack();
        }

    }

    public function pressSubtract() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "-";
    }

    public function pressMultiply() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "*";
    }

    public function pressDivide() {
        if(count($this->stack) > 1) {
            $this->evaluateStack();
        }
        $this->op = "/";
    }

    public function pressEquals() {
        return $this->evaluateStack();
    }

    protected function getFactorial($number) { //basic implementation via recursion
        if ($number < 2) {
            return 1;
        } else {
            return ($number * $this->getFactorial($number-1));
        }
    }

    protected function evaluateStack() {
        switch($this->op) {
            case "+":
                $result = $this->add(array_shift($this->stack), array_shift($this->stack));
                break;
            case "-":
                $result = $this->subtract(array_shift($this->stack), array_shift($this->stack));
                break;
            case "*":
                $result = $this->multiply(array_shift($this->stack), array_shift($this->stack));
                break;
            case "/":
                $result = $this->divide(array_shift($this->stack), array_shift($this->stack));
                break;
            case "^3":
                $result = $this->cubeRoot(array_shift($this->stack));
                break;
            case "!":
                $result = $this->factorial(array_shift($this->stack));
                break;
            case "dToH":
                $result = $this->decToHex(array_shift($this->stack));
                break;
        }
        $this->clearStack();
        $this->stack[] = $result;
    }

    protected function clearStack() {
        $this->stack = array();
    }

    public function readScreen() {
        $value = array_shift($this->stack);
        return $value;
    }
}