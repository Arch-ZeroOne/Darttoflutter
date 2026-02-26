# 🚀 30-Day Flutter Roadmap: Build-First Approach

> **For developers who already know JavaScript, TypeScript, or Java.**
> Learn just enough Dart, then build real Flutter apps immediately.

---

[![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart)](https://dart.dev)
[![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter)](https://flutter.dev)
[![Commitment](https://img.shields.io/badge/Daily%20Time-2%20hours-green)]()
[![Approach](https://img.shields.io/badge/Method-Build--First-orange)]()

---

## 📌 Table of Contents

- [Philosophy: Why Build First?](#-philosophy-why-build-first)
- [What to Ignore (At First)](#-what-to-ignore-at-first)
- [Setup Checklist](#-setup-checklist)
- [Roadmap Overview](#-roadmap-overview)
- [Phase 1 – Just-Enough Dart (Days 1–5)](#-phase-1--just-enough-dart-days-15)
- [Phase 2 – Build Real Flutter Apps (Days 6–20)](#-phase-2--build-real-flutter-apps-days-620)
- [Phase 3 – Architecture & State Management (Days 21–30)](#-phase-3--architecture--state-management-days-2130)
- [Core Dart Code Examples](#-core-dart-code-examples)
- [Best Practices](#-best-practices)
- [Common Beginner Mistakes](#-common-beginner-mistakes)
- [Resources & Documentation](#-resources--documentation)
- [Beyond 30 Days](#-beyond-30-days)

---

## 🧠 Philosophy: Why Build First?

Most Dart/Flutter courses teach you Dart for weeks before you touch Flutter. This roadmap flips that model.

```
Traditional Approach:        This Roadmap:
────────────────────         ──────────────────────
Week 1: Dart syntax          Day 1-5: Just-enough Dart
Week 2: More Dart            Day 6: First Flutter app
Week 3: Dart advanced        Day 7+: Build. Learn. Repeat.
Week 4: Flutter intro        Day 30: Portfolio-ready app
```

**Why build-first is faster for JS/TS/Java developers:**

- You already understand variables, loops, functions, and OOP — Dart is not a new paradigm
- Context makes concepts stick: learning `async/await` while building a real API call is 3× faster than studying it in isolation
- Flutter's widget model is the hardest part — the earlier you face it, the more time you have to internalize it
- Motivation compounds: seeing your app run on a real device keeps you going

**The mental model shift you need:**

> In Flutter, _everything is a widget_. Your job as a developer is to compose widgets together. Dart is just the glue.

---

## 🚫 What to Ignore (At First)

Don't let these topics slow you down in the first 30 days. They matter later — not now.

| Topic                      | When to Learn It |
| -------------------------- | ---------------- |
| Isolates & concurrency     | Month 2+         |
| Advanced generics          | Month 2+         |
| Dart FFI                   | Month 3+         |
| `dart:mirrors`             | Maybe never      |
| Custom `RenderObject`      | Month 3+         |
| Complex animations         | Month 2          |
| Flutter internals / engine | Month 3+         |
| pub.dev package authoring  | Month 2+         |
| Dart `Zone`                | Month 3+         |

**What to deeply learn in 30 days instead:**

- Null safety (you will fight this daily)
- Named parameters (Flutter's entire API uses them)
- `async/await` + `Future` (every app needs network calls)
- `StatelessWidget` vs `StatefulWidget` (core mental model)
- `setState` (before any state management library)
- Navigation (every real app has multiple screens)
- `ListView`, `Column`, `Row`, `Stack`, `Scaffold` (your daily tools)

---

## ⚙️ Setup Checklist

Complete this before Day 1.

```bash
# 1. Install Flutter (includes Dart)
# Follow official guide: https://docs.flutter.dev/get-started/install

# 2. Verify installation
flutter doctor

# 3. Create your first project
flutter create my_first_app
cd my_first_app
flutter run

# 4. Recommended IDE
# VS Code + Flutter extension: https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter
# OR Android Studio with Flutter plugin

# 5. Enable a device
# - Android Emulator via Android Studio AVD Manager
# - OR connect a real Android/iOS device
# - OR use Chrome (flutter run -d chrome) for web
```

**Recommended VS Code Extensions:**

- `Dart` by Dart Code
- `Flutter` by Dart Code
- `Awesome Flutter Snippets`
- `Error Lens`

---

## 🗺 Roadmap Overview

```
Phase 1 (Days 1–5)          Phase 2 (Days 6–20)              Phase 3 (Days 21–30)
─────────────────           ──────────────────────           ────────────────────────
Just-Enough Dart            Build Real Flutter Apps          Architecture & State

Day 1: Variables +          Day 6:  Flutter project          Day 21: App architecture
       Null Safety                  structure                Day 22: Provider basics
Day 2: Functions +          Day 7:  Widgets deep dive        Day 23: Provider advanced
       Collections          Day 8:  Stateful Counter         Day 24: Riverpod intro
Day 3: Classes +            Day 9:  To-Do App (part 1)       Day 25: Riverpod patterns
       Constructors         Day 10: To-Do App (part 2)       Day 26: Local storage
Day 4: Async/Await +        Day 11: Navigation               Day 27: Clean architecture
       Futures              Day 12: Forms & input            Day 28: Portfolio app (start)
Day 5: JSON + Error         Day 13: REST API (part 1)        Day 29: Portfolio app (cont.)
       Handling             Day 14: REST API (part 2)        Day 30: Polish + deploy prep
                            Day 15: REST API app polish
                            Day 16: Lists & advanced UI
                            Day 17: Theming + dark mode
                            Day 18: Multi-screen app (1)
                            Day 19: Multi-screen app (2)
                            Day 20: Multi-screen polish
```

---

## 🟡 Phase 1 – Just-Enough Dart (Days 1–5)

> **Goal:** Get comfortable with Dart syntax in the context of Flutter, not in isolation. Use [DartPad](https://dartpad.dev) for all exercises this week.

---

### Day 1 — Variables, Types & Null Safety

**⏱ Time Breakdown:** 40 min theory → 60 min practice → 20 min review

**Why it matters for Flutter:**
Flutter's entire API is null-safe. If you don't understand `?`, `!`, and `??`, you will be confused by every widget signature you encounter.

**Learning Objectives:**

- [ ] Understand `var`, `final`, `const` — and which to use when
- [ ] Understand sound null safety: nullable (`?`) vs non-nullable types
- [ ] Use null-aware operators: `??`, `?.`, `??=`
- [ ] Read Flutter widget signatures without confusion

**Core Concepts:**

```dart
// ── Variables ──────────────────────────────────────────────
var name = 'Alice';          // inferred as String
String city = 'Manila';      // explicit type
final int year = 2025;       // set once at runtime
const double pi = 3.14159;   // compile-time constant

// From your JS/TS experience:
// var    ≈ let (with type inference)
// final  ≈ const in JS (runtime constant)
// const  ≈ Object.freeze at compile time (stricter)

// ── Null Safety ────────────────────────────────────────────
String name2 = 'Bob';     // NON-nullable — can NEVER be null
String? nickname;          // NULLABLE — can be null

// Null-aware operators
String display = nickname ?? 'No nickname';   // fallback if null
String? upper = nickname?.toUpperCase();      // safe method call
nickname ??= 'Default';                       // assign only if null

// The ! operator — use sparingly, means "I promise it's not null"
String forced = nickname!;  // throws if nickname is null

// ── Type comparison (JS/TS → Dart) ─────────────────────────
// TypeScript: string | null    → Dart: String?
// TypeScript: string           → Dart: String
// TypeScript: any              → Dart: dynamic (avoid this)
// TypeScript: unknown          → Dart: Object?
```

**Practice Tasks:**

1. Declare 5 variables of different types; try to reassign a `final` and observe the error
2. Create a nullable `String?` and use all three null-aware operators on it
3. Write a function `String describeUser(String name, String? bio)` that returns a formatted string, using `??` for the bio

**Mini Challenge:**

```dart
// Fix all compile errors in this snippet:
void main() {
  String? username;
  String greeting = 'Hello, ' + username;  // ❌
  int age = null;                           // ❌
  final score;                              // ❌
  score = 100;                              // ❌
  print(greeting);
}
```

**📚 References:**

- [Dart Variables](https://dart.dev/language/variables)
- [Understanding Null Safety](https://dart.dev/null-safety/understanding-null-safety)
- [Null Safety in Flutter](https://docs.flutter.dev/tools/flutter-fix)

---

### Day 2 — Functions & Collections

**⏱ Time Breakdown:** 35 min theory → 70 min practice → 15 min review

**Why it matters for Flutter:**
Flutter widgets are built with named parameters (`Widget({required this.title, this.color})`). Every callback is a function passed as a parameter. Collections power every list UI.

**Learning Objectives:**

- [ ] Write functions with positional, optional, and **named parameters**
- [ ] Understand arrow functions and anonymous functions
- [ ] Work with `List<T>`, `Map<K,V>`, and `Set<T>`
- [ ] Use `.map()`, `.where()`, `.toList()` — essential for rendering lists in Flutter

**Core Concepts:**

```dart
// ── Functions ──────────────────────────────────────────────

// Basic
int add(int a, int b) => a + b;   // arrow function

// Named parameters — THIS IS HOW FLUTTER WIDGETS WORK
void showDialog({
  required String title,     // required named
  String? message,           // optional named
  bool isDismissable = true, // named with default
}) {
  print('$title: ${message ?? "No message"}');
}

// Call it:
showDialog(title: 'Error', message: 'Something went wrong');
showDialog(title: 'Info'); // message is optional

// Anonymous function (callback)
var greet = (String name) => 'Hello, $name!';

// Function as parameter — used constantly in Flutter (onPressed, onChanged, etc.)
void runTwice(void Function() action) {
  action();
  action();
}
runTwice(() => print('Hello!'));

// ── Collections ────────────────────────────────────────────

// List
List<String> fruits = ['apple', 'banana', 'cherry'];
fruits.add('date');
fruits.remove('apple');
print(fruits.length);          // 3
print(fruits[0]);              // banana

// Transforming lists — critical for Flutter's widget lists
List<String> upper = fruits.map((f) => f.toUpperCase()).toList();
List<String> long  = fruits.where((f) => f.length > 5).toList();

// Map (key-value)
Map<String, int> scores = {'Alice': 95, 'Bob': 82};
scores['Carol'] = 91;
print(scores['Alice']);       // 95
print(scores['Unknown']);     // null — not an error!
print(scores.containsKey('Bob')); // true

// Collection if/for — unique to Dart, used heavily in Flutter widget trees
bool isLoggedIn = true;
List<String> menuItems = [
  'Home',
  'Profile',
  if (isLoggedIn) 'Logout',   // conditional item
  if (!isLoggedIn) 'Login',
  for (var i = 1; i <= 3; i++) 'Tab $i',  // generate items
];
print(menuItems); // [Home, Profile, Logout, Tab 1, Tab 2, Tab 3]
```

**Practice Tasks:**

1. Write `String formatUserCard({required String name, int? age, String role = 'User'})` and call it 3 ways
2. Given a list of numbers, chain `.where()`, `.map()`, and `.toList()` to get squared even numbers
3. Build a `Map<String, List<String>>` representing a menu with categories and items

**Mini Challenge:**

```dart
// Given this list of users, produce a formatted list of active user names
// Expected: ['ALICE', 'CAROL']

List<Map<String, dynamic>> users = [
  {'name': 'Alice', 'active': true},
  {'name': 'Bob',   'active': false},
  {'name': 'Carol', 'active': true},
];

// Write the one-liner using .where().map().toList()
```

**📚 References:**

- [Dart Functions](https://dart.dev/language/functions)
- [Dart Collections](https://dart.dev/language/collections)
- [Named Parameters](https://dart.dev/language/functions#named-parameters)

---

### Day 3 — Classes & Object-Oriented Dart

**⏱ Time Breakdown:** 45 min theory → 60 min practice → 15 min review

**Why it matters for Flutter:**
Every Flutter widget is a class. You'll subclass `StatelessWidget` and `StatefulWidget` on Day 6. Understanding `extends`, constructors, and `@override` is non-negotiable.

**Learning Objectives:**

- [ ] Write classes with typed fields and constructors
- [ ] Use named constructors and factory constructors
- [ ] Understand `extends` (inheritance) and `implements` (interfaces)
- [ ] Read and write Flutter-style widget class boilerplate

**Core Concepts:**

```dart
// ── Basic Class ─────────────────────────────────────────────
class User {
  final String name;   // immutable field
  final String email;
  int loginCount;      // mutable field

  // Constructor — shorthand with this.field
  User({
    required this.name,
    required this.email,
    this.loginCount = 0,
  });

  // Named constructor
  User.guest()
      : name = 'Guest',
        email = 'guest@example.com',
        loginCount = 0;

  // Factory constructor — control instance creation
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }

  // Method
  String greet() => 'Hello, $name!';

  // Getter
  bool get isGuest => name == 'Guest';

  // toString override
  @override
  String toString() => 'User($name, $email)';
}

// Usage
final user  = User(name: 'Alice', email: 'alice@dev.com');
final guest = User.guest();
final fromApi = User.fromJson({'name': 'Bob', 'email': 'bob@dev.com'});

print(user.greet());    // Hello, Alice!
print(guest.isGuest);   // true

// ── Inheritance — mirrors how Flutter works ─────────────────
abstract class Animal {
  String get name;
  void speak();  // abstract method — must override
}

class Dog extends Animal {
  @override
  String get name => 'Dog';

  @override
  void speak() => print('Woof!');
}

// ── This is exactly how Flutter widgets work ────────────────
// abstract class Widget { ... }
// class StatelessWidget extends Widget { Widget build(BuildContext ctx); }
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) => Text('Hello');
// }
```

**Practice Tasks:**

1. Create a `Product` class with `name`, `price`, `inStock` fields, a factory `Product.fromJson()`, and a `String get formattedPrice` getter
2. Create an abstract `Shape` class, then implement `Circle` and `Rectangle`
3. Write a class that mirrors the Flutter widget boilerplate — an abstract class with a `build()` method, then subclass it

**Mini Challenge:**

```dart
// Model a simple shopping cart:
// - CartItem(name, price, quantity)
// - ShoppingCart that holds List<CartItem>
// - ShoppingCart.totalPrice getter
// - ShoppingCart.addItem(), removeItem() methods
// Keep it under 40 lines.
```

**📚 References:**

- [Dart Classes](https://dart.dev/language/classes)
- [Constructors](https://dart.dev/language/constructors)
- [Extending a Class](https://dart.dev/language/extend)

---

### Day 4 — Async/Await & Futures

**⏱ Time Breakdown:** 50 min theory → 55 min practice → 15 min review

**Why it matters for Flutter:**
Network calls, file reads, database queries — all async. You will write `async/await` every single day in Flutter development. This is the most important Dart concept after null safety.

**Learning Objectives:**

- [ ] Understand `Future<T>` — a promise that a value will arrive later
- [ ] Write `async` functions and `await` their results
- [ ] Handle async errors with `try/catch`
- [ ] Run multiple futures in parallel with `Future.wait()`
- [ ] Understand why you can't use `await` outside an `async` function

**Core Concepts:**

```dart
import 'dart:async';

// ── Future basics ──────────────────────────────────────────
// Future<T> = Promise<T> in JavaScript — exact same concept

// A function that returns a Future
Future<String> fetchUsername(int id) async {
  await Future.delayed(Duration(seconds: 1)); // simulate network delay
  return 'User_$id';
}

// await it in another async function
Future<void> main() async {
  print('Fetching...');
  String name = await fetchUsername(42);
  print('Got: $name'); // Got: User_42
}

// ── Error handling in async ─────────────────────────────────
Future<String> fetchData(String url) async {
  await Future.delayed(Duration(milliseconds: 500));
  if (url.isEmpty) throw Exception('URL cannot be empty');
  return '{"data": "response from $url"}';
}

Future<void> loadData() async {
  try {
    final result = await fetchData('https://api.example.com/users');
    print(result);
  } catch (e) {
    print('Error: $e');
  } finally {
    print('Done'); // always runs
  }
}

// ── Parallel futures ────────────────────────────────────────
// Future.wait = Promise.all in JavaScript
Future<void> loadDashboard() async {
  final results = await Future.wait([
    fetchData('https://api.example.com/user'),
    fetchData('https://api.example.com/posts'),
    fetchData('https://api.example.com/notifications'),
  ]);
  // All 3 run at the same time — much faster than sequential awaits
  print('User: ${results[0]}');
  print('Posts: ${results[1]}');
  print('Notifications: ${results[2]}');
}

// ── FutureBuilder preview (you'll use this in Flutter) ──────
// FutureBuilder<String>(
//   future: fetchUsername(1),
//   builder: (context, snapshot) {
//     if (snapshot.connectionState == ConnectionState.waiting) {
//       return CircularProgressIndicator();
//     }
//     if (snapshot.hasError) return Text('Error!');
//     return Text(snapshot.data!);
//   },
// )
```

**Practice Tasks:**

1. Write 3 async functions simulating API calls; call them sequentially and time it, then use `Future.wait()` and time it — compare
2. Write `Future<User> login(String email, String password)` that throws an `Exception` if the password is too short
3. Write a retry wrapper: `Future<T> retry<T>(Future<T> Function() fn, int times)`

**Mini Challenge:**

```dart
// Simulate a loading sequence:
// 1. Show "Loading user..."
// 2. Fetch user (1s delay)
// 3. Show "Loading posts for {username}..."
// 4. Fetch posts (0.5s delay)
// 5. Show "Loaded {n} posts for {username}"
// Use async/await, not .then()
```

**📚 References:**

- [Async/Await Codelab](https://dart.dev/codelabs/async-await)
- [Future class API](https://api.dart.dev/stable/dart-async/Future-class.html)
- [FutureBuilder widget](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html)

---

### Day 5 — JSON Handling & Error Patterns

**⏱ Time Breakdown:** 40 min theory → 65 min practice → 15 min review

**Why it matters for Flutter:**
Every REST API returns JSON. You need to parse JSON into Dart objects and serialize Dart objects back to JSON. This is table stakes for any real app.

**Learning Objectives:**

- [ ] Decode JSON strings into Dart `Map<String, dynamic>`
- [ ] Encode Dart objects to JSON strings
- [ ] Write `fromJson` / `toJson` patterns (the Flutter industry standard)
- [ ] Handle malformed JSON gracefully

**Core Concepts:**

```dart
import 'dart:convert';

// ── JSON Decode (API response → Dart object) ────────────────
class Post {
  final int id;
  final String title;
  final String body;
  final int userId;

  Post({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
  });

  // fromJson factory — parse JSON map into a Post
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id:     json['id']     as int,
      title:  json['title']  as String,
      body:   json['body']   as String,
      userId: json['userId'] as int,
    );
  }

  // toJson — serialize back to map (for PUT/POST requests)
  Map<String, dynamic> toJson() => {
    'id':     id,
    'title':  title,
    'body':   body,
    'userId': userId,
  };

  @override
  String toString() => 'Post(id: $id, title: "$title")';
}

void main() {
  // Raw JSON string (as you'd receive from an API)
  const rawJson = '''
  {
    "id": 1,
    "title": "Hello Dart",
    "body": "Learning JSON handling",
    "userId": 42
  }
  ''';

  // Decode JSON string to Map
  final Map<String, dynamic> jsonMap = jsonDecode(rawJson);

  // Parse into typed object
  final post = Post.fromJson(jsonMap);
  print(post); // Post(id: 1, title: "Hello Dart")

  // Serialize back to JSON string
  final encoded = jsonEncode(post.toJson());
  print(encoded);

  // ── Parsing a JSON array ────────────────────────────────
  const rawList = '[{"id":1,"title":"A","body":"B","userId":1},'
                   '{"id":2,"title":"C","body":"D","userId":2}]';

  final List<dynamic> jsonList = jsonDecode(rawList);
  final posts = jsonList
      .map((item) => Post.fromJson(item as Map<String, dynamic>))
      .toList();

  print(posts.length); // 2
}
```

**Practice Tasks:**

1. Model a `Weather` class with `city`, `tempCelsius`, `description`, `humidity` — write `fromJson`/`toJson`
2. Write a `parseUsers(String jsonString) → List<User>` function with full error handling
3. Write a `tryParse<T>` wrapper that returns `null` instead of throwing on bad JSON

**📚 References:**

- [dart:convert library](https://api.dart.dev/stable/dart-convert/dart-convert-library.html)
- [JSON and serialization (Flutter)](https://docs.flutter.dev/data-and-backend/serialization/json)

---

## 🟠 Phase 2 – Build Real Flutter Apps (Days 6–20)

> **Goal:** Start building on Day 6. Learn new Dart/Flutter concepts only when your app needs them. Every concept has a purpose.

---

### Day 6 — Flutter Project Structure & Your First Widget

**⏱ Time Breakdown:** 30 min theory → 80 min building → 10 min review

**What You're Building:** Understand the default Flutter counter app, then rebuild it from scratch yourself.

**Learning Objectives:**

- [ ] Understand `pubspec.yaml`, `lib/`, `main.dart` structure
- [ ] Know the difference between `StatelessWidget` and `StatefulWidget`
- [ ] Write a widget class from scratch (without copy-paste)
- [ ] Understand `BuildContext` at a high level

**Flutter Project Structure:**

```
my_app/
├── lib/
│   └── main.dart          ← Your entry point
├── test/
│   └── widget_test.dart
├── pubspec.yaml           ← Dependencies (like package.json)
├── android/               ← Android-specific
├── ios/                   ← iOS-specific
└── web/                   ← Web-specific
```

**The Two Widget Types — Understand This Deeply:**

|                        | `StatelessWidget`             | `StatefulWidget`                       |
| ---------------------- | ----------------------------- | -------------------------------------- |
| **Has mutable state?** | No                            | Yes                                    |
| **Rebuilds when?**     | When parent rebuilds          | When `setState()` is called            |
| **Use for**            | Static UI, display-only       | Interactive UI, data that changes      |
| **Examples**           | `Text`, profile card, nav bar | Counter, form, toggle, list with items |

```dart
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// StatelessWidget — no internal state
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Roadmap',
      theme: ThemeData(colorSchemeSeed: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

// StatelessWidget — just displays data
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Day 6')),
      body: const Center(
        child: WelcomeCard(name: 'Flutter Dev'),
      ),
    );
  }
}

// Reusable stateless widget with a parameter
class WelcomeCard extends StatelessWidget {
  final String name;  // immutable input
  const WelcomeCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'Welcome, $name!',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }
}
```

**Practice Tasks:**

1. Delete `main.dart` and write it from memory using the pattern above
2. Build a `ProfileCard` widget that shows a name, title, and avatar placeholder
3. Make `ProfileCard` accept named parameters: `name`, `title`, `avatarUrl?`

**📚 References:**

- [Flutter Widget Introduction](https://docs.flutter.dev/ui/widgets-intro)
- [StatelessWidget class](https://api.flutter.dev/flutter/widgets/StatelessWidget-class.html)
- [StatefulWidget class](https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html)

---

### Day 7 — Core Widgets Deep Dive

**⏱ Time Breakdown:** 30 min theory → 80 min building → 10 min review

**What You're Building:** A static profile page using essential layout widgets.

**The Widgets You'll Use Every Day:**

```dart
// ── Layout ────────────────────────────────────────────────
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [Widget, Widget, Widget],
)

Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [Widget, Widget],
)

Stack(
  children: [
    BackgroundWidget(),
    Positioned(top: 20, left: 20, child: OverlayWidget()),
  ],
)

// ── Sizing & Spacing ──────────────────────────────────────
SizedBox(height: 16)          // spacing
SizedBox(width: 200, height: 100, child: Widget())  // fixed size
Expanded(child: Widget())     // fill available space
Flexible(child: Widget())     // share space proportionally

Padding(
  padding: EdgeInsets.all(16),             // all sides
  // OR: EdgeInsets.symmetric(horizontal: 24, vertical: 8)
  // OR: EdgeInsets.only(top: 8, bottom: 16)
  child: Widget(),
)

// ── Containers ────────────────────────────────────────────
Container(
  width: 200,
  height: 100,
  margin: EdgeInsets.all(8),
  padding: EdgeInsets.all(16),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(12),
    boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
  ),
  child: Text('Hello'),
)

// ── Common Widgets ─────────────────────────────────────────
Text('Hello', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
Icon(Icons.star, color: Colors.amber, size: 32)
Image.network('https://example.com/image.jpg')
Image.asset('assets/logo.png')
ElevatedButton(onPressed: () {}, child: Text('Press'))
TextButton(onPressed: () {}, child: Text('Press'))
IconButton(icon: Icon(Icons.add), onPressed: () {})
CircularProgressIndicator()
LinearProgressIndicator()
```

**Mini Project — Static Profile Page:**
Build a profile page with: avatar, name, bio, stats row (posts/followers/following), and an action button.

**📚 References:**

- [Widget Catalog](https://docs.flutter.dev/ui/widgets)
- [Layout in Flutter](https://docs.flutter.dev/ui/layout)
- [Flutter Layout Cheat Sheet](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)

---

### Day 8 — StatefulWidget & The Counter App (Modified)

**⏱ Time Breakdown:** 25 min theory → 80 min building → 15 min review

**What You're Building:** An enhanced counter app with multiple counters, color changes, and limits.

**Why this matters:** `setState` is the foundation. Before you can understand Provider, Riverpod, or Bloc, you must truly understand what `setState` does and why it has limitations.

```dart
class CounterPage extends StatefulWidget {
  final String title;
  const CounterPage({super.key, required this.title});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // State lives here — these variables trigger rebuilds when setState is called
  int _count = 0;
  final int _max = 10;
  Color _bgColor = Colors.white;

  void _increment() {
    if (_count >= _max) return; // guard
    setState(() {
      _count++;
      // setState forces Flutter to call build() again with new state
      _bgColor = Color.lerp(Colors.white, Colors.blue, _count / _max)!;
    });
  }

  void _decrement() {
    if (_count <= 0) return;
    setState(() {
      _count--;
      _bgColor = Color.lerp(Colors.white, Colors.blue, _count / _max)!;
    });
  }

  void _reset() => setState(() {
    _count = 0;
    _bgColor = Colors.white;
  });

  @override
  Widget build(BuildContext context) {
    // This entire method runs again every time setState is called
    return Scaffold(
      backgroundColor: _bgColor,
      appBar: AppBar(title: Text(widget.title)), // access widget props via widget.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$_count / $_max',
                style: Theme.of(context).textTheme.displayLarge),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: _decrement, child: const Icon(Icons.remove)),
                const SizedBox(width: 24),
                FloatingActionButton(
                    onPressed: _increment, child: const Icon(Icons.add)),
              ],
            ),
            TextButton(onPressed: _reset, child: const Text('Reset')),
          ],
        ),
      ),
    );
  }
}
```

**Extended Challenge:**

- Add a second counter for a different metric
- Add an animation when the count hits max
- Make the counter persist between hot reloads using `initState`

**📚 References:**

- [State management intro](https://docs.flutter.dev/data-and-backend/state-mgmt/intro)
- [setState](https://api.flutter.dev/flutter/widgets/State/setState.html)
- [Widget lifecycle](https://docs.flutter.dev/resources/inside-flutter)

---

### Day 9–10 — To-Do App (Local State)

**⏱ Time Breakdown (each day):** 20 min planning/review → 90 min building → 10 min review

**What You're Building:** A fully functional To-Do app with add, complete, delete, and filter.

**Concepts Learned:**

| Concept                       | Where You'll Use It      |
| ----------------------------- | ------------------------ |
| `StatefulWidget` + `setState` | Main app state           |
| `TextEditingController`       | Input field              |
| `ListView.builder`            | Efficient list rendering |
| `Dismissible`                 | Swipe to delete          |
| Custom model class            | `TodoItem` data model    |
| Collection `.where()`         | Filter todos             |

**Day 9 — Model + Add + Display:**

```dart
// models/todo_item.dart
class TodoItem {
  final String id;
  String title;
  bool isCompleted;
  final DateTime createdAt;

  TodoItem({
    required this.title,
    this.isCompleted = false,
  })  : id = DateTime.now().millisecondsSinceEpoch.toString(),
        createdAt = DateTime.now();
}

// screens/todo_screen.dart
class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final List<TodoItem> _todos = [];
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose(); // IMPORTANT: always dispose controllers
    super.dispose();
  }

  void _addTodo() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _todos.add(TodoItem(title: text));
      _controller.clear();
    });
  }

  void _toggleTodo(String id) {
    setState(() {
      final todo = _todos.firstWhere((t) => t.id == id);
      todo.isCompleted = !todo.isCompleted;
    });
  }

  void _deleteTodo(String id) {
    setState(() => _todos.removeWhere((t) => t.id == id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Todos')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Add a task...',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (_) => _addTodo(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(onPressed: _addTodo, child: const Text('Add')),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _todos.length,
              itemBuilder: (context, index) {
                final todo = _todos[index];
                return _TodoTile(
                  todo: todo,
                  onToggle: () => _toggleTodo(todo.id),
                  onDelete: () => _deleteTodo(todo.id),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
```

**Day 10 — Filter + Polish:**
Add filter tabs (All / Active / Completed), swipe-to-delete with `Dismissible`, and a completion count badge in the AppBar.

**📚 References:**

- [ListView.builder](https://api.flutter.dev/flutter/widgets/ListView/ListView.builder.html)
- [TextEditingController](https://api.flutter.dev/flutter/widgets/TextEditingController-class.html)
- [Dismissible widget](https://api.flutter.dev/flutter/widgets/Dismissible-class.html)

---

### Day 11 — Navigation & Routing

**⏱ Time Breakdown:** 35 min theory → 70 min building → 15 min review

**What You're Building:** Add a Detail screen to the Todo app. Navigate to it when tapping a todo. Pass data between screens.

```dart
// ── Basic Navigation ──────────────────────────────────────

// Push a new screen
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => DetailScreen(todo: todo)),
);

// Push and replace (login → home)
Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => HomeScreen()),
);

// Pop back to previous screen
Navigator.pop(context);

// Pop and return a result
Navigator.pop(context, 'deleted'); // caller receives 'deleted'

// Await the result from a pushed screen
final result = await Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => EditScreen(todo: todo)),
);
if (result == 'saved') {
  // refresh state
}

// ── Named Routes (better for larger apps) ────────────────
MaterialApp(
  initialRoute: '/',
  routes: {
    '/':        (context) => HomeScreen(),
    '/detail':  (context) => DetailScreen(),
    '/settings':(context) => SettingsScreen(),
  },
)

// Navigate using named route
Navigator.pushNamed(context, '/detail', arguments: todo);

// Receive argument in detail screen
final todo = ModalRoute.of(context)!.settings.arguments as TodoItem;
```

**Practice Tasks:**

1. Add a `TodoDetailScreen` — display full todo info with edit/delete buttons
2. Navigate to it from the todo list with a tap
3. Return a deletion result back to the list screen and show a snackbar

**📚 References:**

- [Navigation and routing](https://docs.flutter.dev/ui/navigation)
- [Navigator class](https://api.flutter.dev/flutter/widgets/Navigator-class.html)
- [Go Router (modern alternative)](https://pub.dev/packages/go_router)

---

### Day 12 — Forms & User Input

**⏱ Time Breakdown:** 35 min theory → 75 min building → 10 min review

**What You're Building:** An Add/Edit Todo form with validation.

```dart
class TodoFormScreen extends StatefulWidget {
  final TodoItem? existingTodo; // null = create, non-null = edit
  const TodoFormScreen({super.key, this.existingTodo});

  @override
  State<TodoFormScreen> createState() => _TodoFormScreenState();
}

class _TodoFormScreenState extends State<TodoFormScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _titleController;
  late final TextEditingController _notesController;

  @override
  void initState() {
    super.initState();
    // Pre-fill if editing
    _titleController = TextEditingController(text: widget.existingTodo?.title);
    _notesController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _notesController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final title = _titleController.text.trim();
      Navigator.pop(context, title); // return new title to caller
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.existingTodo == null ? 'New Todo' : 'Edit Todo'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title *',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Title is required';
                  }
                  if (value.length < 3) return 'Too short (min 3 chars)';
                  return null; // null = valid
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _notesController,
                decoration: const InputDecoration(
                  labelText: 'Notes (optional)',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _submit,
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

**📚 References:**

- [Forms in Flutter](https://docs.flutter.dev/cookbook/forms/validation)
- [TextFormField](https://api.flutter.dev/flutter/material/TextFormField-class.html)

---

### Day 13–15 — REST API App

**⏱ Time Breakdown (each day):** 20 min → 85 min building → 15 min review

**What You're Building:** A Posts browser app using the JSONPlaceholder API.

**Concepts Learned:**

| Concept            | Implementation                 |
| ------------------ | ------------------------------ |
| HTTP requests      | `http` package                 |
| JSON parsing       | `fromJson` factory pattern     |
| `FutureBuilder`    | Show loading/error/data states |
| `ListView.builder` | Efficient post list            |
| Error handling     | Network errors, parse errors   |
| Pull-to-refresh    | `RefreshIndicator`             |

**Day 13 — HTTP Setup + Fetch:**

```yaml
# pubspec.yaml — add this dependency
dependencies:
  http: ^1.1.0
```

```dart
// services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/post.dart';

class ApiService {
  static const String _baseUrl = 'https://jsonplaceholder.typicode.com';

  // Fetch all posts
  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse('$_baseUrl/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      return data.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts: ${response.statusCode}');
    }
  }

  // Fetch single post
  Future<Post> fetchPost(int id) async {
    final response = await http.get(Uri.parse('$_baseUrl/posts/$id'));
    if (response.statusCode == 200) {
      return Post.fromJson(jsonDecode(response.body));
    }
    throw Exception('Post not found');
  }
}
```

**Day 14 — FutureBuilder + Full UI:**

```dart
// screens/posts_screen.dart
class PostsScreen extends StatefulWidget {
  const PostsScreen({super.key});

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final ApiService _api = ApiService();
  late Future<List<Post>> _postsFuture;

  @override
  void initState() {
    super.initState();
    _postsFuture = _api.fetchPosts();
  }

  Future<void> _refresh() async {
    setState(() {
      _postsFuture = _api.fetchPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Posts')),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: FutureBuilder<List<Post>>(
          future: _postsFuture,
          builder: (context, snapshot) {
            // 3 states you must always handle:
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.hasError) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.error_outline, size: 64, color: Colors.red),
                    Text('Error: ${snapshot.error}'),
                    ElevatedButton(onPressed: _refresh, child: const Text('Retry')),
                  ],
                ),
              );
            }

            final posts = snapshot.data!;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return ListTile(
                  leading: CircleAvatar(child: Text('${post.id}')),
                  title: Text(post.title, maxLines: 1, overflow: TextOverflow.ellipsis),
                  subtitle: Text(post.body, maxLines: 2, overflow: TextOverflow.ellipsis),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => PostDetailScreen(postId: post.id)),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
```

**Day 15 — Search + Favorite + Polish:**
Add a search bar that filters posts client-side. Add a favorite toggle with `setState`. Polish the UI with cards and proper spacing.

**📚 References:**

- [http package](https://pub.dev/packages/http)
- [Fetching data from the internet](https://docs.flutter.dev/cookbook/networking/fetch-data)
- [FutureBuilder](https://api.flutter.dev/flutter/widgets/FutureBuilder-class.html)
- [JSONPlaceholder API](https://jsonplaceholder.typicode.com)

---

### Day 16 — Lists, Scroll Views & Advanced UI

**⏱ Time Breakdown:** 25 min theory → 80 min building → 15 min review

**What You're Building:** An enhanced UI for the Posts app with cards, sections, and scroll behavior.

```dart
// ── ListView variants ─────────────────────────────────────

// Efficient — only builds visible items (ALWAYS use for dynamic lists)
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) => ItemWidget(item: items[index]),
)

// For a known, small set of children
ListView(
  children: [Widget1(), Widget2(), Widget3()],
)

// Horizontal list
ListView.builder(
  scrollDirection: Axis.horizontal,
  itemCount: items.length,
  itemBuilder: (context, index) => HorizontalCard(item: items[index]),
)

// Grid
GridView.builder(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    crossAxisSpacing: 8,
    mainAxisSpacing: 8,
    childAspectRatio: 1.5,
  ),
  itemCount: items.length,
  itemBuilder: (context, index) => GridCard(item: items[index]),
)

// ── Scrollable mixed content (most flexible) ──────────────
CustomScrollView(
  slivers: [
    SliverAppBar(
      expandedHeight: 200,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(title: Text('My App')),
    ),
    SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ItemTile(item: items[index]),
        childCount: items.length,
      ),
    ),
  ],
)
```

**📚 References:**

- [Lists cookbook](https://docs.flutter.dev/cookbook/lists/basic-list)
- [GridView](https://api.flutter.dev/flutter/widgets/GridView-class.html)
- [CustomScrollView](https://api.flutter.dev/flutter/widgets/CustomScrollView-class.html)

---

### Day 17 — Theming & Dark Mode

**⏱ Time Breakdown:** 30 min theory → 70 min building → 20 min review

**What You're Building:** Add full light/dark theming support to your Posts app.

```dart
// main.dart — full theme setup
MaterialApp(
  theme: ThemeData(
    colorSchemeSeed: Colors.indigo,
    brightness: Brightness.light,
    useMaterial3: true,
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(fontSize: 16, height: 1.5),
    ),
  ),
  darkTheme: ThemeData(
    colorSchemeSeed: Colors.indigo,
    brightness: Brightness.dark,
    useMaterial3: true,
  ),
  themeMode: ThemeMode.system, // follow device setting
  // OR: ThemeMode.light / ThemeMode.dark
)

// Access theme anywhere in widget tree
Widget build(BuildContext context) {
  final theme = Theme.of(context);
  final colorScheme = theme.colorScheme;

  return Container(
    color: colorScheme.surface,
    child: Text(
      'Hello',
      style: theme.textTheme.headlineMedium?.copyWith(
        color: colorScheme.primary,
      ),
    ),
  );
}
```

**📚 References:**

- [Themes cookbook](https://docs.flutter.dev/cookbook/design/themes)
- [Material 3 in Flutter](https://docs.flutter.dev/ui/design/material)
- [ThemeData class](https://api.flutter.dev/flutter/material/ThemeData-class.html)

---

### Day 18–20 — Multi-Screen App with Bottom Navigation

**⏱ Time Breakdown (each day):** 15 min planning → 90 min building → 15 min review

**What You're Building:** A multi-tab app with Home, Search, Favorites, and Profile screens. Combines everything from Days 6–17.

**App Architecture:**

```
lib/
├── main.dart
├── models/
│   ├── post.dart
│   └── user.dart
├── services/
│   └── api_service.dart
├── screens/
│   ├── main_shell.dart      ← Bottom nav shell
│   ├── home/
│   │   └── home_screen.dart
│   ├── search/
│   │   └── search_screen.dart
│   ├── favorites/
│   │   └── favorites_screen.dart
│   └── profile/
│       └── profile_screen.dart
└── widgets/
    ├── post_card.dart
    └── error_view.dart
```

```dart
// screens/main_shell.dart
class MainShell extends StatefulWidget {
  const MainShell({super.key});

  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        // IndexedStack keeps all screens alive — tabs don't reset
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorites'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
```

**Day 18:** Set up navigation shell + Home and Profile screens
**Day 19:** Search with debounce + Favorites screen with shared state
**Day 20:** Polish UI, add loading states, error handling, empty states

**📚 References:**

- [NavigationBar](https://api.flutter.dev/flutter/material/NavigationBar-class.html)
- [IndexedStack](https://api.flutter.dev/flutter/widgets/IndexedStack-class.html)

---

## 🔴 Phase 3 – Architecture & State Management (Days 21–30)

> **Goal:** Graduate from `setState` to real-world state management. Understand _why_ architecture matters and build a portfolio-ready app.

---

### Day 21 — Why setState Breaks Down + App Architecture

**⏱ Time Breakdown:** 50 min theory → 50 min refactoring → 20 min review

**The Problem with setState:**

```
Problem 1: Prop Drilling
  GrandParent (holds state)
    └── Parent (passes it down)
          └── Child (passes it down)
                └── DeepChild (finally uses it!)
  → Every widget in the chain must accept and pass the prop

Problem 2: Shared State
  Screen A changes a favorite list
  Screen B needs to see the updated favorite list
  With setState, they can't share state without a common ancestor

Problem 3: Logic in widgets
  Your _TodoScreenState has API calls, filtering, sorting, business logic...
  This makes it hard to test and hard to maintain
```

**The Separation of Concerns Principle:**

```
Widget:     "How does this look?"        → UI only
ViewModel:  "What data should I show?"  → State + Logic
Service:    "Where does data come from?" → API, DB, Storage
Model:      "What shape is the data?"   → Plain Dart classes
```

**Refactor Exercise:** Take your Todo app from Day 9–10 and extract all business logic into a `TodoViewModel` class. Your `TodoScreen` should only call methods — it should contain zero business logic.

**📚 References:**

- [State management options](https://docs.flutter.dev/data-and-backend/state-mgmt/options)
- [App architecture guide](https://docs.flutter.dev/app-architecture/guide)

---

### Day 22–23 — Provider State Management

**⏱ Time Breakdown (each day):** 30 min theory → 75 min building → 15 min review

**What You're Building:** Refactor the Todo app to use Provider.

```yaml
# pubspec.yaml
dependencies:
  provider: ^6.1.1
```

```dart
// viewmodels/todo_view_model.dart
import 'package:flutter/foundation.dart';
import '../models/todo_item.dart';

class TodoViewModel extends ChangeNotifier {
  final List<TodoItem> _todos = [];
  String _filter = 'all'; // 'all', 'active', 'completed'

  // Computed properties — UI reads these
  List<TodoItem> get todos => _filteredTodos;
  String get filter => _filter;
  int get completedCount => _todos.where((t) => t.isCompleted).length;

  List<TodoItem> get _filteredTodos {
    return switch (_filter) {
      'active'    => _todos.where((t) => !t.isCompleted).toList(),
      'completed' => _todos.where((t) => t.isCompleted).toList(),
      _           => List.from(_todos),
    };
  }

  // Actions — UI calls these
  void addTodo(String title) {
    _todos.add(TodoItem(title: title));
    notifyListeners(); // tell all listening widgets to rebuild
  }

  void toggleTodo(String id) {
    final todo = _todos.firstWhere((t) => t.id == id);
    todo.isCompleted = !todo.isCompleted;
    notifyListeners();
  }

  void deleteTodo(String id) {
    _todos.removeWhere((t) => t.id == id);
    notifyListeners();
  }

  void setFilter(String filter) {
    _filter = filter;
    notifyListeners();
  }
}

// main.dart — provide the ViewModel
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TodoViewModel(),
      child: const MyApp(),
    ),
  );
}

// screens/todo_screen.dart — consume it
class TodoScreen extends StatelessWidget { // Now StateLESS!
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Watch — rebuilds this widget when ViewModel calls notifyListeners()
    final vm = context.watch<TodoViewModel>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Todos (${vm.completedCount} done)'),
      ),
      body: ListView.builder(
        itemCount: vm.todos.length,
        itemBuilder: (context, index) {
          final todo = vm.todos[index];
          return ListTile(
            title: Text(todo.title),
            leading: Checkbox(
              value: todo.isCompleted,
              // read — doesn't cause rebuild (use for events)
              onChanged: (_) => context.read<TodoViewModel>().toggleTodo(todo.id),
            ),
          );
        },
      ),
    );
  }
}
```

**Day 22:** Implement Provider with Todo app
**Day 23:** Add multiple providers + `MultiProvider` + `ProxyProvider`

**📚 References:**

- [Provider package](https://pub.dev/packages/provider)
- [Simple app state management](https://docs.flutter.dev/data-and-backend/state-mgmt/simple)
- [Provider README](https://github.com/rrousselGit/provider)

---

### Day 24–25 — Riverpod (Modern Alternative)

**⏱ Time Breakdown (each day):** 35 min theory → 70 min building → 15 min review

**What You're Building:** Port the Todo app to Riverpod. Understand why Riverpod solves Provider's limitations.

```yaml
dependencies:
  flutter_riverpod: ^2.4.9
```

```dart
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Define a provider — lives outside any class
final todoListProvider = StateNotifierProvider<TodoNotifier, List<TodoItem>>(
  (ref) => TodoNotifier(),
);

// The notifier — like ViewModel but Riverpod-style
class TodoNotifier extends StateNotifier<List<TodoItem>> {
  TodoNotifier() : super([]); // initial state = empty list

  void add(String title) {
    state = [...state, TodoItem(title: title)]; // immutable update
  }

  void toggle(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        return TodoItem(title: todo.title)..isCompleted = !todo.isCompleted;
      }
      return todo;
    }).toList();
  }

  void remove(String id) {
    state = state.where((t) => t.id != id).toList();
  }
}

// Derived provider — computed value
final completedCountProvider = Provider<int>((ref) {
  final todos = ref.watch(todoListProvider);
  return todos.where((t) => t.isCompleted).length;
});

// main.dart
void main() {
  runApp(
    const ProviderScope( // Riverpod's version of Provider wrapper
      child: MyApp(),
    ),
  );
}

// Widget — use ConsumerWidget instead of StatelessWidget
class TodoScreen extends ConsumerWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos    = ref.watch(todoListProvider);       // watch for changes
    final completed = ref.watch(completedCountProvider);
    final notifier = ref.read(todoListProvider.notifier); // for actions

    return Scaffold(
      appBar: AppBar(title: Text('Todos ($completed done)')),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(todos[index].title),
          onTap: () => notifier.toggle(todos[index].id),
        ),
      ),
    );
  }
}
```

**📚 References:**

- [Riverpod documentation](https://riverpod.dev/docs/introduction/getting_started)
- [Why Riverpod?](https://riverpod.dev/docs/introduction/why_riverpod)

---

### Day 26 — Local Storage with SharedPreferences & Hive

**⏱ Time Breakdown:** 35 min theory → 70 min building → 15 min review

**What You're Building:** Persist todos across app restarts.

```yaml
dependencies:
  shared_preferences: ^2.2.2 # for simple key-value (settings, prefs)
  hive_flutter: ^1.1.0 # for structured data (todos, user data)
```

```dart
// ── SharedPreferences — for settings and simple flags ─────
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  Future<void> setDarkMode(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('dark_mode', isDark);
  }

  Future<bool> isDarkMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('dark_mode') ?? false; // default false
  }
}

// ── persist todos with JSON in SharedPreferences ──────────
class TodoStorage {
  static const _key = 'todos';

  Future<void> saveTodos(List<TodoItem> todos) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = todos.map((t) => jsonEncode(t.toJson())).toList();
    await prefs.setStringList(_key, jsonList);
  }

  Future<List<TodoItem>> loadTodos() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonList = prefs.getStringList(_key) ?? [];
    return jsonList
        .map((s) => TodoItem.fromJson(jsonDecode(s)))
        .toList();
  }
}
```

**📚 References:**

- [shared_preferences](https://pub.dev/packages/shared_preferences)
- [hive_flutter](https://pub.dev/packages/hive_flutter)
- [Store key-value data](https://docs.flutter.dev/cookbook/persistence/key-value)

---

### Day 27 — Clean Architecture Principles

**⏱ Time Breakdown:** 50 min theory → 50 min refactoring → 20 min review

**Recommended Project Structure for Real Apps:**

```
lib/
├── core/
│   ├── errors/
│   │   └── app_exception.dart
│   ├── utils/
│   │   └── date_formatter.dart
│   └── constants/
│       └── api_constants.dart
│
├── data/
│   ├── models/
│   │   └── post_model.dart       ← JSON-aware models
│   └── services/
│       └── api_service.dart      ← HTTP calls
│
├── domain/
│   ├── entities/
│   │   └── post.dart             ← Pure Dart, no dependencies
│   └── repositories/
│       └── post_repository.dart  ← Abstract interface
│
├── presentation/
│   ├── providers/               ← Riverpod providers
│   ├── screens/
│   └── widgets/
│
└── main.dart
```

**Key Principles:**

1. **Depend inward** — outer layers know about inner layers, not vice versa
2. **Models ≠ Entities** — API models (with `fromJson`) are separate from business entities
3. **Repositories** — abstract interfaces between data and business logic; makes testing easy
4. **One responsibility** — each file has one clear job

**When to introduce this structure:**

- Simple app (< 5 screens): basic `models/`, `screens/`, `services/` is fine
- Medium app (5–15 screens): add `widgets/`, `providers/`
- Large app (15+ screens, team): full clean architecture above

**📚 References:**

- [Flutter app architecture](https://docs.flutter.dev/app-architecture)
- [Very Good Ventures Architecture](https://verygood.ventures/blog/very-good-flutter-architecture)

---

### Day 28–30 — Portfolio App: Weather Dashboard

**⏱ Time Breakdown:** Day 28: Planning + Setup → Day 29: Core Features → Day 30: Polish + Deploy Prep

**What You're Building:**
A polished weather app using a real API — portfolio-ready, shareable on GitHub.

**Feature Spec:**

| Feature                 | Flutter Concept                             |
| ----------------------- | ------------------------------------------- |
| Current weather display | `FutureBuilder`, `http`                     |
| 5-day forecast          | `ListView.builder`, custom cards            |
| Search by city          | `TextField`, debounce                       |
| Save favorite cities    | `SharedPreferences` + `Riverpod`            |
| Light/dark mode toggle  | `ThemeData`, `ThemeMode`                    |
| Pull-to-refresh         | `RefreshIndicator`                          |
| Error states            | Custom error widget                         |
| Loading skeleton        | `ShimmerEffect` or `Container` placeholders |

**API:** [OpenWeatherMap Free API](https://openweathermap.org/api) — free tier is sufficient

**Final Folder Structure:**

```
weather_app/
├── lib/
│   ├── core/
│   │   └── constants/api_constants.dart
│   ├── data/
│   │   ├── models/weather_model.dart
│   │   └── services/weather_service.dart
│   ├── presentation/
│   │   ├── providers/weather_provider.dart
│   │   ├── screens/
│   │   │   ├── home_screen.dart
│   │   │   └── search_screen.dart
│   │   └── widgets/
│   │       ├── weather_card.dart
│   │       ├── forecast_tile.dart
│   │       └── error_view.dart
│   └── main.dart
└── pubspec.yaml
```

**Day 30 Deploy Checklist:**

- [ ] App runs without errors on both light and dark mode
- [ ] All error states handled gracefully
- [ ] No hardcoded strings (use constants)
- [ ] `flutter analyze` shows no warnings
- [ ] README with screenshots on GitHub
- [ ] Add to your portfolio

**📚 References:**

- [Build and release Android app](https://docs.flutter.dev/deployment/android)
- [Build and release iOS app](https://docs.flutter.dev/deployment/ios)

---

## 💻 Core Dart Code Examples

> Beginner-to-intermediate progression reference

### Variables & Null Safety

```dart
// Beginner
String name = 'Alice';
int age = 30;

// Intermediate
String? nickname; // nullable
final String id = generateId(); // runtime constant
const double tax = 0.12;       // compile-time constant

// Null operators
String display = nickname ?? 'No nickname';
int? length = nickname?.length;
String safe = nickname!; // only use when certain it's not null
```

### Functions

```dart
// Beginner
String greet(String name) {
  return 'Hello, $name!';
}

// Intermediate — named params, defaults, callbacks
void showSnackbar({
  required BuildContext context,
  required String message,
  Duration duration = const Duration(seconds: 2),
  VoidCallback? onDismiss,
}) {
  // implementation
}

// Arrow + higher-order
List<T> filterList<T>(List<T> items, bool Function(T) predicate) =>
    items.where(predicate).toList();
```

### Classes & Constructors

```dart
// Beginner
class Point {
  double x;
  double y;
  Point(this.x, this.y);
}

// Intermediate
class ApiResponse<T> {
  final T? data;
  final String? error;
  final bool isSuccess;

  const ApiResponse.success(this.data)
      : error = null,
        isSuccess = true;

  const ApiResponse.failure(this.error)
      : data = null,
        isSuccess = false;

  factory ApiResponse.fromResult(T Function() compute) {
    try {
      return ApiResponse.success(compute());
    } catch (e) {
      return ApiResponse.failure(e.toString());
    }
  }
}
```

### Async/Await & Future

```dart
// Beginner
Future<String> getName() async {
  await Future.delayed(Duration(seconds: 1));
  return 'Alice';
}

// Intermediate — error handling + parallel
Future<UserDashboard> loadDashboard(String userId) async {
  try {
    final [user, posts, notifications] = await Future.wait([
      fetchUser(userId),
      fetchPosts(userId),
      fetchNotifications(userId),
    ]);
    return UserDashboard(user: user, posts: posts, notifications: notifications);
  } on NetworkException catch (e) {
    throw DashboardException('Network error: ${e.message}');
  }
}
```

### Collections

```dart
// Beginner
List<String> names = ['Alice', 'Bob'];
names.add('Carol');

// Intermediate — transforms + collection if/for
final activeUserNames = users
    .where((u) => u.isActive)
    .map((u) => u.name.toUpperCase())
    .toList();

// Flutter widget list with collection if/for
List<Widget> buildMenuItems(bool isAdmin) => [
  MenuItem(label: 'Home'),
  MenuItem(label: 'Profile'),
  if (isAdmin) ...[
    MenuItem(label: 'Admin Panel'),
    MenuItem(label: 'User Management'),
  ],
];
```

---

## ✅ Best Practices

### Clean Code in Dart

```dart
// ✅ Use final by default
final user = User(name: 'Alice');

// ✅ Prefer named parameters for 2+ params
createUser(name: 'Alice', email: 'alice@dev.com');
// ❌ Not: createUser('Alice', 'alice@dev.com');

// ✅ Use meaningful names
List<User> activeUsers = ...;
// ❌ Not: List<User> data = ...;

// ✅ Keep build() methods clean — extract sub-widgets
Widget build(BuildContext context) {
  return Scaffold(
    body: _buildBody(),
    bottomNavigationBar: _buildNavBar(),
  );
}

// ✅ Never put business logic in widgets
// In ViewModel:
void submitForm() { ... }
// In Widget:
ElevatedButton(onPressed: vm.submitForm, ...)
```

### Widget Best Practices

| Rule                     | Bad                         | Good                          |
| ------------------------ | --------------------------- | ----------------------------- |
| Extract widgets          | One massive `build()`       | Composable sub-widgets        |
| Use `const` constructors | `Text('Hello')`             | `const Text('Hello')`         |
| Dispose controllers      | Forget `dispose()`          | Always `dispose()` in `State` |
| Avoid deep nesting       | 10 levels of Padding/Column | Extract into named widgets    |
| Key your lists           | `ListView.builder(...)`     | Use `key: ValueKey(item.id)`  |

### StatelessWidget vs StatefulWidget

```
Use StatelessWidget when:
  ✓ The widget only displays data passed to it
  ✓ It has no timers, animations, or controllers
  ✓ Nothing inside it changes after it's built
  Examples: ProductCard, UserAvatar, SectionHeader

Use StatefulWidget when:
  ✓ The widget has internal changing state
  ✓ It has TextEditingController, AnimationController, etc.
  ✓ It uses initState/dispose lifecycle methods
  Examples: CounterPage, LoginForm, AnimatedButton

Use ViewModel/Provider/Riverpod when:
  ✓ State needs to be shared between multiple screens
  ✓ State needs to survive navigation
  ✓ Business logic is growing complex
```

### When to Introduce State Management

```
Day 1–7:    setState only — learn the fundamentals
Day 8–20:   setState for local state, lift state for shared state
Day 21+:    Provider or Riverpod — when lifting state gets painful
Month 2+:   Bloc/Cubit — for large teams or complex event flows
```

---

## 🚨 Common Beginner Mistakes

| Mistake                            | Fix                                                                     |
| ---------------------------------- | ----------------------------------------------------------------------- |
| Forgetting `async` keyword         | A function using `await` MUST be `async`                                |
| Not handling null (`!` overuse)    | Use `??` and `?.` instead; only use `!` when certain                    |
| Putting `await` in `build()`       | Use `FutureBuilder` or load in `initState`                              |
| Forgetting `dispose()`             | Always dispose `TextEditingController`, `AnimationController`           |
| Calling `setState` after `dispose` | Check `mounted` before async setState                                   |
| One giant widget file              | Split into reusable widget files early                                  |
| `var` everywhere                   | Use explicit types in class fields; `var` is fine in function bodies    |
| `dynamic` instead of generics      | `List<dynamic>` → `List<String>`; `Map<String, dynamic>` is OK for JSON |
| Not using `const`                  | Add `const` to widgets and constructors that never change               |
| Blocking the main thread           | Long computations go in `Isolate` or `compute()`                        |

**The `mounted` check — critical for async setState:**

```dart
Future<void> _loadData() async {
  final data = await api.fetchData();

  if (!mounted) return; // widget might be disposed by now
  setState(() => _data = data);
}
```

---

## 📚 Resources & Documentation

### Official Docs (Bookmark These)

| Resource               | URL                                                                                                        |
| ---------------------- | ---------------------------------------------------------------------------------------------------------- |
| Dart language tour     | [dart.dev/language](https://dart.dev/language)                                                             |
| Dart null safety       | [dart.dev/null-safety](https://dart.dev/null-safety)                                                       |
| Flutter widget catalog | [docs.flutter.dev/ui/widgets](https://docs.flutter.dev/ui/widgets)                                         |
| Flutter cookbook       | [docs.flutter.dev/cookbook](https://docs.flutter.dev/cookbook)                                             |
| Flutter layout guide   | [docs.flutter.dev/ui/layout](https://docs.flutter.dev/ui/layout)                                           |
| State management       | [docs.flutter.dev/data-and-backend/state-mgmt](https://docs.flutter.dev/data-and-backend/state-mgmt/intro) |
| App architecture       | [docs.flutter.dev/app-architecture](https://docs.flutter.dev/app-architecture)                             |
| Effective Dart         | [dart.dev/effective-dart](https://dart.dev/effective-dart)                                                 |
| pub.dev packages       | [pub.dev](https://pub.dev)                                                                                 |

### Essential Packages to Know

| Package                | Purpose          | Link                                                                                   |
| ---------------------- | ---------------- | -------------------------------------------------------------------------------------- |
| `http`                 | HTTP requests    | [pub.dev/packages/http](https://pub.dev/packages/http)                                 |
| `provider`             | State management | [pub.dev/packages/provider](https://pub.dev/packages/provider)                         |
| `flutter_riverpod`     | Advanced state   | [pub.dev/packages/flutter_riverpod](https://pub.dev/packages/flutter_riverpod)         |
| `go_router`            | Navigation       | [pub.dev/packages/go_router](https://pub.dev/packages/go_router)                       |
| `shared_preferences`   | Local storage    | [pub.dev/packages/shared_preferences](https://pub.dev/packages/shared_preferences)     |
| `hive_flutter`         | Local DB         | [pub.dev/packages/hive_flutter](https://pub.dev/packages/hive_flutter)                 |
| `cached_network_image` | Image caching    | [pub.dev/packages/cached_network_image](https://pub.dev/packages/cached_network_image) |
| `intl`                 | Formatting       | [pub.dev/packages/intl](https://pub.dev/packages/intl)                                 |
| `equatable`            | Value equality   | [pub.dev/packages/equatable](https://pub.dev/packages/equatable)                       |

---

## 🚀 Beyond 30 Days

You've completed the roadmap. Here's what to tackle next:

### Month 2: Deepen & Specialize

- **Testing:** Unit tests, widget tests, integration tests → [Flutter testing docs](https://docs.flutter.dev/testing)
- **Animations:** `AnimatedContainer`, `Hero`, `AnimationController`, `Lottie`
- **Firebase:** Auth, Firestore, Cloud Functions → [FlutterFire](https://firebase.flutter.dev)
- **Bloc/Cubit:** Enterprise-grade state management → [bloclibrary.dev](https://bloclibrary.dev)
- **SQLite:** Local relational DB with `sqflite` or `drift`

### Month 3: Production & Platform

- **Flavors:** Dev/staging/prod environments
- **CI/CD:** GitHub Actions for automated builds
- **Platform channels:** Call native iOS/Android code from Dart
- **Performance profiling:** Flutter DevTools
- **App Store deployment:** Code signing, release builds

### Staying Current

- Follow the [Flutter blog](https://medium.com/flutter) — major releases every 3 months
- Watch [Flutter YouTube channel](https://www.youtube.com/@flutterdev)
- Join [Flutter Community Discord](https://discord.gg/flutter)
- Study open-source Flutter apps on GitHub

---

## 📊 Progress Tracker

Use this to track your daily progress:

```
Phase 1 – Just-Enough Dart
[ ] Day 1  – Variables & Null Safety
[ ] Day 2  – Functions & Collections
[ ] Day 3  – Classes & Constructors
[ ] Day 4  – Async/Await & Futures
[ ] Day 5  – JSON & Error Handling

Phase 2 – Build Real Apps
[ ] Day 6  – First Flutter App
[ ] Day 7  – Core Widgets
[ ] Day 8  – StatefulWidget Counter
[ ] Day 9  – Todo App Part 1
[ ] Day 10 – Todo App Part 2
[ ] Day 11 – Navigation
[ ] Day 12 – Forms & Validation
[ ] Day 13 – REST API Part 1
[ ] Day 14 – REST API Part 2
[ ] Day 15 – API App Polish
[ ] Day 16 – Lists & Scroll Views
[ ] Day 17 – Theming & Dark Mode
[ ] Day 18 – Multi-Screen App Part 1
[ ] Day 19 – Multi-Screen App Part 2
[ ] Day 20 – Multi-Screen Polish

Phase 3 – Architecture & State
[ ] Day 21 – Architecture Patterns
[ ] Day 22 – Provider Part 1
[ ] Day 23 – Provider Part 2
[ ] Day 24 – Riverpod Part 1
[ ] Day 25 – Riverpod Part 2
[ ] Day 26 – Local Storage
[ ] Day 27 – Clean Architecture
[ ] Day 28 – Portfolio App Start
[ ] Day 29 – Portfolio App Core
[ ] Day 30 – Polish & Deploy Prep
```

---

> **Remember:** Every senior Flutter developer googles widget properties daily. The goal isn't memorization — it's building a mental model of how Flutter thinks, so you can find what you need quickly and know what to search for.
>
> Build something. Break it. Fix it. That's the loop.

---

_Built for developers who know JS/TS/Java and want to ship Flutter apps fast._
