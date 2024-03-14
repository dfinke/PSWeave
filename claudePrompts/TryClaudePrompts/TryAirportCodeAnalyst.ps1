Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
My next trip involves flying from Seattle-Tacoma International Airport to Amsterdam Airport Schiphol (AMS). I'll be spending a few days in Amsterdam before heading to Paris Charles de Gaulle Airport (CDG) for a connecting flight to Rome-Fiumicino International Airport (FCO).
"@

$prompt | Weave AirportCodeAnalyst