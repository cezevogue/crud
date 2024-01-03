<?php
require_once '../config/function.php';

require_once '../inc/header.inc.php';


if (empty($_POST['detail']))
{
   $error=true;

}



    $data=['detail'=>new DateTime(), 'date'=>$_POST['detail']];

    execute("INSERT INTO error (detail, date) VALUES (:detail, :date)", $data);



$datas=execute("SELECT * FROM errors");














?>



<form  action="">
    <input type="hidden" name="id" value="">
    <textarea name="detail" id="" cols="30" rows="10"></textarea>

    <p><?=  $message ?? ''; ?></p>
    <button type="submit">Valider</button>
</form>


<?php
foreach ($data as $content):?>
    <table class="table">
        <thead>
        <tr>
            <th>detail</th>
            <th>date</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>

        <tr>
            <td></td>
            <td></td>
            <td>
                <?php
                if ($content['status']===0)
                {
                    '<a href="" class="btn btn-info">Marquer résolu</a>';

                }
                ?>


            </td>
        </tr>

        </tbody>
    </table>

<?php
endforeach;

require_once '../inc/footer.inc.php'; ?>
