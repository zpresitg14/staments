
Feature: US05 - Validación y Prevención de Errores
  Como usuario,
  Quiero recibir confirmaciones antes de realizar acciones críticas,
  Para evitar errores accidentales.

  Scenario: Confirmación de acciones antes de envío
    Given el usuario completa un formulario de reporte
    When presiona el botón de envío
    Then el sistema debería mostrar un mensaje de confirmación para verificar la acción

  Scenario: Ver mensaje de error en campos obligatorios
    Given el usuario deja campos obligatorios vacíos en el formulario de reporte
    When intenta enviar el formulario
    Then debería ver un mensaje de error indicando los campos faltantes

Feature: US06 - Configuración del Usuario
  Como usuario,
  Quiero configurar mis datos de perfil, incluyendo contactos de emergencia,
  Para personalizar mi experiencia en la aplicación.

  Scenario: Configuración del perfil de usuario
    Given el usuario está en la pantalla de configuración
    When el usuario edita sus datos de contacto de emergencia
    Then el sistema debería guardar los cambios y confirmarlos

  Scenario: Agregar nuevo contacto de emergencia
    Given el usuario accede a la configuración de contactos de emergencia
    When añade un nuevo contacto y guarda los cambios
    Then el nuevo contacto debería aparecer en la lista de contactos de emergencia

Feature: US07 - Botón de Emergencia
  Como usuario,
  Quiero un botón de emergencia visible en toda la aplicación,
  Para solicitar ayuda inmediata cuando la necesite.

  Scenario: Presionar botón de emergencia desde cualquier pantalla
    Given el usuario está en cualquier sección de la app
    When presiona el botón de emergencia
    Then el sistema debería enviar una alerta al contacto de emergencia registrado

  Scenario: Confirmación de activación del botón de emergencia
    Given el usuario está en la pantalla de inicio
    When presiona el botón de emergencia
    Then debería ver una notificación confirmando que la alerta ha sido enviada

Feature: US08 - Notificaciones de Alerta
  Como usuario,
  Quiero recibir notificaciones push en mi teléfono,
  Para estar informado sobre alertas y mensajes de seguridad importantes.

  Scenario: Recibir notificaciones push en el móvil
    Given el usuario ha habilitado las notificaciones en la app
    When se envía una alerta de seguridad
    Then el usuario debería recibir una notificación en su dispositivo

  Scenario: Deshabilitar notificaciones push
    Given el usuario tiene habilitadas las notificaciones en la app
    When desactiva la opción de notificaciones push en la configuración
    Then el sistema no debería enviar notificaciones al dispositivo
