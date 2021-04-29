<?php

header("Content-Type: application/json");
header('Access-Control-Allow-Origin: *');

require("../conexao.php");
$sql = "select pro_id as id, pro_descricao as descricao, pro_preco as preco, pro_validade as validade from produto order by pro_descricao";
$result = mysqli_query($conexao, $sql);
if ($result) {
    $r = $result->fetch_all(MYSQLI_ASSOC);
    http_response_code(200);
    echo json_encode($r, JSON_UNESCAPED_UNICODE);
} else {
    http_response_code(500);
    echo json_encode(["memsagem" => "Erro SQL: " . $conexao->error]);
}
?>
 