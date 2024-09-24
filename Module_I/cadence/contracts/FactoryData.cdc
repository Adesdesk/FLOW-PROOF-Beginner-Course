access(all) contract FactoryData {

    access(all) var buildings: {Address: BuildingParticulars}
    
    access(all) struct BuildingParticulars {
        access(all) let perimeterInMeters: UInt
        access(all) let buildingColor: String
        access(all) let street: String
        access(all) let manager: Address

        
        init(_perimeterInMeters: UInt, _buildingColor: String, _street: String, _manager: Address) {
            self.perimeterInMeters = _perimeterInMeters
            self.buildingColor = _buildingColor
            self.street = _street
            self.manager = _manager
        }
    }

    access(all) fun addBuildingParticulars(perimeterInMeters: UInt, buildingColor: String, street: String, manager: Address) {
    // Create a new BuildingParticulars instance
    let newBuildingParticulars = BuildingParticulars(
        _perimeterInMeters: perimeterInMeters, 
        _buildingColor: buildingColor, 
        _street: street,
        _manager: manager
    )
    
    // Add the new BuildingParticulars to the buildings dictionary using the manager's address as the key
    self.buildings[manager] = newBuildingParticulars
}

    init() {
        self.buildings = {}
    }

}