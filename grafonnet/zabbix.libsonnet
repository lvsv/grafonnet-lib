{
  /**
   * Creates an [Zabbix target](https://grafana.com/grafana/plugins/alexanderzobnin-zabbix-app/)
   *
   * @name zabbix.target
   *
   * @param application (optional)
   * @param group (optional)
   * @param host (optional)
   * @param item (optional)
   * @param datasource (optional)
   * @param queryType (optional)
   * @param resultFormat (optional)
   */
  target(
    application={filter: ""},
    group={filter: ""},
    host={filter: ""},
    item={filter: ""},
    queryType=0,
    resultFormat="time_series",
    datasource=null,
    options={showDisabledItems: false, skipEmptyValues: false},
    table={skipEmptyValues: false},
  ):: {
    [if datasource != null then 'datasource']: datasource,
    application: {filter: application},
    group: {filter: group},
    host: {filter: host},
    item: {filter: item},
    queryType: queryType,
    resultFormat: resultFormat,
    options: options,
    table: table,
  },
}
