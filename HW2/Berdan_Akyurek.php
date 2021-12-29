<?php
$number = 30;
$tries = 0;
do {
    $assumption = rand ( 0 , 100 );
    print $assumption;
    print "\n";
    $tries ++;
} while ($assumption != $number);

print $tries;
print " tries\n";

?>
