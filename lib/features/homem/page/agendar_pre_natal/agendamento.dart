import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:pre_natal/core/either/src/either.dart';
import 'package:pre_natal/core/errors/failure.dart';
import 'package:pre_natal/core/ui/button_home/button_home.dart';
import 'package:pre_natal/core/ui/cache_storage.dart';
import 'package:pre_natal/core/ui/colors/colors.dart';
import 'package:pre_natal/core/ui/header/header.dart';
import 'package:pre_natal/features/home/pagina/home_page.dart';

class Agendamento extends StatefulWidget {
  const Agendamento(this.trimestre, {Key? key}) : super(key: key);

  final String trimestre;

  @override
  State<Agendamento> createState() => _AgendamentoState();
}

class _AgendamentoState extends State<Agendamento> {
  DateTime? _chosenDateTime;

  String dataAgendada = '';

  String get diaAgendado => DateFormat(DateFormat.YEAR_MONTH_DAY, 'pt_BR')
      .format(DateTime.parse(dataAgendada));

  String get horaAgendado => DateFormat(DateFormat.HOUR24_MINUTE, 'pt_BR')
      .format(DateTime.parse(dataAgendada));

  DateTime get date => DateTime.now();

  CacheStorage get cacheStorage => CacheStorage();

  @override
  void initState() {
    initializeDateFormatting('pt_BR');
    super.initState();
    agendamento();
  }

  void agendamento() {
    final Either<Failure, String> agendamentoEncontrado = cacheStorage.read(
      key: '${widget.trimestre}º',
    );
    if (agendamentoEncontrado.isRight) {
      dataAgendada = agendamentoEncontrado.right;
    }
  }

  Future<void> agendar() async {
    showDialog(
      context: context,
      builder: (context) => const CupertinoActivityIndicator(),
    );
    await cacheStorage.write(
      key: '${widget.trimestre}º',
      value: _chosenDateTime?.toString() ?? '',
    );
    dataAgendada = _chosenDateTime?.toString() ?? '';
    Navigator.pop(context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Header(
              title: 'Agenda',
              secondary: 'mento',
              hasSpacing: false,
            ),
            Expanded(
              child: Scrollbar(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: Text(
                            'Data de agendamento do pré-natal para o \n${widget.trimestre}º TRIMESTRE:',
                            style: TextStyle(
                              fontFamily: 'Adobe Hebrew',
                              fontSize: width * .040,
                              color: const Color(0xd9000000),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        if (dataAgendada.isNotEmpty) ...[
                          Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Text(
                              "$diaAgendado\nÀS $horaAgendado".toUpperCase(),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: width * .05,
                                color: Colors.black,
                                fontFamily: 'Adobe Hebrew',
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => setState(() => dataAgendada = ''),
                            child: Container(
                              alignment: Alignment.center,
                              width: width * .6,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                color: getBackground(TypeHeader.man),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  top: 8,
                                  bottom: 8,
                                  right: 32,
                                ),
                                child: Text(
                                  'REAGENDAR',
                                  style: TextStyle(
                                    fontSize: width * .04,
                                    color: const Color(0xffffffff),
                                    fontFamily: 'Adobe Hebrew',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ] else ...[
                          SizedBox(
                            height: 300,
                            child: CupertinoDatePicker(
                                initialDateTime: date,
                                minimumDate: DateTime(
                                  date.year,
                                  date.month,
                                  date.day,
                                  date.hour,
                                  date.minute,
                                ),
                                use24hFormat: true,
                                dateOrder: DatePickerDateOrder.dmy,
                                backgroundColor: const Color(0xffffffff),
                                onDateTimeChanged: (val) {
                                  setState(() {
                                    _chosenDateTime = val;
                                  });
                                }),
                          ),
                          GestureDetector(
                            onTap: agendar,
                            child: Container(
                              alignment: Alignment.center,
                              width: width * .6,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                color: getBackground(TypeHeader.man),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16,
                                  top: 8,
                                  bottom: 8,
                                  right: 32,
                                ),
                                child: Text(
                                  'Confirmar',
                                  style: TextStyle(
                                    fontSize: width * .04,
                                    color: const Color(0xffffffff),
                                    fontFamily: 'Adobe Hebrew',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  ButtonCircularHome(text: 'VOLTAR'),
                  ButtonCircularHome(text: 'INÍCIO', page: HomePage()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
