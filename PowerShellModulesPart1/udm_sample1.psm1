# Author:  Bryan Cafferky      Date:  2013-11-29
# 
# Purpose:  Some little functions for fun and profit.
#
# Warning:  This code is for demostration only and should not be used
#           for production.  No warrantees are implied and this code
#           is provided as is. 
#
#

function Invoke-udfHelloWorld
{ 
 [CmdletBinding()]
        param (
              [string]$message = 'world'
              )

   Clear-Host 

   Write-Verbose "Hello $message. Good to meet you!"
  
}

function Invoke-UdfSpeech
{ 
 [CmdletBinding()]
        param (
              [string]$speakit = 'A default thing to say.'
              )

   Clear-Host 

   Write-Verbose $speakit
  
   $speaker = New-Object -com SAPI.SpVoice

   $speaker.Speak($speakit, 1 ) | out-null
  
}




