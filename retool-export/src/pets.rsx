<Container
  id="pets"
  footerPadding="4px 12px"
  headerPadding="20px 20px 0px 20px"
  margin="24px 0px"
  padding="8px 20px 20px 20px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  style={{ ordered: [{ borderRadius: "8px" }] }}
>
  <Header>
    <Text
      id="petsTitle"
      style={{ ordered: [{ color: "primary" }] }}
      value="### Pet Patients"
      verticalAlign="center"
    />
    <TextInput
      id="petsSearchFilter"
      iconBefore="bold/interface-search"
      label=""
      placeholder="Search"
      style={{ ordered: [] }}
    />
    <Button
      id="buttonEditPet"
      iconBefore="bold/interface-edit-write-1"
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="formEditPet"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="scrollIntoView"
        params={{
          ordered: [
            {
              options: { ordered: [{ block: "end" }, { behavior: "smooth" }] },
            },
          ],
        }}
        pluginId="formEditPet"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonDeletePet"
      iconBefore="bold/interface-delete-bin-1"
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="deletePet"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonAddPet"
      iconBefore="bold/interface-add-1"
      text="Add new Pet"
    >
      <Event
        event="click"
        method="openPage"
        params={{
          ordered: [
            { options: { ordered: [{ passDataWith: "urlParams" }] } },
            { pageName: "addPetForm" },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="f39e6" viewKey="View 1">
    <KeyValue
      id="petDetailView"
      data="{{tablePets.selectedRow}}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="ID"
      />
      <Property
        id="pet_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Pet ID"
      />
      <Property
        id="owner_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Owner ID"
      />
      <Property
        id="owner_name"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Owner"
      />
      <Property
        id="owner_phone"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Owner Phone"
      />
      <Property
        id="pet_name"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Pet Name"
      />
      <Property
        id="species"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Species"
      />
      <Property
        id="breed"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Breed"
      />
      <Property
        id="gender"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Gender"
      />
      <Property
        id="owner_email"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Owner email"
      />
      <Property
        id="birth_date"
        editable="false"
        editableOptions={{}}
        format="date"
        formatOptions={{}}
        hidden="false"
        label="Date of Birth"
      />
      <Property
        id="next_vaccination"
        editable="false"
        editableOptions={{}}
        format="date"
        formatOptions={{}}
        hidden="false"
        label="Next Vaccination"
      />
      <Property
        id="medical_notes"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Medical notes"
      />
    </KeyValue>
    <Table
      id="tablePets"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ selectPets.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="9d270"
      rowBackgroundColor=""
      rowHeight="small"
      searchTerm="{{ petsSearchFilter.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{}}
      toolbarPosition="bottom"
    >
      <Column
        id="81a31"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="pet_name"
        label="Pet Name"
        placeholder="Enter value"
        position="center"
        size={88}
        summaryAggregationMode="none"
      />
      <Column
        id="a44ea"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="species"
        label="Species"
        placeholder="Select option"
        position="center"
        size={76.1875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="70dd7"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="breed"
        label="Breed"
        placeholder="Enter value"
        position="center"
        size={135.703125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="6dbf9"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="birth_date"
        label="Date of Birth"
        placeholder="Enter value"
        position="center"
        size={104.125}
        summaryAggregationMode="none"
      />
      <Column
        id="535e5"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="gender"
        label="Gender"
        placeholder="Enter value"
        position="center"
        referenceId="gender"
        size={98.828125}
        summaryAggregationMode="none"
      />
      <Column
        id="0685f"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="owner_name"
        label="Owner"
        placeholder="Enter value"
        position="center"
        size={127.3125}
        summaryAggregationMode="none"
      />
      <Column
        id="a7c87"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="owner_phone"
        label="Owner phone"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3a0cf"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="owner_email"
        label="Owner email"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="992bf"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="next_vaccination"
        label="Next Vaccination"
        placeholder="Enter value"
        position="center"
        referenceId="next_vaccination"
        size={110.75}
        summaryAggregationMode="none"
      />
      <Column
        id="9d270"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="pet_id"
        label="Pet ID"
        placeholder="Enter value"
        position="center"
        size={50.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="57359"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="medical_notes"
        label="Medical notes"
        placeholder="Enter value"
        position="center"
        size={95.375}
        summaryAggregationMode="none"
      />
      <Column
        id="cd6cf"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="owner_id"
        label="Owner ID"
        placeholder="Enter value"
        position="center"
        size={68.53125}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="trigger"
          params={{
            ordered: [
              {
                options: {
                  object: {
                    onSuccess: null,
                    onFailure: null,
                    additionalScope: null,
                  },
                },
              },
            ],
          }}
          pluginId="selectPets"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <KeyValue
      id="petDetailView2"
      data="{{tablePets.selectedRow}}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="ID"
      />
      <Property
        id="pet_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Pet ID"
      />
      <Property
        id="owner_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Owner ID"
      />
      <Property
        id="owner_name"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Owner name"
      />
      <Property
        id="owner_phone"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Owner phone"
      />
      <Property
        id="pet_name"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Pet Name"
      />
      <Property
        id="birth_date"
        editable="false"
        editableOptions={{}}
        format="date"
        formatOptions={{}}
        hidden="true"
        label="Birthdate"
      />
      <Property
        id="species"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Species"
      />
      <Property
        id="breed"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Breed"
      />
      <Property
        id="gender"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Gender"
      />
      <Property
        id="owner_email"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Owner email"
      />
      <Property
        id="next_vaccination"
        editable="false"
        editableOptions={{}}
        format="date"
        formatOptions={{}}
        hidden="true"
        label="Next vaccination"
      />
      <Property
        id="medical_notes"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Medical Notes"
      />
    </KeyValue>
    <Form
      id="formEditPet"
      footerPadding="0"
      headerPadding="0"
      hidden="true"
      margin="0"
      padding="16px 0px 8px 0px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooter={true}
      showFooterBorder={false}
    >
      <Header>
        <Text
          id="formTitle10"
          style={{ ordered: [{ color: "primary" }] }}
          value="#### Editing a Pet"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="petID"
          disabled="true"
          label="Pet ID"
          labelPosition="top"
          required={true}
          value="{{ tablePets.selectedRow.pet_id }}"
        />
        <Date
          id="birthdateInputEdit"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Date of birth"
          labelPosition="top"
          required={true}
          value="{{ tablePets.selectedRow.birth_date }}"
        />
        <Select
          id="genderSelectEdit"
          emptyMessage="No options"
          itemMode="static"
          label="Gender"
          labelPosition="top"
          overlayMaxHeight={375}
          required={true}
          showSelectionIndicator={true}
          value="{{ tablePets.selectedRow.gender }}"
        >
          <Option id="13b3d" value="Male" />
          <Option id="2d681" value="Female" />
          <Option id="e7c92" value="Not specified" />
        </Select>
        <TextArea
          id="notesInputEdit"
          autoResize={true}
          label="Medical Notes"
          labelPosition="top"
          maxLines="9"
          minLines="9"
          placeholder="Enter relevant health details..."
          value="{{ tablePets.selectedRow.medical_notes }}"
        />
        <TextInput
          id="petNameInputEdit"
          label="Name"
          labelPosition="top"
          required={true}
          value="{{ tablePets.selectedRow.pet_name }}"
        />
        <Select
          id="speciesSelectEdit"
          emptyMessage="No options"
          itemMode="static"
          label="Species"
          labelPosition="top"
          overlayMaxHeight={375}
          required={true}
          showSelectionIndicator={true}
          value="{{ tablePets.selectedRow.species }}"
        >
          <Option id="0aa6e" value="Dog" />
          <Option id="de91e" value="Cat" />
          <Option id="21f52" value="Other" />
        </Select>
        <Select
          id="petOwnerSelectEdit"
          data="{{ selectOwners.data }}"
          emptyMessage="No options"
          label="Pet Owner"
          labelPosition="top"
          labels="{{ item.owner_name }} ({{ item.owner_phone }})"
          overlayMaxHeight={375}
          required={true}
          showSelectionIndicator={true}
          value="{{ tablePets.selectedRow.owner_id }}"
          values="{{ item.owner_id }}"
        />
        <TextInput
          id="breedInputEdit"
          label="Breed"
          labelPosition="top"
          placeholder="Enter breed"
          value="{{ tablePets.selectedRow.breed }}"
        />
      </Body>
      <Footer>
        <Button
          id="buttonCancelEditPet"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="setHidden"
            params={{ ordered: [] }}
            pluginId="formEditPet"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="buttonSaveEditPet"
          submit={true}
          submitTargetId="formEditPet"
          text="Save changes"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="editPet"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
    <Chart
      id="weightChart"
      barMode="group"
      barOrientation=""
      chartType="line"
      legendPosition="none"
      margin="16px 8px 8px 4px"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisLineWidth={1}
      xAxisRangeMax=""
      xAxisRangeMin=""
      xAxisShowLine={true}
      xAxisShowTickLabels={true}
      xAxisSort="ascending"
      xAxisTickFormatMode="gui"
      xAxisTitleStandoff="10"
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxis2TitleStandoff={20}
      yAxisGrid={true}
      yAxisLineWidth={1}
      yAxisRangeMax=""
      yAxisRangeMin=""
      yAxisShowTickLabels={true}
      yAxisSort="ascending"
      yAxisTickFormatMode="gui"
      yAxisTitle="Weight"
      yAxisTitleStandoff={20}
    >
      <Series
        id="0"
        aggregationType="sum"
        colorArray={{ array: [null] }}
        colorArrayDropDown={{ array: [null] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getWeightHistory.data }}"
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
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="spline"
        lineUnderFillMode="gradient"
        lineWidth="2"
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Getweighthistory - weight"
        showMarkers={true}
        textTemplate={null}
        textTemplateMode="manual"
        type="line"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getWeightHistory.data.visit_date }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getWeightHistory.data.weight }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
    <Chart
      id="temperatureChart"
      barMode="group"
      barOrientation=""
      chartType="line"
      legendPosition="none"
      margin="16px 4px 8px 8px"
      selectedPoints="[]"
      stackedBarTotalsDataLabelPosition="none"
      title={null}
      xAxisLineWidth={1}
      xAxisRangeMax=""
      xAxisRangeMin="30"
      xAxisShowLine={true}
      xAxisShowTickLabels={true}
      xAxisTickFormatMode="gui"
      xAxisTitleStandoff={20}
      yAxis2LineWidth={1}
      yAxis2RangeMax=""
      yAxis2RangeMin=""
      yAxis2ShowTickLabels={true}
      yAxis2TickFormatMode="gui"
      yAxis2TitleStandoff={20}
      yAxisGrid={true}
      yAxisLineWidth={1}
      yAxisRangeMax=""
      yAxisRangeMin="30"
      yAxisRangeMode="manual"
      yAxisShowTickLabels={true}
      yAxisTickFormatMode="gui"
      yAxisTitle="Temperature"
      yAxisTitleStandoff={20}
    >
      <Series
        id="0"
        aggregationType="none"
        colorArray={{ array: [null] }}
        colorArrayDropDown={{ array: [null] }}
        colorInputMode="colorArrayDropDown"
        connectorLineColor="#000000"
        dataLabelPosition="none"
        datasource="{{ getTemperatureHistory.data }}"
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
        hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateArray="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
        hoverTemplateMode="source"
        increasingBorderColor="{{ theme.success }}"
        increasingColor="{{ theme.success }}"
        lineColor="{{ theme.primary }}"
        lineDash="solid"
        lineShape="spline"
        lineUnderFillMode="gradient"
        lineWidth={2}
        markerBorderColor={null}
        markerBorderWidth={0}
        markerColor="{{ theme.primary }}"
        markerSize={6}
        markerSymbol="circle"
        name="Primary"
        showMarkers={true}
        textTemplate={null}
        textTemplateMode="manual"
        type="line"
        waterfallBase={0}
        waterfallMeasures={null}
        waterfallMeasuresMode="source"
        xData="{{ getTemperatureHistory.data.visit_date }}"
        xDataMode="source"
        yAxis="y"
        yData="{{ getTemperatureHistory.data.temperature }}"
        yDataMode="source"
        zData={null}
        zDataMode="manual"
      />
    </Chart>
  </View>
</Container>
