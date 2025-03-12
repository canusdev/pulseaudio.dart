import 'package:pulseaudio/pulseaudio.dart';
import 'package:pulseaudio/src/generated_bindings.dart';

void main() async {
  final client = PulseAudioClient();
  client.onServerInfoChanged.listen((event) {
    print(event);
  });
  client.onSinkChanged.listen((event) {
    print(event);
  });
  client.onSourceChanged.listen((event) {
    print(event);
  });
  await client.initialize();
  final serverInfo = await client.getServerInfo();

  print('Server Information:');
  print('Name: ${serverInfo.name}');
  print('Default Sink: ${serverInfo.defaultSinkName}');
  print('Default Source: ${serverInfo.defaultSourceName}');

  final inpuSinks = await client.getInputSinkList();
  print('\nAvailable Sinks:');
  for (var source in inpuSinks) {
    print('Sink Name: ${source.name} ${source.proplist["application.name"]}');
  }
  final sourceList = await client.getSourceList();
  print('\nAvailable Sources:');
  for (var source in sourceList) {
    print('Source Name: ${source.name}, Description: ${source.description}');
  }
  await client.propListUpdate(
      pa_update_mode.PA_UPDATE_SET, "application.name", "tester");
  final sinkList = await client.getSinkList();
  print('\nAvailable Sinks:');
  for (var sink in sinkList) {
    print('Sink Name: ${sink.name}, Description: ${sink.description}');
  }

  await client.setSinkVolume(serverInfo.defaultSinkName, 0.5);

  client.dispose();
}
