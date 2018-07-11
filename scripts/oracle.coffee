# Description:
#   Ask a question, and the bot shall answer the truth!
#
# Configuration:
#   None
#
# Commands:
#   None - Just need a string to end with '?'

answers = [
  "En mi opinión, sí",
  "Es cierto",
  "Es decididamente así",
  "Probablemente",
  "Buen pronóstico",
  "Todo apunta a que sí",
  "Sin duda",
  "Sí",
  "Sí - definitivamente",
  "Debes confiar en ello",
  "No puedo predecirlo con exactitud",
  "Pregunta en otro momento",
  "Será mejor que no te lo diga ahora",
  "No puedo hacer comentarios al respecto",
  "Realmente quieres preguntar eso?",
  "No cuentes con ello",
  "Mi respuesta es no",
  "Mis fuentes me dicen que no",
  "Las perspectivas no son buenas",
  "Es muy dudoso"
]

module.exports = (robot) ->
  robot.hear /(.*)\?/i, (msg) ->
    randomIntIndex = Math.floor(Math.random() * (answers.length - 1))
    msg.send answers[randomIntIndex]
