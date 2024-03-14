Add-PromptPath "$PSScriptRoot\.."

$prompt = @"
Create a one-page website for an online learning platform called "EduQuest" with the following features and sections:
1. A fixed navigation bar with links to course categories (Math, Science, Languages, Arts) and a search bar.
2. A hero section with a video background showcasing students learning online, a dynamic tagline that rotates between "Learn at your own pace, " "Discover new passions, " and "Expand your horizons" every 3 seconds, and a "Get Started" button leading to a course catalog.
3. A featured courses section displaying course cards with placeholders for course images, titles, instructors, and descriptions.
5. A "Success Stories" section featuring testimonials from satisfied students, with placeholders for the testimonial text and student names.
6. A footer with links to the platform's blog, FAQ, privacy policy, and a "Contact Us" button.
Include filler placeholder content for the video background, course cards, and testimonials. Embed the CSS styles within the `<style>` tag in the `<head>` section and place the JavaScript code within the `<script>` tag at the end of the `<body>` section.
The JavaScript code should handle the dynamic tagline in the hero section, rotating through the different taglines every 3 seconds.
"@

$prompt | Weave WebsiteWizard