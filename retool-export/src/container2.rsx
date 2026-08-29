<Container
  id="container2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="8px 0px"
  padding="28px"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ borderRadius: "8px" }] }}
>
  <View id="0d907" viewKey="{{ selectVets.data.name }}">
    <Icon
      id="icon1"
      horizontalAlign="center"
      icon="bold/interface-user-single"
      margin="8px 8px"
      style={{ ordered: [{ color: "secondary" }] }}
    />
    <Text
      id="text11"
      heightType="fixed"
      value="###### Phone Number:
{{ item.vet_phone }}
###### Address:
{{ item.vet_address }}"
      verticalAlign="center"
    />
    <Button
      id="buttonDeleteVet"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-bin-1"
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{ item.vet_id }}" }] }}
        pluginId="selectedVetID"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !!selectedVetID }}"
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="deleteVet"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text10"
      heightType="fixed"
      style={{ ordered: [] }}
      value="###### Vet ID:
{{ item.vet_id }}
###### Start Date:
{{ item.start_date }}"
      verticalAlign="center"
    />
    <Button
      id="buttonEditVet"
      horizontalAlign="right"
      iconBefore="bold/interface-edit-write-1"
      style={{ ordered: [{ borderRadius: "8\npx" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{ item }}" }] }}
        pluginId="selectedVetForEdit"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalEditVet"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="vetTitle"
      horizontalAlign="center"
      margin="8px 0px 0px 0px"
      style={{ ordered: [{ color: "primary" }] }}
      value="#### {{ item.vet_name }}"
      verticalAlign="center"
    />
  </View>
</Container>
