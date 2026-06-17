-- Elimina hipervínculos externos
function Link(el)
  return el.content
end

-- Elimina TODOS los identificadores de encabezados
-- Esto evita \hypertarget y \label en \section, \subsection, etc.
function Header(el)
  el.identifier = ""
  return el
end

-- Por si acaso: elimina Span con atributos (anclas internas)
function Span(el)
  return el.content
end
