import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sofomo/core/di/di.dart';
import 'package:sofomo/features/repository_details/data/models/repository_details.dart';
import 'package:sofomo/features/repository_details/presentation/notifiers/repository_details_notifier.dart';

enum Tabs {
  pulls(Icons.upload, 'Pull Requests'),
  issues(Icons.error, 'Issues');

  const Tabs(this.icon, this.label);
  final IconData icon;
  final String label;
}

class RepositoryDetailsPage extends StatefulWidget {
  const RepositoryDetailsPage({
    required this.login,
    required this.repositoryName,
    super.key,
  });

  final String login;
  final String repositoryName;

  static const name = 'details';
  static const path = '/details/:login/:repositoryName';

  @override
  State<RepositoryDetailsPage> createState() => _RepositoryDetailsPageState();
}

class _RepositoryDetailsPageState extends State<RepositoryDetailsPage> {
  late final RepositoryDetailsNotifier notifier;
  final navigationState = ValueNotifier(Tabs.pulls);

  @override
  void initState() {
    super.initState();
    notifier = injector<RepositoryDetailsNotifier>()
      ..initialize(
        widget.login,
        widget.repositoryName,
      );
  }

  @override
  void dispose() {
    notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return ValueListenableBuilder(
      valueListenable: navigationState,
      builder: (context, value, child) => Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          onTap: (value) => navigationState.value = Tabs.values[value],
          currentIndex: navigationState.value.index,
          items: Tabs.values
              .map(
                (e) => BottomNavigationBarItem(
                  icon: Icon(e.icon),
                  label: e.label,
                ),
              )
              .toList(),
        ),
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: notifier,
            builder: (_, value, __) {
              return value.when(
                loading: () => const Center(
                  child: SizedBox.square(
                    dimension: 24,
                    child: CircularProgressIndicator(),
                  ),
                ),
                error: () => Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text('An error occured while fetching data.'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          notifier.initialize(
                            widget.login,
                            widget.repositoryName,
                          );
                        },
                        child: const Text('Try Again'),
                      ),
                    ],
                  ),
                ),
                data: (details) => Column(
                  children: [
                    Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: IconButton(
                            iconSize: 36,
                            onPressed: () => context.pop(),
                            icon: const Icon(Icons.close),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  details.name,
                                  style: theme.displaySmall,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  '${details.size} bytes',
                                  style: theme.bodyMedium,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  details.description,
                                  style: theme.bodyLarge,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (navigationState.value == Tabs.pulls)
                      _ArtifactList(
                        key: ObjectKey(details.pulls),
                        tab: navigationState.value,
                        artifacts: details.pulls?.cast(),
                      )
                    else
                      _ArtifactList(
                        key: ObjectKey(details.issues),
                        tab: navigationState.value,
                        artifacts: details.issues?.cast(),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class _ArtifactList extends StatelessWidget {
  const _ArtifactList({
    required this.artifacts,
    required this.tab,
    super.key,
  });

  final List<IRepoArtifact>? artifacts;
  final Tabs tab;

  String get _tab => tab == Tabs.issues ? 'issues' : 'pull requests';

  @override
  Widget build(BuildContext context) {
    if (artifacts == null) {
      return Expanded(
        child: Center(
          child: Text(
            'Could not fetch $_tab data. Try again later.',
          ),
        ),
      );
    }

    final theme = Theme.of(context).textTheme;

    return Expanded(
      child: ListView.builder(
        itemCount: artifacts!.length,
        itemBuilder: (context, index) {
          final issue = artifacts![index];

          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '#${issue.number}: ${issue.title}',
                    style: theme.bodyLarge,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    issue.url,
                    style: theme.bodySmall,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
