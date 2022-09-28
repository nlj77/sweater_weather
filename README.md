# Sweater Weather

<!-- TABLE OF CONTENTS -->
<h2 id="table-of-contents"> :book: Table of Contents</h2>

<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#techical-requirements"> ➤ Technical Requirements</a></li>
    <li><a href="#project-files-description"> ➤ Project Files Description</a></li>
    <li><a href="#getting-started"> ➤ Getting Started</a></li>
    <li><a href="#Endpoints"> ➤ Endpoints</a></li>
    <li><a href="#credits"> ➤ Credits</a></li>
  </ol>
 </details>
 <!-- PROJECT FILES DESCRIPTION -->
<h2 id="project-files-description"> :floppy_disk: Project Files Description</h2>

<ul>
  <li><b>app/controllers</li></b>
  <ol>
  <li>Contains several controllers that initiates API call processes through <i>Forecastfacade.rb</i></li></ol>
  <li><b>app/controllers/GeocodeFacade.rb</b></li><ol>
  <li>Processes data returned through <i>app/services</i></li></ol>
   <li><b>app/services</b>
    <ol>
  <li>Makes API calls via <i>Faraday</i></li></ol>
  <li><b>app/poros</b></li><ol>
  <li>Formats API data into Ruby objects</li></ol>
</ul>
<!-- TECHNICAL REQUIREMENTS -->
<h2 id="techical-requirements"> 💻 Technical Requirements</h2>
<ul>
  <li>Ruby 2.7.4</li>
  <li>Rails 5.2.6</li>
  <li>RSpec-Rails 5.1.2</li>
  <li>Faraday</li>
  <li>Figaro</li>
  <li>Webmock</li>
  <li>VCR</li>
  <li>Capybara</li>
  <li>SimpleCov</li>
  <li>Launchy</li>
  <li>Orderly</li>
  <li>Shoulda-Matchers</li>
  </ul>
  
  <!-- Endpoints -->
<h2 id="Endpoints"> :book: Endpoints</h2>

### [Mapquest](https://www.mapquestapi.com/geocoding/v1/address')
*Authorization: api key
### [Mapquest](https://www.mapquestapi.com/directions/v2/route')
*Authorization: api key
### [OpenWeather](http://api.openweathermap.org/data/2.5/onecall)
* Authorization: api key

  <!-- GETTING STARTED -->
<h2 id="getting-started"> :book: Getting Started</h2>

<p><b>1. </b> Create a new directory on your computer where you'd like the program to live.</p>
<pre><code>$ mkdir /your_folder/sweater_weather</code></pre>

<p><b>2. </b> Navigate into the recently created directory.</p>
<pre><code>$ cd /your_folder/sweater_weather</code></pre>
<p><b>3. </b> Copy the repository by clicking on the code button on Github repo page (using SSH).</p>


<p><b>4. </b> Clone the recently copied repository information into your currenty directory.</p>

<p><b>5. </b> Open the repository in your preferred IDE.  If you are using VSCode, use the code command shown below:</p>
<pre><code>$ code .</code></pre>

<p><b>6. </b> Install dependencies found in Gemfile</a>.</p>
<pre><code>$ bundle install</code></pre>

<p><b>7. </b> Inside your project directory, install <a href="https://github.com/laserlemon/figaro"> Figaro</a> via your terminal.</p>
<pre><code>$ bundle exec figaro install</code></pre>

<p><b>8. </b> Install <a href="https://lostisland.github.io/faraday/"> Faraday</a>.</p>
<pre><code>$ bundle exec faraday install</code></pre>

<p><b>9. </b> Add API key to config/applicalion.yml</a>.</p>
<pre><code>$ weather_key: XXXXX, map_key: XXXXX</code></pre>

<p><b>10. </b> Run migrations</p>
<pre><code>$ rails db:{create,migrate,seed}</code></pre>


### INTEGRATIONS
APIs - OpenWeather (weather), MapQuest (locations, directions)


<!-- CREDITS -->

<h3>Nickolas Jones</h3>

[![GitHub Badge](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/nlj77)
[![LinkedIn Badge](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/nickolas-jones-523b66b7/)
