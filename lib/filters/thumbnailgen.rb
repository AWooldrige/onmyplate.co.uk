class Thumbnailgen < Nanoc::Filter

  identifier :thumbnailgen
  type       :binary

    def run(filename, params={})
        system(
            'gm',
            'convert',
            '-size', params[:resize],
            '-resize',
            params[:resize],
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
            '-size', params[:resize],
            '-resize', params[:resize] + '^',
            '-gravity', 'center',
            '-extent', params[:resize],
            filename,
            output_filename)
  end

end
