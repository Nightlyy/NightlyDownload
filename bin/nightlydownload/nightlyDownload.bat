<!-- :: Batch section
@echo off
setlocal

for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"
echo End of HTA window, reply: "%HTAreply%"
goto :EOF


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
<script Language="VBScript">
Sub Window_Onload
      dataarea.innerhtml = "" & _
      "" & _
      "<input type=""button"" class=""btn btn-danger"" value=""Exit"" onClick=""sbExitHTA"" />"
End Sub
Sub sbExitHTA
      Self.Close()
End Sub
</script>
<SCRIPT language="JavaScript">
window.resizeTo(800,600);

function closeHTA(reply){
   var fso = new ActiveXObject("Scripting.FileSystemObject");
   fso.GetStandardStream(1).WriteLine(reply);
   window.close();
}

</SCRIPT>
<link rel="stylesheet" href="https://bootswatch.com/4/slate/bootstrap.min.css">
</HEAD>
<BODY>
<span id="dataarea"></span>
<CENTER>
<br>
<H1>NightlyDownload</h1>
</CENTER>
</BODY>
</HTML>