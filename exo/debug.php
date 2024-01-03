<?php
require_once '../config/function.php';

require_once 'inc/header.inc.php';


if (empty($_POST['detail']))
{
   $error=true;
  $message="champs obligatoire";
}



    $data=['detail'=>new DateTime()];

if (!$error){

    execute("INSERT INTO error (detail, date) VALUES (NOW(),:detail, )", $data);
    header('location:./debug.php');
    die();

}



$datas=execute("SELECT * FROM errors")->fetchAll(PDO::FETCH_ASSOC);



execute("UPDATE errors SET status=:status WHERE id=:id", ['status'=>1]);
header('location:./');
die();














?>



<form  action="">
    <input type="hidden" name="id" value="">
    <textarea name="details" id="" cols="30" rows="10"></textarea>

    <p><?=  $message ; ?></p>
    <button type="submit">Valider</button>
</form>
  <table class="table">
        <thead>
        <tr>
            <th>detail</th>
            <th>date</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>

<?php


        foreach ($data as $content):?>
        <tr>
            <td><?php  $content['detail'] ?></td>
            <td><?php  date_format(new DateTime($content['date']), 'd-m-Y H:i:s')   ?></td>
            <td>
                <?php
                if ($content['status']=='0')
                {
                    '<a href="?id='.$content['id'].'" class="btn btn-info">Marquer résolu</a>';

                }
                ?>


            </td>
        </tr>
<?php endforeach;?>
        </tbody>
    </table>

<?php


require_once '../inc/footer.inc.php'; ?>
