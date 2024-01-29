<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{
    ordered: [
      { background: "rgb(247, 247, 247)" },
      { footerBackground: "rgba(255, 255, 255, 1)" },
      { headerBackground: "rgba(255, 255, 255, 1)" },
      { border: "rgba(217, 217, 217, 0)" },
    ],
  }}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      style={{
        ordered: [
          { selectedBackground: "rgba(50, 113, 250, 0)" },
          { selectedText: "primary" },
        ],
      }}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="db08a" value="Tab 1" />
      <Option id="8fa06" value="Tab 2" />
      <Option id="50f57" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="788be" viewKey="LN 0-31">
    <Include src="./container5.rsx" />
    <Container
      id="container6"
      footerPaddingType="normal"
      headerPaddingType="normal"
      hoistFetching={true}
      padding="12px"
      paddingType="normal"
      showBody={true}
      style={{
        ordered: [
          { border: "rgba(209, 209, 209, 0)" },
          { borderRadius: "10px" },
        ],
      }}
    >
      <Header>
        <Text
          id="containerTitle6"
          _defaultValue=""
          _disclosedFields={{ array: [] }}
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="bbeb8" viewKey="View 1">
        <Text
          id="text14"
          _defaultValue=""
          _disclosedFields={{ array: ["color", "links"] }}
          style={{
            ordered: [
              { color: "rgba(0, 0, 0, 1)" },
              { background: "" },
              { links: "primary" },
            ],
          }}
          value="##### Control Group (YTD)"
          verticalAlign="center"
        />
        <PlotlyChart
          id="planChart2"
          chartType="pie"
          data={include("../lib/planChart2.data.json", "string")}
          datasourceInputMode="javascript"
          datasourceJS="{{ LN_31_60_Control_Group }}"
          isJsonTemplateDirty={true}
          layout={include("../lib/planChart2.layout.json", "string")}
        />
      </View>
    </Container>
    <Container
      id="container8"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle8"
          value="#### Carta Highlights"
          verticalAlign="center"
        />
      </Header>
      <View id="c1f14" viewKey="View 1">
        <Statistic
          id="enterpriseStatistic4"
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
        <Statistic
          id="enterpriseStatistic5"
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
          id="transactionStatistic3"
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
      </View>
    </Container>
    <Include src="./container7.rsx" />
  </View>
  <View id="71cb3" viewKey="LN 31-60" />
  <View id="a8be3" viewKey="Panera Terminated" />
  <View
    id="1abb3"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Terminated 0-31"
  />
</Container>
