<%--
  Created by IntelliJ IDEA.
  User: luutien18195
  Date: 10/18/18
  Time: 9:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      /* http://meyerweb.com/eric/tools/css/reset/
   v2.0 | 20110126
   License: none (public domain)
*/

      html, body, div, span, applet, object, iframe,
      h1, h2, h3, h4, h5, h6, p, blockquote, pre,
      a, abbr, acronym, address, big, cite, code,
      del, dfn, em, img, ins, kbd, q, s, samp,
      small, strike, strong, sub, sup, tt, var,
      b, u, i, center,
      dl, dt, dd, ol, ul, li,
      fieldset, form, label, legend,
      table, caption, tbody, tfoot, thead, tr, th, td,
      article, aside, canvas, details, embed,
      figure, figcaption, footer, header, hgroup,
      menu, nav, output, ruby, section, summary,
      time, mark, audio, video {
        margin: 0;
        padding: 0;
        border: 0;
        font-size: 100%;
        font: inherit;
        vertical-align: baseline;
      }
      /* HTML5 display-role reset for older browsers */
      article, aside, details, figcaption, figure,
      footer, header, hgroup, menu, nav, section {
        display: block;
      }
      body {
        line-height: 1;
      }
      ol, ul {
        list-style: none;
      }
      blockquote, q {
        quotes: none;
      }
      blockquote:before, blockquote:after,
      q:before, q:after {
        content: '';
        content: none;
      }
      table {
        border-collapse: collapse;
        border-spacing: 0;
      }
      *{
        margin: 0;
        padding: 0;
      }
      a{
        text-decoration: none;
        color: #000;
        cursor: default;
      }
      .container{
        width: 40%;
        height: 300px;
        border: 1px solid #000000;
        -webkit-border-radius: 3px;
        -moz-border-radius: 3px;
        border-radius: 3px;
      }
      .container.title{

      }
    </style>
  </head>
  <body>
  <div class="container">
    <h1 class="title">Simple Calculator</h1>
    <form action="caculate" method="post">
      <table>
        <tr>
          <td><a href="#">First operand: </a></td>
          <td><a href="#"><input type="text" name="firstnumber"></a></td>
        </tr>
        <tr>
          <td><a href="#">Operator: </a></td>
          <td><select name="operator" id="operator">
            <option value="+">Addition</option>
            <option value="-">Subtraction</option>
            <option value="*">Multiplication</option>
            <option value="/">Division</option>
          </select></td>
        </tr>
        <tr>
          <td><a href="#">Second operand: </a></td>
          <td><a href="#"><input type="text" name="secondnumber"></a></td>
        </tr>
        <tr>
          <td><a href="#"></a></td>
          <td><a href="#"><input type="submit" value="Calculate"></a></td>
        </tr>
      </table>
    </form>
  </div>
  $END$
  </body>
</html>
