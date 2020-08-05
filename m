Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8454D23CFE9
	for <lists+usrp-users@lfdr.de>; Wed,  5 Aug 2020 21:26:48 +0200 (CEST)
Received: from [::1] (port=43402 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3P3l-0007T5-F8; Wed, 05 Aug 2020 15:26:45 -0400
Received: from mout.gmx.net ([212.227.17.22]:53619)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <smithgeorge1492@gmx.com>)
 id 1k3P3g-0007MR-SN
 for usrp-users@lists.ettus.com; Wed, 05 Aug 2020 15:26:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1596655559;
 bh=fYU7INKv1M207JJOGCJFEPH725D6/1DxERZAvkwoH5s=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=dQDzkIeFnj1TqZE+amxSD1m0LXefBmhJLksvNk4VhNfv7LTvUjJ1fRQB4BAEs5e34
 qKQbA7CcMFZWw8P2ybaD76VaDZ4G/YLuV8UFhnAstuJbk1vxUBTokC210IN8ckdV74
 lDEP95490TtjgekDtbD8yM1fAwt3tYeygYtrYJZo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.216.202.51] ([62.216.202.51]) by web-mail.gmx.net
 (3c-app-gmx-bap03.server.lan [172.19.172.73]) (via HTTP); Wed, 5 Aug 2020
 21:25:59 +0200
MIME-Version: 1.0
Message-ID: <trinity-f21300c1-4f5f-4fca-bb9c-e900f0a945ac-1596655559528@3c-app-gmx-bap03>
To: usrp-users@lists.ettus.com
Date: Wed, 5 Aug 2020 21:25:59 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:TRwhduzCN3MlIUZbeufRzs4oAqg8L5dluALSGpXFu9+VrOBCMrltA2W/v+5xoZd4IXLSw
 uzAyioNDntMmTGR+CcwjGWSzZA+ZEGGgqvzLQzcQnAePzJ0knFZHD7OrE6y2tTOj33DOEfnrlCpI
 OqMN9+o51l8qFC0WjOWUls9Ssi9pQ0e2SVyLwRv/hkPW2PXGsbu6w9EqFZ7rM39EZZF2OMQxcvqu
 UXk86wGTAdmEzTVsvzYb0ADgrMQkb9ML5PmvLIulmnuYJqsngpQMwx+QwDR/Gct7EXFY9koLtZ0K
 TA=
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:JF13FspKXE0=:fPCQIjLp/OMg2+/JHQvJdB
 5XHXtPTe3WBlaxPDoD42V7nVR78VqjrDAK/pMcEDgoKOYBAW7o5NHxDFPMi6E1pft57qqSFoS
 LF+TG+0LjzDUsyKHND5MbeTofof2G1EJJAbFjxydBJdzjPxL2R/Nd1Ja5fuimGJDdJf1n8Elf
 b7pz0jEUrbLkgtURzpMROIO3GUBOyOq+JoF+1zyC5/3qFRvjXxdMJYxPUkFDtx27XZ5a1BEH4
 3iVf7IKJUrPG0tljkK12e52/atNB/3/px8tN2t26qB45KJ/qjA/I4qHmbjkjkvsaUq8svpqUQ
 CDtc4OUeo5/wOAN2jCCRRUdvx+Idk0yBaE/haouB5IZpKU2628ly7owzHNU7tVu+WrnHsnnfd
 YsXSESXtiTgTZ4Oasj/y395aKtFH8afXFhTikM9hGHL6Q+E4YMQWNbNavFS9U3Ok+1Kcbv6nG
 w2XWys50qk6ordc+cbcGVYIFrEnTtDoeyM+nFOqgaKa8WKC0+wdabM6Yjnf9lozJnLESw6jUP
 CMrFbuxgmcRZsIU3hi7DZr/vaawtT0uxHlKPslbVlCCpBweb6FSsJDAcBqvRvE5TQymJ8w7WA
 Uou87qQE/rZ4Ff/8jKaI8sDYvQVgjytJhA+Bg/bjFHKGeqwGFt04WL0DX7dWPvDhajs+CdaGe
 V0cmoRAk9mx+guVN7CVm67QgccCTTWUeOrMVz7875YAXathpDl8A1k3EwrTwwBirdrwY=
Subject: [USRP-users] RFNoC: Initialization process and packaging questions!
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
Content-Type: multipart/mixed; boundary="===============4254988051472548808=="
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

--===============4254988051472548808==
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div style="font-family: Verdana;font-size: 12.0px;">
<div>Dear community,</div>

<div>&nbsp;</div>

<div>I have some technical questions concerning your Ettus Hardware. I would appreciate if some members could help me with my requests.</div>

<div>&nbsp;</div>

<div>I use the RFNoC Framework in combination with an Ettus Research Board N310 for my project.</div>

<div>After reading and doing the official <em>Getting Started with RFNoc Development guide</em>, I implemented my own VHDL/Verilog files and adapted the corresponding XMLs for GNURadio and UHD-Integration. Furthermore I changed and added needed C++ functions in the include and lib folder. Afterwards I uploaded the bitstream created by Vivado 2018.3 (AR_71898 Patch).</div>

<div>Unfortunately the system is not working as expected. Generally the RFNoC block is doing something (it&#39;s not hanging) but the generated output is wrong.</div>

<div>Of course, I created a simulation testbench before, which generates the correct output.</div>

<div>In order to eliminate the misbehaviour, I have some more or less universal questions:</div>

<div>&nbsp;</div>

<div>1)</div>

<div>My project itself is written in VHDL, and I wrote my testbench for this (working) code. But as I understood so far the toplevel has to be in Verilog for which the RFNoC-Modtool creates a system verilog file as a testbench. Is it possible to include a Verilog toplevel file, with VHDL component files inside in your testbench? If this mixed language setting would be working I could test my system more in total.</div>

<div>&nbsp;</div>

<div>2)</div>

<div>In my project I have some components, which need to be configured. My testbench does this for the VHDL files as following: For the initilization I use an (active-low) reset signal and set all valid signals to zero. After some clock cycle periods, I assign the configuration values and set all valid signals to one. If the configuration signals are successfully loaded the corresponding ready signals are set to one (by the components itself) and the valid signals are set to zero again. Afterwards the data from the input stream can be processed. Generally said, this corresponds to the AMBA 4 AXI4-Stream Protocol specification.</div>

<div>My first question is, how does the initialization process works on the Ettus board?</div>

<div>I know, that there are &quot;test1_imp1.cc&quot; and &quot;test1_block_ctrl_impl.cpp&quot; files in the lib directory, where I can set the order and the configuration in the constructor. I did this. So the configuration should be finished before the stream processing starts. But using this way, are valid (and ready) signals handled similarly as I explained before?</div>

<div>&nbsp;</div>

<div>3)</div>

<div>If I execute the<em> uhd_ursp_probe</em> command, I always get a warning from RFNoC: <em>Can&#39;t find a block controller for key test1, using default block controller</em></div>

<div>Are the &quot;<em>test1_impl.cc</em>&quot; and the the &quot;<em>test1_block_ctrl_impl.cpp</em>&quot; the default block controller or are these files the missing keys? Normally, I would interpret these ones as the missing&nbsp; keys, but as I execute the RFNoC block in GNURadio I get some debug messages included in these files. So they seem to be used and I am confused.</div>

<div>&nbsp;</div>

<div>4)</div>

<div>Starting the RFNoC block, I get another warning from RFNoC: Assuming max packet size forr 0/FIFO_0. It does not seem to influence the basic functionality of the block, but maybe this is the reason for the wrong output.</div>

<div>How can I get rid of this warning, or is it unproblematic?</div>

<div>&nbsp;</div>

<div>5)</div>

<div>After the RFNoC block I use a copy block in order to save the output. I would assume, that the output is only generated if the (output) valid signal equals one.</div>

<div>Is it true?</div>

<div>&nbsp;</div>

<div>6)</div>

<div>Consecutively to my VHDL component, I use your RFNoC packet resizer. It resizes the input packets to a configurable size. But, how is an <em>input package </em>defined?</div>

<div>Is it dependent from the bit size? Do I really need it for testing a basic functionality or is the axi_wrapper sufficient?</div>

<div>&nbsp;</div>

<div>7)</div>

<div>I use GNURadio 3.7.14.0, UHD 3.15 with Python 2.7. Is there an Ettus FPGA version planned, which supports Python 3?</div>

<div>&nbsp;</div>

<div>I know these are many questions, but I hope the community can help me at least with some answers..</div>

<div>&nbsp;</div>

<div>Kind regards</div>

<div>&nbsp;</div>

<div>George</div>

<div>&nbsp;</div>

<div>&nbsp;</div>

<div class="signature">&nbsp;</div>
</div></div></body></html>


--===============4254988051472548808==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4254988051472548808==--
