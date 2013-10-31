class ParsingFileError < StandardError

def self.newEmtpyFields fields
	ParsingFileError.new('Los siguientes campos son obligatorios: '+ fields.join(', ')+'. Por favor corrija el archivo y vuelva a cargarlo')
end

end