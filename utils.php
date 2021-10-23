<?php
function jsAlert($message, $href)
{
    echo "<script type='application/javascript'>
                alert('$message');
                window.location.href='$href';
               </script>";
}

function matchFingerPrintOnline($saved)
{
    echo "<script type='text/javascript' src='jquery-1.8.2.js'></script>";
    echo "<script type='text/javascript' src='mfs100-9.0.2.6.js'></script>";
    $matched = false;
    echo "<script type='application/javascript'>
                const result = MatchFinger(60, 20, $saved);
                console.log(result.data.Status);
               </script>";
    return $matched;
}

function matchFingerPrint($saved, $curr)
{
    echo "<script type='text/javascript' src='jquery-1.8.2.js'></script>";
    echo "<script type='text/javascript' src='mfs100-9.0.2.6.js'></script>";
    $matched = false;
    echo "<script type='application/javascript'>
                const result = VerifyFinger($saved, $curr);
                console.log(result.data.Status);
               </script>";
    return $matched;
}

