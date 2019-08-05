Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31442820AF
	for <lists+usrp-users@lfdr.de>; Mon,  5 Aug 2019 17:48:17 +0200 (CEST)
Received: from [::1] (port=42980 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hufDW-0006VP-Mp; Mon, 05 Aug 2019 11:48:10 -0400
Received: from mail-out-1.itc.rwth-aachen.de ([134.130.5.46]:27487)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <lku@inets.rwth-aachen.de>)
 id 1hufDP-000661-DQ
 for usrp-users@lists.ettus.com; Mon, 05 Aug 2019 11:48:03 -0400
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DhDwA9T0hd//3egoZmDg4BAQEEAQEHB?=
 =?us-ascii?q?AEBgWeBFlMvbVIyKoQej0OBYi2JZZEdCQEBAQEBAQEBAQgYAQoJAQIBAYQ/AoJ?=
 =?us-ascii?q?vIzgTAQMBAQUBAQEBBm2FHgyFSgEBAQEDAQEhBEUCCBECCxEDAQIBJwMCAhsMA?=
 =?us-ascii?q?R4JCAYBDAYCAQGDHgGBdhQPrAN/Mx+FKoMugUgFgS+EcoZxF4FAP4ERJ4JrPoJ?=
 =?us-ascii?q?hAQSBfhaCVYJYBIw4nmgJgTlkhXxgiDaFBgYbgi9tiiUFJ4o8jUeHWJBAgT0qI?=
 =?us-ascii?q?T6BGjMaCBwUO4IEaAmGKoYzg2U9PTMBAYEEAQGNNAEB?=
X-IPAS-Result: =?us-ascii?q?A2DhDwA9T0hd//3egoZmDg4BAQEEAQEHBAEBgWeBFlMvbVI?=
 =?us-ascii?q?yKoQej0OBYi2JZZEdCQEBAQEBAQEBAQgYAQoJAQIBAYQ/AoJvIzgTAQMBAQUBA?=
 =?us-ascii?q?QEBBm2FHgyFSgEBAQEDAQEhBEUCCBECCxEDAQIBJwMCAhsMAR4JCAYBDAYCAQG?=
 =?us-ascii?q?DHgGBdhQPrAN/Mx+FKoMugUgFgS+EcoZxF4FAP4ERJ4JrPoJhAQSBfhaCVYJYB?=
 =?us-ascii?q?Iw4nmgJgTlkhXxgiDaFBgYbgi9tiiUFJ4o8jUeHWJBAgT0qIT6BGjMaCBwUO4I?=
 =?us-ascii?q?EaAmGKoYzg2U9PTMBAYEEAQGNNAEB?=
X-IronPort-AV: E=Sophos;i="5.64,350,1559512800"; d="scan'208,217";a="86477935"
Received: from gollum.mobnets.rwth-aachen.de ([134.130.222.253])
 by mail-in-1.itc.rwth-aachen.de with ESMTP; 05 Aug 2019 17:47:01 +0200
Received: from [134.61.159.108] (159-108.eduroam.rwth-aachen.de
 [134.61.159.108])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by gollum.mobnets.rwth-aachen.de (Postfix) with ESMTPSA id 2CD72180160;
 Mon,  5 Aug 2019 17:47:01 +0200 (CEST)
To: "Leong, Kirsten - 0551 - MITLL" <Kirsten.Leong@ll.mit.edu>,
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <0DDB54B1-7013-468B-B0FB-CB0262804513@contoso.com>
 <c82d5049-525c-f985-fabc-7b29b2687225@inets.rwth-aachen.de>
 <255EAC65-3DFA-4CBC-AADD-3CD78FAEB801@ll.mit.edu>
 <C5ABC132-D9B2-4032-9C99-1FC373C139CF@ll.mit.edu>
Message-ID: <45ec654f-635e-f1df-836f-2a46b45f97a7@inets.rwth-aachen.de>
Date: Mon, 5 Aug 2019 17:47:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <C5ABC132-D9B2-4032-9C99-1FC373C139CF@ll.mit.edu>
Content-Language: en-US
Subject: Re: [USRP-users] Error 'Timeout on Chan 0'
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Lars Kuger via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Lars Kuger <lku@inets.rwth-aachen.de>
Content-Type: multipart/mixed; boundary="===============3599502753417292282=="
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

This is a multi-part message in MIME format.
--===============3599502753417292282==
Content-Type: multipart/alternative;
 boundary="------------6DD3677AE999E4158A9D3F76"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------6DD3677AE999E4158A9D3F76
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Kirsten,

Using the default block controller should work, so I would expect that 
you can ignore that warning message.

In addition to Jonathon's suggestion of using chipscope on your block 
you could try to narrow down whether the error is caused in your verilog 
module or in some other file. For instance, what happens if you comment 
out your code and copy and paste some working verilog code into your 
module, e.g. from the RFNoC tutorial gain block (or just have a simple 
loopback)? If the error disappears I would conclude that the error 
should be somewhere in the fmdemod verilog code.

Best regards,
Lars


On 05.08.19 15:48, Leong, Kirsten - 0551 - MITLL wrote:
>
> Could this be because I get the warning ‘can’t find a block controller 
> for key fmdemod, using default block controller!’ or is this a 
> separate problem?
>
> Thanks,
>
> Kirsten
>
> *From: *USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of 
> "Leong, Kirsten - 0551 - MITLL via USRP-users" 
> <usrp-users@lists.ettus.com>
> *Reply-To: *"Leong, Kirsten - 0551 - MITLL" <Kirsten.Leong@ll.mit.edu>
> *Date: *Friday, August 2, 2019 at 12:25 PM
> *To: *Lars Kuger <lku@inets.rwth-aachen.de>, 
> "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> *Subject: *Re: [USRP-users] Error 'Timeout on Chan 0'
>
> I tried reformatting the xml file based off the uhd_rfnoc_adder.xml 
> file; however, I still get the same error. I’m not trying to throw any 
> packets away so I cannot ignore the error. My block is expecting to 
> take in a complex 32bit floats and output a 32 bit float.
>
> *From: *USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of 
> Lars Kuger via USRP-users <usrp-users@lists.ettus.com>
> *Reply-To: *Lars Kuger <lku@inets.rwth-aachen.de>
> *Date: *Friday, August 2, 2019 at 10:14 AM
> *To: *"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
> *Subject: *Re: [USRP-users] Error 'Timeout on Chan 0'
>
> Hello Kirsten,
>
> I remember getting the same error message while developing a custom 
> RFNoC block. I found the problem to be caused by the corresponding xml 
> file which is located in the grc folder. I am not sure what part of 
> the file exactly caused the error message (maybe the ordering of the 
> parameters or tags within the parameters) but I eventually solved it 
> by replacing the file with the xml file from a working block and 
> modifying that one.
>
> Best regards,
> Lars
>
> On 02.08.19 15:50, Leong, Kirsten - 0551 - MITLL via USRP-users wrote:
>
>     Hello,
>
>     I am using a USRP X310 and am using gnuradio companion to test a
>     custom block. The current diagram flows as follows: File
>     Source->RFNoC FIFO->custom block->complex to image->frequency
>     sink. However, when I try to execute, I get the error ‘timeout on
>     chan 0’. My testbench passes all 5 cases; I can read signals on
>     the inputs and outputs of the noc block and the flow graph works
>     once I remove my custom block. Where else should I be looking?
>
>     Thanks,
>
>     Kirsten
>
>
>
>
>     _______________________________________________
>
>     USRP-users mailing list
>
>     USRP-users@lists.ettus.com  <mailto:USRP-users@lists.ettus.com>
>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
-- 
Lars Kuger, M.Sc.
Institute for Networked Systems (iNETS)
RWTH Aachen University
Kackertstrasse 9, 52072 Aachen, Germany
Phone: +49 241 80 20915


--------------6DD3677AE999E4158A9D3F76
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Kirsten,<br>
    </p>
    <p>Using the default block controller should work, so I would expect
      that you can ignore that warning message.</p>
    <p>In addition to Jonathon's suggestion of using chipscope on your
      block you could try to narrow down whether the error is caused in
      your verilog module or in some other file. For instance, what
      happens if you comment out your code and copy and paste some
      working verilog code into your module, e.g. from the RFNoC
      tutorial gain block (or just have a simple loopback)? If the error
      disappears I would conclude that the error should be somewhere in
      the fmdemod verilog code.</p>
    <p>Best regards,<br>
      Lars<br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 05.08.19 15:48, Leong, Kirsten -
      0551 - MITLL wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:C5ABC132-D9B2-4032-9C99-1FC373C139CF@ll.mit.edu">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:11.0pt">Could this
            be because I get the warning ‘can’t find a block controller
            for key fmdemod, using default block controller!’ or is this
            a separate problem?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Kirsten<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <div style="border:none;border-top:solid #B5C4DF
          1.0pt;padding:3.0pt 0in 0in 0in">
          <p class="MsoNormal"><b><span style="color:black">From: </span></b><span
              style="color:black">USRP-users
              <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of
              "Leong, Kirsten - 0551 - MITLL via USRP-users"
              <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Reply-To: </b>"Leong, Kirsten - 0551 - MITLL"
              <a class="moz-txt-link-rfc2396E" href="mailto:Kirsten.Leong@ll.mit.edu">&lt;Kirsten.Leong@ll.mit.edu&gt;</a><br>
              <b>Date: </b>Friday, August 2, 2019 at 12:25 PM<br>
              <b>To: </b>Lars Kuger <a class="moz-txt-link-rfc2396E" href="mailto:lku@inets.rwth-aachen.de">&lt;lku@inets.rwth-aachen.de&gt;</a>,
              <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">"usrp-users@lists.ettus.com"</a>
              <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject: </b>Re: [USRP-users] Error 'Timeout on Chan
              0'<o:p></o:p></span></p>
        </div>
        <div>
          <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        </div>
        <p class="MsoNormal"><span style="font-size:11.0pt">I tried
            reformatting the xml file based off the uhd_rfnoc_adder.xml
            file; however, I still get the same error. I’m not trying to
            throw any packets away so I cannot ignore the error. My
            block is expecting to take in a complex 32bit floats and
            output a 32 bit float.</span><o:p></o:p></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"> </span><o:p></o:p></p>
        <div style="border:none;border-top:solid #B5C4DF
          1.0pt;padding:3.0pt 0in 0in 0in">
          <p class="MsoNormal"><b><span style="color:black">From: </span></b><span
              style="color:black">USRP-users
              <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on behalf of
              Lars Kuger via USRP-users
              <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Reply-To: </b>Lars Kuger
              <a class="moz-txt-link-rfc2396E" href="mailto:lku@inets.rwth-aachen.de">&lt;lku@inets.rwth-aachen.de&gt;</a><br>
              <b>Date: </b>Friday, August 2, 2019 at 10:14 AM<br>
              <b>To: </b><a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">"usrp-users@lists.ettus.com"</a>
              <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Subject: </b>Re: [USRP-users] Error 'Timeout on Chan
              0'</span><o:p></o:p></p>
        </div>
        <div>
          <p class="MsoNormal"><span style="font-size:11.0pt"> </span><o:p></o:p></p>
        </div>
        <p>Hello Kirsten,<o:p></o:p></p>
        <p>I remember getting the same error message while developing a
          custom RFNoC block. I found the problem to be caused by the
          corresponding xml file which is located in the grc folder. I
          am not sure what part of the file exactly caused the error
          message (maybe the ordering of the parameters or tags within
          the parameters) but I eventually solved it by replacing the
          file with the xml file from a working block and modifying that
          one.<o:p></o:p></p>
        <p>Best regards,<br>
          Lars<o:p></o:p></p>
        <p> <o:p></o:p></p>
        <div>
          <p class="MsoNormal">On 02.08.19 15:50, Leong, Kirsten - 0551
            - MITLL via USRP-users wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span style="font-size:11.0pt">Hello,</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="font-size:11.0pt">I am using
              a USRP X310 and am using gnuradio companion to test a
              custom block. The current diagram flows as follows: File
              Source-&gt;RFNoC FIFO-&gt;custom block-&gt;complex to
              image-&gt;frequency sink. However, when I try to execute,
              I get the error ‘timeout on chan 0’. My testbench passes
              all 5 cases; I can read signals on the inputs and outputs
              of the noc block and the flow graph works once I remove my
              custom block. Where else should I be looking?</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="font-size:11.0pt">Thanks,</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="font-size:11.0pt">Kirsten</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="font-size:11.0pt"><br>
              <br>
              <br>
            </span><o:p></o:p></p>
          <pre>_______________________________________________<o:p></o:p></pre>
          <pre>USRP-users mailing list<o:p></o:p></pre>
          <pre><a href="mailto:USRP-users@lists.ettus.com" moz-do-not-send="true">USRP-users@lists.ettus.com</a><o:p></o:p></pre>
          <pre><a href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" moz-do-not-send="true">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></pre>
        </blockquote>
      </div>
    </blockquote>
    <pre class="moz-signature" cols="72">-- 
Lars Kuger, M.Sc.
Institute for Networked Systems (iNETS)
RWTH Aachen University
Kackertstrasse 9, 52072 Aachen, Germany
Phone: +49 241 80 20915</pre>
  </body>
</html>

--------------6DD3677AE999E4158A9D3F76--


--===============3599502753417292282==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3599502753417292282==--

