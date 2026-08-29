<ModalFrame
  id="modalEditVet"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="32px"
  showHeaderBorder={false}
  showOverlay={true}
  size="medium"
  style={{ ordered: [{ borderRadius: "8px" }] }}
  styleContext={{ ordered: [] }}
>
  <Header>
    <Text id="modalTitle1" value="### Container title" verticalAlign="center" />
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalEditVet"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="formEditVet"
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
          id="titleEditVet"
          style={{ ordered: [{ color: "primary" }] }}
          value="### Edit Employee"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <TextInput
          id="vetNameEditInput"
          label="Full Name"
          labelPosition="top"
          required={true}
          value="{{ selectedVetForEdit.value.name }}"
        />
        <TextInput
          id="vetPhoneEditInput"
          label="Phone Number"
          labelPosition="top"
          required={true}
          value="{{ selectedVetForEdit.value.phone }}"
        />
        <TextInput
          id="vetAddressEditInput"
          label="Address"
          labelPosition="top"
          required={true}
          value="{{ selectedVetForEdit.value.address }}"
        />
        <Date
          id="startDateEdit"
          dateFormat="MMM d, yyyy"
          iconBefore="bold/interface-calendar"
          label="Start Date"
          labelPosition="top"
          required={true}
          value="{{ selectedVetForEdit.value.start_date }}"
        />
      </Body>
      <Footer>
        <Button
          id="buttonCancelEditVet"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Cancel"
        >
          <Event
            event="click"
            method="hide"
            params={{ ordered: [] }}
            pluginId="modalEditVet"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="saveEditVetButton"
          style={{ ordered: [] }}
          submitTargetId="formEditVet"
          text="Save changes"
        >
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="editVet"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
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
  </Body>
</ModalFrame>
