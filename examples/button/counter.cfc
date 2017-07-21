component {
    remote string function incCounter()
    returnformat="plain" {
       Session.counter += 1;
       return "session counter: " & Session.counter;
    }

    remote void function resetCounter() {
       sessionInvalidate();
    }
}
/* All session variables must be in Application.cfc/cfm*/