# Ur Crib

###Planning

1. What are we building?
  A space for users to post, search and contact on availability of rooms. It should be able to serve basic purposes of moving like finding space to live and selling items while moving. At the same time, it must also serve the privacy of user information.

2. Who is our target audience?
  Anyone who’s looking for a roommate to fill the space or finding a space and selling items while moving.

3. What features do we want?
  - rooms
  	- Create / Edit / Destroy
  	- Multiple Images support, City autofill support
  	- Email form or Chat
  	- Preferences of many kinds (type of room, gender, bath type)
  	- Share the post, Approximate map view (without disclosing actual location)
  	- Search, Sort by relevant, availability date, posted time and price.
  - User
  	- User Sign up / Sign in with social media options
  	- Email and Captcha Verified accounts
  	- Save posts option.
  - Settings
  	- Profile Privacy settings
  	- Notification settings
  	- Real time notifications and Email alerts
  - Welcome page
  - About, FAQ, Contact page

###User Stories
  - As User,
  	- Ability to create, edit, delete availability posts
  	- Ability to manage the privacy of details in the post and personal account.
  	- Search for places using city names and zip codes
  	- Sort according to availability, post added time.
  	- Chat or send message with the owner of the post.
  	- Can post and sell items on the moving sale section
  	- Ability to delete user’s account.
  	- Ability to delete my account
  - As Visitor,
  	- I should be able to create a verified account easily using email or twitter (for say)
  	- Read about the space on the welcome page, with the search option but can contact or read an 	entire post only with an account.

###Modeling data
  - Rooms Model
    - Title, Description (Write all possible details here.)
    - Room type: single, shared, paying guest or house
    - Bath type: attached or separate
    - Owner type: tenant, owner or agent
    - City, Address, Zip code
    - Lease type: short, long or fixed number
    - Availability dates
    - Gender preferred: Male or Female or Any
    - Rent: fixed or negotiable, Deposit
    - Furnished? Amenities? Smoking? Pets?
    - Files: Multiple Images
  - Users Model
    - username:string (with auto-generate option & only this will be shown publicly)
    - full name
    - profile:image (For verification, only user can see his image and it will be hidden otherwise)
    - contact: email or phone
    - join date
    - birth date
    - default attributes from devise(email and password)
  - Items Model
    - Title, Description (Write all possible details here.)
    - Item type: Electronics, Furniture, auto, others
    - Price: fixed or negotiable
    - Location: area or zip code
    - Item Condition: New, Like New, Good, Used & Refurbished

###Possible Pages in the App
  - Welcome & About,FAQ, Contact details
  - user#signup
  - user#signin
  - user#show
  - user#settings
  - room#index
  - room#show
  - room#edit
  - room#new
  - item#new
  - item#edit
  - item#show
  - item#index
