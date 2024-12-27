<?php
$_SESSION['valid_dycathecode'] = "nones;
echo $_SESSION['valid_dycathecode'];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <br>
    <div class="idi"></div>
    <script>
        setInterval(() => {
            let  site = localStorage.getItem('storage_dycathecorde');
            let idi = document.querySelector(".idi");;
            localStorage.setItem('storage_dycathecorde', "<?php echo $_SESSION['valid_dycathecode']; ?>");
            idi.innerHTML= site; 
        }, 100);
    </script>
</body>
</html>