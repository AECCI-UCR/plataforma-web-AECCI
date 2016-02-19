module ApplicationHelper

  # Métodos auxiliar para mapear flash key en bootstrap css class
  BOOTSTRAP_FLASH_MSG = {
      notice: 'success',
      alert:  'danger',
      error:  'danger'
      #default: 'info'
  }

  def bootstrap_class_for(message_type)
    BOOTSTRAP_FLASH_MSG.fetch message_type.to_sym, message_type
  end

end
