<Container
  id="container7"
  footerPaddingType="normal"
  headerPaddingType="normal"
  hoistFetching={true}
  padding="12px"
  paddingType="normal"
  showBody={true}
  showHeader={true}
  style={{
    ordered: [{ border: "rgba(209, 209, 209, 0)" }, { borderRadius: "10px" }],
  }}
>
  <Header>
    <Text
      id="containerTitle7"
      _disclosedFields={{ array: ["color"] }}
      style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
      value="#### Carta Analytics "
      verticalAlign="center"
    />
  </Header>
  <View id="9da2e" viewKey="View 1">
    <TextInput
      id="LN_31_60_Carta_Analytics_Search"
      _defaultValue=""
      _disclosedFields={{ array: ["iconBefore"] }}
      iconBefore="bold/interface-search"
      label=""
      labelPosition="top"
      placeholder="Search"
      style={{ ordered: [{ borderRadius: "10px" }] }}
    />
    <DateRange
      id="dateRange2"
      dateFormat="MMM d, yyyy"
      endPlaceholder="End date"
      iconBefore="bold/interface-calendar-remove"
      label=""
      labelPosition="top"
      startPlaceholder="Start date"
      style={{ ordered: [{ borderRadius: "10px" }] }}
      textBetween="-"
      value={{
        ordered: [
          { start: '"2024-01-01T22:46:37.080Z"' },
          { end: "{{ moment() }}" },
        ],
      }}
    />
    <Filter
      id="LN_31_60_Carta_Analytics_Filter"
      linkedTableId="LN_31_60_Carta_Analytics_Table"
      linkToTable={true}
    />
    <Table
      id="LN_31_60_Carta_Analytics_Table"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ LN_31_60_Carta_Analytics.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      enableSaveActions={true}
      linkedFilterId="LN_31_60_Carta_Analytics_Filter"
      primaryKeyColumnId="34316"
      searchTerm="{{LN_31_60_Carta_Analytics_Search.value}}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{ borderRadius: "10px", border: "rgba(224, 224, 224, 0)" }}
      templatePageSize={20}
    >
      <Column
        id="34316"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true }}
        groupAggregationMode="none"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={31.546875}
        summaryAggregationMode="none"
      />
      <Column
        id="66761"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="letter_name"
        label="Letter name"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="4e4ab"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="send_complete"
        label="Send Date"
        placeholder="Enter value"
        position="center"
        referenceId="Send_Date"
        size={139}
        summaryAggregationMode="none"
      />
      <Column
        id="bc571"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="emails_sent"
        label="Emails sent"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b206a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="emails_delivered"
        label="Emails delivered"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d24e3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="delivery_rate"
        label="Delivery rate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="7fa16"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="open_rate"
        label="Open rate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="1bf42"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="click_rate"
        label="Click rate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="6d73c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="click_to_open"
        label="Click to open"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="11b09"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="unique_opens"
        label="Unique opens"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="17318"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="total_clicks"
        label="Total clicks"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="271b8"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="unique_clicks"
        label="Unique clicks"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8f0ee"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="total_beacon_opens"
        label="Total beacon opens"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="5560f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="unsubscribes"
        label="Unsubscribes"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="69e9b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="hard_bounces"
        label="Hard bounces"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a85a5"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="soft_bounces"
        label="Soft bounces"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="aef67"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="spam_reports"
        label="Spam reports"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Event
        event="selectRow"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="chartData"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
