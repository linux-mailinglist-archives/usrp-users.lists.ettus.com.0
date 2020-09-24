Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E71BE277709
	for <lists+usrp-users@lfdr.de>; Thu, 24 Sep 2020 18:42:14 +0200 (CEST)
Received: from [::1] (port=49690 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLUJx-0003cQ-VD; Thu, 24 Sep 2020 12:42:13 -0400
Received: from mout.gmx.net ([212.227.17.21]:59343)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <smithgeorge1492@gmx.com>)
 id 1kLUJt-0003Gi-Me
 for usrp-users@lists.ettus.com; Thu, 24 Sep 2020 12:42:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1600965688;
 bh=IGeLDVVNc0bEYpmGCaX9YKwxglXUmfkYcGTBJ0FFPPw=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=ey8BiVJ6Tp/QkHspkbbTWVM5MCphVNO1ioP1yPvPBq5mLAmvP5bNuRsD3MFTFlB8s
 NIz81iIepySmCKWZJxesTLVPCDeKI/6pK/Lv79+nXjblFJY8lmISmX6PhG7mDaEBwu
 zmqGoVaaEcn1PHuEQ3/nGJ+6085M1U3wiLkfQcDc=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.216.202.205] ([62.216.202.205]) by web-mail.gmx.net
 (3c-app-gmx-bap40.server.lan [172.19.172.110]) (via HTTP); Thu, 24 Sep 2020
 18:41:28 +0200
MIME-Version: 1.0
Message-ID: <trinity-02dcd35d-18a3-48c2-8f79-2b5cd9ef2cff-1600965688568@3c-app-gmx-bap40>
To: usrp-users@lists.ettus.com
Date: Thu, 24 Sep 2020 18:41:28 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:rZPECjcpexcOBqv7lBUM1tTo7AFOgOJ+MBrsQg/U0Cpco1gD82T37GY+zgHCzvWgJvT+u
 6lJY1r0PU8qkQiYtHYwdmuLf0gVedoQBUwkgOB/EzHeV/yqhB+bVuMKlZq3Pr293SWU+3FeXLXR+
 IQ2cBOd/mB4fGbvPzw1VyGn0dICnR+jWdl6LALHahL2D4PY5NRQoup89QFbEgfci1LDtg9KDu/Nc
 duNjlCGzmQZdZqyNM112wC/3BnUt4ZLdgJjVR651mB7ie/K4yDmjCFsc7oH61BPa9IJS33d/QFN4
 uA=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JJi3er/n8zU=:se/Z6tK4z80A8XZJBn9wXy
 4fcWkVJxw9GLrOye08GP5XSUf3cWcbnT0ONHECVgQgwnTUrNDiLaWpGPgjs473zJZf9p1kpjK
 WBEaka6vn0Ig19qCm3eMYqpLA2FJ4aEZRBDl7DvrKcPNzn5SAXl7TaW8glOPQsxZEYAYjkP8R
 ojF/yBLudSoSJFXg0cd20LTGlr2iY3ySkEBjw1JTyBNaPuLdgTbbkhtTolsV5QabdfdYC0Ga8
 q9Uj51qHowzF5NfhIk8DtwkAmPSCy6cJzdy27eBEyJDShoOPiOYN7FAZ3NHgk/ZqGZXla1SSr
 qq2jIarwdZbV058zveQAqX6FszTTe4PaOTUygTYZnTWdwspeAbzPOplHb4Wq0M4P1yqai1hgi
 6eGtbtbYweO+DNi6pl0e9uU+iSf2+0ztBnERU0iTUs+h95pWVgOmXHa2aOkHVVAoqWLuoVfMl
 Kwi+eqTHJfGf0T3lh6RwyvezUpl6rI0MKRTdHGOL+Eb6404r1VkhKYb1EIhETrfoKF36Q56zg
 G/+0Ct7Bnbvj3n5kskzOvQR6zXfHLKf2dE1V49kIFfwBGDZaw0ry9xStcR+eIjTyD47EA4kGZ
 FI1TaTrS1R2KJZWn8IjQ7AQH5CiD++Qzcp2aFOrLopW9DqifTrAqBGgObe2m9dbY7+TRnKF63
 SHI1CxYHt8klXl2gX4BSXlH2z/2VNCZk+J4+9ByZ/qvPxAFF9uiX0re2DBCg999UMH7o=
Subject: Re: [USRP-users] RFNoC: Initialization process and packaging
 questions!
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: George Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: George Smith <smithgeorge1492@gmx.com>
Content-Type: multipart/mixed; boundary="===============5961775734050806666=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============5961775734050806666==
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hey Marcus,<br/>
I answer your questions under yours.<br/>
&nbsp;<br/>
Dear George,<br/>
On 05.08.20 21:25, George Smith via USRP-users wrote:<br/>
&gt;&gt; After reading and doing the official /Getting Started with RFNoc Development<br/>
&gt;&gt; guide/, I implemented my own VHDL/Verilog files and adapted the corresponding<br/>
&gt;&gt; XMLs for GNURadio and UHD-Integration.<br/>
Nice!<br/>
&gt;&gt;&nbsp; Furthermore I changed and added needed<br/>
&gt;&gt; C++ functions in the include and lib folder. Afterwards I uploaded the bitstream<br/>
&gt; created by Vivado 2018.3 (AR_71898 Patch).<br/>
&gt;&gt; Unfortunately the system is not working as expected. Generally the RFNoC block<br/>
&gt;&gt; is doing something (it&#39;s not hanging) but the generated output is wrong.<br/>
:(<br/>
&gt;&gt; Of course, I created a simulation testbench before, which generates the correct<br/>
&gt;&gt; output.<br/>
:( :(<br/>
&gt;&gt; In order to eliminate the misbehaviour, I have some more or less universal<br/>
&gt;&gt; questions:<br/>
&gt;&gt; 1)<br/>
&gt;&gt; My project itself is written in VHDL, and I wrote my testbench for this<br/>
&gt;&gt; (working) code. But as I understood so far the toplevel has to be in Verilog for<br/>
&gt;&gt; which the RFNoC-Modtool creates a system verilog file as a testbench. Is it<br/>
&gt;&gt; possible to include a Verilog toplevel file, with VHDL component files inside in<br/>
&gt;&gt; your testbench? If this mixed language setting would be working I could test my<br/>
&gt;&gt; system more in total.<br/>
&gt;Sure! All that has to match is the interface.<br/>
Ok, I am going to create a bigger environment.<br/>
&gt;&gt; 2)<br/>
&gt;&gt; In my project I have some components, which need to be configured. My testbench<br/>
&gt;&gt; does this for the VHDL files as following: For the initilization I use an<br/>
&gt;&gt; (active-low) reset signal and set all valid signals to zero. After some clock<br/>
&gt;&gt; cycle periods, I assign the configuration values and set all valid signals to<br/>
&gt;&gt; one. If the configuration signals are successfully loaded the corresponding<br/>
&gt;&gt; ready signals are set to one (by the components itself) and the valid signals<br/>
&gt;&gt; are set to zero again. Afterwards the data from the input stream can be<br/>
&gt;&gt; processed. Generally said, this corresponds to the AMBA 4 AXI4-Stream Protocol<br/>
&gt;&gt; specification.<br/>
&gt;&gt; My first question is, how does the initialization process works on the Ettus board?<br/>
&gt;&gt; I know, that there are &quot;test1_imp1.cc&quot; and &quot;test1_block_ctrl_impl.cpp&quot; files in<br/>
&gt;&gt; the lib directory, where I can set the order and the configuration in the<br/>
&gt;&gt; constructor. I did this. So the configuration should be finished before the<br/>
&gt;&gt; stream processing starts. But using this way, are valid (and ready) signals<br/>
&gt;&gt; handled similarly as I explained before?<br/>
&nbsp;<br/>
&gt;Hm, not really. If your host needs to configure your RFNoC entity, it<br/>
&gt;does so via register writes; there&#39;s no special &quot;configuration time&quot; signal.<br/>
&nbsp;<br/>
I think I have to go a bit more in detail. In the test1_impl.cc file, I call functions which are implemented in the test1_block_ctrl_impl.cpp. I think this is the way, a configuration generally should be done, shouldn&#39;t it?<br/>
The implemented functions in test1_block_ctrl_impl.cpp contain register writes (SR_WRITE) where I set the corresponding configuration values. As I said I did this in a predefined order.<br/>
Between two register writes (in the constructor) are there some clock cycles in between as well? How do I manually specify the clock cycles in between?<br/>
If this would not be possible, I ask myself how can an array of values (for example an integer array) be loaded via SR_WRITE into the FPGA memory? Normally a new value is loaded each clock cycle.<br/>
&gt;&gt; 3)<br/>
&gt;&gt; If I execute the/uhd_ursp_probe/ command, I always get a warning from RFNoC:<br/>
&gt;&gt; /Can&#39;t find a block controller for key test1, using default block controller/<br/>
&gt;&gt; Are the &quot;/test1_impl.cc/&quot; and the the &quot;/test1_block_ctrl_impl.cpp/&quot; the default<br/>
&gt;&gt; block controller or are these files the missing keys?<br/>
&nbsp;<br/>
&gt;I&#39;d have to look that up, but I don&#39;t think so. A block controller does<br/>
&gt;the setup mentioned above on the host side and communicates the block&#39;s<br/>
&gt;properties to UHD / RFNoC.<br/>
&gt;There&#39;s a default one (from which all others inherit).<br/>
&gt;&gt;&nbsp; Normally, I would<br/>
&gt;&gt; interpret these ones as the missing&nbsp; keys, but as I execute the RFNoC block in<br/>
&gt;&gt; GNURadio I get some debug messages included in these files. So they seem to be<br/>
&gt;&gt; used and I am confused.<br/>
&gt;Puh, not quite sure what you&#39;re telling us here!<br/>
This would be cool if you can look it up. Yes i understood, that the block controller has to be set up on the host side, so I looked for a filename which may be considered. In my eyes the only file is test1_block_ctrl_impl.cpp<br/>
This file is there and it is used, since my functions are included in it. I inserted some debug messages, which are printed out in GNU-Radio console.<br/>
So I am confused why I get this warning.<br/>
4)<br/>
Do you have an answer for this?<br/>
&gt;&gt; 5)<br/>
&gt;&gt; After the RFNoC block I use a copy block in order to save the output. I would<br/>
&gt;&gt; assume, that the output is only generated if the (output) valid signal equals one.<br/>
&gt;&gt; Is it true?<br/>
&nbsp;<br/>
&gt;Kind of. The valid signals are part of AXI4s, as you&#39;ve noticed above,<br/>
&gt;and control the data flow between AXI4s things, like RFNoC blocks on the<br/>
&gt;FPGA.<br/>
&gt;The host doesn&#39;t see any of these, of course. It&#39;s just the way data is<br/>
&gt;exchanged on-FPGA within the RFNoC framework (much like your PC doesn&#39;t<br/>
&gt;see the ethernet framing of the datacenter that a webserver is in: these<br/>
&gt;are not part of the data communicated).<br/>
&gt;Yes, I understand, that inside the FPGA, this is handled as AXI4 streams. But before and after the AXI-Wrapper, the signals are converted from/to the NOC-Shell (inside the AXI-Wrapper).&nbsp; Using this NOC-Shell and GNU-Radio, I didn&#39;t know, how valid signals are handled and how the communication is done with other GNU-Radio blocks outside the board. So I can conclude that the AXI4 behaviour is &quot;forwarded&quot; (in a similar way) to the other blocks too.<br/>
&gt;(also: why the copy block?)<br/>
If I want to use two blocks in GNU-Radio containing one RFNOC-Host stream, I need one, don&#39;t I?<br/>
&nbsp;<br/>
&gt; 6)<br/>
&gt; Consecutively to my VHDL component, I use your RFNoC packet resizer.<br/>
&gt;Why, exactly? This feels kind of arbitrary?<br/>
&gt;Yes, the use of the packet resizer has to do something with arbitrariness for me. I want to assign each new output sample to for example eight different output packages in consecutive order. The packet resizer seemed to match, but since I do not know how an input package is defined, I think about if I should really use it.<br/>
&nbsp;<br/>
&gt;&gt; It resizes<br/>
&gt;&gt; the input packets to a configurable size. But, how is an /input package /defined?<br/>
&gt;&gt; Is it dependent from the bit size? Do I really need it for testing a basic<br/>
&gt;&gt; functionality or is the axi_wrapper sufficient?<br/>
&gt;&gt; 7)<br/>
&gt;&gt; I use GNURadio 3.7.14.0, UHD 3.15 with Python 2.7. Is there an Ettus FPGA<br/>
&gt;&gt; version planned, which supports Python 3?<br/>
&gt;The FPGA never sees anything even remotely related to Python... so um,<br/>
&gt;yes? Every FPGA version is Python2, 3 and Python 4 compatible!<br/>
&gt;You probably mean you want GNU Radio with Python 3: Yeah, that exists.<br/>
&gt;Update to a current version of Python. If you, for example, used a<br/>
&gt;current Ubuntu 20.04, you&#39;d get GNU Radio 3.8.1.0, which is Py3, and<br/>
&gt;it&#39;s linked against Ubuntu 20.04&#39;s version of UHD, which is UHD 3.15.<br/>
&gt;So, no more building UHD and GNU Radio from source; you&#39;d only need to<br/>
&gt;build gr-ettus from source. So, upgrade to a current OS, and you get all<br/>
&gt;that.<br/>
Kind of. I want to install the whole RFNoC package with Python 3. This inclues uhd, gnuradio, gr-ettus andd uhd-fpga. If I install it with gnuradio 3.8, uhd 3.15, gr-ettus 3.8 and uhd-fpga (uhd 3.15.LTS) with python 3, I get a swig error while building gr-ettus. So it does not seem to work.<br/>
&gt;Best regards,<br/>
&gt;Marcus<br/>
&nbsp;<br/>
Thanks for reanswering my questions.<br/>
Kind regards<br/>
George<br/>
_______________________________________________<br/>
USRP-users mailing list<br/>
&lt;email&gt;USRP-users@.ettus&lt;/email&gt;<br/>
<a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br/>
&nbsp;</div>

<div>&nbsp;</div>

<div class="signature">&nbsp;</div></div></body></html>


--===============5961775734050806666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5961775734050806666==--
