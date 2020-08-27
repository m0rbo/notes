<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "DTD/xhtml1-transitional.dtd">
<html><head><title>The Journey of Life</title>

<style>

body{margin:0px 0px 0px 0px;font-family:arial, helvetica;background-color:#C3CFE5}
#main{margin:20px;border:1px solid #000;background-color:#fff;padding:0px 0px 15px 15px}
#Title{font-size:43px;padding-left:0px;padding-top:10px;text-transform:none}
#Description{padding:0px;padding-top:10px;font-size:12px;font-weight:normal}
.DateHeader{border-bottom:solid 1px #C3CFE5;font-size:18px;text-align:left;margin-top:30px;width:300px;margin-bottom:0px;color:gray;font-weight:bold}
.PostTitle{font-size:16px;font-weight:bold;font-family:arial, helvetica;}
.Post{margin-bottom:20px;font-size:15px;padding-right:15px;line-height:22px;font-family:arial, helvetica;color:black;}
.PostFooter{margin-bottom:10px;margin-left:0px;color:gray;font-size:10px}
#menu{border-left:1px solid #000;border-bottom:1px solid #000;float:right;padding:10px;width:160px;margin:0px 0px 10px 10px;background-color:#eee}
p{margin:0px 10px 10px 10px}

#Archives{font-size:12px;margin-top:15px}
a{text-decoration:none}
a:hover{background-color:#C3CFE5}
</style>
<!-- Meta Information -->
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="MSSmartTagsPreventParsing" content="true" />
	<meta name="generator" content="Blogger" />
<link rel="me" href="https://draft.blogger.com/profile/16055139364986492860" />
<!-- --><style type="text/css">@import url(https://www.blogger.com/static/v1/v-css/navbar/3334278262-classic.css);
div.b-mobile {display:none;}
</style>

</head><body><script type="text/javascript">
    function setAttributeOnload(object, attribute, val) {
      if(window.addEventListener) {
        window.addEventListener('load',
          function(){ object[attribute] = val; }, false);
      } else {
        window.attachEvent('onload', function(){ object[attribute] = val; });
      }
    }
  </script>
<div id="navbar-iframe-container"></div>
<script type="text/javascript" src="https://apis.google.com/js/plusone.js"></script>
<script type="text/javascript">
      gapi.load("gapi.iframes:gapi.iframes.style.bubble", function() {
        if (gapi.iframes && gapi.iframes.getContext) {
          gapi.iframes.getContext().openChild({
              url: 'https://draft.blogger.com/navbar.g?targetBlogID\x3d5813599\x26blogName\x3dThe+Journey+of+Life\x26publishMode\x3dPUBLISH_MODE_BLOGSPOT\x26navbarType\x3dBLUE\x26layoutType\x3dCLASSIC\x26searchRoot\x3dhttps://bendily.blogspot.com/search\x26blogLocale\x3den\x26v\x3d2\x26homepageUrl\x3dhttp://bendily.blogspot.com/\x26vt\x3d8658330929247940879',
              where: document.getElementById("navbar-iframe-container"),
              id: "navbar-iframe"
          });
        }
      });
    </script>

<div id="main">
	<div id="menu">
		
        <div id="Description">Anything goes.</div>

<div id="Archives">
<strong>Archives</strong><br />
						
</div>
	</div>
	
<div id="Title">The Journey of Life</div>
	
   

   
        <div class="DateHeader">Thursday, March 26, 2020</div>
   

   
    <div class="Post">
     
      <a name="6282977117796354067">&nbsp;</a><br />
      <span class="PostTitle">
      zypper se specific repos</a></span><br />
      <div style="clear:both;"></div>zypper se -i --repo SLE-SDK12-SP3-Pool --repo SLE-SDK12-SP3-Updates <br>--details --type package<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#6282977117796354067#6282977117796354067">10:34 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Tuesday, January 07, 2020</div>
   

   
    <div class="Post">
     
      <a name="8383116217529790447">&nbsp;</a><br />
      <span class="PostTitle">
      rpm package names only</a></span><br />
      <div style="clear:both;"></div>rpm -qa --qf &quot;%{NAME}\n&quot;<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#8383116217529790447#8383116217529790447">11:08 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Friday, September 20, 2019</div>
   

   
    <div class="Post">
     
      <a name="8524171379340222480">&nbsp;</a><br />
      <span class="PostTitle">
      check Raspberry PI hardware version</a></span><br />
      <div style="clear:both;"></div>cat /proc/device-tree/model<p>cat RPI-Models.txt<br>slespi:<br>cat /proc/device-tree/model<br>Raspberry Pi 3 Model B Rev 1.2<br>192.168.0.166<p><br>openhabian@openHABianPi<br>cat /proc/device-tree/model<br>Raspberry Pi Model B Plus Rev 1.2<br>192.168.0.180<p>pi@raspberrypi:~ $<br>cat /proc/device-tree/model<br>Raspberry Pi Model B Rev 2<br>192.168.0.175<p>rpi4<br>pi@raspberrypi4:<br>cat /proc/device-tree/model<br>Raspberry Pi 4 Model B Rev 1.1<br>192.168.0.152<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#8524171379340222480#8524171379340222480">10:50 AM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="5725632729942878043">&nbsp;</a><br />
      <span class="PostTitle">
      lftp put file</a></span><br />
      <div style="clear:both;"></div>lftp -c &quot;open -u anonymous,<a href="mailto:pass@word.com">pass@word.com</a> <a href="http://sftp.server.com">sftp.server.com</a>; put -O <br>incoming/ testftpfile.txt&quot;<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#5725632729942878043#5725632729942878043">10:45 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Thursday, March 07, 2019</div>
   

   
    <div class="Post">
     
      <a name="4302185609779309902">&nbsp;</a><br />
      <span class="PostTitle">
      systemd debug</a></span><br />
      <div style="clear:both;"></div>See:<br><a href="https://freedesktop.org/wiki/Software/systemd/Debugging/">https://freedesktop.org/wiki/Software/systemd/Debugging/</a><p>enable debug shell:<br>systemctl --root=/ enable debug-shell.service<p>or by specifying:<br>systemd.debug-shell=1<br>on the kernel command line.<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#4302185609779309902#4302185609779309902">3:11 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Monday, May 14, 2018</div>
   

   
    <div class="Post">
     
      <a name="7807368587165886812">&nbsp;</a><br />
      <span class="PostTitle">
      convert mp3 to m4a</a></span><br />
      <div style="clear:both;"></div>ffmpeg -i input.m4a -acodec libmp3lame -ab 128k output.mp3<p>in bulk:<br>for f in *.m4a; do ffmpeg -i &quot;$f&quot; -acodec libmp3lame -ab 256k <br>&quot;${f%.m4a}.mp3&quot;; done<p>from here:<br><a href="https://ubuntuforums.org/showthread.php?t=1614765">https://ubuntuforums.org/showthread.php?t=1614765</a><div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#7807368587165886812#7807368587165886812">8:19 AM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="7286571363442737124">&nbsp;</a><br />
      <span class="PostTitle">
      Extract mp3 audio from mkv</a></span><br />
      <div style="clear:both;"></div>The following command will find all mkv files that are in the current <br>directory and in all sub-folders and extract the audio to mp3 format.<p>find . -type f -name &quot;*.mkv&quot; -exec bash -c &#39;FILE=&quot;$1&quot;; ffmpeg -i <br>&quot;${FILE}&quot; -vn -c:a libmp3lame -y &quot;${FILE%.mkv}.mp3&quot;;&#39; _ &#39;{}&#39; \;<p>The filename of the audio file will be the same as the mkv video with <br>the correct extension. The mkv extension will be removed and replaced by <br>the mp3 extension e.g hi.mkv will create a new file named hi.mp3<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#7286571363442737124#7286571363442737124">8:15 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Saturday, September 09, 2017</div>
   

   
    <div class="Post">
     
      <a name="4764460486197307600">&nbsp;</a><br />
      <span class="PostTitle">
      extract multiple tar files</a></span><br />
      <div style="clear:both;"></div>ls *.tbz|xargs -n 1 tar -jxf<br>or<br>for f in *.tgz; do tar -xzvf &quot;$f&quot;; done<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#4764460486197307600#4764460486197307600">5:52 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Friday, July 29, 2016</div>
   

   
    <div class="Post">
     
      <a name="5859209122738953455">&nbsp;</a><br />
      <span class="PostTitle">
      rpm changelog info</a></span><br />
      <div style="clear:both;"></div>rpm -qpil --changelog kernel-default-3.0.101-0.47.52.1.8527.0.PTF.930401.x86_64.rpm<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#5859209122738953455#5859209122738953455">6:06 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Thursday, July 28, 2016</div>
   

   
    <div class="Post">
     
      <a name="3395319825283666808">&nbsp;</a><br />
      <span class="PostTitle">
      rpm file list of NOT installed package<br></a></span><br />
      <div style="clear:both;"></div>this command shows rpm info of a not installed package:<br />
rpm -qpil &nbsp;xxx.rpm<br />
<div>
<br /></div>
<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#3395319825283666808#3395319825283666808">2:37 PM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="2316972745139176173">&nbsp;</a><br />
      <span class="PostTitle">
      verify rpm header info</a></span><br />
      <div style="clear:both;"></div><span style="color: #1f497d;">verify (not installed) rpm header info:</span><div>
<span style="color: #1f497d;">rpm -Kv xxx.rpm</span></div>
<div>
<span style="color: #1f497d;"><br /></span></div>
<div>
<span style="color: #1f497d;"><div>
rpm -Kv /root/glibc-debuginfo-2.11.3-17.95.2.x86_64.rpm:</div>
<div>
&nbsp; &nbsp; Header V3 RSA/SHA256 Signature, key ID 307e3d54: NOKEY</div>
<div>
&nbsp; &nbsp; Header SHA1 digest: OK (e92d7e8266a7ed3d7b225f4ee94e93367afa7046)</div>
<div>
&nbsp; &nbsp; V3 RSA/SHA256 Signature, key ID 307e3d54: NOKEY</div>
<div>
&nbsp; &nbsp; MD5 digest: OK (11de55df41e7f0f2a22268ec2c82b5bb)</div>
</span></div>
<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#2316972745139176173#2316972745139176173">2:36 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Tuesday, April 26, 2016</div>
   

   
    <div class="Post">
     
      <a name="4749360811122077424">&nbsp;</a><br />
      <span class="PostTitle">
      drop filesystem cache</a></span><br />
      <div style="clear:both;"></div>sync<br>echo 3 &gt; /proc/sys/vm/drop_caches<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#4749360811122077424#4749360811122077424">9:06 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Tuesday, January 06, 2015</div>
   

   
    <div class="Post">
     
      <a name="6866663348228952460">&nbsp;</a><br />
      <span class="PostTitle">
      du with hidden files/folders</a></span><br />
      <div style="clear:both;"></div>du -sch .[!.]* * |sort -h<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#6866663348228952460#6866663348228952460">11:51 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Tuesday, December 09, 2014</div>
   

   
    <div class="Post">
     
      <a name="1735077232561405582">&nbsp;</a><br />
      <span class="PostTitle">
      deprecated commands</a></span><br />
      <div style="clear:both;"></div><a href="https://dougvitale.wordpress.com/2011/12/21/deprecated-linux-networking-commands-and-their-replacements/">https://dougvitale.wordpress.com/2011/12/21/deprecated-linux-networking-commands-and-their-replacements/</a><div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#1735077232561405582#1735077232561405582">9:56 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Monday, August 25, 2014</div>
   

   
    <div class="Post">
     
      <a name="263542818831424849">&nbsp;</a><br />
      <span class="PostTitle">
      rescue lvm</a></span><br />
      <div style="clear:both;"></div>How to mount LVM partitions from rescue mode (Fedora/CentOS/RedHat)<br><br>Boot your rescue media.<br>Scan for volume groups:<br># lvm vgscan -v<br><br>Activate all volume groups:<br># lvm vgchange -a y<br><br>List logical volumes:<br># lvm lvs -all<br><br>With this information, and the volumes activated, you should be able to mount the volumes:<br># mount /dev/volumegroup/logicalvolume /mountpoint<br><br>Thanks to:<br><a href="http://jim-zimmerman.com/?p=587">http://jim-zimmerman.com/?p=587</a><div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#263542818831424849#263542818831424849">9:26 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Tuesday, July 22, 2014</div>
   

   
    <div class="Post">
     
      <a name="3801158475863179854">&nbsp;</a><br />
      <span class="PostTitle">
      vi cmd</a></span><br />
      <div style="clear:both;"></div>vi +/SERVERIP/:s/$/,10.120.10.93 /etc/shorewall/params<br>open the file /etc/shorewall/params to a line starting with<br>&quot;SERVERIP&quot;<br>then search and replace.<br>the :s/ <br>is search<br>$ is end of line<br>and ,10.120.10.93<br>gets added to the end of the SERVERIP line.<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#3801158475863179854#3801158475863179854">4:27 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Tuesday, July 01, 2014</div>
   

   
    <div class="Post">
     
      <a name="8812369326468391539">&nbsp;</a><br />
      <span class="PostTitle">
      vi cli command</a></span><br />
      <div style="clear:both;"></div>with vi, you can pass a command on the cli before opening a file, <br>like:<br>vi +:%s/SEARCH/REPLACE/g filename.txt<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#8812369326468391539#8812369326468391539">1:33 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Monday, June 30, 2014</div>
   

   
    <div class="Post">
     
      <a name="4361973912797497248">&nbsp;</a><br />
      <span class="PostTitle">
      vi upper and lower case</a></span><br />
      <div style="clear:both;"></div>Lowercase all:
<br />
:%s/.*/\L&amp;/
<br />
<br />
and in uppercase :
<br />
<br />
:%s/.*/\U&amp;/<br />
<br />
Updated minutes later with:<br />
Even better:<br />
for uppercase: gggUG<br />
for lowercase: ggguG<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#4361973912797497248#4361973912797497248">10:09 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Friday, October 18, 2013</div>
   

   
    <div class="Post">
     
      <a name="7850280513895645734">&nbsp;</a><br />
      <span class="PostTitle">
      to correct indentation in vi</a></span><br />
      <div style="clear:both;"></div><div dir="ltr">gg=G</div>  <div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#7850280513895645734#7850280513895645734">11:54 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Friday, August 16, 2013</div>
   

   
    <div class="Post">
     
      <a name="649357828418240186">&nbsp;</a><br />
      <span class="PostTitle">
      find text between text</a></span><br />
      <div style="clear:both;"></div><div dir="ltr"><div>Subject: text between text<br></div><div><div><br></div><div>sed -n 's/.*START//;s/END.*//p'</div><div><br></div><div>grep &quot;externalAddress&quot; service.log.0 |sed -n &#39;s/.*externalAddress//;s/externalType.*//p&#39;</div>  <div><br></div><div>using &quot;externalAddress&quot; and &quot;externalType&quot; it will grab the text between those two.</div><div><br></div><div>but not include that text.</div><div><br></div><div>found in the comments here:</div>  <div><a href="http://www.cyberciti.biz/faq/sed-display-text/">http://www.cyberciti.biz/faq/sed-display-text/</a></div></div></div>  <div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#649357828418240186#649357828418240186">10:19 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Tuesday, March 26, 2013</div>
   

   
    <div class="Post">
     
      <a name="1541289927071930001">&nbsp;</a><br />
      <span class="PostTitle">
      grep to get another column</a></span><br />
      <div style="clear:both;"></div><div>tail firewall |grep -o &#39;DPT=[0-9]\{1,\}&#39;</div><div><br></div>  <div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#1541289927071930001#1541289927071930001">3:53 PM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="3215761939447657983">&nbsp;</a><br />
      <span class="PostTitle">
      grep to get a single column, with regex for IP address</a></span><br />
      <div style="clear:both;"></div>tail firewall |egrep -o &#39;SRC=([[:digit:]]{1,3}\.){3}[[:digit:]]{1,3}&#39;  <div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#3215761939447657983#3215761939447657983">3:51 PM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="5011969412675204978">&nbsp;</a><br />
      <span class="PostTitle">
      awk to count columns</a></span><br />
      <div style="clear:both;"></div><div>tail -n 1 firewall |awk &#39;// {for (i=1; i &lt;= NF; i++) {printf i&quot; &quot;$i&quot;\n&quot;;}}&#39;</div><div><br></div><div><div><br></div>-- <br>Have Mercy &amp; Say Yeah  </div>  <div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#5011969412675204978#5011969412675204978">3:50 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Tuesday, February 19, 2013</div>
   

   
    <div class="Post">
     
      <a name="3129739493987379328">&nbsp;</a><br />
      <span class="PostTitle">
      A nice AutoFS walkthrough...</a></span><br />
      <div style="clear:both;"></div><a href="http://troysunix.blogspot.com/2012/08/configuring-autofs-in-linux.html">http://troysunix.blogspot.com/2012/08/configuring-autofs-in-linux.html</a><div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#3129739493987379328#3129739493987379328">1:44 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Friday, February 15, 2013</div>
   

   
    <div class="Post">
     
      <a name="7435311402065985586">&nbsp;</a><br />
      <span class="PostTitle">
      extracting initrd image</a></span><br />
      <div style="clear:both;"></div>gunzip &lt; /boot/initrd.img | cpio -i --make-directories<br><br><br>Not that this would ever need to be done, but if you made edits to the<br>initrd extracted<br>data/files to create the initrd image from the new directory:<br><br>find ./ | cpio -H newc -o &gt; initrd.cpio<br>gzip initrd.cpio<br>mv initrd.cpio.gz initrd.img<br><br><br>All this from this helpful link:<br><a href="http://www.linuxforums.org/forum/kernel/82174-extracting-initrd-image.html">http://www.linuxforums.org/forum/kernel/82174-extracting-initrd-image.html</a><div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#7435311402065985586#7435311402065985586">11:13 AM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="1535581935455122358">&nbsp;</a><br />
      <span class="PostTitle">
      Convert current time to Epoch</a></span><br />
      <div style="clear:both;"></div>Print Current UNIX Time:<br><br>date +%s<br><br><br>Convert Epoch To Current Time:<br><br>date -d @Epoch<br>date -d @1268727836<br>date -d &quot;1970-01-01 1268727836 sec GMT&quot;<br><br><br>note that @ feature only works with latest version of date (GNU<br>coreutils v5.3.0+). To convert number of seconds back to a more<br>readable form, use a command like this:<br><br>date -d @1268727836 +&quot;%d-%m-%Y %T %z&quot;<br><br><br>AWK Example:<br><br>echo 1268727836 | awk &#39;{print strftime(&quot;%c&quot;,$1)}&#39;<br><br><br>Perl Example:<br><br>perl -e &quot;print scalar(localtime(1268727836))&quot;<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#1535581935455122358#1535581935455122358">11:11 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Monday, July 25, 2011</div>
   

   
    <div class="Post">
     
      <a name="8269124922708523597">&nbsp;</a><br />
      <span class="PostTitle">
      How to see high IO usage per process?</a></span><br />
      <div style="clear:both;"></div>use iotop.<p>and if it&#39;s a loop device?<br>use losetup -a to list loop devices.<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#8269124922708523597#8269124922708523597">2:27 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Friday, July 16, 2010</div>
   

   
    <div class="Post">
     
      <a name="1635349537813659064">&nbsp;</a><br />
      <span class="PostTitle">
      mysql password reset</a></span><br />
      <div style="clear:both;"></div>From:<br />
<a href="http://www.howtoforge.com/reset-forgotten-mysql-root-password">http://www.howtoforge.com/reset-forgotten-mysql-root-password</a><br />
Stop mysql and start it with:<br />
<br />
mysqld_safe --skip-grant-tables<br />
<br />
Then login to mysql cmd line:<br />mysql --user=root mysql<br />
update user set Password=PASSWORD('new-password') where user='root';<br />flush privileges;<br />exit;<br />
<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#1635349537813659064#1635349537813659064">1:15 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Thursday, February 11, 2010</div>
   

   
    <div class="Post">
     
      <a name="6519533736240747571">&nbsp;</a><br />
      <span class="PostTitle">
      vi tip, search for "text" and "text"</a></span><br />
      <div style="clear:both;"></div>The search item is a regular expression and it is line oriented, so to<br>find a line that contains both &quot;file&quot; and &quot;paper&quot; (which implies any<br>number of characters in between), do this:<p>/file.*paper<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#6519533736240747571#6519533736240747571">12:58 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Thursday, December 17, 2009</div>
   

   
    <div class="Post">
     
      <a name="3137378232126553786">&nbsp;</a><br />
      <span class="PostTitle">
      Setup SSH tunnel/SOCKS proxy</a></span><br />
      <div style="clear:both;"></div>ssh -D localhost:8880 <a href="mailto:brad@bendily.com">brad@bendily.com</a><div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#3137378232126553786#3137378232126553786">10:19 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Thursday, November 05, 2009</div>
   

   
    <div class="Post">
     
      <a name="7676758282428271372">&nbsp;</a><br />
      <span class="PostTitle">
      Extract a RPM</a></span><br />
      <div style="clear:both;"></div>Extract RPM file using rpm2cpio and cpio command:<br>$ rpm2cpio php-5.1.4-1.esp1.x86_64.rpm | cpio -idmv<p>-- <br>Have Mercy &amp; Say Yeah<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#7676758282428271372#7676758282428271372">3:59 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Friday, October 16, 2009</div>
   

   
    <div class="Post">
     
      <a name="4142777037561406841">&nbsp;</a><br />
      <span class="PostTitle">
      to extract a single file from a tar...</a></span><br />
      <div style="clear:both;"></div>This command will extract a specific file from the tar backup file:<br>tar -xvf backup.tar ./test.pdf<p>You need to know the specific name of the file to be able to extract<br>it. So, to find &quot;test&quot;<p>tar -tf backup.tar | grep test<br>This returns:<br>./test.pdf<p>In the restore/extract command you will need to specify the &quot;./&quot;<br>before the file name, or<br>specify the full path that is listed in the &quot;tar -tf&quot; command<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#4142777037561406841#4142777037561406841">3:03 PM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="2196998915950593250">&nbsp;</a><br />
      <span class="PostTitle">
      To Reverse IP address format</a></span><br />
      <div style="clear:both;"></div>I wanted then to reverse my IP addresses so i could build a reverse<br>zone file for DNS.<br>I found an easy way:<p>IP=10.120.19.18<br>IP=(${IP//./ })<br>Rev=${IP[3]}.${IP[2]}.${IP[1]}.${IP[0]}<br>echo $Rev<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#2196998915950593250#2196998915950593250">2:57 PM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="5157019160669987789">&nbsp;</a><br />
      <span class="PostTitle">
      Sort IP addresses numerically</a></span><br />
      <div style="clear:both;"></div><a href="http://www.cyberciti.biz/faq/unix-linux-shell-script-sorting-ip-addresses/">http://www.cyberciti.biz/faq/unix-linux-shell-script-sorting-ip-addresses/</a><p>sort -t . -k 3,3n -k 4,4n /path/to/file<p>ex:<br>to sort a whole IP address list:<br>sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n<p>cat ipfile<br>10.13.3.2<br>10.198.78.4<br>1.1.3.2<br>10.3.2.8<br>10.8.34.2<p>cat ipfile |sort -t . -k 1,1n -k 2,2n -k 3,3n -k 4,4n<br>1.1.3.2<br>10.3.2.8<br>10.8.34.2<br>10.13.3.2<br>10.198.78.4<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#5157019160669987789#5157019160669987789">2:52 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Monday, July 20, 2009</div>
   

   
    <div class="Post">
     
      <a name="169243052632748128">&nbsp;</a><br />
      <span class="PostTitle">
      RPM, list packages by install date</a></span><br />
      <div style="clear:both;"></div>rpm -qa --last | less<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#169243052632748128#169243052632748128">5:07 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Friday, May 29, 2009</div>
   

   
    <div class="Post">
     
      <a name="8395240198953565228">&nbsp;</a><br />
      <span class="PostTitle">
      IOstat info...</a></span><br />
      <div style="clear:both;"></div>To find high IO utilization, use iostat...<br>Run<br>iostat -x 5<p>And let it run for a little while, checking the the last three columns:<p><br>             await<br>                     The  average  time  (in  milliseconds) for I/O requests issued to the device to be served.  <br>                     This includes the time spent by the requests in queue and the time spent servicing them.<p>              svctm<br>                     The average service time (in milliseconds) for I/O requests that were issued to the device.<p>              %util<br>                     Percentage of CPU time during which I/O requests were issued to the device (bandwidth  utilization  for  the device). <br>                     Device saturation occurs when this value is close to 100%.<p><br>Why CPU should be waiting at all in an interrupt driven system?<br>OS is in wait state if there is pending I/O (disk/nfs access etc.) and no other task to schedule. <br>In other words there is nothing to do(cpu is idle), cause we have to wait for I/O completion first.<p><a href="http://www.linuxcommand.org/man_pages/iostat1.html">http://www.linuxcommand.org/man_pages/iostat1.html</a><div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#8395240198953565228#8395240198953565228">1:11 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Thursday, April 02, 2009</div>
   

   
    <div class="Post">
     
      <a name="1457461009430603351">&nbsp;</a><br />
      <span class="PostTitle">
      to copy/cut and paste/insert in vi inline...</a></span><br />
      <div style="clear:both;"></div>v - mark first character of the block<br>move the cursor to the end<p>y - mark last character of the block and yank block to this point (or &quot;d&quot; to delete to this point)<br>move the cursor to some other place<p>gp - put the block starting on the line immediately after the cursor<p><br>:se ic     set ignore case for searches <p>from:<br><a href="http://www.selectorweb.com/vi.html">http://www.selectorweb.com/vi.html</a><br>or a copy at:<br><a href="http://www.bendily.com/viref.html">http://www.bendily.com/viref.html</a><div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#1457461009430603351#1457461009430603351">1:30 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Monday, January 19, 2009</div>
   

   
    <div class="Post">
     
      <a name="6526661919023313492">&nbsp;</a><br />
      <span class="PostTitle">
      the iproute2 "ss" command.</a></span><br />
      <div style="clear:both;"></div>it&#39;s like netstat, only a tab bit better.<br>from what the pdf says.<br>the pdf is from 2001, so it&#39;s old, but gives some<br>more helpful info than ss -h.<br>The pdf is located here:<br>/usr/share/doc/packages/iproute2/ss.pdf<p>ss -ta dumps all TCP sockets<br>ss -ua dumps all UDP sockets<br>ss -wa dumps all RAW sockets<br>ss -xa dumps all UNIX sockets<br>ss -nl shows anything listening and doesn&#39;t resolve port names<p><br>this command helped me to find a port that was listening on<br>my machine, but netstat nor lsof showed the command.<p>However, the port turned out to be there because when mounting<br>nfs shares it creates a port for the nfs traffic to return on.<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#6526661919023313492#6526661919023313492">10:23 AM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Wednesday, January 14, 2009</div>
   

   
    <div class="Post">
     
      <a name="3643456998745396105">&nbsp;</a><br />
      
      <div style="clear:both;"></div>you can install nmap, but you'll need winpcap too.<p>or, possibly try portqry from ms.<br />PortQry is a free download from Microsoft.</p><p>http://www.onlinecomputertips.com/networking/portqry.html<br />just google for a link...<br /><a href="http://tinyurl.com/9qfg9t">http://tinyurl.com/9qfg9t</a><br />i don't think tinyurl's stay available for a long time so...</p><div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#3643456998745396105#3643456998745396105">5:00 PM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="5229027123798591202">&nbsp;</a><br />
      <span class="PostTitle">
      uhh... forget the previous message, this one is better...</a></span><br />
      <div style="clear:both;"></div>The problem with trying to identify if a UDP port is unfiltered (ie not <br>filtered by a firewall) is that neither an open port nor a filtered one <br>should respond.  UDP is connectionless so an open port would not <br>acknowledge your packet.<p>Nmap reports udp ports for which it wasn&#39;t able to get a response as <br>&quot;open|filtered&quot; because it obviously cannot distinguish which is which.<p>If the udp port is closed however, this helps alot because it should <br>elicit an ICMP port unreachable message (ICMP type 3 code 3).<p>Having said that, some firewalls will respond with other ICMP port <br>unreachable packets and nmap will interpret these as saying the port is <br>filtered.<p>I suggest that you stop the service on the remote server and use<p>nmap &lt;target&gt; -PN -n -sU -p162,161,4104-4105 --packet-trace --reason<p>which will perfom a UDP scan against the specified ports on the target <br>without pinging it or doing name resolution.  Any sent and received <br>packets will be printed to the screen and nmap will display the reason it <br>reports the status of each port.<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#5229027123798591202#5229027123798591202">4:51 PM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="744102275697070733">&nbsp;</a><br />
      <span class="PostTitle">
      gonna be posting some tech stuff. a znotes blog if you will...</a></span><br />
      <div style="clear:both;"></div>to nmap/test specific udp ports:<br>nmap 10.51.1.98  -sU -p U:161-162<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#744102275697070733#744102275697070733">4:47 PM</a> 
      </span>
   </div>


   

   
    <div class="Post">
     
      <a name="5683894684973110275">&nbsp;</a><br />
      <span class="PostTitle">
      posting a new comment today</a></span><br />
      <div style="clear:both;"></div>not sure why, but it felt like a good day to post.<br>ok. post done.<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#5683894684973110275#5683894684973110275">4:34 PM</a> 
      </span>
   </div>


   
        <div class="DateHeader">Sunday, September 14, 2003</div>
   

   
    <div class="Post">
     
      <a name="10635879373770832">&nbsp;</a><br />
      
      <div style="clear:both;"></div>ohla! Life is carring on at a steady pace.<br /><br />Have Mercy and Say Yeah!<div style="clear:both; padding-bottom:0.25em"></div><br />
     <span class="PostFooter">
     - posted by bendily.com @ <a href="./index.html#10635879373770832#10635879373770832">8:05 PM</a> 
      </span>
   </div>


<br />
<p style="text-align:center">
<!-- 
<a href="http://www.blogger.com"><img alt="Powered by Blogger" border=0 src="http://buttons.blogger.com/bloggerbutton1.gif"></a>
-->
</p>


</div>

</body>
</html>