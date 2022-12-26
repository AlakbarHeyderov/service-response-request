enum NetworkPath { SETTINGS, LOGIN, SUPPORT}

extension StringPathValue on NetworkPath {
   String get rawValue {
     switch (this) {
     case NetworkPath.HOME:
     return 'settings';
     break;
         
     case NetworkPath.LOGIN:
     return 'login';
     break;
     
     case NetworkPath.SUPPORT:
     return 'support';
     break;
    }
  }
}
