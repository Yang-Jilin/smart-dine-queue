import { Home } from './Home';
import { Mine } from './Mine';
import { MyQueue } from './MyQueue';

@Entry
@Component
struct Index {
  pathStack: NavPathStack = new NavPathStack();

  build() {
    Navigation(this.pathStack) {
      Tabs() {
        TabContent() {
          Home()
        }
        .tabBar('首页')
        TabContent() {
          MyQueue()
        }
        .tabBar('我的排队')
        TabContent() {
          Mine()
        }
        .tabBar('个人中心')
      }
      .barPosition(BarPosition.End)
    }
    .mode(NavigationMode.Auto)
    .title('香满园餐厅')
    .titleMode(NavigationTitleMode.Full)
  }
}