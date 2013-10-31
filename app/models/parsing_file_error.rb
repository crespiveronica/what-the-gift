class ParsingFileError < StandardError

def self.newEmtpyFields fields
	ParsingFileError.new('Los siguientes campos son obligatorios: '+ fields.join(', ')+'. Por favor corrija el archivo y vuelva a cargarlo.')
end

def self.newUnparsablePrice
	ParsingFileError.new('El precio debe ser un numero. Por favor corrija el archivo y vuelva a cargarlo.')
end

def self.newNegativePrice
	ParsingFileError.new('El precio debe ser un numero mayor a cero. Por favor corrija el archivo y vuelva a cargarlo.')
end

end