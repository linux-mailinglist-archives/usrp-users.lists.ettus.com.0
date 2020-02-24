Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EC64516AF84
	for <lists+usrp-users@lfdr.de>; Mon, 24 Feb 2020 19:43:46 +0100 (CET)
Received: from [::1] (port=58976 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j6Ihm-00052k-0r; Mon, 24 Feb 2020 13:43:46 -0500
Received: from mail-qk1-f180.google.com ([209.85.222.180]:43358)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1j6Ihh-0004cg-L5
 for usrp-users@lists.ettus.com; Mon, 24 Feb 2020 13:43:41 -0500
Received: by mail-qk1-f180.google.com with SMTP id p7so9573128qkh.10
 for <usrp-users@lists.ettus.com>; Mon, 24 Feb 2020 10:43:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=rfYWja0qgd+PSH72Z8YLLp6itKXoSqiIRmL/pivWeYk=;
 b=p7WipsPuaellWGn/o8oRIHQucS/rkVtFxEhDYqXdcE/LcRMQO7+vFD1XbKuil/w7Tj
 S8Vt6zS8PGgYMqp83zsKRzGXLjt2PxxvfoJF1yJTdXo0tW38+UWH40JbAojltHG/lq6d
 v0CmWbP4YMGHH6BaiPtvIOGVbOpjeKcU9yss4PMyi3Qn2tMtEXTUde4qz03wLkQFH6C0
 r28I4CX4QmmeXgjqhd5ZeeoIj8ZnXuBkOEOJ0sA3bYojcFYAZGu+8HOU5EHdO0N1dN+0
 5DDMUbA22s3F3tBqQg73WahBz/n4aBaeDjxN6xtiuEzmjqI1ZhX/gCXMkI6Dz7uev1GS
 cQWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=rfYWja0qgd+PSH72Z8YLLp6itKXoSqiIRmL/pivWeYk=;
 b=uaf4lwNhMJxksAtPJjKvvQOolRKTF54HVa2o6KEQfNnYaeAFcIVq7/XdqgCibjQvzT
 GakYaIgRSz9MWfHSl0AIf1+xPHj+4EBGWmAqYpce8wjty/t3PZzO9Ejag2ns4SBvaWg0
 BQWf6AexKk132SMkfXI8hgJZ/49ZxY3US0iGg1APhOWtPagTXbaC0sqC7bVqSbqQZPTe
 Xss8nKt5t83FwUJxzYC8r5xzZfmaJpNVBN01Y22l+Cj/AMOpXZ8v49VMX4Ae7u3WFnYJ
 4Z42n44xdBhrT7CRKQsGtkzVc0uBtIhrSy+tOZcELXJoCMyqp86rEBPo/a25fTc0YXx4
 aLPQ==
X-Gm-Message-State: APjAAAXYtxouHM2nZCoZN/+ps22z8LZGS59JbzgCFliVoCqIZoOq8Ah7
 TEpnVtFa9Zy7IDP2pXJgcdCSZquTrKw=
X-Google-Smtp-Source: APXvYqz10YnwVpLo+o01WORmb6TDfv0wmk4yd1SvTY3gNlAz9uPktxRYH/Qgc8r3/E1aB5tud5elxg==
X-Received: by 2002:ae9:e104:: with SMTP id g4mr5604701qkm.133.1582569780852; 
 Mon, 24 Feb 2020 10:43:00 -0800 (PST)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-83.dsl.bell.ca.
 [174.95.14.83])
 by smtp.googlemail.com with ESMTPSA id p53sm432959qtb.85.2020.02.24.10.43.00
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Feb 2020 10:43:00 -0800 (PST)
Message-ID: <5E541933.5060300@gmail.com>
Date: Mon, 24 Feb 2020 13:42:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <26020d4c1e714ec59a1c4f79f2963cb7@mbda-systems.com>
In-Reply-To: <26020d4c1e714ec59a1c4f79f2963cb7@mbda-systems.com>
Subject: Re: [USRP-users] Issues using TwinRX and x310 (phase shift)
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============5967930362531767700=="
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
--===============5967930362531767700==
Content-Type: multipart/alternative;
 boundary="------------010900010109030802070203"

This is a multi-part message in MIME format.
--------------010900010109030802070203
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 02/24/2020 05:06 AM, VAILLANT.Etienne via USRP-users wrote:
>
> Hi all,
>
> I would like to perform DOA measurements and I am using a USRP x310 
> with two TwinRX.
>
> First I am trying to perform some very basic tests in order to 
> understand what I am doing: I generate a CW at 1850 MHz, going through 
> a power splitter (4-ways 0°), feeding the 4 inputs of the two TwinRX 
> (A:0, A:1 and B:0, B:1).
>
> I save the raw IQ data via Gnuradio Companion in a file and I repeat 
> the procedure several times, generating several files. All the files 
> are saved with the same USRP tuning (I don’t stop or retune the 
> signal/USRP between two acquisitions). Basically I just click on a 
> /Save/ QT GUI Check Box in GRC many times which triggers a /File Sink/ 
> block and thus generates as many files.
>
> Then I want to re-plot the signals from the IQ data via Matlab, and my 
> problem is that I get some different phase shift between the signals. 
> Please find attached a screenshot of 12 identical acquisitions (12 
> successive clicks on /Save/). What is important to me is the phase 
> shift between the two signals, and I expected it to be identical in 
> all cases (since all the acquisitions are identical). It seems to be 
> OK for almost all the acquisitions, except for the 8, 9 and 10, where 
> the phase shift is different from all the others (and the three of 
> them look identical…). I have perform this test several times and 
> every time some random acquisitions are shifted from the others 
> (sometimes there are 2 or 3 different values of phase shift, it is not 
> always 90° or else).
>
> There is something I misunderstood or I do wrong but I can’t find 
> what. I have read some people with a similar issue discussing about 
> the function /set_time_now()/ but I don’t really know how to deal with it.
>
> To acquire the signal I am using either /UHD: USRP Source/ block with 
> 4 channels or the /TwinRX USRP Source/ block. In the first case, LO 
> parameters are the following:
>
> -Ch0 Source Internal / export True
>
> -Ch1 Source Companion / export False
>
> -Ch2 Source External / export False
>
> -Ch3 Source External / export False
>
> I work on /Ubuntu/ 18.04 (I can’t change since some other activities 
> rely on this computer).
>
> -/GRC/3.7.10.1 (minimum version required for /gr-doa/ application)
>
> -/UHD/3.10.3.0 (with the v3.10.1.0 recommended for /gr-doa 
> /application, my TwinRX were not detected (/Unknown/) via 
> /uhd_usrp_probe/)
>
> -/gr-doa/installed from source but all the make test have failed (I 
> guess this is another topic since I don’t use /gr-doa/ functions in my 
> basic test presented above?).
>
> I am quite a new comer to this SDR world, thus any help would be much 
> appreciated, thanks very much in advance!
>
> Kind regards,
>
> *Etienne VAILLANT*
>
>
Perhaps you could share your GRC flow-graph with us?

Also, there have been some phase-offset fixes in later versions of UHD, 
but it's not clear at this point whether that applies in your case or not,
   which is where having the GRC flow-graph to look at would be useful.

Cheers


--------------010900010109030802070203
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 02/24/2020 05:06 AM,
      VAILLANT.Etienne via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:26020d4c1e714ec59a1c4f79f2963cb7@mbda-systems.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1304116813;
	mso-list-type:hybrid;
	mso-list-template-ids:-1469026122 -592680944 67895299 67895301 67895297 67895299 67895301 67895297 67895299 67895301;}
@list l0:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:1530296188;
	mso-list-type:hybrid;
	mso-list-template-ids:1675008648 -447072378 67895299 67895301 67895297 67895299 67895301 67895297 67895299 67895301;}
@list l1:level1
	{mso-level-start-at:0;
	mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri",sans-serif;
	mso-fareast-font-family:Calibri;
	mso-ansi-font-style:italic;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-GB">Hi all,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">I would like to perform
            DOA measurements and I am using a USRP x310 with two TwinRX.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">First I am trying to
            perform some very basic tests in order to understand what I
            am doing: I generate a CW at 1850 MHz, going through a power
            splitter (4-ways 0°), feeding the 4 inputs of the two TwinRX
            (A:0, A:1 and B:0, B:1).<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">I save the raw IQ data
            via Gnuradio Companion in a file and I repeat the procedure
            several times, generating several files. All the files are
            saved with the same USRP tuning (I don’t stop or retune the
            signal/USRP between two acquisitions). Basically I just
            click on a <i>Save</i> QT GUI Check Box in GRC many times
            which triggers a
            <i>File Sink</i> block and thus generates as many files.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">Then I want to re-plot
            the signals from the IQ data via Matlab, and my problem is
            that I get some different phase shift between the signals.
            Please find attached a screenshot of 12 identical
            acquisitions (12 successive clicks on <i>Save</i>). What is
            important to me is the phase shift between the two signals,
            and I expected it to be identical in all cases (since all
            the acquisitions are identical). It seems to be OK for
            almost all the acquisitions, except for the 8, 9 and 10,
            where the phase shift is different from all the others (and
            the three of them look identical…). I have perform this test
            several times and every time some random acquisitions are
            shifted from the others (sometimes there are 2 or 3
            different values of phase shift, it is not always 90° or
            else).<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">There is something I
            misunderstood or I do wrong but I can’t find what. I have
            read some people with a similar issue discussing about the
            function
            <i>set_time_now()</i> but I don’t really know how to deal
            with it.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">To acquire the signal I
            am using either <i>
              UHD: USRP Source</i> block with 4 channels or the <i>TwinRX
              USRP Source</i> block. In the first case, LO parameters
            are the following:<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            lang="EN-GB"><span style="mso-list:Ignore">-<span
                style="font:7.0pt &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><span lang="EN-GB">Ch0
            Source Internal / export True<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            lang="EN-GB"><span style="mso-list:Ignore">-<span
                style="font:7.0pt &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><span lang="EN-GB">Ch1
            Source Companion / export False<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            lang="EN-GB"><span style="mso-list:Ignore">-<span
                style="font:7.0pt &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><span lang="EN-GB">Ch2
            Source External / export False<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            lang="EN-GB"><span style="mso-list:Ignore">-<span
                style="font:7.0pt &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><span lang="EN-GB">Ch3
            Source External / export False<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">I work on <i>Ubuntu</i>
            18.04 (I can’t change since some other activities rely on
            this computer).<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
            lang="EN-GB"><span style="mso-list:Ignore">-<span
                style="font:7.0pt &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><i><span lang="EN-GB">GRC</span></i><span
            lang="EN-GB"> 3.7.10.1 (minimum version required for
            <i>gr-doa</i> application)<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
            lang="EN-GB"><span style="mso-list:Ignore">-<span
                style="font:7.0pt &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><i><span lang="EN-GB">UHD</span></i><span
            lang="EN-GB"> 3.10.3.0 (with the v3.10.1.0 recommended for
            <i>gr-doa </i>application, my TwinRX were not detected (<i>Unknown</i>)
            via <i>uhd_usrp_probe</i>)<o:p></o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
            lang="EN-GB"><span style="mso-list:Ignore">-<span
                style="font:7.0pt &quot;Times New Roman&quot;">         
              </span></span></span><!--[endif]--><i><span lang="EN-GB">gr-doa</span></i><span
            lang="EN-GB"> installed from source but all the make test
            have failed (I guess this is another topic since I don’t use
            <i>gr-doa</i> functions in my basic test presented above?).
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">I am quite a new comer
            to this SDR world, thus any help would be much appreciated,
            thanks very much in advance!<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB">Kind regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-GB"><o:p> </o:p></span></p>
        <p class="MsoNormal"><b><span style="mso-fareast-language:FR">Etienne
              VAILLANT<o:p></o:p></span></b></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
    </blockquote>
    Perhaps you could share your GRC flow-graph with us?<br>
    <br>
    Also, there have been some phase-offset fixes in later versions of
    UHD, but it's not clear at this point whether that applies in your
    case or not,<br>
      which is where having the GRC flow-graph to look at would be
    useful.<br>
    <br>
    Cheers<br>
    <br>
  </body>
</html>

--------------010900010109030802070203--


--===============5967930362531767700==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5967930362531767700==--

