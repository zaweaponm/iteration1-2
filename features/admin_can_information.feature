Feature: Admin can manage information table

Background: informations in database

  Given the following informations exist:
  |    topic     |    content    | picture  |     institution    |
  | 1test topic  | 1test content | no image |  1test institution |
  | 2test topic  | 2test content | no image |  2test institution |
  | 3test topic  | 3test content | no image |  3test institution |
  | 4test topic  | 4test content | no image |  4test institution |

Scenario: Admin can add information record
  Given I am on the information page
  When I follow "Create new information"
  Then I should be on the create new information page
  When I fill in "Topic" with "new test topic"
  And I fill in "Content" with "new test content"
  And I fill in "Picture" with "new test picture"
  And I fill in "Institution" with "new test institution"
  When I press "Create new information"
  Then I should be on the information page
  And I should see "new test topic"
 
Scenario: Admin can edit information record
  Given I am on the information page
  When I follow "More about '1test topic'"
  Then I should be on the details of content page for '1test topic'
  When I follow "Edit"
  Then I should be on the edit page for '1test topic'
  When I change "1test topic" with "new test topic"
  When I press "Update Information"
  Then I should be on the details of content page for 'new test topic'
  And I should see "new test topic"

Scenario: Admin can delete information record
  Given I am on the information page
  When I follow "More about '2test topic'"
  Then I should be on the details of content page for '2test topic'
  When I press "Delete"
  Then I should be on the information page
  And I should not see "More about '2test topic'"
