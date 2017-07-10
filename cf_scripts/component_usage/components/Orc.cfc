component {
    this.orcName = "Mogka";

    public query function GetOrcs() {
        q = new Query();
        q.setSQL("select clan, name, kills from orcs");
        q.setDatasource("MySQL_cf_db");
        return q.execute().getResult();
    }
}