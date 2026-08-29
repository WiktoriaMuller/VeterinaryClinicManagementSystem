<Screen
  id="employeesPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Visits"
  urlSlug="visitsPage2-1"
>
  <SqlQueryUnified
    id="deleteVet"
    actionType="DELETE_BY"
    confirmationMessage="Are you sure you want to delete this Employee?"
    editorMode="gui"
    filterBy={
      '[{"key":"vet_id","value":"{{ selectedVetID.value }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    requireConfirmation={true}
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
                { notificationType: "info" },
                { title: "Employee has been deleted successfully." },
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
      method="trigger"
      params={{ ordered: [] }}
      pluginId="selectVets"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="editVet"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"name","value":"{{ vetNameEditInput.value }}"},{"key":"phone","value":"{{ vetPhoneEditInput.value }}"},{"key":"address","value":"{{  vetAddressEditInput.value }}"},{"key":"start_date","value":"{{ startDateEdit.value }}"}]'
    }
    doNotThrowOnNoOp={true}
    editorMode="gui"
    filterBy={
      '[{"key":"vet_id","value":"{{ selectedVetForEdit.value.vet_id }}","operation":"="}]'
    }
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
                { title: "Employee has been updated successfully." },
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
      method="trigger"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { onSuccess: null },
                { onFailure: null },
                { additionalScope: null },
              ],
            },
          },
        ],
      }}
      pluginId="selectVets"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="hide"
      params={{ ordered: [] }}
      pluginId="modalEditVet"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Include src="./modalEditVet.rsx" />
  <Frame
    id="$main6"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="60px 0px"
    style={{ ordered: [{ canvas: "#e5eceb" }] }}
    type="main"
  >
    <Text
      id="text8"
      horizontalAlign="center"
      margin="0px 0px 8px 0px"
      style={{ ordered: [{ color: "primary" }] }}
      value="## Veterinary Clinic Management System"
      verticalAlign="center"
    />
    <Text
      id="text9"
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
      id="navigationEmployees"
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
    <ListViewBeta
      id="listViewVets"
      _primaryKeys="{{ item.vet_id }}"
      data="{{ selectVets.data }}"
      formDataKey="{{ self.vet_id }}"
      heightType="auto"
      itemWidth="200px"
      margin="24px 0px"
      numColumns={3}
      padding="0"
    >
      <Include src="./container2.rsx" />
    </ListViewBeta>
    <Button
      id="buttonAddEmployee"
      iconBefore="bold/interface-add-1"
      text="Add new Employee"
    >
      <Event
        event="click"
        method="openPage"
        params={{
          ordered: [
            { options: { ordered: [{ passDataWith: "urlParams" }] } },
            { pageName: "addVetForm" },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="textCopyrights3"
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
