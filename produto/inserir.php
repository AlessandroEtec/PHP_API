<?php
include("../conexao.php");
header('Content-Type: application/json');
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Headers: Content-Type");

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);
$desc = $request->descricao;
$preco = $request->preco; 
$validade = $request->validade;

$sql = "insert into prodto (pro_descricao, pro_preco, pro_validade) values ('$desc',$preco, '$validade')";
$status = mysqli_query($conexao, $sql);
if ($status) {
    http_response_code(201);
    $data = ["mensagem" => "$desc inserido com Sucesso", "id" => $conexao->insert_id];
    echo json_encode($data);
} else {
    http_response_code(202);
    $data = ["status" => "Erro", "memsagem" => "Erro ao Inserir " . mysqli_error($conexao)];
    echo json_encode($data);
}
?>
  