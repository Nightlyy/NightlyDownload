<!-- :: Batch section
@echo off
setlocal
if not defined flag set "flag=1" & start "HTA" /MIN "%~F0" & goto :EOF

for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
echo End of HTA window, reply: "%HTAreply%"
exit


-->


<HTML>
<HEAD>
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >

<TITLE>NightlyDownload</TITLE>
<HTA:APPLICATION 
     ID="oSimpleHTA" 
     APPLICATIONNAME="SimpleHTA" 
>
</head> 
<SCRIPT language="JavaScript">
window.resizeTo(800,600);

function closeHTA(reply){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
<link rel="stylesheet" href="https://bootswatch.com/4/slate/bootstrap.min.css">
<link rel="stylesheet" href="css/border.css">

</HEAD>
<BODY>
<div class="buttons">
<button type="button" class="btn btn-danger button" onclick="closeHTA(1);">Exit</button>
</div>
<div class="border">
<CENTER>
<H1>NightlyDownload</h1>
</CENTER>
<form>
  <fieldset>
    <div class="form-group">
      <label for="exampleInputEmail1">Download URL</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </fieldset>
</form>
</div>
</BODY>
</HTML>