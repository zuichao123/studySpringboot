<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>盒子的真实尺寸</title>
    <style type="text/css">
        .box {
            width: 60px;
            background: #0C0C0C;
        }

        .box01 {
            width: 50px;
            height: 50px;
            background-color: gold;
            padding: 10px;
        }

        .box02 {
            width: 50px;
            height: 50px;
            background-color: gold;
            border: 10px solid #000
        }

        .box03 {
            width: 50px;
            height: 50px;
            background-color: gold;
            border: 50px solid #000;
            padding: 60px;
        }
    </style>
</head>
<body>
<div class="box">
    <div class="box01">1</div>
</div>
<br/>
<div class="box02">2</div>
<br/>
<div class="box03">3</div>
<table class="table" border="1">
    <th>
        <td>1</td>
        <td>2</td>
        <td>3</td>
    </th>
    <tr>
        <td>a</td>
        <td>a</td>
        <td>a</td>
    </tr>
    <tr>
        <td>b</td>
        <td>b</td>
        <td>b</td>
    </tr>
    <tr>
        <td>c</td>
        <td>c</td>
        <td>c</td>
    </tr>
</table>
</body>
</html>