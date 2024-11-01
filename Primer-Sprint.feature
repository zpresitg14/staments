Feature: Feature name

Feature: US01 - Pantalla Principal
  Como usuario,
  Quiero ver una pantalla principal con botones de navegación claros,
  Para poder acceder rápidamente a funciones de emergencia, informes y el mapa de ayuda.

  Scenario: Ver pantalla principal con opciones de navegación
    Given el usuario abre la aplicación "Safe Housing"
    When el usuario accede a la pantalla principal
    Then debería ver los botones de "Emergencia", "Informes" y "Mapa de Ayuda"

  Scenario: Navegar desde la pantalla principal
    Given el usuario está en la pantalla principal
    When selecciona el botón de "Mapa de Ayuda"
    Then debería ser redirigido a la pantalla del mapa interactivo

    Feature: US02 - Mapa de Centros de Ayuda
  Como usuario,
  Quiero ver un mapa interactivo,
  Para ubicar los centros de ayuda cercanos según mi localización.

  Scenario: Ver mapa de centros de ayuda en pantalla
    Given el usuario está en la pantalla de mapa
    When el usuario permite el acceso a su ubicación
    Then debería ver los centros de ayuda cercanos en el mapa

  Scenario: Buscar centro de ayuda en otra ubicación
    Given el usuario está en la pantalla de mapa
    When el usuario introduce una ubicación diferente
    Then el mapa debería actualizarse para mostrar centros de ayuda en esa ubicación

Feature: US03 - Sistema de Niveles de Alerta
  Como usuario,
  Quiero ajustar el nivel de alerta y acceder a un botón de emergencia,
  Para que pueda activar la ayuda rápida en caso de peligro.

  Scenario: Activar el botón de emergencia
    Given el usuario está en cualquier pantalla de la aplicación
    When el usuario presiona el botón de emergencia
    Then el sistema debería enviar una alerta y notificar a los contactos de emergencia

  Scenario: Ajustar el nivel de alerta
    Given el usuario accede a la configuración del sistema de alertas
    When ajusta el nivel de alerta a "Alto"
    Then el sistema debería actualizar el nivel de alerta en todas las pantallas relevantes

Feature: US04 - Pantalla de Informes
  Como usuario,
  Quiero ver informes visuales con gráficos,
  Para entender mejor los datos sobre casos de violencia en mi zona.

  Scenario: Ver informes de violencia en la pantalla
    Given el usuario accede a la sección de informes
    When se cargan los datos de violencia por ubicación, género y edad
    Then debería ver gráficos que representen esta información

  Scenario: Seleccionar filtro en informes
    Given el usuario está en la pantalla de informes
    When selecciona el filtro por "género"
    Then debería ver los datos actualizados mostrando solo la información filtrada por género
