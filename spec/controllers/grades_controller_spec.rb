describe GradesController do
describe "#action_allowed?" do
  context "when action is 'view_my_scores'" do
    it "returns true if current user has student privileges, needed authorizations are present, and self review is finished" do
      # test scenario 1
      # description: current user has student privileges, needed authorizations are present, and self review is finished
      # expected result: true
      # method call: action_allowed?('view_my_scores', { action: 'view_my_scores', id: 1 })
      
      # test scenario 2
      # description: current user does not have student privileges
      # expected result: false
      # method call: action_allowed?('view_my_scores', { action: 'view_my_scores', id: 1 })
      
      # test scenario 3
      # description: needed authorizations are not present
      # expected result: false
      # method call: action_allowed?('view_my_scores', { action: 'view_my_scores', id: 1 })
      
      # test scenario 4
      # description: self review is not finished
      # expected result: false
      # method call: action_allowed?('view_my_scores', { action: 'view_my_scores', id: 1 })
    end
  end
  
  context "when action is 'view_team'" do
    context "when current user is a student" do
      it "returns true if current user is an assignment participant of the specified assignment" do
        # test scenario 1
        # description: current user is an assignment participant of the specified assignment
        # expected result: true
        # method call: action_allowed?('view_team', { action: 'view_team', id: 1 })
        
        # test scenario 2
        # description: current user is not an assignment participant of the specified assignment
        # expected result: false
        # method call: action_allowed?('view_team', { action: 'view_team', id: 1 })
      end
    end
    
    context "when current user is not a student" do
      it "returns true" do
        # test scenario 1
        # description: current user is not a student
        # expected result: true
        # method call: action_allowed?('view_team', { action: 'view_team', id: 1 })
      end
    end
  end
  
  context "when action is not 'view_my_scores' or 'view_team'" do
    it "returns true if current user has TA privileges" do
      # test scenario 1
      # description: current user has TA privileges
      # expected result: true
      # method call: action_allowed?('other_action', { action: 'other_action', id: 1 })
      
      # test scenario 2
      # description: current user does not have TA privileges
      # expected result: false
      # method call: action_allowed?('other_action', { action: 'other_action', id: 1 })
    end
  end
end
describe "controller_locale" do
  context "when called" do
    it "calls the 'locale_for_student' method" do
      # Test body
    end
  end
end
describe "#view" do
  context "when assignment has varying rubrics by round" do
    it "retrieves questions from questionnaires for the assignment" do
      # test body
    end

    it "calculates scores for the assignment" do
      # test body
    end

    it "calculates averages for the assignment" do
      # test body
    end

    it "generates a bar chart for the averages" do
      # test body
    end

    it "calculates the average of averages" do
      # test body
    end

    it "applies penalties to the assignment" do
      # test body
    end

    it "does not show reputation" do
      # test body
    end
  end

  context "when assignment does not have varying rubrics by round" do
    it "retrieves questions from questionnaires for the assignment" do
      # test body
    end

    it "calculates scores for the assignment" do
      # test body
    end

    it "calculates averages for the assignment" do
      # test body
    end

    it "generates a bar chart for the averages" do
      # test body
    end

    it "calculates the average of averages" do
      # test body
    end

    it "applies penalties to the assignment" do
      # test body
    end

    it "does not show reputation" do
      # test body
    end
  end
end
describe "#view_my_scores" do
  context "when the participant is allowed to view scores" do
    it "finds the assignment participant" do
    end

    it "finds the team ID for the participant" do
    end

    it "redirects when disallowed" do
    end

    it "finds the assignment" do
    end

    it "retrieves the questions for the assignment" do
    end

    it "calculates the participant scores" do
    end

    it "creates a chart" do
    end

    it "finds the topic ID for the participant" do
    end

    it "determines the current stage of the assignment" do
    end

    it "calculates penalties for the assignment" do
    end

    it "prepares feedback summaries" do
    end

    it "summarizes reviews by reviewee" do
    end

    it "calculates average scores by round" do
    end

    it "calculates average scores by criterion" do
    end
  end
end
describe "#view_team" do
  context "when viewing a team" do
    it "assigns the participant with the given id to @participant" do
      # test code
    end

    it "assigns the assignment of the participant to @assignment" do
      # test code
    end

    it "assigns the team of the participant to @team" do
      # test code
    end

    it "assigns the id of the team to @team_id" do
      # test code
    end

    it "retrieves the questionnaires of the assignment" do
      # test code
    end

    it "retrieves the questions for the questionnaires and assignment" do
      # test code
    end

    it "calculates the participant scores using the retrieved questions" do
      # test code
    end

    it "calculates the penalties for the participant" do
      # test code
    end

    it "populates the view model list with the questionnaires" do
      # test code
    end

    it "assigns the current role name to @current_role_name" do
      # test code
    end
  end
end
describe "#edit" do
  context "when editing an assignment participant" do
    it "finds the assignment participant by ID" do
      # Test code
    end

    it "assigns the found participant to @participant" do
      # Test code
    end

    it "assigns the assignment of the participant to @assignment" do
      # Test code
    end

    it "lists the questions for the assignment" do
      # Test code
    end

    it "calculates the scores for the participant based on the questions" do
      # Test code
    end
  end
end
describe "#instructor_review" do
  context "when the review mapping already exists" do
    it "redirects to the response edit page for the existing review" do
      # Test scenario
    end
  end

  context "when the review mapping does not exist" do
    it "redirects to the response new page for creating a new review" do
      # Test scenario
    end
  end
end
describe "#list_questions" do
  context "when given an assignment" do
    it "returns a hash of questions grouped by questionnaire symbol" do
      # Test scenario 1
      # Given an assignment with multiple questionnaires

      # Test scenario 2
      # Given an assignment with a single questionnaire
    end
  end
end
describe "#update" do
  context "when the total score is different from the participant's grade" do
    it "updates the participant's grade with the new total score" do
      # Test body
    end

    it "sets a flash note indicating the computed score will be used for the participant" do
      # Test body
    end

    it "redirects to the edit action with the participant's id" do
      # Test body
    end
  end

  context "when the total score is the same as the participant's grade" do
    it "does not update the participant's grade" do
      # Test body
    end

    it "does not set a flash note" do
      # Test body
    end

    it "redirects to the edit action with the participant's id" do
      # Test body
    end
  end
end
describe "save_grade_and_comment_for_submission" do
  context "when the participant exists" do
    it "saves the grade and comment for the team's submission" do
      # Test scenario 1
      # Description: The participant exists and valid grade and comment are provided
      # Expected outcome: The grade and comment are saved successfully
      # Test code:

      # Test scenario 2
      # Description: The participant exists but an invalid grade is provided
      # Expected outcome: An error message is displayed
      # Test code:

      # Test scenario 3
      # Description: The participant exists but an invalid comment is provided
      # Expected outcome: An error message is displayed
      # Test code:
    end
  end

  context "when the participant does not exist" do
    it "displays an error message" do
      # Test scenario 4
      # Description: The participant does not exist
      # Expected outcome: An error message is displayed
      # Test code:
    end
  end
end
describe 'bar_chart' do
  context 'when given scores and default width, height, and spacing' do
    it 'returns a link to a bar chart with the specified dimensions and data' do
      # test body
    end
  end

  context 'when given scores and custom width, height, and spacing' do
    it 'returns a link to a bar chart with the specified dimensions and data' do
      # test body
    end
  end

  context 'when given scores with negative values' do
    it 'returns a link to a bar chart with the specified dimensions and data' do
      # test body
    end
  end

  context 'when given scores with duplicate values' do
    it 'returns a link to a bar chart with the specified dimensions and data' do
      # test body
    end
  end
end
describe "#populate_view_model" do
  context "when given a questionnaire" do
    it "creates a new VmQuestionResponse view model" do
      # test code
    end

    it "adds the questionnaire's questions to the view model" do
      # test code
    end

    it "adds the team members to the view model" do
      # test code
    end

    it "checks if an AssignmentQuestionnaire exists for the assignment and round" do
      # test code
    end

    it "adds reviews to the view model" do
      # test code
    end

    it "calculates metrics for the view model" do
      # test code
    end

    it "returns the populated view model" do
      # test code
    end
  end
end
describe "#redirect_when_disallowed" do
  context "when the assignment is a team assignment" do
    it "redirects to the homepage with an error message if the participant is not on the team that wrote the feedback" do
      # Test scenario 1
    end

    it "does not redirect if the participant is on the team that wrote the feedback" do
      # Test scenario 2
    end
  end

  context "when the assignment is not a team assignment" do
    it "redirects if the current user is not the reviewer of the feedback" do
      # Test scenario 3
    end

    it "does not redirect if the current user is the reviewer of the feedback" do
      # Test scenario 4
    end
  end
end
describe "assign_all_penalties" do
  context "when assigning penalties to a participant" do
    it "should assign submission penalty to the participant" do
      # Test scenario 1
    end

    it "should assign review penalty to the participant" do
      # Test scenario 2
    end

    it "should assign meta review penalty to the participant" do
      # Test scenario 3
    end

    it "should assign total penalty to the participant" do
      # Test scenario 4
    end
  end
end
describe "#make_chart" do
  context "when @pscore[:review] is present" do
    it "creates bar charts for each round of reviews if rubrics vary by round" do
      # Test scenario 1
    end

    it "creates a single bar chart if rubrics do not vary by round" do
      # Test scenario 2
    end
  end

  context "when @pscore[:review] is not present" do
    it "creates bar charts for metareview, feedback, and teammate scores" do
      # Test scenario 3
    end
  end
end
describe "#self_review_finished?" do
  context "when self review is enabled for the assignment" do
    it "returns true if the participant has submitted their self review" do
      # Test scenario 1: Participant has submitted their self review
      # Expect the method to return true
    end

    it "returns false if the participant has not submitted their self review" do
      # Test scenario 2: Participant has not submitted their self review
      # Expect the method to return false
    end
  end

  context "when self review is not enabled for the assignment" do
    it "returns true regardless of the participant's self review submission status" do
      # Test scenario 3: Self review is not enabled
      # Expect the method to always return true
    end
  end
end

end
