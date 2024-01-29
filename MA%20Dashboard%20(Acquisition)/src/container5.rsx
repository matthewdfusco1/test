<Container
  id="container5"
  footerPaddingType="normal"
  headerPaddingType="normal"
  hoistFetching={true}
  padding="12px"
  paddingType="normal"
  showBody={true}
  style={{
    ordered: [{ border: "rgba(209, 209, 209, 0)" }, { borderRadius: "10px" }],
  }}
>
  <Header>
    <Text
      id="containerTitle5"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="bbeb8" viewKey="View 1">
    <Text
      id="text13"
      _defaultValue=""
      _disclosedFields={{ array: ["color"] }}
      style={{
        ordered: [
          { color: "rgba(0, 0, 0, 1)" },
          { background: "" },
          { links: "" },
        ],
      }}
      value="##### Start Audience Counts"
      verticalAlign="center"
    />
    <DateRange
      id="dateRange1"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      formDataKey={'"dateRange1"'}
      iconBefore="bold/interface-calendar-remove"
      label=""
      labelPosition="top"
      loading="false"
      startPlaceholder="Start date"
      style={{ ordered: [{ borderRadius: "10px" }] }}
      textBetween="-"
      value={{
        ordered: [{ start: '"2024-01-01"' }, { end: "{{ moment() }}" }],
      }}
    >
      <Event
        event="submit"
        method="run"
        params={{
          ordered: [
            {
              src: "// Assume 'daterange1' is an object representing your DateRangePicker component\nconst daterange1 = {\n  startDate: '2022-01-01',\n  endDate: '2025-01-31', // Set default dates or get from your DateRangePicker\n};\n\n// Original SQL query\nlet originalQuery = 'SELECT * FROM \"LN_31_60_Start_Audience\"';\n\n// Function to generate a new query with a WHERE clause based on the date range\nconst generateFilteredQuery = (startDate, endDate) => {\n  // Assuming 'dt' is the column representing dates in your table\n  const whereClause = `WHERE dt BETWEEN '${startDate}' AND '${endDate}'`;\n  return `${originalQuery} ${whereClause}`;\n};\n\n// Generate a new query with the date range from 'daterange1'\nconst filteredQuery = generateFilteredQuery(daterange1.startDate, daterange1.endDate);\n\n// Log the new query\nconsole.log(filteredQuery);\n",
            },
          ],
        }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </DateRange>
    <Statistic
      id="LN_31_60_HE_Start_Count"
      _disclosedFields={{ array: [] }}
      decimalPlaces="2"
      label="High Engaged"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      value="{{
  LN_31_60_Start_Audience.data['send_he'].reduce((acc, val) => acc + val, 0)
}}
"
    />
    <Statistic
      id="LN_31_60_LE_Start_Count"
      _disclosedFields={{ array: ["negative"] }}
      currency="USD"
      label="Low Engaged"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { negative: "danger" },
          { color: "" },
          { caption: "" },
          { positive: "" },
          { iconBackground: "" },
        ],
      }}
      value="{{
  LN_31_60_Start_Audience.data['send_le'].reduce((acc, val) => acc + val, 0)
}}
"
    />
    <Statistic
      id="LN_31_60_Control_Start_Count"
      _disclosedFields={{ array: ["negative"] }}
      currency="USD"
      label="Control Group"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { negative: "danger" },
          { color: "" },
          { caption: "" },
          { positive: "" },
          { iconBackground: "" },
        ],
      }}
      value="{{
  LN_31_60_Start_Audience.data['control_le'].reduce((acc, val) => acc + val, 0) +
  LN_31_60_Start_Audience.data['control_he'].reduce((acc, val) => acc + val, 0)
}}

"
    />
    <Statistic
      id="LN_31_60_Total_Start_Count"
      _disclosedFields={{ array: ["negative"] }}
      currency="USD"
      label="Total Sends"
      positiveTrend="{{ self.value >= 0 }}"
      secondaryCurrency="USD"
      secondaryDecimalPlaces="0"
      secondaryEnableTrend={true}
      secondaryFormattingStyle="percent"
      secondaryPositiveTrend="{{ self.secondaryValue >= 0 }}"
      secondaryShowSeparators={true}
      secondarySignDisplay="trendArrows"
      secondaryValue=""
      showSeparators={true}
      style={{
        ordered: [
          { negative: "danger" },
          { color: "" },
          { caption: "" },
          { positive: "" },
          { iconBackground: "" },
        ],
      }}
      value="{{
  LN_31_60_Start_Audience.data['send_le'].reduce((acc, val) => acc + val, 0) +
  LN_31_60_Start_Audience.data['send_he'].reduce((acc, val) => acc + val, 0)
}}
"
    />
    <PlotlyChart
      id="LN_31_60_Start_Audience_Count"
      chartType="line"
      dataseries={{
        ordered: [
          {
            0: {
              ordered: [
                { label: "id" },
                { datasource: "{{LN_31_60_Start_Audience.data['id']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#1E3A8A" },
                { colors: { ordered: [] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            1: {
              ordered: [
                { label: "control_le" },
                {
                  datasource: "{{LN_31_60_Start_Audience.data['control_le']}}",
                },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#3170F9" },
                { colors: { ordered: [] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            2: {
              ordered: [
                { label: "control_he" },
                {
                  datasource: "{{LN_31_60_Start_Audience.data['control_he']}}",
                },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#60A5FA" },
                { colors: { ordered: [] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            3: {
              ordered: [
                { label: "Control Group" },
                {
                  datasource:
                    "{{LN_31_60_Start_Audience.data['control_total']}}",
                },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#DBEAFE" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            4: {
              ordered: [
                { label: "Low Engages (Send)" },
                { datasource: "{{LN_31_60_Start_Audience.data['send_le']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#FDE68A" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            5: {
              ordered: [
                { label: "High Engages (Send)" },
                { datasource: "{{LN_31_60_Start_Audience.data['send_he']}}" },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#F59E0B" },
                { colors: { ordered: [] } },
                { visible: true },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
          {
            6: {
              ordered: [
                { label: "send_total" },
                {
                  datasource: "{{LN_31_60_Start_Audience.data['send_total']}}",
                },
                { chartType: "line" },
                { aggregationType: "sum" },
                { color: "#CD6F00" },
                { colors: { ordered: [] } },
                { visible: false },
                {
                  hovertemplate:
                    "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                },
              ],
            },
          },
        ],
      }}
      datasourceDataType="object"
      datasourceJS="{{LN_31_60_Start_Audience.data}}"
      datasourcePluginId="LN_31_60_Start_Audience"
      datasourcePluginType="plugin"
      events={[]}
      isDataTemplateDirty={true}
      layout={include(
        "../lib/LN_31_60_Start_Audience_Count.layout.json",
        "string"
      )}
      xAxis="{{LN_31_60_Start_Audience.data.dt}}"
      xAxisDropdown="dt"
    />
  </View>
</Container>
