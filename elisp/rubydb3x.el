










<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<!-- ViewVC :: http://www.viewvc.org/ -->
<head>
<title>[ruby] Contents of /trunk/misc/rubydb3x.el</title>
<meta name="generator" content="ViewVC 1.1.5" />
<link rel="shortcut icon" href="/viewvc/images/favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="/viewvc/styles.css" type="text/css" />

</head>
<body>
<div class="vc_navheader">
<table><tr>
<td><strong><a href="/cgi-bin/viewvc.cgi?view=roots"><span class="pathdiv">/</span></a><a href="/cgi-bin/viewvc.cgi/">[ruby]</a><span class="pathdiv">/</span><a href="/cgi-bin/viewvc.cgi/trunk/">trunk</a><span class="pathdiv">/</span><a href="/cgi-bin/viewvc.cgi/trunk/misc/">misc</a><span class="pathdiv">/</span><a href="/cgi-bin/viewvc.cgi/trunk/misc/rubydb3x.el?view=log">rubydb3x.el</a></strong></td>
<td style="text-align: right;"></td>
</tr></table>
</div>
<div style="float: right; padding: 5px;"><a href="http://www.viewvc.org/" title="ViewVC Home"><img src="/viewvc/images/viewvc-logo.png" alt="ViewVC logotype" width="240" height="70" /></a></div>
<h1>Contents of /trunk/misc/rubydb3x.el</h1>

<p style="margin:0;">

<a href="/cgi-bin/viewvc.cgi/trunk/misc/"><img src="/viewvc/images/back_small.png" class="vc_icon" alt="Parent Directory" /> Parent Directory</a>

| <a href="/cgi-bin/viewvc.cgi/trunk/misc/rubydb3x.el?view=log"><img src="/viewvc/images/log.png" class="vc_icon" alt="Revision Log" /> Revision Log</a>




</p>

<hr />
<div class="vc_summary">
Revision <a href="/cgi-bin/viewvc.cgi?view=revision&amp;revision=25184"><strong>25184</strong></a> -
(<a href="/cgi-bin/viewvc.cgi/trunk/misc/rubydb3x.el?annotate=25184"><strong>show annotations</strong></a>)



<br /><em>Fri Oct  2 10:45:39 2009 UTC</em>
(18 months, 3 weeks ago)
by <em>akr</em>







<br />File size: 4984 byte(s)






<pre class="vc_log">unused svn:keywords property deleted.
</pre>

</div>






<div id="vc_file">
<table cellspacing="0" cellpadding="0">








<tr class="vc_row_odd" id="l1">
<td class="vc_file_line_number">1</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-nb">require</span><span class="pygments-"> </span><span class="pygments-ss">&#39;gud</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l2">
<td class="vc_file_line_number">2</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-nb">provide</span><span class="pygments-"> </span><span class="pygments-ss">&#39;rubydb</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l3">
<td class="vc_file_line_number">3</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l4">
<td class="vc_file_line_number">4</td>

<td class="vc_file_line_text"><span class="pygments-c1">;; ======================================================================</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l5">
<td class="vc_file_line_number">5</td>

<td class="vc_file_line_text"><span class="pygments-c1">;; rubydb functions</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l6">
<td class="vc_file_line_number">6</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l7">
<td class="vc_file_line_number">7</td>

<td class="vc_file_line_text"><span class="pygments-c1">;;; History of argument lists passed to rubydb.</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l8">
<td class="vc_file_line_number">8</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-nb">defvar</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-history</span><span class="pygments-"> </span><span class="pygments-no">nil</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l9">
<td class="vc_file_line_number">9</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l10">
<td class="vc_file_line_number">10</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-k">if</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nb">fboundp</span><span class="pygments-"> </span><span class="pygments-ss">&#39;gud-overload-functions</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l11">
<td class="vc_file_line_number">11</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-p">(</span><span class="pygments-nb">defun</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-massage-args</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">file</span><span class="pygments-"> </span><span class="pygments-nv">args</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l12">
<td class="vc_file_line_number">12</td>

<td class="vc_file_line_text"><span class="pygments-">      </span><span class="pygments-p">(</span><span class="pygments-nb">cons</span><span class="pygments-"> </span><span class="pygments-s">&quot;-r&quot;</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nb">cons</span><span class="pygments-"> </span><span class="pygments-s">&quot;debug&quot;</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nb">cons</span><span class="pygments-"> </span><span class="pygments-nv">file</span><span class="pygments-"> </span><span class="pygments-nv">args</span><span class="pygments-p">))))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l13">
<td class="vc_file_line_number">13</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nb">defun</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-massage-args</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">file</span><span class="pygments-"> </span><span class="pygments-nv">args</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l14">
<td class="vc_file_line_number">14</td>

<td class="vc_file_line_text"><span class="pygments-">      </span><span class="pygments-p">(</span><span class="pygments-nb">cons</span><span class="pygments-"> </span><span class="pygments-s">&quot;-r&quot;</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nb">cons</span><span class="pygments-"> </span><span class="pygments-s">&quot;debug&quot;</span><span class="pygments-"> </span><span class="pygments-nv">args</span><span class="pygments-p">))))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l15">
<td class="vc_file_line_number">15</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l16">
<td class="vc_file_line_number">16</td>

<td class="vc_file_line_text"><span class="pygments-c1">;; There&#39;s no guarantee that Emacs will hand the filter the entire</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l17">
<td class="vc_file_line_number">17</td>

<td class="vc_file_line_text"><span class="pygments-c1">;; marker at once; it could be broken up across several strings.  We</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l18">
<td class="vc_file_line_number">18</td>

<td class="vc_file_line_text"><span class="pygments-c1">;; might even receive a big chunk with several markers in it.  If we</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l19">
<td class="vc_file_line_number">19</td>

<td class="vc_file_line_text"><span class="pygments-c1">;; receive a chunk of text which looks like it might contain the</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l20">
<td class="vc_file_line_number">20</td>

<td class="vc_file_line_text"><span class="pygments-c1">;; beginning of a marker, we save it here between calls to the</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l21">
<td class="vc_file_line_number">21</td>

<td class="vc_file_line_text"><span class="pygments-c1">;; filter.</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l22">
<td class="vc_file_line_number">22</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-nb">defvar</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"> </span><span class="pygments-s">&quot;&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l23">
<td class="vc_file_line_number">23</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-nv">make-variable-buffer-local</span><span class="pygments-"> </span><span class="pygments-ss">&#39;gud-rubydb-marker-acc</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l24">
<td class="vc_file_line_number">24</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l25">
<td class="vc_file_line_number">25</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-nb">defun</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-filter</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nb">string</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l26">
<td class="vc_file_line_number">26</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-k">setq</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">concat</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"> </span><span class="pygments-nb">string</span><span class="pygments-p">))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l27">
<td class="vc_file_line_number">27</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-k">let</span><span class="pygments-"> </span><span class="pygments-p">((</span><span class="pygments-nv">output</span><span class="pygments-"> </span><span class="pygments-s">&quot;&quot;</span><span class="pygments-p">))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l28">
<td class="vc_file_line_number">28</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l29">
<td class="vc_file_line_number">29</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-c1">;; Process all the complete markers in this chunk.</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l30">
<td class="vc_file_line_number">30</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-p">(</span><span class="pygments-nv">while</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">string-match</span><span class="pygments-"> </span><span class="pygments-s">&quot;\032\032\\([^:\n]*\\):\\([0-9]*\\):.*\n&quot;</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l31">
<td class="vc_file_line_number">31</td>

<td class="vc_file_line_text"><span class="pygments-">                         </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l32">
<td class="vc_file_line_number">32</td>

<td class="vc_file_line_text"><span class="pygments-">      </span><span class="pygments-p">(</span><span class="pygments-k">setq</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l33">
<td class="vc_file_line_number">33</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l34">
<td class="vc_file_line_number">34</td>

<td class="vc_file_line_text"><span class="pygments-">       </span><span class="pygments-c1">;; Extract the frame position from the marker.</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l35">
<td class="vc_file_line_number">35</td>

<td class="vc_file_line_text"><span class="pygments-">       </span><span class="pygments-nv">gud-last-frame</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l36">
<td class="vc_file_line_number">36</td>

<td class="vc_file_line_text"><span class="pygments-">       </span><span class="pygments-p">(</span><span class="pygments-nb">cons</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">substring</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">match-beginning</span><span class="pygments-"> </span><span class="pygments-mi">1</span><span class="pygments-p">)</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">match-end</span><span class="pygments-"> </span><span class="pygments-mi">1</span><span class="pygments-p">))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l37">
<td class="vc_file_line_number">37</td>

<td class="vc_file_line_text"><span class="pygments-">             </span><span class="pygments-p">(</span><span class="pygments-nv">string-to-int</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">substring</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l38">
<td class="vc_file_line_number">38</td>

<td class="vc_file_line_text"><span class="pygments-">                                       </span><span class="pygments-p">(</span><span class="pygments-nv">match-beginning</span><span class="pygments-"> </span><span class="pygments-mi">2</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l39">
<td class="vc_file_line_number">39</td>

<td class="vc_file_line_text"><span class="pygments-">                                       </span><span class="pygments-p">(</span><span class="pygments-nv">match-end</span><span class="pygments-"> </span><span class="pygments-mi">2</span><span class="pygments-p">))))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l40">
<td class="vc_file_line_number">40</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l41">
<td class="vc_file_line_number">41</td>

<td class="vc_file_line_text"><span class="pygments-">       </span><span class="pygments-c1">;; Append any text before the marker to the output we&#39;re going</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l42">
<td class="vc_file_line_number">42</td>

<td class="vc_file_line_text"><span class="pygments-">       </span><span class="pygments-c1">;; to return - we don&#39;t include the marker in this text.</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l43">
<td class="vc_file_line_number">43</td>

<td class="vc_file_line_text"><span class="pygments-">       </span><span class="pygments-nv">output</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">concat</span><span class="pygments-"> </span><span class="pygments-nv">output</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l44">
<td class="vc_file_line_number">44</td>

<td class="vc_file_line_text"><span class="pygments-">                      </span><span class="pygments-p">(</span><span class="pygments-nv">substring</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"> </span><span class="pygments-mi">0</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">match-beginning</span><span class="pygments-"> </span><span class="pygments-mi">0</span><span class="pygments-p">)))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l45">
<td class="vc_file_line_number">45</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l46">
<td class="vc_file_line_number">46</td>

<td class="vc_file_line_text"><span class="pygments-">       </span><span class="pygments-c1">;; Set the accumulator to the remaining text.</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l47">
<td class="vc_file_line_number">47</td>

<td class="vc_file_line_text"><span class="pygments-">       </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">substring</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">match-end</span><span class="pygments-"> </span><span class="pygments-mi">0</span><span class="pygments-p">))))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l48">
<td class="vc_file_line_number">48</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l49">
<td class="vc_file_line_number">49</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-c1">;; Does the remaining text look like it might end with the</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l50">
<td class="vc_file_line_number">50</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-c1">;; beginning of another marker?  If it does, then keep it in</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l51">
<td class="vc_file_line_number">51</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-c1">;; gud-rubydb-marker-acc until we receive the rest of it.  Since we</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l52">
<td class="vc_file_line_number">52</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-c1">;; know the full marker regexp above failed, it&#39;s pretty simple to</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l53">
<td class="vc_file_line_number">53</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-c1">;; test for marker starts.</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l54">
<td class="vc_file_line_number">54</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-p">(</span><span class="pygments-k">if</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">string-match</span><span class="pygments-"> </span><span class="pygments-s">&quot;\032.*\\&#39;&quot;</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l55">
<td class="vc_file_line_number">55</td>

<td class="vc_file_line_text"><span class="pygments-">        </span><span class="pygments-p">(</span><span class="pygments-k">progn</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l56">
<td class="vc_file_line_number">56</td>

<td class="vc_file_line_text"><span class="pygments-">          </span><span class="pygments-c1">;; Everything before the potential marker start can be output.</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l57">
<td class="vc_file_line_number">57</td>

<td class="vc_file_line_text"><span class="pygments-">          </span><span class="pygments-p">(</span><span class="pygments-k">setq</span><span class="pygments-"> </span><span class="pygments-nv">output</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">concat</span><span class="pygments-"> </span><span class="pygments-nv">output</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">substring</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l58">
<td class="vc_file_line_number">58</td>

<td class="vc_file_line_text"><span class="pygments-">                                                 </span><span class="pygments-mi">0</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">match-beginning</span><span class="pygments-"> </span><span class="pygments-mi">0</span><span class="pygments-p">))))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l59">
<td class="vc_file_line_number">59</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l60">
<td class="vc_file_line_number">60</td>

<td class="vc_file_line_text"><span class="pygments-">          </span><span class="pygments-c1">;; Everything after, we save, to combine with later input.</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l61">
<td class="vc_file_line_number">61</td>

<td class="vc_file_line_text"><span class="pygments-">          </span><span class="pygments-p">(</span><span class="pygments-k">setq</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l62">
<td class="vc_file_line_number">62</td>

<td class="vc_file_line_text"><span class="pygments-">                </span><span class="pygments-p">(</span><span class="pygments-nv">substring</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">match-beginning</span><span class="pygments-"> </span><span class="pygments-mi">0</span><span class="pygments-p">))))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l63">
<td class="vc_file_line_number">63</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l64">
<td class="vc_file_line_number">64</td>

<td class="vc_file_line_text"><span class="pygments-">      </span><span class="pygments-p">(</span><span class="pygments-k">setq</span><span class="pygments-"> </span><span class="pygments-nv">output</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">concat</span><span class="pygments-"> </span><span class="pygments-nv">output</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l65">
<td class="vc_file_line_number">65</td>

<td class="vc_file_line_text"><span class="pygments-">            </span><span class="pygments-nv">gud-rubydb-marker-acc</span><span class="pygments-"> </span><span class="pygments-s">&quot;&quot;</span><span class="pygments-p">))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l66">
<td class="vc_file_line_number">66</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l67">
<td class="vc_file_line_number">67</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-nv">output</span><span class="pygments-p">))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l68">
<td class="vc_file_line_number">68</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l69">
<td class="vc_file_line_number">69</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-nb">defun</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-find-file</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">f</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l70">
<td class="vc_file_line_number">70</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">save-excursion</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l71">
<td class="vc_file_line_number">71</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-p">(</span><span class="pygments-k">let</span><span class="pygments-"> </span><span class="pygments-p">((</span><span class="pygments-nv">buf</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">find-file-noselect</span><span class="pygments-"> </span><span class="pygments-nv">f</span><span class="pygments-p">)))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l72">
<td class="vc_file_line_number">72</td>

<td class="vc_file_line_text"><span class="pygments-">      </span><span class="pygments-p">(</span><span class="pygments-nv">set-buffer</span><span class="pygments-"> </span><span class="pygments-nv">buf</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l73">
<td class="vc_file_line_number">73</td>

<td class="vc_file_line_text"><span class="pygments-c1">;;      (gud-make-debug-menu)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l74">
<td class="vc_file_line_number">74</td>

<td class="vc_file_line_text"><span class="pygments-">      </span><span class="pygments-nv">buf</span><span class="pygments-p">)))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l75">
<td class="vc_file_line_number">75</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l76">
<td class="vc_file_line_number">76</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-nb">defvar</span><span class="pygments-"> </span><span class="pygments-nv">rubydb-command-name</span><span class="pygments-"> </span><span class="pygments-s">&quot;ruby&quot;</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l77">
<td class="vc_file_line_number">77</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-s">&quot;File name for executing ruby.&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l78">
<td class="vc_file_line_number">78</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l79">
<td class="vc_file_line_number">79</td>

<td class="vc_file_line_text"><span class="pygments-c1">;;;###autoload</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l80">
<td class="vc_file_line_number">80</td>

<td class="vc_file_line_text"><span class="pygments-p">(</span><span class="pygments-nb">defun</span><span class="pygments-"> </span><span class="pygments-nv">rubydb</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">command-line</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l81">
<td class="vc_file_line_number">81</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-s">&quot;Run rubydb on program FILE in buffer *gud-FILE*.</span>
</td>
</tr>




<tr class="vc_row_odd" id="l82">
<td class="vc_file_line_number">82</td>

<td class="vc_file_line_text"><span class="pygments-s">The directory containing FILE becomes the initial working directory</span>
</td>
</tr>




<tr class="vc_row_odd" id="l83">
<td class="vc_file_line_number">83</td>

<td class="vc_file_line_text"><span class="pygments-s">and source-file directory for your debugger.&quot;</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l84">
<td class="vc_file_line_number">84</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">interactive</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l85">
<td class="vc_file_line_number">85</td>

<td class="vc_file_line_text"><span class="pygments-">   </span><span class="pygments-p">(</span><span class="pygments-nb">list</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">read-from-minibuffer</span><span class="pygments-"> </span><span class="pygments-s">&quot;Run rubydb (like this): &quot;</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l86">
<td class="vc_file_line_number">86</td>

<td class="vc_file_line_text"><span class="pygments-">                               </span><span class="pygments-p">(</span><span class="pygments-k">if</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nb">consp</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-history</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l87">
<td class="vc_file_line_number">87</td>

<td class="vc_file_line_text"><span class="pygments-">                                   </span><span class="pygments-p">(</span><span class="pygments-nb">car</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-history</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l88">
<td class="vc_file_line_number">88</td>

<td class="vc_file_line_text"><span class="pygments-">                                 </span><span class="pygments-p">(</span><span class="pygments-nv">concat</span><span class="pygments-"> </span><span class="pygments-nv">rubydb-command-name</span><span class="pygments-"> </span><span class="pygments-s">&quot; &quot;</span><span class="pygments-p">))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l89">
<td class="vc_file_line_number">89</td>

<td class="vc_file_line_text"><span class="pygments-">                               </span><span class="pygments-no">nil</span><span class="pygments-"> </span><span class="pygments-no">nil</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l90">
<td class="vc_file_line_number">90</td>

<td class="vc_file_line_text"><span class="pygments-">                               </span><span class="pygments-o">&#39;</span><span class="pygments-p">(</span><span class="pygments-nv">gud-rubydb-history</span><span class="pygments-"> </span><span class="pygments-o">.</span><span class="pygments-"> </span><span class="pygments-mi">1</span><span class="pygments-p">))))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l91">
<td class="vc_file_line_number">91</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l92">
<td class="vc_file_line_number">92</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-k">if</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nb">not</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nb">fboundp</span><span class="pygments-"> </span><span class="pygments-ss">&#39;gud-overload-functions</span><span class="pygments-p">))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l93">
<td class="vc_file_line_number">93</td>

<td class="vc_file_line_text"><span class="pygments-">      </span><span class="pygments-p">(</span><span class="pygments-nv">gud-common-init</span><span class="pygments-"> </span><span class="pygments-nv">command-line</span><span class="pygments-"> </span><span class="pygments-ss">&#39;gud-rubydb-massage-args</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l94">
<td class="vc_file_line_number">94</td>

<td class="vc_file_line_text"><span class="pygments-">                       </span><span class="pygments-ss">&#39;gud-rubydb-marker-filter</span><span class="pygments-"> </span><span class="pygments-ss">&#39;gud-rubydb-find-file</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l95">
<td class="vc_file_line_number">95</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-p">(</span><span class="pygments-nv">gud-overload-functions</span><span class="pygments-"> </span><span class="pygments-o">&#39;</span><span class="pygments-p">((</span><span class="pygments-nv">gud-massage-args</span><span class="pygments-"> </span><span class="pygments-o">.</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-massage-args</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l96">
<td class="vc_file_line_number">96</td>

<td class="vc_file_line_text"><span class="pygments-">                              </span><span class="pygments-p">(</span><span class="pygments-nv">gud-marker-filter</span><span class="pygments-"> </span><span class="pygments-o">.</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-marker-filter</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l97">
<td class="vc_file_line_number">97</td>

<td class="vc_file_line_text"><span class="pygments-">                              </span><span class="pygments-p">(</span><span class="pygments-nv">gud-find-file</span><span class="pygments-"> </span><span class="pygments-o">.</span><span class="pygments-"> </span><span class="pygments-nv">gud-rubydb-find-file</span><span class="pygments-p">)))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l98">
<td class="vc_file_line_number">98</td>

<td class="vc_file_line_text"><span class="pygments-">    </span><span class="pygments-p">(</span><span class="pygments-nv">gud-common-init</span><span class="pygments-"> </span><span class="pygments-nv">command-line</span><span class="pygments-"> </span><span class="pygments-nv">rubydb-command-name</span><span class="pygments-p">))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l99">
<td class="vc_file_line_number">99</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l100">
<td class="vc_file_line_number">100</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">gud-def</span><span class="pygments-"> </span><span class="pygments-nv">gud-break</span><span class="pygments-">  </span><span class="pygments-s">&quot;b %l&quot;</span><span class="pygments-">         </span><span class="pygments-s">&quot;\C-b&quot;</span><span class="pygments-"> </span><span class="pygments-s">&quot;Set breakpoint at current line.&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l101">
<td class="vc_file_line_number">101</td>

<td class="vc_file_line_text"><span class="pygments-c1">;  (gud-def gud-remove &quot;clear %l&quot;     &quot;\C-d&quot; &quot;Remove breakpoint at current line&quot;)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l102">
<td class="vc_file_line_number">102</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">gud-def</span><span class="pygments-"> </span><span class="pygments-nv">gud-step</span><span class="pygments-">   </span><span class="pygments-s">&quot;s&quot;</span><span class="pygments-">            </span><span class="pygments-s">&quot;\C-s&quot;</span><span class="pygments-"> </span><span class="pygments-s">&quot;Step one source line with display.&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l103">
<td class="vc_file_line_number">103</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">gud-def</span><span class="pygments-"> </span><span class="pygments-nv">gud-next</span><span class="pygments-">   </span><span class="pygments-s">&quot;n&quot;</span><span class="pygments-">            </span><span class="pygments-s">&quot;\C-n&quot;</span><span class="pygments-"> </span><span class="pygments-s">&quot;Step one line (skip functions).&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l104">
<td class="vc_file_line_number">104</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">gud-def</span><span class="pygments-"> </span><span class="pygments-nv">gud-cont</span><span class="pygments-">   </span><span class="pygments-s">&quot;c&quot;</span><span class="pygments-">            </span><span class="pygments-s">&quot;\C-r&quot;</span><span class="pygments-"> </span><span class="pygments-s">&quot;Continue with display.&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l105">
<td class="vc_file_line_number">105</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">gud-def</span><span class="pygments-"> </span><span class="pygments-nv">gud-finish</span><span class="pygments-"> </span><span class="pygments-s">&quot;finish&quot;</span><span class="pygments-">       </span><span class="pygments-s">&quot;\C-f&quot;</span><span class="pygments-"> </span><span class="pygments-s">&quot;Finish executing current function.&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l106">
<td class="vc_file_line_number">106</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">gud-def</span><span class="pygments-"> </span><span class="pygments-nv">gud-up</span><span class="pygments-">     </span><span class="pygments-s">&quot;up %p&quot;</span><span class="pygments-">        </span><span class="pygments-s">&quot;&lt;&quot;</span><span class="pygments-"> </span><span class="pygments-s">&quot;Up N stack frames (numeric arg).&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l107">
<td class="vc_file_line_number">107</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">gud-def</span><span class="pygments-"> </span><span class="pygments-nv">gud-down</span><span class="pygments-">   </span><span class="pygments-s">&quot;down %p&quot;</span><span class="pygments-">      </span><span class="pygments-s">&quot;&gt;&quot;</span><span class="pygments-"> </span><span class="pygments-s">&quot;Down N stack frames (numeric arg).&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l108">
<td class="vc_file_line_number">108</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">gud-def</span><span class="pygments-"> </span><span class="pygments-nv">gud-print</span><span class="pygments-">  </span><span class="pygments-s">&quot;p %e&quot;</span><span class="pygments-">         </span><span class="pygments-s">&quot;\C-p&quot;</span><span class="pygments-"> </span><span class="pygments-s">&quot;Evaluate ruby expression at point.&quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l109">
<td class="vc_file_line_number">109</td>

<td class="vc_file_line_text">
</td>
</tr>




<tr class="vc_row_odd" id="l110">
<td class="vc_file_line_number">110</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-k">setq</span><span class="pygments-"> </span><span class="pygments-nv">comint-prompt-regexp</span><span class="pygments-"> </span><span class="pygments-s">&quot;^(rdb:-) &quot;</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l111">
<td class="vc_file_line_number">111</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-k">if</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nb">boundp</span><span class="pygments-"> </span><span class="pygments-ss">&#39;comint-last-output-start</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l112">
<td class="vc_file_line_number">112</td>

<td class="vc_file_line_text"><span class="pygments-">      </span><span class="pygments-p">(</span><span class="pygments-nv">set-marker</span><span class="pygments-"> </span><span class="pygments-nv">comint-last-output-start</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">point</span><span class="pygments-p">)))</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l113">
<td class="vc_file_line_number">113</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nb">set</span><span class="pygments-"> </span><span class="pygments-p">(</span><span class="pygments-nv">make-local-variable</span><span class="pygments-"> </span><span class="pygments-ss">&#39;paragraph-start</span><span class="pygments-p">)</span><span class="pygments-"> </span><span class="pygments-nv">comint-prompt-regexp</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l114">
<td class="vc_file_line_number">114</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">(</span><span class="pygments-nv">run-hooks</span><span class="pygments-"> </span><span class="pygments-ss">&#39;rubydb-mode-hook</span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>




<tr class="vc_row_odd" id="l115">
<td class="vc_file_line_number">115</td>

<td class="vc_file_line_text"><span class="pygments-">  </span><span class="pygments-p">)</span><span class="pygments-"></span>
</td>
</tr>


</table>
</div>



<hr/>
<div class="vc_properties">
<h2>Properties</h2>
<table cellspacing="1" cellpadding="2" class="auto">
<thead>
<tr>
<th class="vc_header_sort">Name</th>
<th class="vc_header">Value</th>
</tr>
</thead>
<tbody>

<tr class="vc_row_even">
<td><strong>svn:eol-style</strong></td>

<td style="white-space: pre;">LF</td>

</tr>

</tbody>
</table>
</div>



<hr />
<table>
<tr>
<td>&nbsp;</td>
<td style="text-align: right;"><strong><a href="/viewvc/help_rootview.html">ViewVC Help</a></strong></td>
</tr>
<tr>
<td>Powered by <a href="http://viewvc.tigris.org/">ViewVC 1.1.5</a></td>
<td style="text-align: right;">&nbsp;</td>
</tr>
</table>
</body>
</html>

