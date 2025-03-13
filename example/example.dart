import 'package:pulseaudio/pulseaudio.dart';

Future<void> waiter() async {
  while (true) {}
}

void main() async {
  final client = PulseAudioClient();
  client.onServerInfoChanged.listen((event) {
    print(event);
  });
  client.onStreamData.listen((onData) {
    print("ondata $onData");
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
    print(
        'Sink Name: ${source.name} ${source.proplist["application.name"]} ${source.index}');
  }
  final sourceList = await client.getSourceList();
  print('\nAvailable Sources:');
  for (var source in sourceList) {
    print('Source Name: ${source.name}, Description: ${source.description}');
  }

  final sinkList = await client.getSinkList();
  print('\nAvailable Sinks:');
  for (var sink in sinkList) {
    print('Sink Name: ${sink.name}, Description: ${sink.description}');
  }

  await client.setSinkVolume(serverInfo.defaultSinkName, 0.5);

  await client.createStreamCallback("357", "357");
  client.dispose();
}
