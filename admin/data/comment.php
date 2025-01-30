<?php

// GetAllComment

function getAllComment($conn){
    $sql = "SELECT * FROM comment";
    $stmt = $conn->prepare($sql);
    $stmt->execute();

    if($stmt->rowCount() >= 1){
        $data = $stmt->fetchAll();
        return $data;
    }else {
        return 0;
    }
}

// getCommentById
function getCommentById($conn, $id){
    $sql = "SELECT * FROM comment WHERE comment_id=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id]);

    if($stmt->rowCount() >= 1){
        $data = $stmt->fetch();
        return $data;
    }else {
        return 0;
    }
}

// deleteCommentById
function deleteCommentById($conn, $id){
    $sql = "DELETE FROM comment WHERE comment_id=? ";
    $stmt = $conn->prepare($sql);
    $res = $stmt->execute([$id]);

    if($res){
        return 1;
    }else {
        return 0;
    }
}

// deleteCommentByPostId
function deleteCommentByPostId($conn, $id){
    $sql = "DELETE FROM comment WHERE post_id=? ";
    $stmt = $conn->prepare($sql);
    $res = $stmt->execute([$id]);

    if($res){
        return 1;
    }else {
        return 0;
    }
}

// deleteLikeByPostId
function deleteLikeByPostId($conn, $id){
    $sql = "DELETE FROM post_like WHERE post_id=? ";
    $stmt = $conn->prepare($sql);
    $res = $stmt->execute([$id]);

    if($res){
        return 1;
    }else {
        return 0;
    }
}

//  CountByPostId Comment
function CountByPostId($conn, $id){
    $sql = "SELECT * FROM comment WHERE post_id=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id]);

    return $stmt->rowCount();
}

//   LikeCountByPostId  Like
function LikeCountByPostId($conn, $id){
    $sql = "SELECT * FROM post_like WHERE post_id=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id]);

    return $stmt->rowCount();
}

//   isLikedByUserId  Liked
function isLikedByUserId($conn, $post_id, $user_id){
    $sql = "SELECT * FROM post_like WHERE post_id=? AND liked_by=?";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$post_id, $user_id]);

    if ($stmt->rowCount() > 0) {
        return 1;
    }else return 0;
}

//  getCommentsByPostId Comments
function getCommentsByPostId($conn, $id){
    $sql = "SELECT * FROM comment WHERE post_id=? ORDER BY comment_id desc";
    $stmt = $conn->prepare($sql);
    $stmt->execute([$id]);

    if($stmt->rowCount() >= 1){
        $data = $stmt->fetchAll();
        return $data;
    }else {
        return 0;
    }
}

