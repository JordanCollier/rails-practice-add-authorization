## Add Authorization

### Setup

Create a branch for your work.

```
bundle
bundle exec rake db:setup
git checkout -b sage-scribe
rails s
```

### Stories

Your challenges, should you choose to accept them:

**Redirecting to login**

```
[√]When a non-logged-in user visits /clubs
Or visits /students
Then they should be redirected to the login page
```

**Blocking access**

```
[√]When a logged in user tries to see a club
And they don't participate in that club
Then they should see the public/403 page
And the http status should be 403
```

**Writing Controller Specs**

```
[X]Create a controller spec for clubs_controller
Write a `describe` block for the show page
Write an `it` block for being able to see a club you participate in
Write an `it` block for seeing the 403 page for a club you do _not_ participate in
```

**Hiding UI elements**

```
[√]When a non-logged in user visits the homepage
Then they should not see the "My Peeps" or "My Clubs" links
```

**Filtering Rows**

```
[√]When a logged in user goes to /clubs
Then they should only see the clubs they are members of
```
