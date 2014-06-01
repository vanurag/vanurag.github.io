<?php include_once("header.php"); ?>

<font face="Serif" color="#666633"><h1>Publications</h1></font>

<p>Avanish Kumar, <strong>Anurag Sai Vempati</strong> & Laxmidhar Behera. "T-S Fuzzy Model Based Maximum Power Point Tracking Control of Photovoltaic System". Accepted for publication at 22nd International Conference on Fuzzy Systems, FUZZ-IEEE'13.<a href="http://ieeexplore.ieee.org/xpl/articleDetails.jsp?arnumber=6622566&searchWithin%3Dvempati%26sortType%3Dasc_p_Sequence%26filter%3DAND%28p_IS_Number%3A6622297%29" target="_blank" STYLE="text-decoration: none"> &nbsp;&nbsp;&nbsp;[LINK]</a></p>

<ul>
<li>Presented the paper in FUZZ-IEEE'13 held at the HICC (Hyderabad International Convention Center) in July'13, which was sponsored by IEEE. <br/> <a href="TS_Fuzzy.pdf" target="_blank" STYLE="text-decoration: none">[Slides]</a>
</li>
</ul>

<p><strong>Anurag Sai Vempati</strong>, Vipul Choudhary and Laxmidhar Behera. "Quadrotor: Design, Simulation and Vision Based Control." Submitted for review to the 3rd International conference on Advances in Control and Optimization of Dynamic Systems (ACODS), 2014.
</p>



<font face="Serif" color="#666633"><h1>M.Tech Thesis</h1></font>

<strong>Visually guided autonomous Quadrotor: </strong><br />
    Period: Jan-present  2013<br />
        <ul>
            <li><strong>AIM:</strong> Develop a fully functioning autonomous quad rotor that can enter an abandoned area, such as collapsed building, and provide vital information to the ground station. Relies on visual input from an on-board camera for localization and
path planning.</li>
            <li><strong>Current Status:</strong></li>
	<ul>
	    <li>Addressed quadrotor's design, modeling and control issues for executing dynamic trajectories.</li>
            <li>Designed a quad rotor with on-board AURDINO board to control the altitude and attitude of the system.</li>
            <li>Used OpenGl and PyGame to build a quad rotor simulator which made the task to test control strategies simpler. <a href="https://www.youtube.com/watch?v=bF1oCWsv5Tg" target="_blank" STYLE="text-decoration: none"> &nbsp;&nbsp;&nbsp;[VIDEO]</a></li>
            <li>Achieved human controlled flight. Moves according to instructions sent via X-BEE.</li>
            <li>Localizes and maps the surroundings using on-board camera. Recently added a more powerful ODROID-X2 board with a Quad-core ARM Processor for achieving real-time computations.<a href="https://www.youtube.com/watch?v=RcxMjM7uPBU" target="_blank" STYLE="text-decoration: none"> &nbsp;&nbsp;&nbsp;[VIDEO]</a></li>
	</ul>
	</ul>




<font face="Serif" color="#666633"><h1>Key Projects Undertaken</h1></font>

<ol>
    <li><strong>Localization and Mapping of 3D interior space using Depth Camera: </strong><br />
    Period: Oct-Dec  2012<br />
        <ul>
            <li>Developed a technique that can rapidly create a detailed 3D reconstruction of an indoor scene. We move a
Microsoft Kinect across the scene and gather the colour and depth data.</li>
            <li>This problem would basically include tracking of the camera followed by surface reconstruction. Tracking is
accomplished by just using the Depth images to find the necessary transformation between the camera and
the global coordinate system.</li>
            <li>Once the necessary transformations are found, we then constructed an isosurface from the dense 3D point
cloud. The colour images are then used to map colour to the surface.</li>
			<a href="cs676/project/index.html" target="_blank" STYLE="text-decoration: none">[WWW]</a>
			<a href="cs676/project/slides.pdf" target="_blank" STYLE="text-decoration: none">[PPT]</a>
			<a href="cs676/project/report.pdf" target="_blank" STYLE="text-decoration: none">[Report]</a>
        </ul><br />
    </li>


    <li><strong>Learning Visual Anticipation: A Top-Down Approach: </strong><br />
    Period: Mar-May  2013<br />
        <ul>
            <li>Developed an anticipatory gaze model, in a top-down approach.</li>
            <li>Built a computational model that could imitate the way humans learn to anticipate the trajectory of fast
moving objects.</li>
            <li>The dataset consists of a ball bouncing off the walls and floor as viewed from different viewpoints. The ball's
speed and release direction are randomly chosen with a swing/spin components incorporated in few of the
videos. Then, for each video, the ball is segmented out and all relevant data is collected.</li>
	    <li>The objective to learn the Transition matrix can then be framed as a Linear Regression problem. Now for a
given test video, conditioned on the data collected till then, a Kalman Filter predicts the future location of the
ball well in advance.</li>
			<a href="se367/project/index.html" target="_blank" STYLE="text-decoration: none">[WWW]</a>
			<a href="se367/project/slides.pdf" target="_blank" STYLE="text-decoration: none">[PPT]</a>
			<a href="se367/project/report.pdf" target="_blank" STYLE="text-decoration: none">[Report]</a>
        </ul><br />
    </li>


    <li><strong>Learning Human Actions: </strong><br />
    Period: Mar-May  2012<br />
    <strong>Abstract:</strong> Designing an intelligent agent that can learn realistic actions performed by humans. Training
performed on huge dataset of movie clips. The project involves the following stages:
        <ul>
            <li>Identifying Space-Time interest points (STIP) in a video and collecting cuboid prototypes around them.
Transformations on the cuboids and building feature descriptors.</li>
            <li>Using K-means clustering algorithm to find clusters of features found in videos sampled from the
dataset and building Spatio-temporal Bag of features (BoF).</li>
            <li>Using Support Vector Machine (SVM) to train the agent to classify various videos.</li>
			<a href="cs365/projects/index.html" target="_blank" STYLE="text-decoration: none">[WWW]</a>
			<a href="cs365/projects/slides.ppt" target="_blank" STYLE="text-decoration: none">[PPT]</a>
			<a href="cs365/projects/report.pdf" target="_blank" STYLE="text-decoration: none">[Report]</a>
        </ul><br />
    </li>

    <li><strong>Unsupervised Relation Extraction From Web: </strong><br />
    Period: Aug-Nov  2013<br />
    <strong>Abstract:</strong> Since any information worthwhile is mostly of the SPO (Subject, Predicate and Object) form, we will be aiming to extract such tuples from the huge web data available today. The project involves the following stages:
        <ul>
            <li>Relation extractor: Dependency graph obtained from the Stanford parser is used to extract the tuples. Few heuristics are employed to decide the tuple trustworthiness.</li>
            <li>Learning Module: An SVM is trained to learn to distinguish trustworthy tuples from the non-trustworthy to reduce the computational complexity involved in using a parser on each and every sentence. Similar tuples are grouped together for obtaining a frequency count.</li>
            <li>Query Module: All the tuples with certain amount of overlap with the query are returned and ranked according to their relevance to the query.</li>
			<a href="cs671/project/index.html" target="_blank" STYLE="text-decoration: none">[WWW]</a>
			<a href="cs671/project/slides.pdf" target="_blank" STYLE="text-decoration: none">[PPT]</a>
			<a href="cs671/project/report.pdf" target="_blank" STYLE="text-decoration: none">[Report]</a>
        </ul><br />
    </li>

<li><strong>Telugu Language Toolkit: </strong><br />
    Period: Aug-Oct 2013<br />
        <ul>
            <li>Used various state-of-the-art techniques in NLP to build computational models learnt from a training dataset.</li>
            <li>Wrote bash scripts to clean-up the dataset, train a morphological segmentation model (Undivided++ by Dasgupta, Sajib and Ng, Vincent) with Telugu specific adjustments and to evaluate it's performance.</li>
            <li>Inspired by Peter Norvig's n-grams based language models, wrote bash scripts to evluate unigram and bigram frequencies in Telugu dataset, perform word boundary segmentation and a spelling checker. 
	    <li>The spell checker outperformed the aspell-0.60 telugu distribution by more than a <strong>2X improvement in accuracy</strong>.</li>
	<a href="http://home.iitk.ac.in/~vanurag/cs671/hw1/" target="_blank" STYLE="text-decoration: none">[Morphological Segmentation]</a>
	<a href="http://home.iitk.ac.in/~vanurag/cs671/hw2/" target="_blank" STYLE="text-decoration: none">[n-gram Models]</a>
        </ul><br />
    </li>


    <li><strong>Handwritten Character Recognition: </strong><br />
    Period: Aug-Nov  2013<br />
        <ul>
            <li>The problem is to recognize hand printed English characters and numerals (26 upper case, 26 lower case, 10
numerals) using Machine Learning. This is basically a classification problem spanned over the range of 62
classes.</li>
            <li>Images are pre-processed to remove noise, resizing the digits and deskewing.</li>
            <li>2D Convolution Neural Networks are used to learn the features that help in recognizing the digit.</li>
	    <li>SVM takes the feature vector generated by CNN and then classifies into one of the 62 classes.</li>
	<a href="cs771/report.pdf" target="_blank" STYLE="text-decoration: none">[Report]</a>
	<a href="cs771/Code.zip" target="_blank" STYLE="text-decoration: none">[CODE]</a>
        </ul><br />
    </li>


    <li><strong>Vehicular network for incremental route planning and avoiding traffic congestion: </strong><br />
    Period: Mar-May  2013<br />
        <ul>
            <li>Developed an Android app that fetches Google's traffic data and also maintains a local database with critical
information regarding the location, cause and delay due to several congestions (such as, rallies, maintenance
work, landslides etc.).</li>
            <li>Devised an efficient navigation system through the busy traffic, rerouting the current traffic so that the roads
with least time of travel are chosen to reach the destination.</li>
	    <li>The users can see the various route options they have and average time of travel via each of them and cause
of congestion in nearby areas, if any.</li>
	<a href="cs634/report.pdf" target="_blank" STYLE="text-decoration: none">[Report]</a>
        </ul><br />
    </li>


    <li><strong>Wireless Health Monitoring System: </strong><br />
    Period: May-July  2010<br />
        <ul>
            <li>Designed equipment which collects biometric data like heart rate, temperature, blood pressure non-invasively and send the data wirelessly to a hand held device (laptop).</li>
            <li>The data is continuously monitored and the user is alerted in case of emergency. The equipment was designed such that it can be carried by the user all the day without disturbing his routine.</li>
            <li>A method called PPG (Poly plethysmography) has been implemented to collect the biometric data. Data once collected, is sent through a Rx-Tx module to a MCU where it is further processed.</li>
			<a href="http://students.iitk.ac.in/projects/eclub/healthmonitor" target="_blank" STYLE="text-decoration: none">[WWW]</a>
			<a href="PROJECTS/Health Monitor" target="_blank" STYLE="text-decoration: none">[PPT]</a>
        </ul><br />
    </li>
	

  <li><strong>Touchpad: </strong><br />
    Period: Feb 17-20,  2011<br />    
      <ul>
          <li>Designed a Touchpad which senses touch using a grid of wires connected to MCU. The position of touch is sent to MCU which processes the data and sends it to the laptop through a Serial Port via UART</li>
          <li>Once the data reaches the laptop Robot class of JAVA was used to control the mouse pointer position according to the coordinates received.</li>
          <li>Further, a special feature to detect patterns and perform tasks like Rotating an Image, Page Scroll, Zoom-in and out, Close a window etc was implemented using Image Processing in MATLAB.</li>
		  <li>Won <strong>FIRST</strong> in Embedded Design contest at Techkriti,IIT Kanpur's Technical Fest.</li>
		  <a href="PROJECTS/TOUCHPAD/Presentation" target="_blank" STYLE="text-decoration: none">[PPT]</a>
		  <a href="http://www.youtube.com/watch?v=lNgVnT_eE7M" target="_blank" STYLE="text-decoration: none">[VIDEO]</a>
		  <a href="PROJECTS/TOUCHPAD" target="_blank" STYLE="text-decoration: none">[CODE]</a>
      </ul><br />
  </li>
  
  <li><strong>128-bit AES Encryption and Decryption: </strong><br />
    Period: Oct 20-Nov 10,  2011<br />    
      <ul>
          <li>Implemented Advanced Encryption Standard (AES) specified by FIPS (Federal Information Processing Standards)-approved cryptographic algorithm that is used to protect electronic data.</li>
		  <li>It  involved implementation of the following modules of AES Algorithm: </li>
			<ul>
          <li>Implementation of Cipher module (Encryption) - Series of transformations that converts plaintext to cipher text using the cipher key.</li>
          <li>Implementation of Key expansion - Used to generate a series of Round Keys from the Cipher Key.</li>
          <li>Implementation of Inverse Cipher (Decryption) - Finally obtain original text from cipher text. </li>
			</ul>
		  <a href="PROJECTS/AES/Others" target="_blank" STYLE="text-decoration: none">[PPT]</a>
		  <a href="PROJECTS/AES/Codes.zip" target="_blank" STYLE="text-decoration: none">[CODE]</a>
      </ul><br />
  </li>
  
  
  <li><strong>f-MRI (Functional Magnetic resonance Imaging): </strong><br />
  Period: May-July  2011<br />
        <ul>
            <li>Used Fuzzy C-means clustering algorithm, blood regions and brain tissues are segmented out from MRI data.</li>
	    <li>Snake model is used to detect edges. Spline Interpolation is performed to approximate the boundary by simple splines.</li>
	    <li>Kalman Filter is used to "measure and predict" the parameters of spline thus tracking the regions of interest.</li>
	    <li>Times series of all these images constitutes the video showing the variation in blood regions and brain tissue.</li>
        </ul><br />
  </li>
  
    
</ol>


<?php include_once("footer.php"); ?>
