
import 'package:provider/provider.dart';

/**
 * Create List of SingleChildcloneablewidgets providerss
 */
List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumeableProviders
];

/**
 * Create List of classes/services which doesn't depend on any 
 * other service/provider
 */

List<SingleChildCloneableWidget> independentServices = [
  // Inject ServiceName Dependency
  // (ServiceName doesnt depends on any other class/service)

];

/**
 * Create List of providers/classes/services which depend on previously registered
 * providers
 */

List<SingleChildCloneableWidget> dependentServices = [

  // Inject this-service to this-service
 

];

/**
 * Create List of providers which will be consumed by UI
 * providers
 */

List<SingleChildCloneableWidget> uiConsumeableProviders = [];