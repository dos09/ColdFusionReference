component {
    remote string function changeText(required string randomText)
    returnformat="plain" {
       if(isNull(randomText)) {
          randomText = "";
       }
       return UCase(randomText) & " - " & LCase(randomText);
    }
}