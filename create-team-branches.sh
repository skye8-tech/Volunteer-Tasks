#!/bin/bash

# Create team branches safely - each team gets their own README
echo "Creating team branches for News Aggregation Platform Assessment..."

# Create branches without switching
git branch ai-ml-team 2>/dev/null || echo "Branch ai-ml-team already exists"
git branch backend-team 2>/dev/null || echo "Branch backend-team already exists"
git branch frontend-web-team 2>/dev/null || echo "Branch frontend-web-team already exists"
git branch mobile-team 2>/dev/null || echo "Branch mobile-team already exists"
git branch system-architecture-team 2>/dev/null || echo "Branch system-architecture-team already exists"
git branch qa-team 2>/dev/null || echo "Branch qa-team already exists"
git branch pm-marketing-team 2>/dev/null || echo "Branch pm-marketing-team already exists"
git branch data-analysis-team 2>/dev/null || echo "Branch data-analysis-team already exists"

echo "All branches created successfully!"
echo ""
echo "To switch to a team branch and get the specific README:"
echo "git checkout [team-branch-name]"
echo ""
echo "Available branches:"
echo "- ai-ml-team"
echo "- backend-team" 
echo "- frontend-web-team"
echo "- mobile-team"
echo "- system-architecture-team"
echo "- qa-team"
echo "- pm-marketing-team"
echo "- data-analysis-team"
