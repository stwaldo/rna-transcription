//Solution goes in Sources
import Foundation

struct Nucleotide {
    var dna: String
    
    init(_ dna: String) {
        self.dna = dna
    }
    // function to transcribe dna to rna by passing to a function
    func complementOfDNA() -> String {
        let transcription:[Character: Character] = ["G":"C", "C":"G", "T":"A", "A":"U"]
        var rna: String
        for nuc in self.dna {
            do {
                try rna.append(transcription[nuc]!)
            } catch {
                return "\(transcription[nuc]) is not a valid Nucleotide"
            }
        }

        return rna
    }
}
