local Sequence = require 'tetris.randomizers.fixed_sequence'

local KamuiSequence = Sequence:extend()

function KamuiSequence:initialize()
    self.super:initialize()
    self.sequence = "JISTZOSJITOZLISTJLOSZTJOILZJOITZJLISZTLJIOZLSTJZLSOTJLIZSTJOLISTZJOLTZSOJLZIOJSLZTJSIZOJTLSIJTLZSOJTZSLIOZSJLTZOISTZLOJTZILOSTIJOLSTIZLJOTZILSJZTOSIZJOLTISJZOLITSJZLTSOJLTZOJISTZLOSIZJTSIOZLSJIZTLJIZTLSJZILOTJZLOISZJLOTSJIZTOLSZJITSOZITSLJOTSLJOZITJOZLSTIOJSTLOIJTSOZILTSOJZILSOTZLSJTIZSJOTILZJOISLJZITLOZJTILSJTIZOJTIZOLJTSOZJTSILJZTSOIZJSTOIJLZTIJOLSISOJTLZOIJLTZOILSSJTOZILSOTZLSJIOLZJTSOIJZTSOJLISTZLIOJTZSSOLIZSTJOSLTIZSJLOTZISLJOTZLJOSTZJIOLSTIZOSLJZISOJLIZTOJILZOJILTOJISZOTJTIOSZTLJSZOITLZOJSILZJOILJZOISJTLOZSJIOLJSZTLISJOZLISOJZILOSTILOTJSLZITSOJITLZSJTIZOLJISTOJILZSTOILZSJOTISLOZJITOLZJSILOZSIJLZTSOJZLTIJSLTIZJLOSTJZLSIOTJZLOSOTSLIOZSTJOILSZTJLOZSTILZSOJITLZSIJTOLZSTJOZSLJIZSOJLZITJSLZOJTLSOIZJSOSLTZOSSTLZOIJSTOZILJSOSTIJLSOTJLSOTIJSZOLTSJZLOSJTZILOTSZLOITZSJITLZJIOSZTLIJOSLIZTOLIZTJLSZOTJLSOTZJIOSZTJTOSZIJTSOIZJLSOSILJTZOIJSTIJLTOSZJLOTSIZOLSTJIOJZTILSOJZTILJZSOSITLZSOTJIZOSLJTOSZLITSJLIZTOLSIZOJTSZOJTLZSJTOILZJTSLZJTISLZTJISOLZTSIOLJTZIOJSLTIJZSTLJIOTSLZJITLOJIZLZSOIJLZOTSSJZTIO"
end

return KamuiSequence