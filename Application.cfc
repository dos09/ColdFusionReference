component {
    this.name = "ColdFusionReference";
    this.sessionManagement = true;
    this.sessionTimeout = CreateTimeSpan(0, 0, 30, 0); //30 minutes

    function onSessionStart() {
        Session.counter = 0;
    }
}