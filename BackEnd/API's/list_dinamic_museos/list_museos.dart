abstract class Museo {
  String nombre;
  String ubicacion;

  Museo(this.nombre, this.ubicacion);

  void mostrarDetalles();
}

abstract class MuseoFactory {
  Museo crearMuseo(String nombre, String ubicacion);
}

class ArteMuseo extends Museo {
  ArteMuseo(String nombre, String ubicacion) : super(nombre, ubicacion);

  @override
  void mostrarDetalles() {
    print('Arte Museo: $nombre ubicado en $ubicacion');
  }
}

class HistoriaMuseo extends Museo {
  HistoriaMuseo(String nombre, String ubicacion) : super(nombre, ubicacion);

  @override
  void mostrarDetalles() {
    print('Historia Museo: $nombre ubicado en $ubicacion');
  }
}

class ArteMuseoFactory extends MuseoFactory {
  @override
  Museo crearMuseo(String nombre, String ubicacion) {
    return ArteMuseo(nombre, ubicacion);
  }
}

class HistoriaMuseoFactory extends MuseoFactory {
  @override
  Museo crearMuseo(String nombre, String ubicacion) {
    return HistoriaMuseo(nombre, ubicacion);
  }
}

void main() {
  List<Museo> museos = [];

  MuseoFactory arteFactory = ArteMuseoFactory();
  MuseoFactory historiaFactory = HistoriaMuseoFactory();

  museos.add(arteFactory.crearMuseo('Museo de Arte Moderno', 'Ciudad de México'));
  museos.add(historiaFactory.crearMuseo('Museo Nacional de Historia', 'Chapultepec'));

  for (var museo in museos) {
    museo.mostrarDetalles();
  }
}
