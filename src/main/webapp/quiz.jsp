<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!



//クラス構造体
class Info_xml {
	public int quiz-id;//クイズID
	public String monndai-bun;//問題文
	public int kotae-tuki;//答え（月
	public int kotae-hi;//答え（日）
	int kategori;//カテゴリナンバー
	public monndai-kaitou;//問題の解答文
	
	public Substitution(int quiz-id, String monndai-bun, int kotae-tuki, String monndai-kaitou, int kategori){
		this.quiz-id = quiz-id;
		this.monndai-bun = monndai-bun;
		this.kotae-tuki = kotae-tuki;
		this.kotae-hi = kotae-hi;
		this.kategori = kategori;
		this.monndai-kaitou = monndai-kaitou;
	}
	
	
}

//Substitution substitution = new Substitution(quiz-id, monndai-bun, kotae-tuki, monndai-kaitou, kategori);

//XML、タグ名が指定されているとき、
//XMLの中のタグ名の中のコンテンツを取得する
String tag_name_XML(String xml, String tag_name){
	//変数定義
	String msg = "";//返り値として返却する文字列
	int pos1 = -1;
	int pos2 = -1;
	int j = 0;//タグの「<」「>」の文字数
	
	try {
		pos1 = xml.indexOf("<" + tag_name + ">");//開始タグが先頭から何文字目かを格納する
		pos2 = xml.indexOf("</" + tag_name + ">");//終了タグが先頭から何文字目かを格納する
		
		if(pos1 == -1 || pos2 == -1) {//もしタグがなかったら処理を変更する
			msg += "タグ名が存在していません。<br>";
			return msg;
		}
		
		msg += xml.substring(pos1 + tag_name.length(), pos2);//タグの中に含まれる文字列を格納する
		
	} catch(Exception e) {//それ以外のエラー時
		msg += "tag_name_HTMLで不具合が発生しました。";
		return msg;
	}
	
	return msg;
}

//XMLファイルから各情報を各変数に読み込む
//引数：カテゴリナンバー
public String[] GetInfo(int kategori) {
	//変数定義
	
	tag_name_XML(quiz.xml, tag_name);
}

%>

<%
//日本語が含まれるパラメータを処理
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");

//変数定義
String msg = ""; //画面に表示する文字列を格納する変数
String category;//ユーザの入力したカテゴリナンバーを格納する変数
int question_now = 0;//現在の問題番号
int question_num = 10;//問題数
int quiz-id;//クイズID
String monndai-bun;//問題文
int kotae-tuki;//答え（月
int kotae-hi;//答え（日）
int kategori;//カテゴリナンバー
String monndai-kaitou;//問題の解答文

category = escapeCell(request.getParameter("category")); //リクエストパラメータを取得する

//問題文・選択肢を取得する


msg += "<h1>今日は何の日クイズ -食べ物編-</h1>";
msg += "<h2>第ｎ問</h2>";
msg += "<q>問題文</q>";
msg += "<form action =\"answer.html\" method =\"post\">選択肢：
	<input type=\"radio\" name=\"answer\" value =\"選択肢1\">選択肢１
    <input type=\"radio\" name=\"answer\" value =\"選択肢2\">選択肢２
    <input type=\"radio\" name=\"answer\" value =\"選択肢3\">選択肢３<br>
    <input type=\"submit\" value=\"OK!\">
    </form>";
    
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>今日は何の日クイズ</title>
</head>
<body>
    <%= msg %>
</body>
</html>