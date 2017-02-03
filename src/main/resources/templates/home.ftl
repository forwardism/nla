<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Home</title>
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
        <li class="active"><a href="/">Home</a></li>
        <li class=><a href="/books">Books</a></li>
        <li><a href="/people">People</a></li>
    </div>
  </nav>

  <div class="container">
    <div class="page-header">
      <h1>A few notes</h1>
    </div>
    <p>Nav at the top(!)</p>
    <p>Mixture of</p>
    <ul>
      <li>JPA + DAOs </li>
      <li>HATEOAS style REST</li>
      <li>Jquery and Boostrap and Freemarker</li>
    </ul>

    <p>To mix it up a bit: </p>
    <ul>
      <li>Freemarker as view for JPA/DAOs via controller for all pages</li>
      <li>Direct RESTful api (/api/xx) for reading loan details, response rendered inline. </li>
      <li>WAR file deployment for Jetty (org.mortbay).
    </ul>

    <p>I've tried to minimise code and configuration while using the above technologies.</p>
</body>
</html>
