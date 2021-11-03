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
   */
  target(
    application={filter: ""},
    group={filter: ""},
    host={filter: ""},
    item={filter: ""},
    datasource=null,
  ):: {
    [if datasource != null then 'datasource']: datasource,
    application: {filter: application},
    group: {filter: group},
    host: {filter: host},
    item: {filter: item},
  },
}
