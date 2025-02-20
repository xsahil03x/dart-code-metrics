import 'package:glob/glob.dart';
import 'package:meta/meta.dart';

import 'anti_patterns/models/pattern.dart';
import 'metrics/models/metric.dart';
import 'rules/models/rule.dart';

/// Represents converted lint config which contains parsed entities.

@immutable
class LintAnalysisConfig {
  final Iterable<Glob> globalExcludes;
  final Iterable<Rule> codeRules;
  final Iterable<Glob> rulesExcludes;
  final Iterable<Pattern> antiPatterns;
  final Iterable<Metric> classesMetrics;
  final Iterable<Metric> methodsMetrics;
  final Iterable<Glob> metricsExcludes;
  final Map<String, Object> metricsConfig;
  final String excludesRootFolder;

  const LintAnalysisConfig(
    this.globalExcludes,
    this.codeRules,
    this.rulesExcludes,
    this.antiPatterns,
    this.classesMetrics,
    this.methodsMetrics,
    this.metricsExcludes,
    this.metricsConfig,
    this.excludesRootFolder,
  );
}
