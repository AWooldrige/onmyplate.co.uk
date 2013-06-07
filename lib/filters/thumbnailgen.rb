class Thumbnailgen < Nanoc::Filter

  identifier :thumbnailgen
  type       :binary

    def run(filename, params={})
        system(
            'gm',
            'convert',
            '+profile', '"*"',
            '-quality', '75',
            '-type', 'TrueColor',
            '-interlace', 'None',
            '-thumbnail', params[:resize],
            filename,
            output_filename)
  end

end
class Peepboxgen < Nanoc::Filter

  identifier :peepboxgen
  type       :binary

    def run(filename, params={})
        system(
            'gm',
            'convert',
            '-filter', 'triangle',
            '+profile', '"*"',
            '-size', params[:resize],
            '-thumbnail', params[:resize] + '^',
            '-gravity', 'Center',
            '-crop', params[:resize] + '+0+0',
            '-quality', '75',
            '-type', 'TrueColor',
            '-interlace', 'None',
            filename,
            output_filename)
  end

end
