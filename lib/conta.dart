import 'package:flutter/material.dart';
 
void main() => runApp(const Conta());
 
class Conta extends StatelessWidget {
  const Conta({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Conta",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward_ios_outlined,
                      color: Color(0xffc5c5c5))),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          //Container que possui o saldo da conta
          Container(
            child: Text(
              "R\$ 100.000",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //Esse conteiner possui a lista de icones : Área Pix, Pagamentos, QRCode, Transferir
          //Nele text, column, row etc...
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: Column(children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll<Size>(
                                Size.fromRadius(30))),
                        onPressed: () {},
                        icon: Icon( Icons.pix,
                        color: Color(0xff191919),
                        )),
                    Text("Pix", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ]),
                ),
                Container(
                  child: Column(children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll<Size>(
                                Size.fromRadius(30))),
                        //Deixa o botão clicavel
                        onPressed: () {},
                        icon: Icon(Icons.money,
                          color: Color(0xff191919),
                        )),
                    Text("Pagar", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ]),
                ),
                Container(
                  child: Column(children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll<Size>(
                                Size.fromRadius(30))),
                        onPressed: () {},
                        icon: Icon(Icons.qr_code,
                          color: Color(0xff191919),
                        )),
                    Text("QRcode", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ]),
                ),
                Container(
                  child: Column(children: [
                    IconButton.filledTonal(
                        style: ButtonStyle(
                            fixedSize: MaterialStatePropertyAll<Size>(
                                Size.fromRadius(30))),
                        onPressed: () {},
                        icon: Icon(Icons.attach_money,
                          color: Color(0xff191919),
                        )),
                    Text("Transferir", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //Área que possui um card "meus cartões" e "Planejamento"
          Container(
            child: Column(
              children: [
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  color: Color(0xffececec),
                  elevation: 0,
                  child: ListTile(
                    contentPadding: EdgeInsets.all(15),
                    leading: Icon(Icons.payment_outlined),
                    title: Text('Meus Cartões', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(
                height: 30,
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  color: Color(0xffececec),
                  elevation: 0,
                  child: ListTile(
                    title: Text('Guarde seu dinheiro em caixinhas', style: TextStyle(color: Color(0xFF8A05BE), fontWeight: FontWeight.bold),),
                    subtitle: Text('Acessando a áres de planejamento'),
                  ),
                ),
              ],
            ),
          ),
          //Os Divider possuem um padding no top e botton
          Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
          child:      
          Divider(
            height: 1,
          ),
          ),
          //Área de cartão de Crédito, ela possui vários Texts, um ElevatedButton e um IconButton
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Cartão de Crédito',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color(0xffc5c5c5),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                height: 10,
                ),
                Text(
                  'Fatura Fechada',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'R\$2.123,39',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Vencimento dia 15',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child:
                      Text('Renegociar', style: TextStyle(color: Colors.black, fontSize: 18)),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xFF8A05BE))),
                )
              ],
            ),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
          child:      
          Divider(
            height: 1,
          ),
          ),
          //Esse container é bem simples possui apenas texto e icon
          Container(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Empréstimo',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xffc5c5c5),
                    ),
                  ),
                ],
              ),
              Text(
                'Tudo certo! Você está em dia',
                style: TextStyle(fontSize: 18, color: Color(0xffb5b5b5)),
              ),
            ]),
          ),
          Padding(padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
          child:      
          Divider(
            height: 1,
          ),
          ),
          //Esse container possui um Text usado como titulo da área, um card e dentro do card há imagem, testo e um botão
          Container(
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Descubra Mais',
                  style: TextStyle(fontSize: 24),),
                  Card(
            elevation: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 150.0,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage('images/SeguroVida.PNG'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding:EdgeInsetsDirectional.symmetric(vertical: 5, horizontal: 0)),
                      Text(
                        'Seguro de Vida',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Cuide bem de quem você ama de um jeito simples',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding:EdgeInsets.fromLTRB(0, 5, 0, 10)),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: <Widget>[
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF8A05BE) ,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      onPressed: () {
                      },
                      child:
                      Text('Conhecer',
                          style: TextStyle(color: Colors.black)),
                    ),
                  ],
                ),
              ],
            ),
          )
                ],
              )
          ),
        ]);
  }
}