<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Include src="./sidebar.rsx" />
  <Frame
    id="$main"
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    style={{ ordered: [{ canvas: "rgb(247, 247, 247)" }] }}
    type="main"
  >
    <Include src="./src/tabbedContainer1.rsx" />
  </Frame>
</App>
