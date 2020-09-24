Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B7CE277704
	for <lists+usrp-users@lfdr.de>; Thu, 24 Sep 2020 18:41:41 +0200 (CEST)
Received: from [::1] (port=49678 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kLUJM-0003LG-Uv; Thu, 24 Sep 2020 12:41:36 -0400
Received: from mout.gmx.net ([212.227.17.21]:47985)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <smithgeorge1492@gmx.com>)
 id 1kLUJJ-0003CQ-8N
 for usrp-users@lists.ettus.com; Thu, 24 Sep 2020 12:41:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1600965652;
 bh=Iqn0/2XjdwtNuobijhulfGX5zHki8TzUHP/DvEOMv+I=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=UCjbZy87I9P/2QBG6/T9I+ckyYNnYG+DoHa6QLpqiTS/q7e9XEWto7AQJayBUxOdF
 Nat/em9MLYeZQxIloPV40/8v90/kRaCZM/e/96PRJZBx4Brx2Do5sfmAbEz73iMlys
 wusuNuWdXO5ik5zS+rk9NYA27DPr1OWFam6jANFo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.216.202.205] ([62.216.202.205]) by web-mail.gmx.net
 (3c-app-gmx-bap40.server.lan [172.19.172.110]) (via HTTP); Thu, 24 Sep 2020
 18:40:52 +0200
MIME-Version: 1.0
Message-ID: <trinity-ab2db2d0-d5b3-4751-af25-4af04996694e-1600965652040@3c-app-gmx-bap40>
To: usrp-users@lists.ettus.com
Date: Thu, 24 Sep 2020 18:40:52 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:clIVCPpaI6EGH1IqGSbWPEDvPAeZ6Pkppos+sYFLlfPMCFPbxyCIotu7OUZ15f1SuTjqs
 tnPkDSQhvH9VnZmtVjXCUKzuBlp52BFTNsgE0cIqKLxWioDp1R5B1ShvUFx2KIZpTHe0xmUDvqlq
 vjE92ZeuaHSlKO4BwiU47kM/4ZyWNGrTr5NDPwo2y8Tp1kggH/+FUnzrUGazk5U7UHNJMeq2WzDu
 Qpwm9kz6GmnZF3Qze36a8obVXAUYr6RaNOVoNy2FZV6bImWawI59/DMxHHw2QXjyV7X69EUP9qDk
 uM=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:pxy2Jl41gv4=:oSFBBYPU1ao436qY3owHN5
 ZObZ/YDQrMHOAXtoCwZyE7FllWCwLz/nkqhkmiVhOygSWPOp9kH3gZjLdk7DMRbri9iZJ5aVZ
 DJfRiH4T9wEUGYIyFW2BKmWLdkr1ZC+Bh8you8ArerchlswLbw1Q0Z4VZtv3bHTEIq549xuWl
 wIKlyAWn67pr7pJ0mBUtd1InJbf7ui8ZHMUaKuGi95LpeWNYV7EfHsS7tZPZR2HmiIq8xYfC2
 bqMvZt/LKEIx9eUz14bCBy15lds3EekpWlJgEkaYOedLksJKve1uO2ErgAzPJxH2URxdv78Cl
 FwyDejr/Gx4dq2JK/w+VmyG8n2Q77taaNFJSRUjxrQGq6tsMGUCoUHsP9sWGn0y89iM1Jniqb
 xDA529MfnPf4+KZsJ2+SeUzu6F6C2/IDVBGEPxp/Cp0Que7JWit+EPu2bnsZ5TqPHD5Kw/FVm
 x0BwKBHvgdJZ1J08nn8lDNR+UIaP8IvIyJTul1pQJQ3uOrO9QxHJkjlfp7USOayDWd4y/PxeU
 0LC619mNqyYXEo7BdtrOdA9v0XnUu8FD+N5eDVQ8GbKNuGlvNxz4J6AFXjrvZCgkIQeUq1OXC
 6LkvMdsc+64JIeL49LfA3J1aQicHNrRStgItiWZSCj4Of4z6hllZ8/3NpZ4dOITdl3+EmfdBY
 C7nuWLmkWK8B1DCUIsc9gr0Btar4LdLezku0o3C0Zrla95DCF/AcXxm9bXSnI/PP+RFM=
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
Content-Type: multipart/mixed; boundary="===============6727434576546137173=="
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

--===============6727434576546137173==
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div style="font-family: Verdana;font-size: 12.0px;">
<div style="font-family: Verdana;font-size: 12.0px;">
<div>
<div>Hey Marcus,</div>

<div>I answer your questions under yours.</div>

<div><br/>
&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
Dear George,</div>

<div><br/>
On 05.08.20 21:25, George Smith via USRP-users wrote:<br/>
&gt; After reading and doing the official /Getting Started with RFNoc Development<br/>
&gt; guide/, I implemented my own VHDL/Verilog files and adapted the corresponding<br/>
&gt; XMLs for GNURadio and UHD-Integration.<br/>
Nice!<br/>
&gt;&nbsp; Furthermore I changed and added needed<br/>
&gt; C++ functions in the include and lib folder. Afterwards I uploaded the bitstream<br/>
&gt; created by Vivado 2018.3 (AR_71898 Patch).<br/>
&gt; Unfortunately the system is not working as expected. Generally the RFNoC block<br/>
&gt; is doing something (it&#39;s not hanging) but the generated output is wrong.<br/>
:(<br/>
&gt; Of course, I created a simulation testbench before, which generates the correct<br/>
&gt; output.<br/>
:( :(<br/>
&gt; In order to eliminate the misbehaviour, I have some more or less universal<br/>
&gt; questions:<br/>
&gt; 1)<br/>
&gt; My project itself is written in VHDL, and I wrote my testbench for this<br/>
&gt; (working) code. But as I understood so far the toplevel has to be in Verilog for<br/>
&gt; which the RFNoC-Modtool creates a system verilog file as a testbench. Is it<br/>
&gt; possible to include a Verilog toplevel file, with VHDL component files inside in<br/>
&gt; your testbench? If this mixed language setting would be working I could test my<br/>
&gt; system more in total.</div>

<div>&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
Sure! All that has to match is the interface.<br/>
&lt;/quote&gt;<br/>
Ok, I am going to create a bigger environment.</div>

<div>&gt; 2)<br/>
&gt; In my project I have some components, which need to be configured. My testbench<br/>
&gt; does this for the VHDL files as following: For the initilization I use an<br/>
&gt; (active-low) reset signal and set all valid signals to zero. After some clock<br/>
&gt; cycle periods, I assign the configuration values and set all valid signals to<br/>
&gt; one. If the configuration signals are successfully loaded the corresponding<br/>
&gt; ready signals are set to one (by the components itself) and the valid signals<br/>
&gt; are set to zero again. Afterwards the data from the input stream can be<br/>
&gt; processed. Generally said, this corresponds to the AMBA 4 AXI4-Stream Protocol<br/>
&gt; specification.<br/>
&gt; My first question is, how does the initialization process works on the Ettus board?<br/>
&gt; I know, that there are &quot;test1_imp1.cc&quot; and &quot;test1_block_ctrl_impl.cpp&quot; files in<br/>
&gt; the lib directory, where I can set the order and the configuration in the<br/>
&gt; constructor. I did this. So the configuration should be finished before the<br/>
&gt; stream processing starts. But using this way, are valid (and ready) signals<br/>
&gt; handled similarly as I explained before?</div>

<div><br/>
&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
Hm, not really. If your host needs to configure your RFNoC entity, it<br/>
does so via register writes; there&#39;s no special &quot;configuration time&quot; signal.<br/>
&lt;/quote&gt;</div>

<div><br/>
I think I have to go a bit more in detail. In the test1_impl.cc file, I call functions which are implemented in the test1_block_ctrl_impl.cpp. I think this is the way, a configuration generally should be done, shouldn&#39;t it?<br/>
The implemented functions in test1_block_ctrl_impl.cpp contain register writes (SR_WRITE) where I set the corresponding configuration values. As I said I did this in a predefined order.<br/>
Between two register writes (in the constructor) are there some clock cycles in between as well? How do I manually specify the clock cycles in between?<br/>
If this would not be possible, I ask myself how can an array of values (for example an integer array) be loaded via SR_WRITE into the FPGA memory? Normally a new value is loaded each clock cycle.</div>

<div>&gt; 3)<br/>
&gt; If I execute the/uhd_ursp_probe/ command, I always get a warning from RFNoC:<br/>
&gt; /Can&#39;t find a block controller for key test1, using default block controller/<br/>
&gt; Are the &quot;/test1_impl.cc/&quot; and the the &quot;/test1_block_ctrl_impl.cpp/&quot; the default<br/>
&gt; block controller or are these files the missing keys?</div>

<div><br/>
&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
I&#39;d have to look that up, but I don&#39;t think so. A block controller does<br/>
the setup mentioned above on the host side and communicates the block&#39;s<br/>
properties to UHD / RFNoC.</div>

<div>There&#39;s a default one (from which all others inherit).<br/>
&lt;/quote&gt;</div>

<div>&gt;&nbsp; Normally, I would<br/>
&gt; interpret these ones as the missing&nbsp; keys, but as I execute the RFNoC block in<br/>
&gt; GNURadio I get some debug messages included in these files. So they seem to be<br/>
&gt; used and I am confused.</div>

<div>&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
Puh, not quite sure what you&#39;re telling us here!<br/>
&lt;/quote&gt;</div>

<div>This would be cool if you can look it up. Yes i understood, that the block controller has to be set up on the host side, so I looked for a filename which may be considered. In my eyes the only file is test1_block_ctrl_impl.cpp<br/>
This file is there and it is used, since my functions are included in it. I inserted some debug messages, which are printed out in GNU-Radio console.<br/>
So I am confused why I get this warning.</div>

<div>4)</div>

<div>Do you have an answer for this?</div>

<div>&gt; 5)<br/>
&gt; After the RFNoC block I use a copy block in order to save the output. I would<br/>
&gt; assume, that the output is only generated if the (output) valid signal equals one.<br/>
&gt; Is it true?</div>

<div><br/>
&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
Kind of. The valid signals are part of AXI4s, as you&#39;ve noticed above,<br/>
and control the data flow between AXI4s things, like RFNoC blocks on the<br/>
FPGA.</div>

<div>The host doesn&#39;t see any of these, of course. It&#39;s just the way data is<br/>
exchanged on-FPGA within the RFNoC framework (much like your PC doesn&#39;t<br/>
see the ethernet framing of the datacenter that a webserver is in: these<br/>
are not part of the data communicated).<br/>
&lt;/quote&gt;</div>

<div>Yes, I understand, that inside the FPGA, this is handled as AXI4 streams. But before and after the AXI-Wrapper, the signals are converted from/to the NOC-Shell (inside the AXI-Wrapper).&nbsp; Using this NOC-Shell and GNU-Radio, I didn&#39;t know, how valid signals are handled and how the communication is done with other GNU-Radio blocks outside the board. So I can conclude that the AXI4 behaviour is &quot;forwarded&quot; (in a similar way) to the other blocks too.</div>

<div>&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
(also: why the copy block?)<br/>
&lt;/quote&gt;</div>

<div>If I want to use two blocks in GNU-Radio containing one RFNOC-Host stream, I need one, don&#39;t I?</div>

<div>&nbsp;</div>

<div>&gt; 6)<br/>
&gt; Consecutively to my VHDL component, I use your RFNoC packet resizer.</div>

<div>&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
Why, exactly? This feels kind of arbitrary?<br/>
&lt;/quote&gt;</div>

<div>Yes, the use of the packet resizer has to do something with arbitrariness for me. I want to assign each new output sample to for example eight different output packages in consecutive order. The packet resizer seemed to match, but since I do not know how an input package is defined, I think about if I should really use it.</div>

<div>&nbsp;</div>

<div>&gt; It resizes<br/>
&gt; the input packets to a configurable size. But, how is an /input package /defined?<br/>
&gt; Is it dependent from the bit size? Do I really need it for testing a basic<br/>
&gt; functionality or is the axi_wrapper sufficient?<br/>
&gt; 7)<br/>
&gt; I use GNURadio 3.7.14.0, UHD 3.15 with Python 2.7. Is there an Ettus FPGA<br/>
&gt; version planned, which supports Python 3?</div>

<div>&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
The FPGA never sees anything even remotely related to Python... so um,<br/>
yes? Every FPGA version is Python2, 3 and Python 4 compatible!</div>

<div>You probably mean you want GNU Radio with Python 3: Yeah, that exists.<br/>
Update to a current version of Python. If you, for example, used a<br/>
current Ubuntu 20.04, you&#39;d get GNU Radio 3.8.1.0, which is Py3, and<br/>
it&#39;s linked against Ubuntu 20.04&#39;s version of UHD, which is UHD 3.15.<br/>
So, no more building UHD and GNU Radio from source; you&#39;d only need to<br/>
build gr-ettus from source. So, upgrade to a current OS, and you get all<br/>
that.<br/>
&lt;/quote&gt;</div>

<div>Kind of. I want to install the whole RFNoC package with Python 3. This inclues uhd, gnuradio, gr-ettus andd uhd-fpga. If I install it with gnuradio 3.8, uhd 3.15, gr-ettus 3.8 and uhd-fpga (uhd 3.15.LTS) with python 3, I get a swig error while building gr-ettus. So it does not seem to work.</div>

<div>&lt;quote author=&quot;Marcus D. Leech via USRP-users&quot;&gt;<br/>
Best regards,</div>

<div>Marcus<br/>
&lt;/quote&gt;</div>

<div><br/>
Thanks for reanswering my questions.</div>

<div>Kind regards</div>

<div>George</div>

<div>_______________________________________________<br/>
USRP-users mailing list<br/>
&lt;email&gt;USRP-users@.ettus&lt;/email&gt;<br/>
<a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br/>
&lt;/quote&gt;</div>

<div>&nbsp;</div>
</div>
</div>
</div>

<div>&nbsp;</div>

<div class="signature">&nbsp;</div></div></body></html>


--===============6727434576546137173==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6727434576546137173==--
