<GlobalFunctions>
  <SqlQueryUnified
    id="selectPetsGlobal"
    enableTransformer={true}
    isHidden={false}
    query={include("./lib/selectPetsGlobal.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="selectVets"
    isHidden={false}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/selectVets.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="selectOwners"
    isHidden={false}
    isMultiplayerEdited={false}
    query={include("./lib/selectOwners.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="3a47f112-8352-429a-a482-a093dd9bbaef"
    warningCodes={[]}
  />
  <State id="selectedVetID" />
  <State id="selectedVetForEdit" />
</GlobalFunctions>
