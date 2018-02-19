require 'test_helper'

class BugTest < ActiveSupport::TestCase
    def setup
        @bug = bugs(:one)
    end

    test "bug must be valid" do
          assert @bug.valid?
    end

    test "title must be present" do
        @bug.title = ""
        assert_not @bug.valid?
    end

    test "description must be present" do
        @bug.description = ""
        assert_not @bug.valid?
    end

    test "issue_type must be valid" do
        invalid_issue_types = [-10,-1,-2,10]
        invalid_issue_types.each do |iit|
            begin
                @bug.issue_type = iit
                assert false, "#{iit} should be invalid"
            rescue
                assert true
            end
        end
    end

    test "issue_type must be issue or enhancement or feature" do
        valid_issue_types = [:issue, :enhancement, :feature]
        valid_issue_types.each do |vit|
            begin
                @bug.issue_type = vit
                assert true
            rescue
                assert false, "#{vit} should be invalid"
            end
        end
    end

    test "priority must be valid" do
        invalid_priorities = [-10,-1,-2,10]
        invalid_priorities.each do |ip|
            begin
                @bug.priority = ip
                assert false, "#{ip} should be invalid"
            rescue
                assert true
            end
        end
    end

    test "priority must be low or medium or high" do
        valid_priorities = [:low, :medium, :high]
        valid_priorities.each do |vp|
            begin
                @bug.priority = vp
                assert true
            rescue
                assert false, "#{vp} should be invalid"
            end
        end
    end

    test "status must be valid" do
        invalid_statuses = [-10,-1,-2,10]
        invalid_statuses.each do |is|
            begin
                @bug.status = is
                assert false, "#{is} should be invalid"
            rescue
                assert true
            end
        end
    end

    test "status must be open or closed or monitor" do
        valid_statuses = [:open, :closed, :monitor]
        valid_statuses.each do |vs|
            begin
                @bug.status = vs
                assert true
            rescue
                assert false, "#{vs} should be invalid"
            end
        end
    end

end
