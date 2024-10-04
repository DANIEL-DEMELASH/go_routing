import 'package:go_router/go_router.dart';
// import 'package:go_routing/presentation/pages/product_detail.dart';

// import '../presentation/pages/bottom_nav_page.dart';
import '../presentation/pages/error_screen.dart';
import '../presentation/pages/home_page.dart';
import '../presentation/pages/product_detail.dart';
import '../presentation/pages/products_page.dart';

class RouteConfig {
  static GoRouter returnRouter(){
    GoRouter router = GoRouter(
      initialLocation: '/',
      routes: [
         GoRoute(
          path: '/',
          name: 'Home',
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
              path: 'products',
              name: 'products',
              builder: (context, state) => const ProductsPage(),
              routes: [
                GoRoute(
                  path: 'details/:id',
                  name: 'product_detail',
                  builder: (context, state) {
                     final id = state.pathParameters['id'];
                     final category = state.uri.queryParameters['category'];
                     return ProductDetail(id: id!, category: category);
                  }
                ),
                
              ],
              
            ),
            
          ],
          
        ),
        
        
        // StatefulShellRoute.indexedStack(
        //   builder: (context, state, navigationShell) => BottomNavPage(navigationShell: navigationShell),
        //   branches: [
        //     StatefulShellBranch(
        //       routes: [
        //         GoRoute(
        //           path: '/',
        //           builder: (context, state) => const HomePage(),
        //         ),
        //       ]
        //     ),
        //     StatefulShellBranch(
        //       routes: [
        //         GoRoute(
        //           path: '/products',
        //           builder: (context, state) => const ProductsPage(),
        //         ),
        //       ]
        //     ),
        //     StatefulShellBranch(
        //       routes: [
        //         GoRoute(
        //           path: '/',
        //           builder: (context, state) => const HomePage(),
        //         ),
        //       ]
        //     ),
        //   ]
        // ),
      ],
      errorBuilder: (context, state) {
        return ErrorScreen(error: state.error.toString());
      },
    );
    
    return router;
  }
}