class GridBoxModel {
  final String imageUrl;
  final int crossAxisCellCount;
  final int mainAxisCellCount;

  GridBoxModel({
    required this.imageUrl,
    required this.crossAxisCellCount,
    required this.mainAxisCellCount,
  });

  static final List<GridBoxModel> items = [
    GridBoxModel(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/ba33/f986/012c3a4528111744eeedd93dd859e6bf?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RexJPzlWWxAWnIJBHi5VCci9tVa0~p8~ynyY7EX4O7Gf8OdLicS~tueOYq~67FVpkSaHaE-xqwRkQAiROt4TuQi8XJzJThmsObJSocuEat3RrS9~p6HDxDwrXecACXjzDbtkBggnjf59SAM~jmsFUwO~CTl7sWVZLa39FfLnqrKAF~qpOhkaLIxrbyIPBf4UIxpv0mr9WgDwh~cjotOjM-SYOJy-cjRVVX0TTN8F0gaPK7sy0jtXvaDe8nGgBqglik510BbGQlBzSTTA~9SIW4eI06wjabFy7a78hhplzpqAMkfaJ7WJYhWFBH41pDegGPoZe9TRY3ilFjG3D9aJrw__',
      crossAxisCellCount: 4,
      mainAxisCellCount: 2,
    ),
    GridBoxModel(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/3292/60b4/4c13dba8ce3414c4758a753a5e4d40bb?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EtVoVXMN4-SQKHPp5uezcO1k212wd6q~onIhXzMSjhOpcWF0FRS2t1u1cQgH0O6XUis3JL79RRpTeoiw1Yw2KQq3ZDFdjT6~jVvZaCG1fOdEVKVC2NngNvLsQpfHKvE9VcZnWLvGBWYwD3EewEmG6oyVmI-RLvfX8M58tb9S0enfM3GBDi~6cOATgXjlMCVExdRSU6ihlpe59XMOVj6qf7kI3-umbmhJy~xGSLDw15eviIpqGi7Ru3xrO-6amgsXNT-dFT-9cPam8Jv4TIh8neQPWSj3yYL~0gjp5pW~VsdHDOkiTqiMr6~LBYufS3D-tApJ8ZU1XhD3nsoWNiWweg__',
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
    ),
    GridBoxModel(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/faab/5b68/81d4492f93d25d65254698d7b54924a9?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FdEEFWyYCtV--3xn5WiiySMWt6bIMJj8X39ig9gzbNiePIlSgG59ZSMWCNypy2DP5L1k8Znp7S6oSZ4ZeWt39R6gyYnAW2Ko7N6NlJSxoDCXRl3SYlkm5xl2kj275LpmNefqJEC~vGiGPH5y3WhJ43S1FjL1ViF~hsjf3Lsq~MqRIPn7fCMufsyck94tx-WQPNw8O9m5hmo9IWY7VznYbs8yqBrZetcnY-S1iSdy2Kx7S0AV2d3I86vUsbVKb8SMuQ3i1x4O-XLLcqhnCoRrZLVuBg~o5jgTyedcpimfiU9E8PfP7eKwhVGkufywxfjCcTh314ZBZwbN~UFZEc95sQ__',
      crossAxisCellCount: 2,
      mainAxisCellCount: 4,
    ),
    GridBoxModel(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/3292/60b4/4c13dba8ce3414c4758a753a5e4d40bb?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=EtVoVXMN4-SQKHPp5uezcO1k212wd6q~onIhXzMSjhOpcWF0FRS2t1u1cQgH0O6XUis3JL79RRpTeoiw1Yw2KQq3ZDFdjT6~jVvZaCG1fOdEVKVC2NngNvLsQpfHKvE9VcZnWLvGBWYwD3EewEmG6oyVmI-RLvfX8M58tb9S0enfM3GBDi~6cOATgXjlMCVExdRSU6ihlpe59XMOVj6qf7kI3-umbmhJy~xGSLDw15eviIpqGi7Ru3xrO-6amgsXNT-dFT-9cPam8Jv4TIh8neQPWSj3yYL~0gjp5pW~VsdHDOkiTqiMr6~LBYufS3D-tApJ8ZU1XhD3nsoWNiWweg__',
      crossAxisCellCount: 2,
      mainAxisCellCount: 2,
    ),
    GridBoxModel(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/ca72/1ce1/f2b83a4436a169b8c3e3f69f039bb853?Expires=1723420800&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=YlcugdhpGLWZY2F42mX4vNzrOuhSoSJQZmlnJ8lV5gGPxx~muVqedWWiM11ufmhJvYdH4teulCWTuhykJJ7G7JyeUM0uGhKnOZQI7WahDbsIFWzKf~G4S~HsaE0l6zlfjO2tpkHJaEao6phOCQhHNj4tP1LS2Pjs8su-FUe-rosnJ-4cSXwX~hEjPxxFwI-tDLfh20kxokPboL5UvXkV08pwLhIHeVenEYa2G9BgHwmLeyN7SRDy9E-Khj6E16cMK4ZVL0f7FN8v5ES8TICSBsHFQgzwrZOZER5HeflscE2L-ekeoy~RkEXMP6yw5KhJzTFvb0wXlNM7tpnV~anPBA__',
      crossAxisCellCount: 4,
      mainAxisCellCount: 2,
    ),
  ];
}
