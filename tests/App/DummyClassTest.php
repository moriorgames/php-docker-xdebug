<?php

use App\DummyClass;
use PHPUnit\Framework\TestCase;

class DummyClassTest extends TestCase
{
    public function test_add()
    {
        $sut = new DummyClass;

        $result = $sut->add(3, 4);

        $this->assertEquals(7, $result);
    }

    public function testSubtract()
    {
        $sut = new DummyClass;

        $result = $sut->subtract(5, 4);

        $this->assertEquals(1, $result);
    }

    public function testMultiply()
    {
        $sut = new DummyClass;

        $result = $sut->multiply(3, 4);

        $this->assertEquals(12, $result);
    }
}
