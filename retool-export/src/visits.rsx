<Container
  id="visits"
  footerPadding="4px 12px"
  headerPadding="20px 20px 0px 20px"
  margin="24px 0px 0px 0px"
  padding="8px 20px 20px 20px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  style={{ ordered: [{ borderRadius: "10px" }] }}
>
  <Header>
    <Text
      id="titleVisits"
      style={{ ordered: [{ color: "#0e655d" }] }}
      value="### Visits"
      verticalAlign="center"
    />
    <Button
      id="buttonEditVisit"
      iconBefore="bold/interface-edit-write-1"
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="formEditVisit"
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
        pluginId="formEditVisit"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonDeleteVisit"
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
        pluginId="deleteVisit"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonAddVisit"
      iconBefore="bold/interface-add-1"
      text="Add new visit"
    >
      <Event
        event="click"
        method="openPage"
        params={{
          ordered: [
            { options: { ordered: [{ passDataWith: "urlParams" }] } },
            { pageName: "addVisitForm" },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <TextInput
      id="visitsSearchFilter"
      iconBefore="bold/interface-search"
      label=""
      placeholder="Search"
    />
  </Header>
  <View id="fbaf5" viewKey="View 1">
    <Table
      id="tableVisits"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ selectVisits.data }}"
      defaultSelectedRow={{
        mode: "index",
        indexType: "display",
        index: 0,
        key: "{{ table2.selectedRow. }}",
      }}
      emptyMessage="No rows found"
      primaryKeyColumnId="9c517"
      searchTerm="{{ visitsSearchFilter.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{}}
      toolbarPosition="bottom"
    >
      <Column
        id="05d79"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="vet_id"
        label="Vet ID"
        placeholder="Enter value"
        position="center"
        size={50.015625}
        summaryAggregationMode="none"
      />
      <Column
        id="9c517"
        alignment="right"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="visit_id"
        label="Visit ID"
        placeholder="Enter value"
        position="center"
        size={55.625}
        summaryAggregationMode="none"
      />
      <Column
        id="31697"
        alignment="right"
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
        id="f636e"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="status"
        label="Status"
        placeholder="Select option"
        position="center"
        size={97.1875}
        summaryAggregationMode="none"
      />
      <Column
        id="a1ed0"
        alignment="left"
        format="datetime"
        groupAggregationMode="none"
        key="visit_date"
        label="Visit Date"
        placeholder="Enter value"
        position="center"
        size={155.3125}
        summaryAggregationMode="none"
      />
      <Column
        id="aadca"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="reason"
        label="Reason"
        placeholder="Enter value"
        position="center"
        size={57.8125}
        summaryAggregationMode="none"
      />
      <Column
        id="96886"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="treatment"
        label="Treatment"
        placeholder="Enter value"
        position="center"
        size={74.203125}
        summaryAggregationMode="none"
      />
      <Column
        id="98a2e"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="weight"
        label="Weight"
        placeholder="Enter value"
        position="center"
        size={55.375}
        summaryAggregationMode="none"
      />
      <Column
        id="04cc2"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="temperature"
        label="Temperature"
        placeholder="Enter value"
        position="center"
        size={88.296875}
        summaryAggregationMode="none"
      />
      <Column
        id="9d41a"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="pet_name"
        label="Pet"
        placeholder="Enter value"
        position="center"
        size={78.875}
        summaryAggregationMode="none"
      />
      <Column
        id="f0446"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="species"
        label="Species"
        placeholder="Enter value"
        position="center"
        size={70.75}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="70a0c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="breed"
        label="Breed"
        placeholder="Select option"
        position="center"
        size={70.703125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4270f"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="birth_date"
        label="Birth date"
        placeholder="Enter value"
        position="center"
        size={81.5}
        summaryAggregationMode="none"
      />
      <Column
        id="cdbdc"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="next_vaccination"
        label="Next vaccination"
        placeholder="Enter value"
        position="center"
        size={110.75}
        summaryAggregationMode="none"
      />
      <Column
        id="9642c"
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
        id="d9bd8"
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
      <Column
        id="e86ea"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        hidden="true"
        key="gender"
        label="Gender"
        placeholder="Select option"
        position="center"
        size={59.265625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="b6974"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="owner_name"
        label="Owner"
        placeholder="Enter value"
        position="center"
        size={135.40625}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="1e881"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        hidden="true"
        key="owner_phone"
        label="Phone Number"
        placeholder="Enter value"
        position="center"
        size={88.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="b1724"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        hidden="true"
        key="start_date"
        label="Start date"
        placeholder="Enter value"
        position="center"
        size={88.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="c2047"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="vet_name"
        label="Vet"
        placeholder="Select option"
        position="center"
        referenceId="vet_name"
        size={100}
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
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="tableVisits"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="tableVisits"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <KeyValue
      id="tableVisitsDetailView2"
      data="{{tableVisits.selectedRow}}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="vet_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Vet ID"
      />
      <Property
        id="visit_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Visit ID"
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
        id="status"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Status"
      />
      <Property
        id="visit_date"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="true"
        label="Visit date"
      />
      <Property
        id="weight"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="false"
        label="Weight (kg)"
        valueOverride="{{ item }}"
      />
      <Property
        id="temperature"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Temperature (°C)"
        valueOverride="{{ item }}"
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
      <Property
        id="reason"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Reason"
      />
      <Property
        id="treatment"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Treatment"
      />
      <Property
        id="pet_name"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Pet name"
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
        id="birth_date"
        editable="false"
        editableOptions={{}}
        format="date"
        formatOptions={{}}
        hidden="true"
        label="Birth date"
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
        id="owner_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Owner ID"
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
        id="start_date"
        editable="false"
        editableOptions={{}}
        format="date"
        formatOptions={{}}
        hidden="true"
        label="Start date"
      />
      <Property
        id="vet_name"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Vet name"
      />
    </KeyValue>
    <KeyValue
      id="tableVisitsDetailView"
      data="{{tableVisits.selectedRow}}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      groupLayout="singleColumn"
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="status"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Status"
      />
      <Property
        id="visit_date"
        editable="false"
        editableOptions={{}}
        format="datetime"
        formatOptions={{}}
        hidden="false"
        label="Visit Date"
      />
      <Property
        id="vet_name"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Vet"
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
        id="name"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Name"
        valueOverride="{{ tableVisits.selectedRow.pet_name }}"
      />
      <Property
        id="vet_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Vet ID"
      />
      <Property
        id="visit_id"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Visit ID"
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
        id="reason"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Reason"
      />
      <Property
        id="treatment"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="true"
        label="Treatment"
      />
      <Property
        id="weight"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Weight"
      />
      <Property
        id="temperature"
        editable="false"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        hidden="true"
        label="Temperature"
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
        id="start_date"
        editable="false"
        editableOptions={{}}
        format="date"
        formatOptions={{}}
        hidden="true"
        label="Start date"
      />
    </KeyValue>
    <Form
      id="formEditVisit"
      footerPadding="0"
      headerPadding="0"
      hidden="true"
      initialData="{{ tableVisits }}"
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
          id="formTitle5"
          margin="12px 0px"
          style={{ ordered: [{ color: "primary" }] }}
          value="#### Editing a visit"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="visitID"
          disabled="true"
          label="Visit ID"
          labelPosition="top"
          value="{{ tableVisits.selectedRow.visit_id }}"
        />
        <DateTime
          id="visitDateEdit"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Date"
          labelPosition="top"
          minuteStep={15}
          required={true}
          value="{{ tableVisits.selectedRow.visit_date }}"
        />
        <NumberInput
          id="weightInputEdit"
          currency="USD"
          decimalPlaces="2"
          inputValue={0}
          label="Weight"
          labelPosition="top"
          min="0.00"
          padDecimal={true}
          showSeparators={true}
          showStepper={true}
          value="{{ tableVisits.selectedRow.weight}}"
        />
        <NumberInput
          id="temperatureInputEdit"
          currency="USD"
          inputValue={0}
          label="Temperature"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value="{{ tableVisits.selectedRow.temperature }}"
        />
        <Date
          id="nextVaccinationDateEdit"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          hidden=""
          iconBefore="bold/interface-calendar"
          label="Next vaccination"
          labelPosition="top"
          style={{
            ordered: [
              {
                text: '{{ tableVisits.selectedRow.next_vaccination < moment().format("YYYY-MM-DD") ? "firebrick" : "grey" }}',
              },
            ],
          }}
          value="{{ tableVisits.selectedRow.next_vaccination }}"
        />
        <Select
          id="petSelectEdit"
          data="{{ selectPetsGlobal.data }}"
          emptyMessage="No options"
          label="Pet/Owner"
          labelPosition="top"
          labels="{{ item.pet_name }} ({{ item.owner_name }})"
          overlayMaxHeight={375}
          placeholder="Select a Pet"
          required={true}
          showSelectionIndicator={true}
          value="{{ tableVisits.selectedRow.pet_id }}"
          values="{{ item.pet_id }}"
        />
        <TextArea
          id="reasonInputEdit"
          autoResize={true}
          label="Reason"
          labelPosition="top"
          minLines="3"
          value="{{ tableVisits.selectedRow.reason }}"
        />
        <Select
          id="vetSelectEdit"
          data="{{ selectVets.data }}"
          emptyMessage="No options"
          label="Vet"
          labelPosition="top"
          labels="{{ item.vet_name }}"
          overlayMaxHeight={375}
          placeholder="Select a Vet"
          required={true}
          showSelectionIndicator={true}
          value="{{ tableVisits.selectedRow.vet_id }}"
          values="{{ item.vet_id }}"
        />
        <Select
          id="statusSelectEdit"
          captionByIndex=""
          colorByIndex=""
          data=""
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Status"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select a status"
          required={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{ tableVisits.selectedRow.status }}"
          values=""
        >
          <Option
            id="30974"
            disabled={false}
            hidden={false}
            value="Scheduled"
          />
          <Option
            id="e1715"
            disabled={false}
            hidden={false}
            value="Completed"
          />
          <Option id="a1839" disabled={false} hidden={false} value="Canceled" />
        </Select>
        <TextArea
          id="treatmentInputEdit"
          autoResize={true}
          label="Treatment"
          labelPosition="top"
          minLines="3"
          value="{{ tableVisits.selectedRow.treatment }}"
        />
      </Body>
      <Footer>
        <Button
          id="buttonCancelEditVisit"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="setHidden"
            params={{ ordered: [] }}
            pluginId="formEditVisit"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="buttonSaveChanges"
          submitTargetId="formEditVisit"
          text="Save changes"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="editVisit"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="editPetInVisits"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Footer>
    </Form>
  </View>
</Container>
