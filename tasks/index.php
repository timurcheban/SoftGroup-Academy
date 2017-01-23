<!DOCTYPE>
<html>
<head>
    <meta charset="utf-8">
    <title>Робота з файлами</title>
</head>
<body><pre><?php
$filename='Planes.txt';
function getRecords($filename)
{
    $current = file_get_contents($filename);
    $array = explode(';', $current);
    var_dump($array);
    return $array;
}
echo getRecords($filename);
function setRecords($array)
{
    $filename='Planes.txt';
$string = implode(';', $array);
 return file_put_contents($filename, $string);
};
function getFlightFromRecord($record)
{
$flight = array();
$flight['number'] = $record[0];
$flight['company'] = $record[1];
$flight['price'] = $record[2];
$flight['time'] = $record[3];
    var_dump($record);
return $flight;
}
$records = getRecords($filename);
$flights = array();
foreach($records as $record)
{
    $flights[] = getFlightFromRecord($record);
}?></pre>
<table>
th	vbbb
<?foreach ($flights as $flight) {?>
<tr>
    <td> <?= $flight['number'] ?>
    <td> <?= $flight['company'] ?>
    <td> <?= $flight['price'] ?>
    <td> <?= $flight['time'] ?>

</tr>
<? }?></table>



</body>
</html>