<Screen
  id="addVisitForm"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="addVisit"
    actionType="INSERT"
    changeset={
      '[{"key":"status","value":"{{ statusSelect.value }}"},{"key":"pet_id","value":"{{ petInput.value }}"},{"key":"vet_id","value":"{{ vetSelect.value }}"},{"key":"visit_date","value":"{{ visitDate.value }}"},{"key":"reason","value":"{{ reasonInput.value }}"},{"key":"treatment","value":"{{ treatmentInput.value }}"},{"key":"status","value":"{{ statusSelect.value }}"}]'
    }
    editorMode="gui"
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
      enabled={
        '{{ statusSelect.value === "Scheduled" && getOwnerDetails.data.owner_email.length > 0 }}\n'
      }
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="visitConfirmation"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "The visit has been added successfully." },
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
  </SqlQueryUnified>
  <SqlQueryUnified
    id="editPetInAddVisit"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"next_vaccination","value":"{{ nextVaccinationDate.value }}"}]'
    }
    doNotThrowOnNoOp={true}
    filterBy={
      '[{"key":"pet_id","value":"{{ petInput.selectedItem.pet_id }}","operation":"="}]'
    }
    isHidden={false}
    notificationDuration={4.5}
    query={include("../lib/editPetInAddVisit.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="pets"
    warningCodes={[]}
  />
  <RESTQuery
    id="visitConfirmation"
    body={
      '{\n  "personalizations": [{\n    "to": [{\n      "email": "{{ getOwnerDetails.data.owner_email || \'default@example.com\' }}"\n    }],\n    "subject": "Confirmation of Your Pet\'s Appointment"\n  }],\n  "from": {\n    "email": "wwiktoriamuller@gmail.com",\n    "name": "Your Veterinary Clinic"\n  },\n  "content": [{\n    "type": "text/plain",\n    "value": "Dear {{ getOwnerDetails.data.owner_name }},\\n\\nYour pet {{ getOwnerDetails.data.pet_name }} has been scheduled for an appointment on {{ moment(visitDate.value).format(\'MMMM D, YYYY [at] HH:mm\') }}.\\n\\nThank you!\\nYour Clinic"\n  }]\n}\n'
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
    id="getOwnerDetails"
    notificationDuration={4.5}
    query={include("../lib/getOwnerDetails.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <Frame
    id="$main4"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="60px 0px"
    sticky={null}
    style={{ ordered: [{ canvas: "surfacePrimary" }] }}
    type="main"
  >
    <Form
      id="formAddPet"
      footerPadding="0px 0px"
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
          id="titleAddVisit"
          margin="0"
          style={{ ordered: [{ color: "primary" }] }}
          value="### Add new visit"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <DateTime
          id="visitDate"
          dateFormat="yyyy-MM-dd"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          displayTimeZone="local"
          iconBefore="bold/interface-calendar"
          label="Date"
          labelPosition="top"
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
          valueTimeZone="00:00"
        />
        <NumberInput
          id="weightInput"
          currency="USD"
          decimalPlaces="2"
          inputValue={0}
          label="Weight"
          labelPosition="top"
          padDecimal={true}
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value=""
        />
        <NumberInput
          id="temperatureInput"
          currency="USD"
          decimalPlaces="1"
          inputValue={0}
          label="Temperature"
          labelPosition="top"
          padDecimal={true}
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value=""
        />
        <Date
          id="nextVaccinationDate"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          iconBefore="bold/interface-calendar"
          label="Next Vaccination"
          labelPosition="top"
          style={{
            ordered: [
              {
                text: '{{ !nextVaccinationDate.value ? "grey" : moment().format("YYYY-MM-DD") ? "firebrick" : "grey" }}',
              },
            ],
          }}
          value="{{ petInput.selectedItem.next_vaccination }}"
        />
        <Select
          id="petInput"
          data="{{ selectPetsGlobal.data }}"
          emptyMessage="No options"
          iconByIndex=""
          label="Pet/Owner"
          labelPosition="top"
          labels="{{ item.pet_name }} ({{ item.owner_name }})"
          overlayMaxHeight={375}
          placeholder="Select a Pet"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.pet_id }}"
        >
          <Event
            event="change"
            method="setValue"
            params={{ ordered: [] }}
            pluginId="ownerInput"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <TextArea
          id="reasonInput"
          autoResize={true}
          label="Reason"
          labelPosition="top"
          minLines="3"
        />
        <Select
          id="vetSelect"
          data="{{ selectVets.data }}"
          emptyMessage="No options"
          label="Vet"
          labelPosition="top"
          labels="{{ item.vet_name }}"
          overlayMaxHeight={375}
          placeholder="Select a Vet"
          required={true}
          showSelectionIndicator={true}
          values="{{ item.vet_id }}"
        />
        <Select
          id="statusSelect"
          emptyMessage="No options"
          itemMode="static"
          label="Status"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select status"
          required={true}
          showSelectionIndicator={true}
        >
          <Option id="c38dc" color="CD6F00" value="Scheduled" />
          <Option id="936b0" color="059669" value="Completed" />
          <Option id="3725e" color="DC2626" value="Canceled" />
        </Select>
        <TextArea
          id="treatmentInput"
          autoResize={true}
          label="Treatment"
          labelPosition="top"
          minLines="3"
        />
      </Body>
      <Footer>
        <Button
          id="buttonCancelAddVisit"
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
                { pageName: "visitsPage" },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="buttonAddNewVisit"
          submit={true}
          submitTargetId="formAddPet"
          text="Add visit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addVisit"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !petInput.value || !vetSelect.value }}"
        event="invalid"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { duration: "5" },
                  { title: "Error" },
                  { description: "Please fill in all required fields." },
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
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="editPetInAddVisit"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Frame>
</Screen>
