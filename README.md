# BasicUI
Flutter UI组件和工具类封装，快速提升开发效率
# 使用方法
- 在pubspec.yaml引入依赖
```yaml
dependencies:
  peakmain_flutter: ^0.0.2
```
-  在文件头部引入：`import 'package:peakmain_flutter/peakmain_flutter.dart';'; // 组件库相关的，只需要引入这个文件，里面暴露td前缀所有需要的类`
# UI组件
## 价格标签
### 参数
| 参数名             | 参数说明           | 说明                          |
|--------------------|--------------------|-------------------------------|
| price              | 价格字符串         | 显示的价格，默认为空（如果为空，则默认 "0.00"） |
| color              | 字体颜色           | 价格字体的颜色，默认为 `Color(0xFFCF4444)`（红色） |
| symbolFontSize     | 人民币符号字号     | 人民币符号的字号，默认为 `9`   |
| integerFontSize    | 价格整数部分字号   | 价格整数部分的字号，默认为 `13` |
| decimalFontSize    | 价格小数部分字号   | 价格小数部分的字号，默认为 `10` |
| fontWeight         | 字体粗细           | 价格字体的粗细，默认为 `FontWeight.normal`（正常） |

### 示例代码
```dart
PriceWidget(price:' 199',),
```
# 工具列表
## 日志工具类
### 方法
| 方法名      | 参数                                       | 参数说明                                                                 | 说明                                                                                     |
|-------------|--------------------------------------------|--------------------------------------------------------------------------|-----------------------------------------------------------------------------------------|
| **v**       | `[String tag = "LogUtils", String msg = ""]` | - `tag`: 日志标签，默认为 `"LogUtils"`<br>- `msg`: 日志信息，默认为空字符串   | 输出 **Verbose** 级别日志，仅在调试模式（`kDebugMode` 为 `true`）下打印                     |
| **d**       | `[String tag = "LogUtils", String msg = ""]` | - `tag`: 日志标签，默认为 `"LogUtils"`<br>- `msg`: 日志信息，默认为空字符串   | 输出 **Debug** 级别日志，仅在调试模式（`kDebugMode` 为 `true`）下打印                      |
| **i**       | `[String tag = "LogUtils", String msg = ""]` | - `tag`: 日志标签，默认为 `"LogUtils"`<br>- `msg`: 日志信息，默认为空字符串   | 输出 **Info** 级别日志，仅在调试模式（`kDebugMode` 为 `true`）下打印                       |
| **w**       | `[String tag = "LogUtils", String msg = ""]` | - `tag`: 日志标签，默认为 `"LogUtils"`<br>- `msg`: 日志信息，默认为空字符串   | 输出 **Warn** 级别日志，仅在调试模式（`kDebugMode` 为 `true`）下打印                      |
| **e**       | `[String tag = "LogUtils", String msg = ""]` | - `tag`: 日志标签，默认为 `"LogUtils"`<br>- `msg`: 日志信息，默认为空字符串   | 输出 **Error** 级别日志，仅在调试模式（`kDebugMode` 为 `true`）下打印                     |
| **customPrint** | `String level, String tag, String msg`    | - `level`: 日志级别（如 `v/d/i/w/e`）<br>- `tag`: 日志标签<br>- `msg`: 日志信息 | 内部方法，根据日志级别和调试模式（`kDebugMode`）控制输出格式。外部不直接调用此方法。

### 示例代码
```dart
 LogUtils.v("测试");
```

## 屏幕工具类
### 方法
| 方法名              | 参数                   | 参数说明                                  | 说明                                      |
|---------------------|------------------------|-----------------------------------------|-------------------------------------------|
| **getScreenWidth**  | `BuildContext context` | `context`: 当前组件的上下文，用于访问媒体查询 | 获取屏幕的宽度（单位：逻辑像素）             |
| **getScreenHeight** | `BuildContext context` | `context`: 当前组件的上下文，用于访问媒体查询 | 获取屏幕的高度（单位：逻辑像素）             |

### 示例代码
```dart
   SizeUtils.getScreenHeight(context);
```
## 版本工具类
