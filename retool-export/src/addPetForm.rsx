<Screen
  id="addPetForm"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title={null}
  urlSlug=""
>
  <SqlQueryUnified
    id="addPet"
    actionType="INSERT"
    changeset={
      '[{"key":"pet_name","value":"{{ nameInput.value }}"},{"key":"species","value":"{{ speciesSelect.value }}"},{"key":"breed","value":"{{ breedInput.value }}"},{"key":"birth_date","value":"{{ birthdateInput.value }}"},{"key":"owner_id","value":"{{ ownerSelect.value }}"},{"key":"medical_notes","value":"{{ notesInput.value }}"},{"key":"gender","value":"{{ genderSelect.value }}"}]'
    }
    editorMode="gui"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration="5"
    query={include("../lib/addPet.sql", "string")}
    queryFailureConditions={'[{"condition":"","message":""}]'}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showFailureToaster={false}
    successMessage="The Pet has been successfully added!"
    tableName="pets"
    warningCodes={[]}
  >
    <Event
      event="success"
      method="clear"
      params={{ ordered: [] }}
      pluginId="formAddNewPet"
      type="widget"
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
      pluginId="selectPetsGlobal"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="selectOwnersInAddPet"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("../lib/selectOwnersInAddPet.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="addOwner"
    actionType="INSERT"
    changeset={
      '[{"key":"owner_phone","value":"{{ phoneInput.value }}"},{"key":"owner_name","value":"{{ ownerNameInput.value }}"}]'
    }
    editorMode="gui"
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
              ordered: [
                { notificationType: "success" },
                { title: "Owner has been added succesfully." },
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
      method="clear"
      params={{ ordered: [] }}
      pluginId="formAddOwner"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="selectOwnersInAddPet"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setHidden"
      params={{ ordered: [] }}
      pluginId="formAddOwner"
      type="widget"
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
  <Frame
    id="$main3"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="60px 0px"
    sticky={null}
    style={{ ordered: [{ canvas: "surfacePrimary" }] }}
    type="main"
  >
    <Form
      id="formAddNewPet"
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
          id="titleAddPet"
          style={{ ordered: [{ color: "primary" }] }}
          value="### Add a Pet"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="nameInput"
          label="Name"
          labelPosition="top"
          placeholder="Enter Pet's name"
          required={true}
        />
        <Form
          id="formAddOwner"
          footerPadding="16px 12px"
          headerPadding="4px 12px"
          hidden="true"
          margin="0px 8px"
          padding="0px 8px"
          requireValidation={true}
          resetAfterSubmit={true}
          showBody={true}
          showBorder={false}
          showFooter={true}
          showFooterBorder={false}
        >
          <Header>
            <Text
              id="formTitle9"
              value="#### Form title"
              verticalAlign="center"
            />
          </Header>
          <Body>
            <TextInput
              id="ownerNameInput"
              label="Full Name"
              labelPosition="top"
              placeholder="Enter Owner's full name"
              required={true}
              style={{ ordered: [{ background: "canvas" }] }}
            />
            <TextInput
              id="phoneInput"
              label="Phone Number"
              labelPosition="top"
              placeholder="Enter Owner's phone number"
              required={true}
              style={{ ordered: [{ background: "canvas" }] }}
            />
            <TextInput
              id="textInput1"
              label="E-mail"
              labelPosition="top"
              placeholder="Enter Owner's e-mail address"
              style={{ ordered: [{ background: "canvas" }] }}
            />
          </Body>
          <Footer>
            <Button
              id="cancelAddOwnerButton"
              style={{ ordered: [] }}
              styleVariant="outline"
              text="Cancel"
            >
              <Event
                event="click"
                method="setHidden"
                params={{ ordered: [] }}
                pluginId="formAddOwner"
                type="widget"
                waitMs="0"
                waitType="debounce"
              />
            </Button>
            <Button
              id="addOwnerButton"
              submit={true}
              submitTargetId="formAddOwner"
              text="Add Owner"
            />
          </Footer>
          <Event
            event="submit"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="addOwner"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Form>
        <Select
          id="ownerSelect"
          captionByIndex=""
          colorByIndex=""
          data="{{ selectOwnersInAddPet.data }}"
          disabledByIndex=""
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Pet Owner"
          labelPosition="top"
          labels="{{ item.owner_name }}"
          overlayMaxHeight={375}
          placeholder="Select an Owner"
          required={true}
          showSelectionIndicator={true}
          tooltipByIndex=""
          values="{{ item.owner_id }}"
        />
        <Select
          id="genderSelect"
          emptyMessage="No options"
          itemMode="static"
          label="Gender"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select gender"
          required={true}
          showSelectionIndicator={true}
        >
          <Option id="66715" value="Male" />
          <Option id="eb4d7" value="Female" />
          <Option id="408ae" value="Not specified" />
        </Select>
        <Select
          id="speciesSelect"
          emptyMessage="No options"
          itemMode="static"
          label="Species"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select species"
          required={true}
          showSelectionIndicator={true}
        >
          <Option id="31a70" label="Dog" value="Dog" />
          <Option id="89793" label="Cat" value="Cat" />
          <Option id="87db2" label="Other" value="Other" />
        </Select>
        <TextInput
          id="breedInput"
          label="Breed"
          labelPosition="top"
          placeholder="Enter breed"
        />
        <Date
          id="birthdateInput"
          dateFormat="yyyy-MM-dd"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          firstDayOfWeek={1}
          iconBefore="bold/interface-calendar"
          label="Date of Birth"
          labelPosition="top"
          maxDate="{{ new(Date) }}"
          required={true}
        />
        <TextArea
          id="notesInput"
          autoResize={true}
          label="Medical Notes"
          labelPosition="top"
          minLines="5"
          placeholder="Enter relevant health details..."
        />
      </Body>
      <Footer>
        <Button
          id="buttonCancelAddPet"
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
                { pageName: "petsPage" },
              ],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="showAddOwnerButton"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Add new Owner"
        >
          <Event
            event="click"
            method="setHidden"
            params={{ ordered: [{ hidden: false }] }}
            pluginId="formAddOwner"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="addPetButton"
          style={{ ordered: [] }}
          submit={true}
          submitTargetId="formAddNewPet"
          text="Add Pet"
        />
      </Footer>
      <Event
        event="submit"
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
        pluginId="addPet"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !nameInput.value || !speciesSelect.value || !ownerInput.value || !birthdateInput.value}}"
        event="invalid"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "Error" },
                  { description: "Please fill in all required fields." },
                  { duration: "5" },
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
    </Form>
  </Frame>
</Screen>
