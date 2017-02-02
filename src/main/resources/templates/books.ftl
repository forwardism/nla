<!DOCTYPE html>
<html lang="en">
	<head>
    <title>Spring Freemarker</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
		<link rel="stylesheet" href="/css/nla.css">
	</head>

<body>
<#include "/_header.html">

	<nav class="navbar navbar-default">
		<div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
				<li><a href="/">Home</a></li>
				<li class="active"><a href="/books">Books</a></li>
        <li><a href="/people">People</a></li>
		</div>
	</nav>

	<div class="container">
		<div class="page-header">
		  <h1>Books <small>(all books)</small></h1>
		</div>

	  <#if books?size != 0 >
		<div class="container">
	  <ul class="media-list">
		  <#list books as book>
		  <li class="media">
		    <div class="media-left">
		      <a href="#">
		        <img class="media-object sized" src="http://covers.openlibrary.org/b/isbn/${book.isbn}-S.jpg">
		      </a>
		    </div>
		    <div class="media-body">
		      <h4 class="media-heading">${book.title}</h4>
		      <h4 class="small"> By ${book.author}</h4>
					<p> ISBN ${book.isbn}</p>
					<p> <em> Additional information placeholder, maybe a <a href="https://books.google.com/books?vid=ISBN${book.isbn}">link</a> elsewhere.</em></p>
		    </div>
		  </li>
			</#list>
		</ul>
	  </div>
	  </#if>
	</div>

	<div class="container">
	  <#if books?size != 0 >
		<h2>Tabular form</h2>
	  <table class="table table-bordered table-striped">
	      <thead>
	          <tr>
	              <th>Book Id</th>
	              <th>Title</th>
	              <th>ISBN</th>
								<th>Author</th>
	          </tr>
	      </thead>
	      <tbody>
	          <#list books as book>
	              <tr>
	                  <td>${book.id}</td>
	                  <td>${book.title}</td>
	                  <td>${book.isbn}</td>
										<td>${book.author}</td>
	              </tr>
	          </#list>
	      </tbody>
	  </table>
	  </#if>
	</div>

</body>
</html>
