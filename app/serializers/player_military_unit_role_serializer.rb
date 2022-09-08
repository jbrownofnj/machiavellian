class PlayerMilitaryUnitRoleSerializer < ActiveModel::Serializer
  attributes :id, :military_unit_role_type,:player,:military_unit
  def player
    object.player.house_name
  end
  def military_unit
    object.military_unit.military_unit_power
  end
end
