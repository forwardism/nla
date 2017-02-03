<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Spring Freemarker</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/nla.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>


<body>
<#include "/_header.html">

  <nav class="navbar navbar-default">
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav">
        <li><a href="/">Home</a></li>
        <li><a href="/books">Books</a></li>
        <li class="active"><a href="/people">People</a></li>
    </div>
  </nav>

<div class="container">
  <div class="page-header">
    <h1>People <small>(all people)</small></h1>
  </div>

  <#if people?size != 0 >
  <div class="container">
  <ul class="media-list">
    <#list people as person>
    <li class="media">
      <div class="media-left">
        <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
      </div>
      <div class="media-body">
        <h4 class="media-heading">${person.firstName} ${person.lastName}</h4>
        <p> Contact <a href="tel:${person.phoneNumber!'-'}">${person.phoneNumber!'-'}</a>;
            <a href="mailto:${person.emailAddress!'-'}">${person.emailAddress!'-'}</a>
        </p>
        <button type="button" class="btn btn-info loanitems" id="${person.id}">Loan Items</button>
        <div class="container loanitems" id="${person.id}"></div>
      </div>
    </li>
    </#list>
  </ul>
  </div>
  </#if>
</div>

<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"></button>
        <h4 class="modal-title" id="myModalLabel">Loan Items</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

</body>
<script src="/js/nla.js"></script>
</html>
