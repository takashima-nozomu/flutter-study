import 'package:flutter/material.dart';

const BORDERSIDE_1_SOLID_BLACK =  BorderSide(
                        color: Colors.black,
                        width: 1,
                      );

const BORDER_1_SOLID_BLACK = BoxDecoration(
                    border: Border(
                      top: BORDERSIDE_1_SOLID_BLACK,
                      right: BORDERSIDE_1_SOLID_BLACK,
                      bottom: BORDERSIDE_1_SOLID_BLACK,
                      left: BORDERSIDE_1_SOLID_BLACK,
                    ),
                  );
