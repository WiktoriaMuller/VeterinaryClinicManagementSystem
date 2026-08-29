<Container
  id="owners"
  footerPadding="4px 12px"
  headerPadding="20px 20px 0px 20px"
  hidden="{{ !showOwners.value }}"
  margin="16px 0px 0px 0px"
  padding="8px 20px 20px 20px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  style={{ ordered: [{ borderRadius: "8px" }] }}
>
  <Header>
    <Text
      id="ownersTitle"
      style={{ ordered: [{ color: "primary" }] }}
      value="### Owners"
      verticalAlign="center"
    />
    <TextInput
      id="ownersSearchFilter"
      iconBefore="bold/interface-search"
      label=""
      placeholder="Search"
      style={{ ordered: [] }}
    />
    <Button
      id="buttonEditOwner"
      iconBefore="bold/interface-edit-write-1"
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="formEditOwner"
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
        pluginId="formEditOwner"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonDeleteOwner"
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
        pluginId="deleteOwner"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="buttonAddOwner"
      iconBefore="bold/interface-add-1"
      text="Add new Owner"
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
    <Table
      id="tableOwners"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ selectOwnersWithTheirPets.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      dynamicRowHeights={true}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="cd6cf"
      rowBackgroundColor=""
      rowHeight="small"
      searchTerm="{{ ownersSearchFilter.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      style={{}}
      toolbarPosition="bottom"
    >
      <Column
        id="0685f"
        alignment="left"
        format="string"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="owner_name"
        label="Full Name"
        placeholder="Enter value"
        position="center"
        size={155.9375}
        summaryAggregationMode="none"
      />
      <Column
        id="cd6cf"
        alignment="right"
        editable={false}
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
        id="90db3"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="owner_phone"
        label="Phone Number"
        placeholder="Enter value"
        position="center"
        size={128.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="ed182"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="owner_email"
        label="E-mail"
        placeholder="Enter value"
        position="center"
        size={210.0625}
        summaryAggregationMode="none"
      />
      <Column
        id="704f7"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="pet_names"
        label="Pets"
        placeholder="Enter value"
        position="center"
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
          pluginId="selectOwnersWithTheirPets"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Form
      id="formEditOwner"
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
          id="formTitle11"
          style={{ ordered: [{ color: "primary" }] }}
          value="#### Editing a Pet"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="ownerNameInputEdit"
          label="Owner Full Name"
          labelPosition="top"
          required={true}
          value="{{ tableOwners.selectedRow.owner_name }}"
        />
        <TextInput
          id="ownerID"
          disabled="true"
          label="Owner ID"
          labelPosition="top"
          required={true}
          value="{{ tableOwners.selectedRow.owner_id }}"
        />
        <TextInput
          id="ownerPhoneInputEdit"
          label="Phone Number"
          labelPosition="top"
          required={true}
          value="{{ tableOwners.selectedRow.phone }}"
        />
        <TextInput
          id="ownerEmailInputEdit"
          label="E-mail Address"
          labelPosition="top"
          value="{{ tableOwners.selectedRow.email }}"
        />
      </Body>
      <Footer>
        <Button
          id="buttonCancelEditOwner"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="setHidden"
            params={{ ordered: [] }}
            pluginId="formEditOwner"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="buttonSaveEditOwner"
          submit={true}
          submitTargetId="formEditOwner"
          text="Save changes"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="editOwner"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
</Container>
