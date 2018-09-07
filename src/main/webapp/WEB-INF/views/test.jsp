<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bootstrap分页实例</title>

    <style type="text/css">
        #queryDiv {
            margin-right: auto;
            margin-left: auto;
            width:600px;
        }
        #textInput {
            margin-top: 10px;
        }
        #tableResult {
            margin-right: auto;
            margin-left: auto;
            width:600px;
        }
        td {
            width:150px
        }
    </style>
</head>
<body>
    <form action="upload" enctype="multipart/form-data" method="post">
        <table>
            <tr>
                <td>文件描述</td>
                <td><input type="text" name="description"></td>
            </tr>
            <tr>
                <td>选择文件</td>
                <td><input type="file" name="file"></td>
            </tr>
            <tr>
                <td><input type="submit" value="上传文件"></td>

            </tr>
        </table>
    </form>
</body>
</html>