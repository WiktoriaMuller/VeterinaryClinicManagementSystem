<Screen
  id="visitsPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Visits"
  urlSlug=""
>
  <RESTQuery
    id="visitConfirmationEdit"
    body={
      '{\n  "personalizations": [{\n    "to": [{\n      "email": "{{ getOwnerDetailsEdit.data.owner_email || \'default@example.com\' }}"\n    }],\n    "subject": "Confirmation of Your Pet\'s Appointment"\n  }],\n  "from": {\n    "email": "wwiktoriamuller@gmail.com",\n    "name": "Your Veterinary Clinic"\n  },\n  "content": [{\n    "type": "text/plain",\n    "value": "Dear {{ getOwnerDetailsEdit.data.owner_name }},\\n\\nYour pet {{ getOwnerDetailsEdit.data.pet_name }} has been scheduled for an appointment on {{ moment(visitDateEdit.value).format(\'MMMM D, YYYY [at] HH:mm\') }}.\\n\\nThank you!\\nYour Clinic"\n  }]\n}\n'
    }
    bodyType="raw"
    cookies={'[{"key":"","value":""},{"key":"","value":""}]'}
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="?"
    resourceDisplayName="visit_confirmation"
    resourceName="32cf3010-2b82-49e1-84f1-cfc3cc354ae1"
    resourceNameOverride="32cf3010-2b82-49e1-84f1-cfc3cc354ae1"
    resourceTypeOverride="restapi"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="POST"
  />
  <SqlQueryUnified
    id="selectVisits"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("../lib/selectVisits.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="selectRow"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { mode: "index" },
                { indexType: "display" },
                { index: "0" },
                { key: null },
              ],
            },
          },
        ],
      }}
      pluginId="tableVisits"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="editVisit"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"visit_date","value":"{{ visitDateEdit.value }}"},{"key":"pet_id","value":"{{ petSelectEdit.value }}"},{"key":"vet_id","value":"{{ vetSelectEdit.value }}"},{"key":"reason","value":"{{ reasonInputEdit.value }}"},{"key":"treatment","value":"{{ treatmentInputEdit.value }}"},{"key":"weight","value":"{{ weightInputEdit.value }}"},{"key":"status","value":"{{ statusSelectEdit.value }}"},{"key":"temperature","value":"{{ temperatureInputEdit.value }}"}]'
    }
    doNotThrowOnNoOp={true}
    editorMode="gui"
    enableTransformer={true}
    filterBy={
      '[{"key":"visit_id","value":"{{ visitID.value }}","operation":"="}]'
    }
    isHidden={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="visits"
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
                { duration: "5" },
                { title: "Saved." },
                { description: "" },
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
      pluginId="tableVisits"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      enabled={
        '{{ statusSelectEdit.value === "Scheduled" && getOwnerDetailsEdit.data.owner_email.length > 0 }}'
      }
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="visitConfirmationEdit"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setHidden"
      params={{ ordered: [] }}
      pluginId="formEditVisit"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="editPetInVisits"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"next_vaccination","value":"{{ nextVaccinationDateEdit.value }}"}]'
    }
    doNotThrowOnNoOp={true}
    editorMode="gui"
    filterBy={
      '[{"key":"pet_id","value":"{{ tableVisits.selectedRow.pet_id }}","operation":"="}]'
    }
    isHidden={false}
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="pets"
  />
  <SqlQueryUnified
    id="deleteVisit"
    actionType="DELETE_BY"
    confirmationMessage="Are you sure you want to delete this visit?"
    editorMode="gui"
    filterBy={
      '[{"key":"visit_id","value":"{{ tableVisits.selectedRow.visit_id }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    requireConfirmation={true}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    runWhenModelUpdates={false}
    tableName="visits"
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
                { title: "The visit has been deleted." },
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
      pluginId="tableVisits"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="getOwnerDetailsEdit"
    notificationDuration={4.5}
    query={include("../lib/getOwnerDetailsEdit.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="60px 0px"
    style={{ ordered: [{ canvas: "#e5eceb" }] }}
    type="main"
  >
    <Text
      id="text4"
      horizontalAlign="center"
      margin="0px 0px 8px 0px"
      style={{ ordered: [{ color: "primary" }] }}
      value="## Veterinary Clinic Management System"
      verticalAlign="center"
    />
    <Text
      id="text5"
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
      id="navigationVisits"
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
    <Include src="./visits.rsx" />
    <Text
      id="textCopyrights2"
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
