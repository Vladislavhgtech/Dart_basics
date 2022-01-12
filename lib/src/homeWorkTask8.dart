/*Создайте класс User, у которого есть поле email. Реализуйте два наследника 
данного класса AdminUser и GeneralUser. Реализуйте mixin над классом User, 
у которого будет метод getMailSystem, который возвращает значение из email, 
которое находится после @. Например, если email пользователя user@mail.ru, 
то данный метод вернёт mail.ru. Используйте данный миксин на AdminUser. 
Далее реализуйте класс UserManager<T extends User>, у которого будет 
храниться список пользователей и будут методы добавления или удаления их. 
Также в UserManager реализуйте метод, который выведет почту всех 
пользователей, однако если пользователь admin, будет выведено значение 
после @. Проверьте реализованные методы на практике.
*/

class User {
  String email;

  User(this.email);
  User.zero() : email = 'first@mail.ru';
}

class AdminUser extends User with GetMailSystem {
  AdminUser(String email) : super.zero();
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin GetMailSystem on User {
  String get getMailSystem => email.split("@")[1];
}

class UserManager<T extends User> {
  List<T> users = [];

  void add(T user) {
    this.users.add(user);
  }

  void remove(T user) {
    this.users.remove(user);
  }

  void getUsers<L extends AdminUser>() {
    this.users.forEach((element) {
      if (element.runtimeType == AdminUser) {
        AdminUser temp = element as AdminUser;
        print('${temp.getMailSystem}');
      } else {
        print('${element.email}');
      }
    });
  }
}
