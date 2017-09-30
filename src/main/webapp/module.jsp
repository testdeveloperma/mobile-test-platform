<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta charset="UTF-8">
    <link rel="stylesheet" href="static/css/font-awesome.min.css">
    <link rel="stylesheet" href="static/css/inf-style.min.css">
<!-- <link rel="stylesheet" href="static/css/bootstrap.css" />
     -->
<link rel="stylesheet" href="static/css/bootstrap.css" />
<!--bootstrap核心样式库-->

<script src="static/js/jquery-1.12.4.min.js"></script>
<script src="static/js/bootstrap.js"></script> 
<title>艺龙云平台 - Ocean</title>
<style type="text/css">
::-webkit-scrollbar {
	-webkit-appearance: none;
	width: 15px
}

#app {
	padding: 15px
}

#ocean-body {
	position: fixed;
	top: 45px;
	left: 0;
	right: 0;
	bottom: 0;
	width: 100%;
	height: 100%
}

#ocean-main-content {
	padding-left: 255px;
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	right: 0
}

#ocean-main-content.no-sidebar {
	padding-left: 15px
}

#ocean-main-content-wrapper {
	height: 100%;
	padding-top: 15px;
	overflow-y: scroll;
	margin-right: -20px;
	padding-right: 25px
}

#ocean-main-content-wrapper>div {
	padding-bottom: 65px
}

#ocean-sidebar {
	background-color: #21252b;
	position: absolute;
	width: 240px;
	height: 100%;
	top: -1px;
	left: 0;
	overflow-x: hidden;
	z-index: 100
}

#ocean-header .navbar {
	margin-bottom: 0;
	border-bottom-color: #09c;
	background-color: #09c
}

#ocean-header .navbar .navbar-brand {
	color: #fff
}

#ocean-header .navbar .navbar-nav.rightest-nav {
	margin-right: 0
}

#ocean-header .navbar .navbar-nav>li.open>a, #ocean-header .navbar .navbar-nav>li>a
	{
	color: #fff
}

#ocean-header .navbar .navbar-nav>li.active>a, #ocean-header .navbar .navbar-nav>li.open>a:active,
	#ocean-header .navbar .navbar-nav>li.open>a:hover, #ocean-header .navbar .navbar-nav>li.open>a:visited,
	#ocean-header .navbar .navbar-nav>li>a:active, #ocean-header .navbar .navbar-nav>li>a:hover,
	#ocean-header .navbar .navbar-nav>li>a:visited {
	background-color: #008fbf
}

.radius-0 {
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}

.mb-0 {
	margin-bottom: 0
}

.mb-15 {
	margin-bottom: 15px
}

.mr-15 {
	margin-right: 15px
}

.btn, .form-control, .modal-content, .panel, .panel-group .panel {
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}

.service-ops>button {
	margin-left: 10px
}

.modal-body .form-group:last-child, .modal-body .panel:last-child,
	.modal-body>.alert, .panel-body .form-group:last-child, .panel-body .panel-group,
	.panel-body .panel:last-child, .panel-body p:last-child {
	margin-bottom: 0
}

.modal-content {
	overflow: visible
}

.rel-pos {
	position: relative
}

.corner-btn {
	position: absolute;
	top: -1px;
	right: -1px;
	border-bottom-left-radius: 10px
}

.btn:active, .btn:focus, .corner-btn:active, .corner-btn:focus {
	outline: none
}

a.disabled {
	color: #777
}

a.disabled:active, a.disabled:focus, a.disabled:hover, a.disabled:visited
	{
	cursor: default;
	text-decoration: none
}

.op-link {
	margin-right: 10px;
	font-size: 12px
}

.help-block.text-danger {
	color: #a94442
}

table>thead th.header {
	cursor: pointer;
	position: relative
}

table>thead th.header:after, table>thead th.header:before {
	content: "";
	display: block;
	border: 5px solid;
	position: absolute;
	right: 10px
}

table>thead th.header:before {
	border-color: transparent transparent #000
}

table>thead th.header:after {
	top: 50%;
	margin-top: 2px;
	border-color: #000 transparent transparent
}

table>thead th.header.headerSortUp:after {
	display: none
}

table>thead th.header.headerSortUp:before {
	top: 50%;
	margin-top: -9px
}

table>thead th.header.headerSortDown:before {
	display: none
}

table>thead th.header.headerSortDown:after {
	top: 50%;
	margin-top: -4px
}

input[type=checkbox].switch {
	outline: 0;
	-webkit-appearance: none;
	position: relative;
	display: inline-block;
	box-sizing: border-box;
	height: 20px;
	width: 36px;
	border-radius: 10px;
	vertical-align: middle;
	cursor: pointer;
	box-shadow: inset 0 0 1px 1px rgba(0, 0, 0, .2);
	padding: 1px;
	margin: 0;
	-webkit-transition: all .4s linear;
	transition: all .4s linear
}

input[type=checkbox].switch:disabled {
	cursor: not-allowed;
	opacity: .5
}

input[type=checkbox].switch:before {
	transition: all .4s cubic-bezier(.54, 1.85, .5, 1);
	position: absolute;
	display: block;
	content: "";
	width: 18px;
	height: 18px;
	left: 1px;
	border-radius: 9px;
	background-color: #fff;
	box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .2), 0 0 2px rgba(0, 0, 0, .2)
}

input[type=checkbox].switch:checked {
	background-color: #53d769;
	box-shadow: inset 0 0 0 14px #00e359
}

input[type=checkbox].switch:checked:before {
	left: 17px
}

input.form-control.inline {
	display: inline-block;
	width: 45px;
	margin: 0 10px;
	padding: 0;
	height: 25px;
	text-align: center
}

.crux-machine-selector-wrapper {
	position: absolute;
	right: 15px;
	width: 285px;
	bottom: 15px;
	margin-bottom: 0;
	top: 15px;
	border: 1px solid #ddd;
	border-top: 0
}

.crux-machine-selector-wrapper.no-title .scroll-wrapper {
	margin-top: 0
}

.crux-machine-selector-wrapper .control-label {
	position: absolute;
	top: 0;
	left: -1px;
	right: -1px;
	background: #fff;
	margin-bottom: 0;
	padding-bottom: 5px;
	padding-left: 1px;
	display: block;
	max-width: inherit
}

.crux-machine-selector-wrapper .crux-machine-selector {
	margin-bottom: 24px;
	border-right: 0;
	border-left: 0;
	margin-top: -1px
}

.crux-machine-selector-wrapper .scroll-wrapper {
	height: 100%;
	margin-top: 25px;
	overflow-y: scroll;
	margin-right: -20px;
	border-top: 1px solid #ddd
}

.crux-machine-selector-wrapper .scroll-wrapper>.ocean-empty {
	border-width: 0 0 1px
}

.crux-machine-selector-wrapper .hide-scroll-bar-wrapper {
	overflow: hidden;
	height: 100%
}

.pagination {
	margin: 0
}

.pagination, .pagination>li:first-child>a, .pagination>li:last-child>a {
	border-radius: 0
}

.input-group-addon {
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}

.checkbox {
	margin-top: 7px;
	margin-bottom: 7px
}

.inline-meta-field {
	display: inline-block;
	margin-right: 10px
}

.filter-field {
	display: inline-block;
	width: 120px
}
</style>
<style type="text/css">
#loading {
	position: fixed;
	width: 36px;
	height: 36px;
	margin-left: -18px;
	top: 7px;
	left: 50%;
	z-index: 9999999
}
</style>
<style type="text/css">
.tree-search a, .tree-search input[type=text] {
	background-color: #21252b;
	border-color: #000;
	color: #9da5ab;
	height: 39px
}

.tree-search a:active, .tree-search a:hover, .tree-search a:visited {
	cursor: pointer;
	background: #31363f
}

#select-dropDown {
	position: fixed;
	background: #789;
	z-index: 9999;
	width: 240px
}

#select-dropDown li {
	background: #31363f;
	color: #9da5ab;
	border-color: #000
}

#select-dropDown li:hover {
	cursor: pointer
}
</style>
<style type="text/css">
#service-tree {
	overflow-y: scroll;
	height: 100%;
	width: 255px;
	padding-bottom: 51px
}

#service-tree #node-ops-drop-down-my_favorite {
	display: none
}

#service-tree .tree-node-header {
	width: 80%
}

#service-tree .tree-node-header>.tree-node-name-padding {
	padding-left: 19px
}

#service-tree .tree-node-header .node-ops {
	display: inline-block;
	position: absolute;
	right: 19px;
	top: 3px
}

#service-tree .tree-node-header .node-ops>.btn {
	background-color: transparent;
	border: 0;
	color: #9da5ab
}

#service-tree .tree-node-header .collect-node, #service-tree .tree-node-header .leaf-node
	{
	font-size: 13px;
	position: absolute;
	top: 15px
}

#service-tree li:hover>div>.tree-node-header>.node-ops {
	color: #fff;
	display: inline-block
}

#service-tree .dropdown-toggle .caret {
	display: none
}

#service-tree-context-menu {
	position: absolute;
	width: 150px;
	background: #fff;
	top: 100px;
	left: 10px
}

#service-tree-context-menu .list-group {
	margin-bottom: 0
}

#service-tree-context-menu .list-group .list-group-item {
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0;
	border-left: 0;
	border-right: 0
}

.tree-node-header div {
	white-space: nowrap
}
</style>
<style type="text/css">
#treeTip {
	z-index: 99;
	position: fixed;
	bottom: 0;
	right: 0;
	width: 120px;
	height: 40px
}

.tip-btn1, .tip-btn2, .treeTip {
	position: fixed;
	bottom: 2px;
	right: 12px;
	padding-left: 7px;
	color: #9da5ab;
	border-radius: 19px;
	border: 2px solid;
	font-size: 20px;
	font-family: -webkit-pictograph;
	font-weight: 600;
	width: 33px;
	cursor: pointer;
	background: #fff;
	color: #000
}

.tip-btn1:hover, .tip-btn2:hover, .treeTip:hover {
	background: #000;
	color: #fff
}

.tip-btn1 {
	margin-right: 40px
}

.tip-btn1, .tip-btn2 {
	padding-right: 7px;
	opacity: 0
}

.tip-btn2 {
	margin-right: 80px
}

.tip-btn1:hover, .tip-btn2, .tip-btn2:hover {
	text-decoration: none
}

.move-right {
	animation: moveRight .5s forwards;
	-moz-animation: moveRight .5s forwards;
	-webkit-animation: moveRight .5s forwards
}

.move-left {
	animation: moveLeft .5s forwards;
	-moz-animation: moveLeft .5s forwards;
	-webkit-animation: moveLeft .5s forwards
}

.move-right-later {
	animation: moveRightLater .5s forwards;
	-moz-animation: moveRightLater .5s forwards;
	-webkit-animation: moveRightLater .5s forwards
}

.move-left-later {
	animation: moveLeftLater .5s forwards;
	-moz-animation: moveLeftLater .5s forwards;
	-webkit-animation: moveLeftLater .5s forwards
}

@
keyframes moveRight { 0%{
	margin-left: 30px;
	opacity: 0
}

to {
	margin-left: 40px;
	opacity: 1
}

}
@
-moz-keyframes moveRight { 0%{
	margin-left: 30px;
	opacity: 0
}

to {
	margin-left: 40px;
	opacity: 1
}

}
@
-webkit-keyframes moveRight { 0%{
	margin-left: 30px;
	opacity: 0
}

to {
	margin-left: 40px;
	opacity: 1
}

}
@
keyframes moveLeft { 0%{
	margin-left: 40px;
	opacity: 1
}

to {
	margin-left: 30px;
	opacity: 0
}

}
@
-moz-keyframes moveLeft { 0%{
	margin-left: 40px;
	opacity: 1
}

to {
	margin-left: 30px;
	opacity: 0
}

}
@
-webkit-keyframes moveLeft { 0%{
	margin-left: 40px;
	opacity: 1
}

to {
	margin-left: 30px;
	opacity: 0
}

}
@
keyframes moveRightLater { 0%{
	margin-left: 40px;
	opacity: 0
}

to {
	margin-left: 80px;
	opacity: 1
}

}
@
-moz-keyframes moveRightLater { 0%{
	margin-left: 40px;
	opacity: 0
}

to {
	margin-left: 80px;
	opacity: 1
}

}
@
-webkit-keyframes moveRightLater { 0%{
	margin-left: 40px;
	opacity: 0
}

to {
	margin-left: 80px;
	opacity: 1
}

}
@
keyframes moveLeftLater { 0%{
	margin-left: 80px;
	opacity: 1
}

to {
	margin-left: 40px;
	opacity: 0
}

}
@
-moz-keyframes moveLeftLater { 0%{
	margin-left: 80px;
	opacity: 1
}

to {
	margin-left: 40px;
	opacity: 0
}

}
@
-webkit-keyframes moveLeftLater { 0%{
	margin-left: 80px;
	opacity: 1
}

to {
	margin-left: 40px;
	opacity: 0
}
}
</style>
<style type="text/css">
#ocean-page-nav {
	margin-bottom: 15px
}

#ocean-page-nav>li {
	margin-right: 10px
}

#ocean-page-nav>li>a {
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}
</style>
<style type="text/css">
.cetus-machine-selector-wrapper {
	position: absolute;
	right: 15px;
	width: 285px;
	bottom: 15px;
	margin-bottom: 0;
	top: 15px;
	border: 1px solid #ddd;
	border-top: 0
}

.cetus-machine-selector-wrapper .control-label {
	position: absolute;
	top: 0;
	left: -1px;
	right: -1px;
	background: #fff;
	margin-bottom: 0;
	padding-bottom: 5px;
	padding-left: 1px;
	display: block;
	max-width: inherit
}

.cetus-machine-selector-wrapper .cetus-machine-selector {
	margin-bottom: 24px;
	border-right: 0;
	border-left: 0;
	margin-top: -1px
}

.cetus-machine-selector-wrapper .scroll-wrapper {
	height: 100%;
	margin-top: 25px;
	overflow-y: scroll;
	margin-right: -20px;
	border-top: 1px solid #ddd
}

.cetus-machine-selector-wrapper .hide-scroll-bar-wrapper {
	overflow: hidden;
	height: 100%
}

.panel-cetus {
	padding-right: 295px;
	position: relative
}

.panel-cetus .pull-right {
	top: 257px !important;
	right: 290px !important
}

div.reserve-radio input {
	display: inline !important
}

.reserve-radio {
	margin-right: 4px !important
}

.reserve-select {
	display: inline;
	width: 60px
}

.bs-reserve {
	font-weight: 400;
	cursor: pointer;
	margin-bottom: 5px
}

.reserve-div-span {
	vertical-align: middle;
	display: inline-block;
	line-height: 16px;
	margin-top: 1px;
	border: 1px
}

.reserve-div-radio {
	display: inline;
	margin-right: 5px
}
</style>
<style type="text/css">
.crux-machine-selector button.list-group-item {
	width: 100%;
	text-align: left
}

.crux-machine-selector button.list-group-item:focus {
	outline: none
}

.crux-machine-selector button.list-group-item .fa {
	font-size: 16px
}

.scroll {
	overflow-y: auto;
	max-height: 240px
}
</style>
<style type="text/css">
.page-title {
	margin-bottom: 10px
}

.page-title>h2 {
	margin: 0;
	float: left;
	font-size: 18px;
	vertical-align: middle;
	height: 34px;
	line-height: 34px
}

.page-title .label-wrap {
	display: inline-block;
	padding-top: 7px;
	padding-left: 10px
}
</style>
<style type="text/css">
.sco-history-condition .control-label {
	padding-top: 7px;
	width: 8%;
	margin-right: -20px
}

.sco-history-condition .form-group {
	display: inline
}

.sco-history-condition .label-top {
	padding-top: 7px
}

.sco-history-condition .timerow {
	padding-top: 15px
}
</style>
<style type="text/css">
.sco-history-list table {
	margin-bottom: 0
}

.init {
	color: #dcdcdc
}

.running {
	color: violet
}

.success {
	color: #0e0
}

.failure {
	color: red
}

.timeout {
	color: #985f0d
}

.stop {
	color: blue
}
</style>
<style type="text/css">
.history-detail .table {
	word-break: break-all
}
</style>
<style type="text/css">
.service-form .naming-log {
	background-color: #f9f9f9 !important;
	box-shadow: inset 0 0 5px rgba(0, 0, 0, .1) !important
}

.naming-btn {
	margin-top: 25px
}

.naming-log {
	background-color: #f9f9f9 !important;
	box-shadow: inset 0 0 5px rgba(0, 0, 0, .1) !important
}
</style>
<style type="text/css">
.service-form .help-block {
	margin-bottom: 0
}
</style>
<style type="text/css">
.file-btn {
	position: relative
}

.file-btn>input[type=file] {
	position: absolute;
	left: 0;
	right: 0;
	top: 0;
	bottom: 0;
	width: 100%;
	height: 100%;
	opacity: 0;
	cursor: pointer
}
</style>
<style type="text/css">
.search-input {
	position: relative
}

.search-input>i {
	position: absolute;
	top: 50%;
	left: 9px;
	margin-top: -7px
}
</style>
<style type="text/css">
.naming-btn {
	margin-top: 25px
}

.naming-log {
	background-color: #f9f9f9 !important;
	box-shadow: inset 0 0 5px rgba(0, 0, 0, .1) !important
}

.comment {
	margin-bottom: 15px
}
</style>
<style type="text/css">
.image-build-form .add-item-btn, .image-build-form .remove-item-btn {
	display: inline-block;
	height: 34px;
	line-height: 34px;
	margin-right: 15px;
	vertical-align: middle;
	font-size: 18px
}

.image-build-form .item-op-block {
	position: absolute;
	right: -76px;
	top: 25px
}

.image-build-form .panel-body>.row:last-child {
	margin-bottom: 0
}
</style>
<style type="text/css">
.image-build-form .add-item-btn, .image-build-form .remove-item-btn {
	display: inline-block;
	height: 34px;
	line-height: 34px;
	margin-right: 15px;
	vertical-align: middle;
	font-size: 18px
}

.image-build-form .item-op-block {
	position: absolute;
	right: -76px;
	top: 25px
}

.image-build-form .panel-body>.row:last-child {
	margin-bottom: 0
}

.panel-heading {
	font-weight: 600
}

.checkTypeLabel {
	padding-top: 0
}

.module-info .help-block {
	margin-bottom: 0
}

.error-border {
	border-color: #a94442
}

.checkScriptInput {
	margin-left: 20px
}
</style>
<style type="text/css">
.modal-footer {
	padding: 1px
}
</style>
<style type="text/css">
.steper {
	position: relative;
	padding: 5px 10px 0;
	height: 45px
}

.steper .progress {
	margin-bottom: 0;
	height: 10px
}

.steper .step-card {
	top: 0;
	position: absolute;
	margin-left: -10px
}

.steper .step-card .step-card-text {
	margin-top: 5px;
	width: 200px;
	display: block;
	text-align: center;
	margin-left: -90px;
	white-space: nowrap
}

.steper .step-card .step-card-dot {
	display: block;
	width: 20px;
	height: 20px;
	text-align: center;
	line-height: 20px;
	background-color: #ddd;
	border-radius: 10px;
	color: #fff
}

.steper .step-card.first {
	margin-left: 0
}

.steper .step-card.first .step-card-grey, .steper .step-card.first .step-card-text
	{
	margin-left: 0;
	text-align: left
}

.steper .step-card.last {
	margin-left: -20px
}

.steper .step-card.last .step-card-text {
	margin-left: 0;
	text-align: right;
	position: absolute;
	display: block;
	right: 0
}

.steper .step-card.current .step-card-dot {
	background-color: #0b97c4
}

.steper .step-card.finished .step-card-dot {
	background-color: green
}

.steper .step-card.disable .step-card-text {
	color: #ddd
}
</style>
<style type="text/css">
.service-deploy-detail .toggle-bar {
	border-top: 1px solid #ddd;
	padding: 0;
	margin-top: -1px
}

.service-deploy-detail .toggle-bar .btn {
	border: 0
}

.service-deploy-detail .toggle-bar .btn:active, .service-deploy-detail .toggle-bar .btn:link,
	.service-deploy-detail .toggle-bar .btn:visited {
	background-color: #fff
}

.service-deploy-detail pre {
	border: 0;
	padding: 0;
	margin-bottom: 0
}

.service-deploy-detail .deploy-meta-info b {
	margin-right: 10px
}

.service-deploy-detail

 

.deploy-meta-info


:not

 

(
:last-child

 

){
margin-right


:

 

25
px




}
.service-deploy-detail .deploy-log {
	background-color: #f9f9f9;
	box-shadow: inset 0 0 5px rgba(0, 0, 0, .1)
}

.service-deploy-detail table.deploy-instance-table tbody>tr>td:first-child,
	.service-deploy-detail table.deploy-instance-table tbody>tr>td:last-child,
	.service-deploy-detail table.deploy-instance-table thead>tr>th:first-child,
	.service-deploy-detail table.deploy-instance-table thead>tr>th:last-child
	{
	padding-left: 15px
}

.service-deploy-detail table.deploy-instance-table .progress {
	margin-bottom: 0;
	margin-right: 7px;
	border-radius: 0
}

.service-deploy-detail table.deploy-instance-table .progress .progress-bar-not-do
	{
	background-color: #ddd;
	color: #000
}

.service-deploy-detail

 

table


.deploy-instance-table

 

.progress

 

.progress-bar-not-do


:not


	

(
:last-child

 

){
border-right


:

 

1
px

 

solid

 

#fff




}
.service-deploy-detail .instances-wrapper {
	padding: 0 15px
}

.service-deploy-detail .instances-wrapper table {
	margin-bottom: 15px
}
</style>
<style type="text/css">
.image-version-status {
	min-width: 120px
}

.image-version-status .progress {
	margin-bottom: 0;
	border-radius: 0
}
</style>
<style type="text/css">
.apus-deploy-detail .toggle-bar {
	border-top: 1px solid #ddd;
	padding: 0;
	margin-top: -1px
}

.apus-deploy-detail .toggle-bar .btn {
	border: 0
}

.apus-deploy-detail .toggle-bar .btn:active, .apus-deploy-detail .toggle-bar .btn:link,
	.apus-deploy-detail .toggle-bar .btn:visited {
	background-color: #fff
}

.apus-deploy-detail pre {
	border: 0;
	padding: 0;
	margin-bottom: 0
}

.apus-deploy-detail .deploy-meta-info b {
	margin-right: 10px
}

.apus-deploy-detail

 

.deploy-meta-info


:not

 

(
:last-child

 

){
margin-right


:

 

25
px




}
.apus-deploy-detail .deploy-log {
	background-color: #f9f9f9;
	box-shadow: inset 0 0 5px rgba(0, 0, 0, .1)
}

.apus-deploy-detail table.deploy-instance-table tbody>tr>td:first-child,
	.apus-deploy-detail table.deploy-instance-table tbody>tr>td:last-child,
	.apus-deploy-detail table.deploy-instance-table thead>tr>th:first-child,
	.apus-deploy-detail table.deploy-instance-table thead>tr>th:last-child
	{
	padding-left: 15px
}

.apus-deploy-detail table.deploy-instance-table .progress {
	margin-bottom: 0;
	margin-right: 7px;
	border-radius: 0
}

.apus-deploy-detail table.deploy-instance-table .progress .progress-bar-not-do
	{
	background-color: #ddd;
	color: #000
}

.apus-deploy-detail

 

table


.deploy-instance-table

 

.progress

 

.progress-bar-not-do


:not


	

(
:last-child

 

){
border-right


:

 

1
px

 

solid

 

#fff




}
.apus-deploy-detail .instances-wrapper {
	padding: 0 15px
}

.apus-deploy-detail .instances-wrapper table {
	margin-bottom: 15px
}
</style>
<style type="text/css">
.cetus-item-list table {
	margin-bottom: 0
}
</style>
<style type="text/css">
.sco-job-list table {
	margin-bottom: 0
}

.init {
	color: #dcdcdc
}

.running {
	color: violet
}

.success {
	color: #0e0
}

.failure {
	color: red
}

.timeout {
	color: #985f0d
}

.stop {
	color: blue
}
</style>
<style type="text/css">
.sco-job-form {
	border: none
}

.sco-job-form .help-block {
	margin-bottom: 0
}

.sco-job-form .panel-body {
	padding: 0
}

.sco-job-form .crux-machine-selector-wrapper {
	width: 230px
}
</style>
<style type="text/css">
.crux-item-types table {
	margin-bottom: 0
}

.crux-item-types>.tab-content>.tab-pane {
	padding: 15px 0 0 !important
}

.crux-item-types .nav-pills>li>a {
	padding: 5px 15px;
	border-radius: 0
}

.crux-item-types .nav-pills>li>a:focus {
	outline: none
}
</style>
<style type="text/css">
.crux-item-dialog.modal-lg .modal-body {
	padding-right: 315px
}
</style>
<style type="text/css">
.crux-rule-dialog.modal-lg .modal-body {
	padding-right: 315px
}
</style>
<style type="text/css">
.crux-rule-form .radio-inline.with-input-label input[type=radio] {
	margin-top: 3px
}
</style>
<style type="text/css">
.ocean-tab {
	border-top: 0
}

.ocean-tab>.panel-body {
	padding: 0
}

.ocean-tab>.panel-body .nav-tabs {
	background: #fff;
	margin-left: -1px;
	margin-right: -1px
}

.ocean-tab>.panel-body .nav-tabs>li a {
	padding: 5px 15px;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}

.ocean-tab>.panel-body .nav-tabs>li a:focus {
	outline: none
}

.ocean-tab>.panel-body .tab-pane {
	padding: 15px
}
</style>
<style type="text/css"></style>
<style type="text/css">
.instance-dialog .single-instance-form a {
	margin-top: 7px;
	display: inline-block
}

.instance-dialog .single-instance-form a:first-child {
	margin-right: 15px
}

.instance-dialog .single-instance-form textarea.form-control {
	overflow: hidden;
	resize: none
}

.instance-dialog select {
	display: inline-block;
	width: 124px;
	margin-left: 5px
}
</style>
<style type="text/css">
.instance-table .btn-link {
	padding: 0
}

.instance-table

 

td


:first-child


:not

 

(
.instance-batch-ops-td

 

),
.instance-table

 

th


:first-child


:not

 

(
.instance-batch-ops-td

 

){
text-align


:

 

center




}
.instance-table td.instance-batch-ops-td, .instance-table th.instance-batch-ops-td
	{
	padding-left: 15px
}

.instance-table td .form-control {
	margin: -5px 5px -5px -5px;
	width: 100px;
	display: inline-block
}

.instance-table .select-ops>a {
	display: inline-block;
	margin-right: 15px
}

.instance-table .instance-batch-ops>a {
	display: inline-block;
	margin-right: 10px
}

.instance-table .instance-batch-ops>.btn-group {
	margin-right: 10px
}

.instance-table .fa-tag {
	color: gray
}

.usable {
	color: green
}

.unUsable {
	color: red
}

ul.dropdown-menu {
	min-width: 90px
}

.error {
	border-color: #ff4500
}

.unUsable {
	cursor: pointer
}
</style>
<style type="text/css">
.module-release-dialog .version-input, .module-release-dialog .version-select
	{
	width: 270px
}
</style>
<style type="text/css">
.soa-form .load-select {
	width: 64%
}
</style>
<style type="text/css">
#service-settings td>.form-group {
	margin: -5px
}

#service-settings .table {
	margin-bottom: 0;
	table-layout: fixed
}

#service-settings .table td {
	word-break: break-all
}

#service-settings .setting-status {
	color: red
}

#service-settings .setting-status:before {
	content: "";
	display: inline-block;
	width: 10px;
	height: 10px;
	border-radius: 5px;
	background-color: red;
	margin-right: 5px
}

#service-settings .setting-status.active {
	color: green
}

#service-settings .setting-status.active:before {
	background-color: green
}

#service-settings .btngroup {
	display: inline-block
}

#service-settings .bottom-15 {
	margin-bottom: 15px
}
</style>
<style type="text/css">
.port-inputs .key-input:after {
	content: ":";
	display: block;
	position: absolute;
	right: -2px;
	top: 7px;
	font-weight: 700
}

.port-inputs>.row {
	margin-bottom: 10px
}

.port-inputs .port-arrow, .port-inputs .port-ops {
	text-align: center;
	line-height: 34px
}

.port-inputs .port-ops>a {
	margin-right: 10px
}

.port-inputs .row:last-child {
	margin-bottom: 0
}
</style>
<style type="text/css">
.conf-preview-dialog .panel-group {
	margin-bottom: 0
}

.conf-preview-dialog .panel-group pre {
	border: 0;
	background-color: #fff;
	font-size: 12px;
	margin: -15px;
	-webkit-border-radius: 0;
	-moz-border-radius: 0;
	border-radius: 0
}
</style>
<style type="text/css">
.upstream-set .key-input:after {
	display: block;
	position: absolute;
	right: -2px;
	top: 7px;
	font-weight: 700
}

.upstream-set>.row {
	margin-bottom: 10px
}

.upstream-set .port-arrow, .upstream-set .port-ops {
	text-align: center;
	line-height: 34px
}

.upstream-set .port-ops>a {
	margin-right: 10px
}

.upstream-set .row:last-child {
	margin-bottom: 0
}
</style>
<style type="text/css">
.sug {
	position: relative
}

.sug i.fa.fa-spin {
	position: absolute;
	top: 10px;
	right: 10px
}

.sug .list-group {
	position: absolute;
	margin-top: -1px;
	width: 100%;
	z-index: 10
}

.sug .list-group .list-group-item {
	border-radius: 0;
	cursor: pointer
}
</style>
<style type="text/css">
.form-note {
	padding: 5px 0 20px;
	border-bottom: 1px solid #ddd;
	margin-bottom: 15px
}

.form-note .label {
	padding: .3em .6em;
	margin-right: 10px
}

.switch {
	margin-left: 10px
}
</style>
<style type="text/css">
.ns-service-form .soa-group {
	margin-bottom: 15px
}

.ns-service-form .search-service {
	width: 50%
}
</style>
<style type="text/css">
.soa-loadtype {
	padding-left: 1px
}
</style>
<style type="text/css">
#ns-group-list .ocean-empty.panel {
	border: 0;
	border-top: 1px solid #ddd
}

#ns-group-list .group-ops {
	padding: 10px 15px;
	border-bottom: 1px dashed #ddd
}

#ns-group-list

 

.group-ops

 

button


:not

 

(
.pull-right

 

){
margin-right


:

 

15
px




}
#ns-group-list .group-status-dot {
	display: inline-block;
	width: 8px;
	height: 8px;
	border-radius: 4px
}

#ns-group-list .group-status-dot.status-1 {
	background-color: green
}

#ns-group-list .group-status-dot.status-2 {
	background-color: #d9534f
}

#ns-group-list .env-panel>.panel-body {
	padding: 0
}

#ns-group-list .env-panel .tab-panel {
	border: 0
}

#ns-group-list .env-panel .tab-panel>.panel-body .tab-pane {
	padding: 0
}

#ns-group-list .env-panel .tab-panel>.panel-body .nav-tabs {
	margin-left: 0;
	margin-right: 0
}

#ns-group-list .env-panel .tab-panel>.panel-body .nav-tabs>li.active:first-child>a
	{
	border-left-color: #fff
}

#ns-group-list .env-panel .tab-panel>.panel-body .nav-tabs>li.active>a {
	border-top-color: #fff
}

#ns-group-list .env-ops {
	padding: 15px !important;
	border-bottom: 1px dashed #ddd
}

#ns-group-list .env-ops .checkbox-inline {
	padding-left: 0
}

#ns-group-list .env-ops label {
	margin-bottom: 0
}

#ns-group-list .env-expr {
	padding: 15px !important;
	border-bottom: 1px dashed #ddd;
	background-color: rgba(255, 255, 0, .1)
}

#ns-group-list .tag-expr-form-toggle {
	padding: 5px 15px;
	border-bottom: 1px dashed #ddd;
	margin-bottom: 10px;
	cursor: pointer;
	font-size: 12px;
	color: #aaa;
	text-align: center
}

#ns-group-list .edit-weight {
	width: 50px
}

#ns-group-list .weight-col {
	width: 100px
}
</style>
<style type="text/css">
.line-input {
	height: 14px;
	outline: none;
	border: 0;
	border-bottom: 1px solid #ddd;
	text-align: center;
	padding: 0 5px;
	margin: 0 10px
}
</style>
<style type="text/css">
.tag-expr-form form {
	border: 1px dashed #ddd;
	padding: 10px;
	margin-bottom: 15px
}

.tag-expr-form form .close-btn {
	position: absolute;
	top: 0;
	right: 0;
	z-index: 9999
}

.tag-expr-form form .expr-op {
	display: inline-block;
	line-height: 34px;
	font-size: 18px
}

.tag-expr-form form .expr-op:first-child {
	margin-right: 10px
}
</style>
<style type="text/css">
.image-list .image-desc {
	width: 500px;
	overflow: hidden;
	-ms-text-overflow: ellipsis;
	text-overflow: ellipsis;
	white-space: nowrap
}
</style>
<style type="text/css">
.role-list .op-th {
	width: 280px
}

.role-list td>a {
	margin-right: 10px
}
</style>
<style type="text/css">
.node-role-list .op-th {
	width: 280px
}

.node-role-list td>a {
	margin-right: 10px
}
</style>
</head>
<body>

	<div id="elong-docker-cloud">
		<div data-reactroot="">
			<div>
				<div class="notifications-wrapper"></div>
				<!-- react-empty: 4 -->
				<div id="loading" style="display: none;">
					<img src="images/b28f3234ee7dc87b98cb77fe0d93daae.svg" alt="">
				</div>
				<!-- react-empty: 7 -->
			</div>
			<div id="ocean-header">
				<nav class="navbar navbar-default navbar-static-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<a href="#" class="navbar-brand">Ocean</a>
					</div>
					<ul class="nav navbar-nav">
						<li role="presentation" class="active"><a role="button"
							href="#">云平台</a></li>
						<li role="presentation" class=""><a role="button" href="#">名字服务</a></li>
						<li role="presentation" class=""><a role="button" href="#">镜像</a></li>
					</ul>
					<ul class="rightest-nav nav navbar-nav navbar-right">
						<li class="dropdown"><a id="user-drop-down" role="button"
							class="dropdown-toggle" aria-haspopup="true"
							aria-expanded="false" href="#"> <!-- react-text: 23 -->马成俊 (
								chengjun.ma ) <!-- /react-text --> <!-- react-text: 24 --> <!-- /react-text -->
								<span class="caret"></span></a>
							<ul role="menu" class="dropdown-menu"
								aria-labelledby="user-drop-down">
								<li role="presentation" class=""><a
									href="/ocean/index/logout" role="menuitem" tabindex="-1"><i
										class="fa fa-sign-out"></i> <!-- react-text: 30 -->退出登录<!-- /react-text --></a></li>
							</ul></li>
					</ul>
				</div>
				</nav>
			</div>
			<div id="app">
				<div id="ocean-body">
					<div>
						<div id="ocean-sidebar">
							<div id="service-tree">
								<div>
									<div class="input-group  tree-search">
										<div class="input-group-btn" style="display: table-cell;">
											<a id="selectBtn" href="javascript:void(0)"
												class="input-group-addon"><i class="fa fa-caret-down">
											</i></a>
										</div>
										<input type="text" class="form-control"
											placeholder="按服务名称搜索服务树">
										<div class="input-group-btn" style="padding-right: 4px;">
											<a href="javascript:void(0)" class="input-group-addon"><i
												class="fa fa-search"> </i></a>
										</div>
									</div>
									<ul id="select-dropDown" class="list-group"
										style="display: none;">
										<li class="list-group-item" name="service"><span
											name="service">搜索服务</span><i
											class="pull-right text-success fa fa-check"></i></li>
										<li class="list-group-item" name="machine"><span
											name="machine">搜索机器</span><i
											class="pull-right text-success fa "></i></li>
									</ul>
								</div>
								<ul
									style="list-style: none; background-color: rgb(33, 37, 43); margin: 0px; padding: 0px; color: rgb(157, 165, 171); font-family: &amp; amp; quot; lucida grande&amp;amp; quot; , tahoma , verdana, arial, sans-serif; font-size: 14px;">
									<li style="position: relative;"><div data-radium="true"
											style="cursor: pointer; position: relative; padding: 0px 5px; display: block; background: rgb(49, 54, 63);">
											<div class=""
												style="position: relative; display: inline-block; vertical-align: top; margin-left: -5px; height: 40px; width: 24px; transform: rotateZ(90deg);">
												<div
													style="position: absolute; top: 50%; left: 50%; margin: -10px 0px 0px -5px; height: 9px;">
													<svg height="9" width="9"> <polygon
														points="0,0 0,9 9,4.5"
														style="fill: rgb(157, 165, 171); stroke-width: 0;"></polygon></svg>
												</div>
											</div>
											<div class="tree-node-header"
												style="display: inline-block; vertical-align: top; color: rgb(157, 165, 171);">
												<i class="false"></i>
												<div class="false"
													style="line-height: 40px; vertical-align: middle;">服务树</div>
												<div data-node-id="90000" data-node-path="/DockerCloud"
													class="node-ops dropdown btn-group">
													<button id="node-ops-drop-down-90000" role="button"
														aria-haspopup="true" aria-expanded="false" type="button"
														class="dropdown-toggle btn btn-default">
														<i class="fa fa-cog"></i>
														<!-- react-text: 1293 -->
														<!-- /react-text -->
														<span class="caret"></span>
													</button>
													<ul role="menu"
														class="super-colors dropdown-menu dropdown-menu-right"
														aria-labelledby="node-ops-drop-down-90000">
														<li role="presentation" class="node-op"><a
															data-node-id="90000" data-act="create-manage-node"
															data-node-path="/DockerCloud" role="menuitem"
															tabindex="-1" href="#"><i class="fa fa-plus"
																style="width: 14px;"></i> <!-- react-text: 1299 --> 添加节点<!-- /react-text --></a></li>
														<li role="presentation" class="node-op"><a
															data-node-id="90000" data-act="move-node"
															data-node-path="/DockerCloud" role="menuitem"
															tabindex="-1" href="#"><i class="fa fa-paper-plane-o"
																style="width: 14px;"></i> <!-- react-text: 1303 --> 移动节点<!-- /react-text --></a></li>
													</ul>
												</div>
											</div>
										</div> <span><ul class=""
												style="list-style: none; padding-left: 19px; display: block;">
												<li style="position: relative;"><div data-radium="true"
														style="cursor: pointer; position: relative; padding: 0px 5px; display: block;">
														<div class=""
															style="position: relative; display: inline-block; vertical-align: top; margin-left: -5px; height: 40px; width: 24px;">
															<div
																style="position: absolute; top: 50%; left: 50%; margin: -10px 0px 0px -5px; height: 9px;">
																<svg height="9" width="9"> <polygon
																	points="0,0 0,9 9,4.5"
																	style="fill: rgb(157, 165, 171); stroke-width: 0;"></polygon></svg>
															</div>
														</div>
														<div class="tree-node-header"
															style="display: inline-block; vertical-align: top; color: rgb(157, 165, 171);">
															<i class="false"></i>
															<div class="false"
																style="line-height: 40px; vertical-align: middle;">OfflineHuidu</div>
															<div data-node-id="111604"
																data-node-path="/DockerCloud/OfflineHuidu"
																class="node-ops dropdown btn-group">
																<button id="node-ops-drop-down-111604" role="button"
																	aria-haspopup="true" aria-expanded="false"
																	type="button" class="dropdown-toggle btn btn-default">
																	<i class="fa fa-cog"></i>
																	<!-- react-text: 6485 -->
																	<!-- /react-text -->
																	<span class="caret"></span>
																</button>
																<ul role="menu"
																	class="super-colors dropdown-menu dropdown-menu-right"
																	aria-labelledby="node-ops-drop-down-111604">
																	<li role="presentation" class="node-op"><a
																		data-node-id="111604" data-act="create-manage-node"
																		data-node-path="/DockerCloud/OfflineHuidu"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-plus" style="width: 14px;"></i> <!-- react-text: 6491 -->
																			添加节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111604" data-act="create-service-node"
																		data-node-path="/DockerCloud/OfflineHuidu"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-plus" style="width: 14px;"></i> <!-- react-text: 6495 -->
																			添加服务<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111604" data-act="import-service-module"
																		data-node-path="/DockerCloud/OfflineHuidu"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-plus" style="width: 14px;"></i> <!-- react-text: 6499 -->
																			导入AOS模块<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111604" data-act="edit-node"
																		data-node-path="/DockerCloud/OfflineHuidu"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-edit" style="width: 14px;"></i> <!-- react-text: 6503 -->
																			编辑节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111604" data-act="delete-node"
																		data-node-path="/DockerCloud/OfflineHuidu"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-trash" style="width: 14px;"></i> <!-- react-text: 6507 -->
																			删除节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111604" data-act="collect-node"
																		data-node-path="/DockerCloud/OfflineHuidu"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-heart" style="width: 14px;"></i> <!-- react-text: 6511 -->
																			收藏节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111604" data-act="apply-permission"
																		data-node-path="/DockerCloud/OfflineHuidu"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-link" style="width: 14px;"></i> <!-- react-text: 6515 -->
																			申请权限<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111604" data-act="move-node"
																		data-node-path="/DockerCloud/OfflineHuidu"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-paper-plane-o" style="width: 14px;"></i>
																			<!-- react-text: 6519 --> 移动节点<!-- /react-text --></a></li>
																</ul>
															</div>
														</div>
													</div> <span></span></li>
												<li style="position: relative;"><div data-radium="true"
														style="cursor: pointer; position: relative; padding: 0px 5px; display: block;">
														<div class=""
															style="position: relative; display: inline-block; vertical-align: top; margin-left: -5px; height: 40px; width: 24px;">
															<div
																style="position: absolute; top: 50%; left: 50%; margin: -10px 0px 0px -5px; height: 9px;">
																<svg height="9" width="9"> <polygon
																	points="0,0 0,9 9,4.5"
																	style="fill: rgb(157, 165, 171); stroke-width: 0;"></polygon></svg>
															</div>
														</div>
														<div class="tree-node-header"
															style="display: inline-block; vertical-align: top; color: rgb(157, 165, 171);">
															<i class="false"></i>
															<div class="false"
																style="line-height: 40px; vertical-align: middle;">ElongPROD</div>
															<div data-node-id="111611"
																data-node-path="/DockerCloud/ElongPROD"
																class="node-ops dropdown btn-group">
																<button id="node-ops-drop-down-111611" role="button"
																	aria-haspopup="true" aria-expanded="false"
																	type="button" class="dropdown-toggle btn btn-default">
																	<i class="fa fa-cog"></i>
																	<!-- react-text: 6533 -->
																	<!-- /react-text -->
																	<span class="caret"></span>
																</button>
																<ul role="menu"
																	class="super-colors dropdown-menu dropdown-menu-right"
																	aria-labelledby="node-ops-drop-down-111611">
																	<li role="presentation" class="node-op"><a
																		data-node-id="111611" data-act="create-manage-node"
																		data-node-path="/DockerCloud/ElongPROD"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-plus" style="width: 14px;"></i> <!-- react-text: 6539 -->
																			添加节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111611" data-act="create-service-node"
																		data-node-path="/DockerCloud/ElongPROD"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-plus" style="width: 14px;"></i> <!-- react-text: 6543 -->
																			添加服务<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111611" data-act="import-service-module"
																		data-node-path="/DockerCloud/ElongPROD"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-plus" style="width: 14px;"></i> <!-- react-text: 6547 -->
																			导入AOS模块<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111611" data-act="edit-node"
																		data-node-path="/DockerCloud/ElongPROD"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-edit" style="width: 14px;"></i> <!-- react-text: 6551 -->
																			编辑节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111611" data-act="delete-node"
																		data-node-path="/DockerCloud/ElongPROD"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-trash" style="width: 14px;"></i> <!-- react-text: 6555 -->
																			删除节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111611" data-act="collect-node"
																		data-node-path="/DockerCloud/ElongPROD"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-heart" style="width: 14px;"></i> <!-- react-text: 6559 -->
																			收藏节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111611" data-act="apply-permission"
																		data-node-path="/DockerCloud/ElongPROD"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-link" style="width: 14px;"></i> <!-- react-text: 6563 -->
																			申请权限<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111611" data-act="move-node"
																		data-node-path="/DockerCloud/ElongPROD"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-paper-plane-o" style="width: 14px;"></i>
																			<!-- react-text: 6567 --> 移动节点<!-- /react-text --></a></li>
																</ul>
															</div>
														</div>
													</div> <span></span></li>
												<li style="position: relative;"><div data-radium="true"
														style="cursor: pointer; position: relative; padding: 0px 5px; display: block;">
														<div class=""
															style="position: relative; display: inline-block; vertical-align: top; margin-left: -5px; height: 40px; width: 24px;">
															<div
																style="position: absolute; top: 50%; left: 50%; margin: -10px 0px 0px -5px; height: 9px;">
																<svg height="9" width="9"> <polygon
																	points="0,0 0,9 9,4.5"
																	style="fill: rgb(157, 165, 171); stroke-width: 0;"></polygon></svg>
															</div>
														</div>
														<div class="tree-node-header"
															style="display: inline-block; vertical-align: top; color: rgb(157, 165, 171);">
															<i class="false"></i>
															<div class="false"
																style="line-height: 40px; vertical-align: middle;">SelfOperation</div>
															<div data-node-id="111612"
																data-node-path="/DockerCloud/SelfOperation"
																class="node-ops dropdown btn-group">
																<button id="node-ops-drop-down-111612" role="button"
																	aria-haspopup="true" aria-expanded="false"
																	type="button" class="dropdown-toggle btn btn-default">
																	<i class="fa fa-cog"></i>
																	<!-- react-text: 6581 -->
																	<!-- /react-text -->
																	<span class="caret"></span>
																</button>
																<ul role="menu"
																	class="super-colors dropdown-menu dropdown-menu-right"
																	aria-labelledby="node-ops-drop-down-111612">
																	<li role="presentation" class="node-op"><a
																		data-node-id="111612" data-act="create-manage-node"
																		data-node-path="/DockerCloud/SelfOperation"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-plus" style="width: 14px;"></i> <!-- react-text: 6587 -->
																			添加节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111612" data-act="create-service-node"
																		data-node-path="/DockerCloud/SelfOperation"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-plus" style="width: 14px;"></i> <!-- react-text: 6591 -->
																			添加服务<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111612" data-act="import-service-module"
																		data-node-path="/DockerCloud/SelfOperation"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-plus" style="width: 14px;"></i> <!-- react-text: 6595 -->
																			导入AOS模块<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111612" data-act="edit-node"
																		data-node-path="/DockerCloud/SelfOperation"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-edit" style="width: 14px;"></i> <!-- react-text: 6599 -->
																			编辑节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111612" data-act="delete-node"
																		data-node-path="/DockerCloud/SelfOperation"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-trash" style="width: 14px;"></i> <!-- react-text: 6603 -->
																			删除节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111612" data-act="collect-node"
																		data-node-path="/DockerCloud/SelfOperation"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-heart" style="width: 14px;"></i> <!-- react-text: 6607 -->
																			收藏节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111612" data-act="apply-permission"
																		data-node-path="/DockerCloud/SelfOperation"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-link" style="width: 14px;"></i> <!-- react-text: 6611 -->
																			申请权限<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="111612" data-act="move-node"
																		data-node-path="/DockerCloud/SelfOperation"
																		role="menuitem" tabindex="-1" href="#"><i
																			class="fa fa-paper-plane-o" style="width: 14px;"></i>
																			<!-- react-text: 6615 --> 移动节点<!-- /react-text --></a></li>
																</ul>
															</div>
														</div>
													</div> <span></span></li>
												<li style="position: relative;"><div data-radium="true"
														style="cursor: pointer; position: relative; padding: 0px 5px; display: block;">
														<div class=""
															style="position: relative; display: inline-block; vertical-align: top; margin-left: -5px; height: 40px; width: 24px;">
															<div
																style="position: absolute; top: 50%; left: 50%; margin: -10px 0px 0px -5px; height: 9px;">
																<svg height="9" width="9"> <polygon
																	points="0,0 0,9 9,4.5"
																	style="fill: rgb(157, 165, 171); stroke-width: 0;"></polygon></svg>
															</div>
														</div>
														<div class="tree-node-header"
															style="display: inline-block; vertical-align: top; color: rgb(157, 165, 171);">
															<i class="false"></i>
															<div class="false"
																style="line-height: 40px; vertical-align: middle;">QATest</div>
															<div data-node-id="112101"
																data-node-path="/DockerCloud/QATest"
																class="node-ops dropdown btn-group">
																<button id="node-ops-drop-down-112101" role="button"
																	aria-haspopup="true" aria-expanded="false"
																	type="button" class="dropdown-toggle btn btn-default">
																	<i class="fa fa-cog"></i>
																	<!-- react-text: 6629 -->
																	<!-- /react-text -->
																	<span class="caret"></span>
																</button>
																<ul role="menu"
																	class="super-colors dropdown-menu dropdown-menu-right"
																	aria-labelledby="node-ops-drop-down-112101">
																	<li role="presentation" class="node-op"><a
																		data-node-id="112101" data-act="create-manage-node"
																		data-node-path="/DockerCloud/QATest" role="menuitem"
																		tabindex="-1" href="#"><i class="fa fa-plus"
																			style="width: 14px;"></i> <!-- react-text: 6635 -->
																			添加节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="112101" data-act="create-service-node"
																		data-node-path="/DockerCloud/QATest" role="menuitem"
																		tabindex="-1" href="#"><i class="fa fa-plus"
																			style="width: 14px;"></i> <!-- react-text: 6639 -->
																			添加服务<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="112101" data-act="import-service-module"
																		data-node-path="/DockerCloud/QATest" role="menuitem"
																		tabindex="-1" href="#"><i class="fa fa-plus"
																			style="width: 14px;"></i> <!-- react-text: 6643 -->
																			导入AOS模块<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="112101" data-act="edit-node"
																		data-node-path="/DockerCloud/QATest" role="menuitem"
																		tabindex="-1" href="#"><i class="fa fa-edit"
																			style="width: 14px;"></i> <!-- react-text: 6647 -->
																			编辑节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="112101" data-act="delete-node"
																		data-node-path="/DockerCloud/QATest" role="menuitem"
																		tabindex="-1" href="#"><i class="fa fa-trash"
																			style="width: 14px;"></i> <!-- react-text: 6651 -->
																			删除节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="112101" data-act="collect-node"
																		data-node-path="/DockerCloud/QATest" role="menuitem"
																		tabindex="-1" href="#"><i class="fa fa-heart"
																			style="width: 14px;"></i> <!-- react-text: 6655 -->
																			收藏节点<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="112101" data-act="apply-permission"
																		data-node-path="/DockerCloud/QATest" role="menuitem"
																		tabindex="-1" href="#"><i class="fa fa-link"
																			style="width: 14px;"></i> <!-- react-text: 6659 -->
																			申请权限<!-- /react-text --></a></li>
																	<li role="presentation" class="node-op"><a
																		data-node-id="112101" data-act="move-node"
																		data-node-path="/DockerCloud/QATest" role="menuitem"
																		tabindex="-1" href="#"><i
																			class="fa fa-paper-plane-o" style="width: 14px;"></i>
																			<!-- react-text: 6663 --> 移动节点<!-- /react-text --></a></li>
																</ul>
															</div>
														</div>
													</div> <span></span></li>
											</ul></span></li>
									<li style="position: relative;"><div data-radium="true"
											style="cursor: pointer; position: relative; padding: 0px 5px; display: block;">
											<div class=""
												style="position: relative; display: inline-block; vertical-align: top; margin-left: -5px; height: 40px; width: 24px; transform: rotateZ(90deg);">
												<div
													style="position: absolute; top: 50%; left: 50%; margin: -10px 0px 0px -5px; height: 9px;">
													<svg height="9" width="9"> <polygon
														points="0,0 0,9 9,4.5"
														style="fill: rgb(157, 165, 171); stroke-width: 0;"></polygon></svg>
												</div>
											</div>
											<div class="tree-node-header"
												style="display: inline-block; vertical-align: top; color: rgb(157, 165, 171);">
												<i class="false"></i>
												<div class="false"
													style="line-height: 40px; vertical-align: middle;">我的收藏</div>
												<span></span>
											</div>
										</div> <span><ul class=""
												style="list-style: none; padding-left: 19px; display: block;"></ul></span></li>
								</ul>
								<!-- react-empty: 1255 -->
							</div>
						</div>
						<div id="treeTip">
							<div class="treeTip">Q</div>
							<div class="tip-btn1 tip-btn move-left">N</div>
							<a
								href="http://code.corp.elong.com/aos/doc/wikis/docker_ocean_use_new"
								target="_blank" class="tip-btn2 tip-btn move-left-later">H</a>
						</div>
					</div>
					<div id="ocean-main-content" class="">
						<div id="ocean-main-content-wrapper">
							<div>
								<div>
									<ul id="ocean-page-nav" class="nav nav-pills">
										<li role="presentation" class="active"><a role="button"
											href="#">服务</a></li>
										<li role="presentation" class=""><a role="button"
											href="#">权限</a></li>
										<li role="presentation" class=""><a role="button"
											href="#">所有权限</a></li>
										<li role="presentation" class=""><a role="button"
											href="#">用户分组</a></li>
									</ul>
									<div>
										<div class="page-title clearfix">
											<h2>
												<i class="fa fa-globe"></i>
												<!-- react-text: 6679 -->
												<!-- /react-text -->
												<!-- react-text: 6680 -->
												服务列表
												<!-- /react-text -->
											</h2>
										</div>
										<div class="group">
											<table class="table table-bordered table-hover">
												<thead>
													<tr>
														<th>服务名</th>
														<th>服务类型</th>
														<th>检查方式</th>
														<th>创建人</th>
														<th>创建时间</th>
														<th>操作</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><a href="#/node/102958"> <!-- react-text: 6697 -->hor前端<!-- /react-text -->
																<!-- react-text: 6698 -->(<!-- /react-text --> <!-- react-text: 6699 -->hor-web<!-- /react-text -->
																<!-- react-text: 6700 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>/home/work/sky/horWeb/bin/check.py</td>
														<td>
															<!-- react-text: 6704 -->林冲<!-- /react-text --> <!-- react-text: 6705 -->(<!-- /react-text -->
															<!-- react-text: 6706 -->chong.lin<!-- /react-text --> <!-- react-text: 6707 -->)<!-- /react-text -->
														</td>
														<td>2016-03-24 11:19:07</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6712 --> <!-- /react-text -->
																<!-- react-text: 6713 -->删除<!-- /react-text --></a></td>
													</tr>
													<tr>
														<td><a href="#/node/103021"> <!-- react-text: 6717 -->服务树<!-- /react-text -->
																<!-- react-text: 6718 -->(<!-- /react-text --> <!-- react-text: 6719 -->sag-web<!-- /react-text -->
																<!-- react-text: 6720 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>端口检查</td>
														<td>
															<!-- react-text: 6724 -->林冲<!-- /react-text --> <!-- react-text: 6725 -->(<!-- /react-text -->
															<!-- react-text: 6726 -->chong.lin<!-- /react-text --> <!-- react-text: 6727 -->)<!-- /react-text -->
														</td>
														<td>2016-03-29 15:47:57</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6732 --> <!-- /react-text -->
																<!-- react-text: 6733 -->删除<!-- /react-text --></a></td>
													</tr>
													<tr>
														<td><a href="#/node/103045"> <!-- react-text: 6737 -->日志系统<!-- /react-text -->
																<!-- react-text: 6738 -->(<!-- /react-text --> <!-- react-text: 6739 -->cetus-web<!-- /react-text -->
																<!-- react-text: 6740 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>端口检查</td>
														<td>
															<!-- react-text: 6744 -->林冲<!-- /react-text --> <!-- react-text: 6745 -->(<!-- /react-text -->
															<!-- react-text: 6746 -->chong.lin<!-- /react-text --> <!-- react-text: 6747 -->)<!-- /react-text -->
														</td>
														<td>2016-03-29 18:28:34</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6752 --> <!-- /react-text -->
																<!-- react-text: 6753 -->删除<!-- /react-text --></a></td>
													</tr>
													<tr>
														<td><a href="#/node/103056"> <!-- react-text: 6757 -->上线系统<!-- /react-text -->
																<!-- react-text: 6758 -->(<!-- /react-text --> <!-- react-text: 6759 -->apus-apus<!-- /react-text -->
																<!-- react-text: 6760 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>/home/work/sky/apus_web/bin/check.sh</td>
														<td>
															<!-- react-text: 6764 -->李怀志<!-- /react-text --> <!-- react-text: 6765 -->(<!-- /react-text -->
															<!-- react-text: 6766 -->huaizhi.li<!-- /react-text --> <!-- react-text: 6767 -->)<!-- /react-text -->
														</td>
														<td>2016-03-30 11:05:25</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6772 --> <!-- /react-text -->
																<!-- react-text: 6773 -->删除<!-- /react-text --></a></td>
													</tr>
													<tr>
														<td><a href="#/node/103057"> <!-- react-text: 6777 -->配置管理<!-- /react-text -->
																<!-- react-text: 6778 -->(<!-- /react-text --> <!-- react-text: 6779 -->apus-orion<!-- /react-text -->
																<!-- react-text: 6780 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>/home/work/sky/orion/bin/check.sh</td>
														<td>
															<!-- react-text: 6784 -->李怀志<!-- /react-text --> <!-- react-text: 6785 -->(<!-- /react-text -->
															<!-- react-text: 6786 -->huaizhi.li<!-- /react-text --> <!-- react-text: 6787 -->)<!-- /react-text -->
														</td>
														<td>2016-03-30 11:05:51</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6792 --> <!-- /react-text -->
																<!-- react-text: 6793 -->删除<!-- /react-text --></a></td>
													</tr>
													<tr>
														<td><a href="#/node/103059"> <!-- react-text: 6797 -->数据配送<!-- /react-text -->
																<!-- react-text: 6798 -->(<!-- /react-text --> <!-- react-text: 6799 -->sco-sco<!-- /react-text -->
																<!-- react-text: 6800 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>/home/work/sky/sco/bin/check.py</td>
														<td>
															<!-- react-text: 6804 -->李怀志<!-- /react-text --> <!-- react-text: 6805 -->(<!-- /react-text -->
															<!-- react-text: 6806 -->huaizhi.li<!-- /react-text --> <!-- react-text: 6807 -->)<!-- /react-text -->
														</td>
														<td>2016-03-30 11:06:48</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6812 --> <!-- /react-text -->
																<!-- react-text: 6813 -->删除<!-- /react-text --></a></td>
													</tr>
													<tr>
														<td><a href="#/node/103082"> <!-- react-text: 6817 -->agent管理<!-- /react-text -->
																<!-- react-text: 6818 -->(<!-- /react-text --> <!-- react-text: 6819 -->agentmanager-web<!-- /react-text -->
																<!-- react-text: 6820 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>/home/work/sky/agentmanager/check.sh</td>
														<td>
															<!-- react-text: 6824 -->刘云平<!-- /react-text --> <!-- react-text: 6825 -->(<!-- /react-text -->
															<!-- react-text: 6826 -->yunping.liu<!-- /react-text -->
															<!-- react-text: 6827 -->)<!-- /react-text -->
														</td>
														<td>2016-03-31 11:42:22</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6832 --> <!-- /react-text -->
																<!-- react-text: 6833 -->删除<!-- /react-text --></a></td>
													</tr>
													<tr>
														<td><a href="#/node/103083"> <!-- react-text: 6837 -->消息平台前端<!-- /react-text -->
																<!-- react-text: 6838 -->(<!-- /react-text --> <!-- react-text: 6839 -->message-geminiweb<!-- /react-text -->
																<!-- react-text: 6840 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>ftp://scmpf:scmpf@scmpf.corp.elong.com/platform/ocean/scripts/14707448229014/check.py</td>
														<td>
															<!-- react-text: 6844 -->张莹<!-- /react-text --> <!-- react-text: 6845 -->(<!-- /react-text -->
															<!-- react-text: 6846 -->ying.zhang1<!-- /react-text -->
															<!-- react-text: 6847 -->)<!-- /react-text -->
														</td>
														<td>2016-03-31 11:47:26</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6852 --> <!-- /react-text -->
																<!-- react-text: 6853 -->删除<!-- /react-text --></a></td>
													</tr>
													<tr>
														<td><a href="#/node/103098"> <!-- react-text: 6857 -->监控前端<!-- /react-text -->
																<!-- react-text: 6858 -->(<!-- /react-text --> <!-- react-text: 6859 -->crux-web<!-- /react-text -->
																<!-- react-text: 6860 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>ftp://scmpf:scmpf@scmpf.corp.elong.com/platform/ocean/scripts/14661587801341/check.sh</td>
														<td>
															<!-- react-text: 6864 -->林冲<!-- /react-text --> <!-- react-text: 6865 -->(<!-- /react-text -->
															<!-- react-text: 6866 -->chong.lin<!-- /react-text --> <!-- react-text: 6867 -->)<!-- /react-text -->
														</td>
														<td>2016-03-31 15:30:20</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6872 --> <!-- /react-text -->
																<!-- react-text: 6873 -->删除<!-- /react-text --></a></td>
													</tr>
													<tr>
														<td><a href="#/node/103497"> <!-- react-text: 6877 -->保险管理系统<!-- /react-text -->
																<!-- react-text: 6878 -->(<!-- /react-text --> <!-- react-text: 6879 -->insurance-ms<!-- /react-text -->
																<!-- react-text: 6880 -->)<!-- /react-text --></a></td>
														<td>容器</td>
														<td>/bin/true</td>
														<td>
															<!-- react-text: 6884 -->林冲<!-- /react-text --> <!-- react-text: 6885 -->(<!-- /react-text -->
															<!-- react-text: 6886 -->chong.lin<!-- /react-text --> <!-- react-text: 6887 -->)<!-- /react-text -->
														</td>
														<td>2016-04-27 16:40:03</td>
														<td><a class="op-link" href="javascript:void(0);"><i
																class="fa fa-trash-o"></i> <!-- react-text: 6892 --> <!-- /react-text -->
																<!-- react-text: 6893 -->删除<!-- /react-text --></a></td>
													</tr>
												</tbody>
											</table>
											<div>
												<span style="line-height: 34px;"> <!-- react-text: 6896 -->共计
													<!-- /react-text --> <!-- react-text: 6897 -->802<!-- /react-text -->
													<!-- react-text: 6898 --> 条记录<!-- /react-text --></span><span
													class="pull-right" style="line-height: 0;"><ul
														class="pagination">
														<li class="disabled"><a role="button" href="#"
															tabindex="-1" style="pointer-events: none;"><span
																aria-label="First">«</span></a></li>
														<li class="disabled"><a role="button" href="#"
															tabindex="-1" style="pointer-events: none;"><span
																aria-label="Previous">‹</span></a></li>
														<li class="active"><a role="button" href="#">1</a></li>
														<li class=""><a role="button" href="#">2</a></li>
														<li class=""><a role="button" href="#">3</a></li>
														<li class=""><a role="button" href="#">4</a></li>
														<li class=""><a role="button" href="#">5</a></li>
														<li class="disabled"><a role="button" href="#"
															tabindex="-1" style="pointer-events: none;"><span
																aria-label="More">…</span></a></li>
														<li class=""><a role="button" href="#"><span
																aria-label="Next">›</span></a></li>
														<li class=""><a role="button" href="#"><span
																aria-label="Last">»</span></a></li>
													</ul></span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		window.systemFlag = '';
		window.baseUrl = "\/ocean";
		window.cruxUrl = "http:\/\/aos.corp.elong.com\/crux_dev";
		window.user = {
			"userName" : "chengjun.ma",
			"realName" : "\u9a6c\u6210\u4fca",
			"secret" : "2T6FBGLHB542SQJY"
		};
		window.oceanDeployPath = "\/ocean";
		window.namingServiceDeployPath = "\/names";
		window.rootNodeId = 90000;
		window.sysTags = [ "id", "service", "imageVersionId",
				"serviceVersionId", "machineIP", "serviceVersion",
				"imageVersion", "name", "machine", "ip", "status", "cpu",
				"memory", "disk", "createTime", "updateTime", "type", "idc",
				"version", "default", "state", "port", "active", "platform",
				"codeVersion" ];
		window.sysTagRegs = [ "\/\\-port$\/", "\/_weight_h$\/", "\/_h$\/" ];
		window.autops = {
			"operationId" : 33,
			"timeout" : 20
		}
		window.workflow = "http:\/\/workflow.corp.elong.com"
		window.sagAuthkey = "dpf43f3p2l4k3l03"
		window.sagSecret = "kd94hf93k423kf44"
	</script>
	<script src="/ocean/js/bundle-ec142b6a91ada81946fd.js"></script>



</body>
</html>
