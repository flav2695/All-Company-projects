<!DOCTYPE html>
<html>
<head>
    <title>Generate Bar Code Scanning in Laravel</title>
</head>
<body>
  
<h1>Generate Bar Code Scanning in Laravel</h1>
   
<h3>Product 1: 0001245259636</h3>
@php
    $generator = new Picqer\Barcode\BarcodeGeneratorHTML();
@endphp
  
{!! $generator->getBarcode('0001245259636', $generator::TYPE_CODE_128) !!}
  
  
<h3>Product 2: 000005263635</h3>
@php
    $generatorPNG = new Picqer\Barcode\BarcodeGeneratorPNG();
@endphp
  
<img src="data:image/png;base64,{{ base64_encode($generatorPNG->getBarcode('000005263635', $generatorPNG::TYPE_CODE_128)) }}">
</body>
</html>