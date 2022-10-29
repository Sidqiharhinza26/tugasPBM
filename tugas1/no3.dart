void main() {
  List<String> menu = ['Nasi Goreng', 'Mie Goreng', 'Bihun Goreng', 'Kwetiaw Goreng'];
  Map<String, dynamic> harga = {
    menu[0]: 'Rp.12000',
    menu[1]: 'Rp.12000',
    menu[2]: 'Rp.13000',
    menu[3]: 'Rp.15000',
  };
  Set<String> setMenu = {menu[0], menu[1], menu[2], menu[3]};

  print('Sidqih memesan ' + menu[3] + ' dengan harga ' + harga[menu[3]] + '\n');
  print('--Menu Nasi Goreng Dua Janda--');
  print(setMenu);
}