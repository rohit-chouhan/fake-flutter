import 'dart:math';

class FakeScience {
  static final Random _random = Random();

  static const List<String> _elements = [
    'Hydrogen', 'Helium', 'Lithium', 'Beryllium', 'Boron', 'Carbon', 'Nitrogen', 'Oxygen',
    'Fluorine', 'Neon', 'Sodium', 'Magnesium', 'Aluminum', 'Silicon', 'Phosphorus', 'Sulfur',
    'Chlorine', 'Argon', 'Potassium', 'Calcium', 'Iron', 'Copper', 'Zinc', 'Silver', 'Gold'
  ];

  static const List<String> _compounds = [
    'Water', 'Carbon Dioxide', 'Salt', 'Sugar', 'Acetic Acid', 'Ammonia', 'Methane',
    'Ethanol', 'Acetone', 'Benzene', 'Sulfuric Acid', 'Hydrochloric Acid', 'Sodium Hydroxide'
  ];

  static const List<String> _units = [
    'meter', 'kilogram', 'second', 'ampere', 'kelvin', 'mole', 'candela', 'radian',
    'steradian', 'hertz', 'newton', 'pascal', 'joule', 'watt', 'coulomb', 'volt',
    'farad', 'ohm', 'siemens', 'weber', 'tesla', 'henry', 'degree Celsius', 'lumen'
  ];

  static const List<String> _measurements = [
    'length', 'mass', 'time', 'electric current', 'temperature', 'amount of substance',
    'luminous intensity', 'plane angle', 'solid angle', 'frequency', 'force', 'pressure',
    'energy', 'power', 'electric charge', 'electric potential', 'capacitance', 'resistance',
    'electrical conductance', 'magnetic flux', 'magnetic flux density', 'inductance',
    'luminous flux', 'illuminance', 'radioactivity', 'absorbed dose', 'dose equivalent'
  ];

  static const List<String> _scientists = [
    'Albert Einstein', 'Isaac Newton', 'Charles Darwin', 'Marie Curie', 'Nikola Tesla',
    'Galileo Galilei', 'Stephen Hawking', 'Richard Feynman', 'Neil deGrasse Tyson',
    'Carl Sagan', 'Michio Kaku', 'Brian Cox'
  ];

  static const List<String> _theories = [
    'Theory of Relativity', 'Quantum Mechanics', 'Evolution by Natural Selection',
    'Big Bang Theory', 'String Theory', 'Chaos Theory', 'Game Theory', 'Information Theory'
  ];

  static String element() {
    return _elements[_random.nextInt(_elements.length)];
  }

  static String compound() {
    return _compounds[_random.nextInt(_compounds.length)];
  }

  static String unit() {
    return _units[_random.nextInt(_units.length)];
  }

  static String measurement() {
    return _measurements[_random.nextInt(_measurements.length)];
  }

  static String scientist() {
    return _scientists[_random.nextInt(_scientists.length)];
  }

  static String scientificTheory() {
    return _theories[_random.nextInt(_theories.length)];
  }

  static String chemicalFormula() {
    final formulas = ['H2O', 'CO2', 'NaCl', 'C6H12O6', 'CH4', 'C2H5OH', 'NH3', 'H2SO4'];
    return formulas[_random.nextInt(formulas.length)];
  }

  static double atomicNumber() {
    return (_random.nextInt(118) + 1).toDouble(); // 1-118
  }

  static double atomicMass() {
    return 1 + _random.nextDouble() * 300; // 1-301
  }

  static String phaseOfMatter() {
    return ['Solid', 'Liquid', 'Gas', 'Plasma'][_random.nextInt(4)];
  }

  static String particle() {
    final particles = ['Electron', 'Proton', 'Neutron', 'Photon', 'Quark', 'Lepton', 'Boson'];
    return particles[_random.nextInt(particles.length)];
  }

  static String galaxyType() {
    return ['Spiral', 'Elliptical', 'Irregular', 'Lenticular'][_random.nextInt(4)];
  }

  static String planetType() {
    return ['Terrestrial', 'Gas Giant', 'Ice Giant', 'Dwarf Planet'][_random.nextInt(4)];
  }

  static double lightYears() {
    return _random.nextDouble() * 100000; // 0-100k light years
  }

  static String dnaSequence() {
    const bases = 'ATCG';
    final buffer = StringBuffer();
    for (var i = 0; i < 20; i++) {
      buffer.write(bases[_random.nextInt(bases.length)]);
    }
    return buffer.toString();
  }

  static String aminoAcid() {
    final acids = ['Alanine', 'Arginine', 'Asparagine', 'Aspartic Acid', 'Cysteine',
                   'Glutamine', 'Glutamic Acid', 'Glycine', 'Histidine', 'Isoleucine'];
    return acids[_random.nextInt(acids.length)];
  }

  static String researchField() {
    final fields = ['Physics', 'Chemistry', 'Biology', 'Computer Science', 'Mathematics',
                    'Engineering', 'Medicine', 'Psychology', 'Geology', 'Astronomy'];
    return fields[_random.nextInt(fields.length)];
  }

  static String laboratoryEquipment() {
    final equipment = ['Microscope', 'Telescope', 'Spectrometer', 'Chromatograph',
                       'Centrifuge', 'Oscilloscope', 'Calorimeter', 'pH Meter'];
    return equipment[_random.nextInt(equipment.length)];
  }

  static double temperatureKelvin() {
    return 0 + _random.nextDouble() * 10000; // 0-10000 K
  }

  static double pressure() {
    return _random.nextDouble() * 1000000; // 0-1 MPa
  }

  static String isotope() {
    final elements = ['Carbon-14', 'Uranium-235', 'Hydrogen-3', 'Oxygen-18', 'Nitrogen-15'];
    return elements[_random.nextInt(elements.length)];
  }
}