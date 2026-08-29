<Screen
  id="petsPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Visits"
  urlSlug="visitsPage2"
>
  <SqlQueryUnified
    id="selectPets"
    isHidden={false}
    query={include("../lib/selectPets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="getWeightHistory"
    isHidden={false}
    query={include("../lib/getWeightHistory.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="editPet"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"birth_date","value":"{{ birthdateInputEdit.value }}"},{"key":"pet_name","value":"{{ petNameInputEdit.value }}"},{"key":"owner_id","value":"{{ petOwnerSelectEdit.value }}"},{"key":"gender","value":"{{ genderSelectEdit.value }}"},{"key":"species","value":"{{ speciesSelectEdit.value }}"},{"key":"breed","value":"{{ breedInputEdit.value }}"},{"key":"medical_notes","value":"{{ notesInputEdit.value }}"}]'
    }
    doNotThrowOnNoOp={true}
    editorMode="gui"
    filterBy={'[{"key":"pet_id","value":"{{ petID.value }}","operation":"="}]'}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="pets"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [{ notificationType: "success" }, { title: "Saved" }],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setHidden"
      params={{ ordered: [] }}
      pluginId="formEditPet"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="tablePets"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getTemperatureHistory"
    notificationDuration={4.5}
    query={include("../lib/getTemperatureHistory.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="countPets"
    query={include("../lib/countPets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="deletePet"
    actionType="DELETE_BY"
    confirmationMessage="Are you sure you want to delete this Pet?"
    editorMode="gui"
    filterBy={
      '[{"key":"pet_id","value":"{{ tablePets.selectedRow.pet_id }}","operation":"="}]'
    }
    requireConfirmation={true}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    runWhenModelUpdates={false}
    tableName="pets"
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "info" },
                { title: "The Pet has been deleted." },
              ],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="refresh"
      params={{ ordered: [] }}
      pluginId="tablePets"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="selectOwnersWithTheirPets"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("../lib/selectOwnersWithTheirPets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="editOwner"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"owner_name","value":"{{ ownerNameInputEdit.value }}"},{"key":"owner_email","value":"{{ ownerEmailInputEdit.value }}"},{"key":"owner_phone","value":"{{  ownerPhoneInputEdit.value }}"}]'
    }
    editorMode="gui"
    filterBy={
      '[{"key":"owner_id","value":"{{ ownerID.value }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="owners"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [{ notificationType: "success" }, { title: "Saved." }],
            },
          },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setHidden"
      params={{ ordered: [] }}
      pluginId="formEditOwner"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="selectOwnersWithTheirPets"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="selectOwners"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="deleteOwner"
    actionType="DELETE_BY"
    confirmationMessage="Are you sure you want to delete this Owner?"
    editorMode="gui"
    filterBy={
      '[{"key":"owner_id","value":"{{ tableOwners.selectedRow.owner_id }}","operation":"="}]'
    }
    notificationDuration={4.5}
    requireConfirmation={true}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="owners"
    updateSetValueDynamically={true}
  />
  <SqlQueryUnified
    id="countVaccinated"
    query={include("../lib/countVaccinated.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="countUnvaccinated"
    notificationDuration={4.5}
    query={include("../lib/countUnvaccinated.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Frame
    id="$main5"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="60px 0px"
    style={{ ordered: [{ canvas: "#e5eceb" }] }}
    type="main"
  >
    <Text
      id="text6"
      horizontalAlign="center"
      margin="0px 0px 8px 0px"
      style={{ ordered: [{ color: "primary" }] }}
      value="## Veterinary Clinic Management System"
      verticalAlign="center"
    />
    <Text
      id="text7"
      horizontalAlign="center"
      margin="0px 0px 8px 0px"
      style={{
        ordered: [
          { fontSize: "14px" },
          { fontWeight: "400" },
          { fontFamily: "Inter" },
        ],
      }}
      value="A comprehensive system for veterinarians to manage patient records, track medical history and streamline visit documentation."
      verticalAlign="center"
    />
    <Navigation
      id="navigationPets"
      appTargetByIndex=""
      captionByIndex=""
      data=""
      disabledByIndex=""
      hiddenByIndex=""
      highlightByIndex=""
      horizontalAlignment="center"
      iconByIndex=""
      iconPositionByIndex=""
      itemMode="static"
      itemTypeByIndex=""
      keyByIndex=""
      labels=""
      parentKeyByIndex=""
      retoolFileObject={{ ordered: [] }}
      screenTargetByIndex=""
      screenTargetIdByIndex=""
      style={{
        ordered: [
          { color: "primary" },
          { hoverText: "primary" },
          { highlightText: "primary" },
        ],
      }}
      tooltipByIndex=""
    >
      <Option
        id="9da74"
        icon="bold/health-medical-bag"
        iconPosition="left"
        itemType="page"
        label="Visits"
        screenTargetId="visitsPage"
      />
      <Option
        id="9d67c"
        icon="bold/travel-hotel-pet-paw"
        iconPosition="left"
        itemType="page"
        label="Pets"
        screenTargetId="petsPage"
      />
      <Option
        id="4db59"
        icon="bold/interface-user-multiple"
        iconPosition="left"
        itemType="page"
        label="Employees"
        screenTargetId="employeesPage"
      />
      <Event
        event="click"
        method="openPage"
        params={{ ordered: [{ pageName: "{{ item.id }}" }] }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Navigation>
    <Include src="./pets.rsx" />
    <Container
      id="statistics"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0px 0px 24px 0px"
      padding="20px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ borderRadius: "8px" }] }}
    >
      <Header>
        <Text
          id="containerTitle5"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="4e218" viewKey="View 1">
        <Chart
          id="stackedBarChartPets"
          barGap={0.4}
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowTickLabels={true}
          xAxisTickFormat=".0f"
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormat=".0f"
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ countVaccinated.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Vaccinated"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ countVaccinated.data.species }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ countVaccinated.data.pets_count }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
          <Series
            id="1"
            aggregationType="none"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ countUnvaccinated.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hidden={false}
            hiddenMode="manual"
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.secondary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Unvaccinated"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="source"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ countUnvaccinated.data.species }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ countUnvaccinated.data.animal_count }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
    </Container>
    <ToggleLink
      id="showOwners"
      horizontalAlign="center"
      showUnderline="hover"
      text="{{ self.value ? 'Hide Owners' : 'Show Owners' }}"
    />
    <Include src="./owners.rsx" />
    <Text
      id="textCopyrights"
      horizontalAlign="center"
      margin="32px 8px 8px 8px"
      style={{
        ordered: [
          { fontSize: "11px" },
          { fontWeight: "400" },
          { fontFamily: "Inter" },
        ],
      }}
      value="© 2025 Wiktoria Müller. All rights reserved."
      verticalAlign="center"
    />
  </Frame>
</Screen>
