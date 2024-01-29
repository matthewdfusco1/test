<GlobalFunctions>
  <Folder id="LN_31_60">
    <SqlQueryUnified
      id="LN_31_60_Control_Group"
      query={include("./lib/LN_31_60_Control_Group.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="b2180ef3-ed10-42d7-b402-4acc6cdc8107"
      resourceTypeOverride=""
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="LN_31_60_Start_Audience"
      body=""
      bodyType="none"
      cookies=""
      enableTransformer={true}
      headers=""
      isMultiplayerEdited={false}
      paginationDataField=""
      paginationEnabled={false}
      paginationLimit=""
      paginationPaginationField=""
      query={include("./lib/LN_31_60_Start_Audience.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="b2180ef3-ed10-42d7-b402-4acc6cdc8107"
      type="GET"
      version={2}
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="LN_31_60_Carta_Analytics"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/LN_31_60_Carta_Analytics.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="b2180ef3-ed10-42d7-b402-4acc6cdc8107"
      warningCodes={[]}
    />
    <SqlQueryUnified
      id="query5"
      notificationDuration={4.5}
      resourceDisplayName="retool_db"
      resourceName="b2180ef3-ed10-42d7-b402-4acc6cdc8107"
    />
    <RetoolAIQuery
      id="query6"
      notificationDuration={4.5}
      resourceDisplayName="retool_ai"
      resourceName="retool_ai"
    />
    <Function id="transformer1" />
    <SqlQueryUnified
      id="query7"
      notificationDuration={4.5}
      resourceDisplayName="retool_db"
      resourceName="b2180ef3-ed10-42d7-b402-4acc6cdc8107"
    />
    <SqlQueryUnified
      id="query8"
      notificationDuration={4.5}
      query={include("./lib/query8.sql", "string")}
      resourceDisplayName="retool_db"
      resourceName="b2180ef3-ed10-42d7-b402-4acc6cdc8107"
      warningCodes={[]}
    />
  </Folder>
  <JavascriptQuery
    id="chartData"
    query={include("./lib/chartData.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
</GlobalFunctions>
