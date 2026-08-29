<Screen
  id="addVetForm"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug="addVetPage"
>
  <SqlQueryUnified
    id="addVet"
    actionType="INSERT"
    changeset={
      '[{"key":"vet_name","value":"{{ vetNameInput.value }}"},{"key":"vet_phone","value":"{{ vetPhoneInput.value }}"},{"key":"vet_address","value":"{{ vetAddressInput.value }}"},{"key":"start_date","value":"{{ startDate.value }}"}]'
    }
    editorMode="gui"
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="vets"
    updateSetValueDynamically={true}
  >
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Employee has been added succesfully." },
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
      method="openPage"
      params={{
        ordered: [
          { options: { ordered: [{ passDataWith: "urlParams" }] } },
          { pageName: "employeesPage" },
        ],
      }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="selectVets"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Frame
    id="$main7"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="60px 0px"
    sticky={null}
    style={{ ordered: [{ canvas: "surfacePrimary" }] }}
    type="main"
  >
    <Form
      id="formAddNewVet"
      footerPadding="4px 0px"
      headerPadding="0px 0px 12px 0px"
      padding="24px 0px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showBorder={false}
      showFooter={true}
      showFooterBorder={false}
      showHeader={true}
    >
      <Header>
        <Text
          id="titleAddEmployee"
          style={{ ordered: [{ color: "primary" }] }}
          value="### Add an Employee"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="vetNameInput"
          label="Full Name"
          labelPosition="top"
          placeholder="Enter Vet's full name"
          required={true}
        />
        <TextInput
          id="vetPhoneInput"
          label="Phone Number"
          labelPosition="top"
          placeholder="Enter Vet's phone number"
          required={true}
        />
        <TextInput
          id="vetAddressInput"
          label="Address"
          labelPosition="top"
          placeholder="Enter address"
          required={true}
        />
        <Date
          id="startDate"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Start Date"
          labelPosition="top"
          required={true}
        />
      </Body>
      <Footer>
        <Button
          id="buttonCancelAddVet"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="openPage"
            params={{
              ordered: [
                { options: { ordered: [{ passDataWith: "urlParams" }] } },
                { pageName: "employeesPage" },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="addVetButton"
          style={{ ordered: [] }}
          submit={true}
          submitTargetId="formAddNewVet"
          text="Add Employee"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addVet"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Frame>
</Screen>
