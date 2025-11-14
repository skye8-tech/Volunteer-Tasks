#!/bin/bash

# Script to reset and properly organize team branches
echo "� Resetting and organizing News Aggregation Platform Assessment Branches..."
echo ""

# Make sure we're on main branch first
git checkout main 2>/dev/null || git checkout master 2>/dev/null || echo "Already on main branch"

# Array of teams with their corresponding README files
declare -A teams=(
    ["ai-ml-team"]="AI-ML-TEAM-README.md"
    ["backend-team"]="BACKEND-TEAM-README.md"
    ["frontend-web-team"]="FRONTEND-WEB-TEAM-README.md"
    ["mobile-team"]="MOBILE-TEAM-README.md"
    ["system-architecture-team"]="SYSTEM-ARCHITECTURE-TEAM-README.md"
    ["qa-team"]="QA-TEAM-README.md"
    ["pm-marketing-team"]="PM-MARKETING-TEAM-README.md"
    ["data-analysis-team"]="DATA-ANALYSIS-TEAM-README.md"
)

echo "🗑️  Step 1: Clean up main branch (keep only main project README)"

# Remove all team-specific README files from main branch
for readme_file in "${teams[@]}"; do
    if [ -f "$readme_file" ]; then
        echo "   Removing $readme_file from main branch"
        rm "$readme_file"
    fi
done

# Remove setup scripts from main
rm -f create-team-branches.sh 2>/dev/null

# Commit the cleaned main branch
git add -A
git commit -m "Clean main branch - keep only project overview README" 2>/dev/null || echo "Main branch already clean"

echo ""
echo "📂 Step 2: Creating team branches with individual READMEs"

# Process each team
for branch in "${!teams[@]}"; do
    readme_file="${teams[$branch]}"
    
    echo ""
    echo "🔧 Setting up branch: $branch"
    
    # Delete branch if it exists (locally and remotely)
    git branch -D "$branch" 2>/dev/null || echo "   Branch $branch didn't exist locally"
    git push origin --delete "$branch" 2>/dev/null || echo "   Branch $branch didn't exist remotely"
    
    # Create fresh branch from clean main
    git checkout -b "$branch" main
    
    # Check if we have the team README file saved anywhere
    git checkout main -- "$readme_file" 2>/dev/null || {
        echo "❌ Error: $readme_file not found in git history!"
        echo "   You may need to restore this file manually"
        git checkout main
        continue
    }
    
    # Replace README.md with team-specific content
    if [ -f "$readme_file" ]; then
        cp "$readme_file" README.md
        rm "$readme_file"
        echo "   ✅ Team README copied to README.md"
    else
        echo "   ❌ Could not find $readme_file"
        git checkout main
        continue
    fi
    
    # Commit the team-specific branch
    git add -A
    git commit -m "Setup $branch with team-specific README"
    
    # Push the branch
    echo "   ⬆️  Pushing $branch to remote..."
    git push -u origin "$branch" || echo "   ⚠️  Failed to push $branch (check remote setup)"
    
    echo "   ✅ $branch completed!"
    
    # Go back to main for next iteration
    git checkout main
done

echo ""
echo "🧹 Step 3: Final cleanup and push main branch"

# Ensure main is clean and push
git add -A
git commit -m "Final cleanup: main branch with project overview only" 2>/dev/null || echo "Main branch already clean"
git push origin main || echo "⚠️  Failed to push main branch"

echo ""
echo "🎉 SUCCESS! Repository structure:"
echo ""
echo "📂 main branch:"
echo "   • README.md (project overview and team information)"
echo ""
echo "📂 Team branches:"
for branch in "${!teams[@]}"; do
    echo "   • $branch → Contains team-specific README.md with tasks"
done
echo ""
echo "🔄 To work on a specific team:"
echo "   git checkout [team-branch-name]"
echo ""
echo "📋 Each team branch contains only:"
echo "   • README.md (their specific tasks and requirements)"
echo "   • Clean workspace for their work"
