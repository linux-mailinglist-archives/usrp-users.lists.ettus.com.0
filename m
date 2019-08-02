Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8A57FBDA
	for <lists+usrp-users@lfdr.de>; Fri,  2 Aug 2019 16:14:14 +0200 (CEST)
Received: from [::1] (port=59648 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1htYJv-0001qT-SH; Fri, 02 Aug 2019 10:14:11 -0400
Received: from mail-out-3.itc.rwth-aachen.de ([134.130.5.48]:15164)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <lku@inets.rwth-aachen.de>)
 id 1htYJr-0001lZ-Ow
 for usrp-users@lists.ettus.com; Fri, 02 Aug 2019 10:14:07 -0400
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BBZwDDQ0Rd//3egoZmHgEGBwaBZwKBF?=
 =?us-ascii?q?BsCZW0DTzIqhB6PP4FiLYljjyOBegkBAQEBAQEBAQEIGAEKCQECAQGEPwKCXyM?=
 =?us-ascii?q?6BA0BAwEBBQEBAQEGbYUeDIVLAQEBAwEBIQRHGwsYKgICJwEvEwYCAQGDHgGBd?=
 =?us-ascii?q?hQPrWJ/Mx+FKYMsgUiBMgMBhHCGcReBQD+BESeCaz6CYQEEgiuCPoJYBIw3nmU?=
 =?us-ascii?q?JgTljhXxgiDWFBgYbgi9tiiMFJ4o7lRuQP4FqChQ+gRozGggcFDuCBGgJhiqKV?=
 =?us-ascii?q?T0zAQGBBAEBjVIBAQ?=
X-IPAS-Result: =?us-ascii?q?A2BBZwDDQ0Rd//3egoZmHgEGBwaBZwKBFBsCZW0DTzIqhB6?=
 =?us-ascii?q?PP4FiLYljjyOBegkBAQEBAQEBAQEIGAEKCQECAQGEPwKCXyM6BA0BAwEBBQEBA?=
 =?us-ascii?q?QEGbYUeDIVLAQEBAwEBIQRHGwsYKgICJwEvEwYCAQGDHgGBdhQPrWJ/Mx+FKYM?=
 =?us-ascii?q?sgUiBMgMBhHCGcReBQD+BESeCaz6CYQEEgiuCPoJYBIw3nmUJgTljhXxgiDWFB?=
 =?us-ascii?q?gYbgi9tiiMFJ4o7lRuQP4FqChQ+gRozGggcFDuCBGgJhiqKVT0zAQGBBAEBjVI?=
 =?us-ascii?q?BAQ?=
Received: from gollum.mobnets.rwth-aachen.de ([134.130.222.253])
 by mail-in-3.itc.rwth-aachen.de with ESMTP; 02 Aug 2019 16:13:26 +0200
Received: from [192.168.1.47] (pc11.test.inets.rwth-aachen.de [134.130.223.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by gollum.mobnets.rwth-aachen.de (Postfix) with ESMTPSA id EC6B7180180
 for <usrp-users@lists.ettus.com>; Fri,  2 Aug 2019 16:13:25 +0200 (CEST)
To: usrp-users@lists.ettus.com
References: <0DDB54B1-7013-468B-B0FB-CB0262804513@contoso.com>
Message-ID: <c82d5049-525c-f985-fabc-7b29b2687225@inets.rwth-aachen.de>
Date: Fri, 2 Aug 2019 16:13:25 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0DDB54B1-7013-468B-B0FB-CB0262804513@contoso.com>
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
Content-Type: multipart/mixed; boundary="===============0474028836477882760=="
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
--===============0474028836477882760==
Content-Type: multipart/alternative;
 boundary="------------EA11457990E1A3D4985AC463"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------EA11457990E1A3D4985AC463
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hello Kirsten,

I remember getting the same error message while developing a custom 
RFNoC block. I found the problem to be caused by the corresponding xml 
file which is located in the grc folder. I am not sure what part of the 
file exactly caused the error message (maybe the ordering of the 
parameters or tags within the parameters) but I eventually solved it by 
replacing the file with the xml file from a working block and modifying 
that one.

Best regards,
Lars


On 02.08.19 15:50, Leong, Kirsten - 0551 - MITLL via USRP-users wrote:
>
> Hello,
>
> I am using a USRP X310 and am using gnuradio companion to test a 
> custom block. The current diagram flows as follows: File Source->RFNoC 
> FIFO->custom block->complex to image->frequency sink. However, when I 
> try to execute, I get the error ‘timeout on chan 0’. My testbench 
> passes all 5 cases; I can read signals on the inputs and outputs of 
> the noc block and the flow graph works once I remove my custom block. 
> Where else should I be looking?
>
> Thanks,
>
> Kirsten
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--------------EA11457990E1A3D4985AC463
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hello Kirsten,</p>
    <p>I remember getting the same error message while developing a
      custom RFNoC block. I found the problem to be caused by the
      corresponding xml file which is located in the grc folder. I am
      not sure what part of the file exactly caused the error message
      (maybe the ordering of the parameters or tags within the
      parameters) but I eventually solved it by replacing the file with
      the xml file from a working block and modifying that one.<br>
    </p>
    <p>Best regards,<br>
      Lars</p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 02.08.19 15:50, Leong, Kirsten -
      0551 - MITLL via USRP-users wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0DDB54B1-7013-468B-B0FB-CB0262804513@contoso.com">
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style>
      <div class="WordSection1">
        <p class="MsoNormal"><span style="font-size:11.0pt">Hello,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">I am using a
            USRP X310 and am using gnuradio companion to test a custom
            block. The current diagram flows as follows: File
            Source-&gt;RFNoC FIFO-&gt;custom block-&gt;complex to
            image-&gt;frequency sink. However, when I try to execute, I
            get the error ‘timeout on chan 0’. My testbench passes all 5
            cases; I can read signals on the inputs and outputs of the
            noc block and the flow graph works once I remove my custom
            block. Where else should I be looking?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-size:11.0pt">Kirsten<o:p></o:p></span></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
  </body>
</html>

--------------EA11457990E1A3D4985AC463--


--===============0474028836477882760==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0474028836477882760==--

