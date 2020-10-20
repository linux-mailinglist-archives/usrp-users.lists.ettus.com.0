Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B0F2943AF
	for <lists+usrp-users@lfdr.de>; Tue, 20 Oct 2020 22:04:09 +0200 (CEST)
Received: from [::1] (port=37090 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUxra-0007pO-KA; Tue, 20 Oct 2020 16:04:06 -0400
Received: from mail-qk1-f194.google.com ([209.85.222.194]:39422)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kUxrW-0007Y0-F8
 for USRP-users@lists.ettus.com; Tue, 20 Oct 2020 16:04:02 -0400
Received: by mail-qk1-f194.google.com with SMTP id k9so2949001qki.6
 for <USRP-users@lists.ettus.com>; Tue, 20 Oct 2020 13:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=xJSulRbo6XhUvR1k/3tth+qa9mwX0JfpZvPnYeT/ShQ=;
 b=fBuvnNI3rbf196ZipI90iGonrvCn6D/f0qDjtZvYvfJpd4fgV20rPuqYZMsgzHxKCX
 y8/lEbMOxFKVkPPHk28aLjV9YUBeznuRi2k6chnVzwHiZH5EepbpeYET/d0h1NU7eCDe
 bNpnqwZDXgLIBjN01T4Ih4q7Lyv3/bi6QVfMip/NDV+CrqIX8nF5S1GSNGEnjjmHNniM
 yvjFFCbHRdZ7FlZ/YlYyA/Zc+KagwzW+/ya9/EqWWrRM+T/37lh1+eTLFYSNv7ffMj43
 BOKYAbmp6M/6lcvc7VVXrSloo8tFEjVgDZ/GPOpdVL/7evKVEnsnpB6RehPKkxR1ojt8
 2yXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=xJSulRbo6XhUvR1k/3tth+qa9mwX0JfpZvPnYeT/ShQ=;
 b=DSsobB0foB9xTtKeRAR5EMd7pYYVMdgGffrSqWoL8cfU40kTQU1SDtvKijucSSOcgm
 sXR3aBwBlSmfvaVQM1POosPzci5mwjBcomhYd1Ffy2wEsu82GwrxtVZFG5JI9CH7hBR1
 tcrHWSS/B7R3jbgfQ73ab3g1JveIAwSePP4waRMmhC1PrEU8g9IrYR6/HJb6S+gUyMgX
 C3gW9g/CObylG1r50oaOD/Hn/Se+U42Uy+mi6FOA6EarPwRhcF8T5ul3gOCOsqIVrdOI
 G0v8jbijraC268CUse2RuYevylJ0haANKfhQrFUe/1vnWKMNbYrKLWDkgQmdp1yxfw+m
 suWw==
X-Gm-Message-State: AOAM5318lVzSG9NG3NlRYbkZkF5+b8sWgMn82rphRknaMNcjjznMqvUW
 VSlEmq1xB0ZmhquLUtwnww/oxg85Oar4og==
X-Google-Smtp-Source: ABdhPJyE8919Guq3TJ70kX47UD3pbLHFYggJlNZj5ZwxAQop+G+r1E2dIYeUxhJtBGL0lB9IsTeG6g==
X-Received: by 2002:ae9:c211:: with SMTP id j17mr4567424qkg.458.1603224201688; 
 Tue, 20 Oct 2020 13:03:21 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-07-174-93-0-246.dsl.bell.ca. [174.93.0.246])
 by smtp.googlemail.com with ESMTPSA id t35sm1413233qtc.80.2020.10.20.13.03.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Oct 2020 13:03:21 -0700 (PDT)
Message-ID: <5F8F4288.8040807@gmail.com>
Date: Tue, 20 Oct 2020 16:03:20 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jerrid Plymale <jerrid.plymale@canyon-us.com>
CC: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
References: <SA0PR19MB43827AFF6817FF8079637D64C61F0@SA0PR19MB4382.namprd19.prod.outlook.com>
 <867D4386-BAFF-4FEC-9C46-206D3987FB62@gmail.com>
 <SA0PR19MB438205C5E6E5B458E39C1642C61F0@SA0PR19MB4382.namprd19.prod.outlook.com>
In-Reply-To: <SA0PR19MB438205C5E6E5B458E39C1642C61F0@SA0PR19MB4382.namprd19.prod.outlook.com>
Subject: Re: [USRP-users] Underruns causing USRP to stop transmitting and
 receiving
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============6518642224312548950=="
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
--===============6518642224312548950==
Content-Type: multipart/alternative;
 boundary="------------080606030802040500040707"

This is a multi-part message in MIME format.
--------------080606030802040500040707
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 10/20/2020 03:53 PM, Jerrid Plymale wrote:
>
> Marcus,
>
> The problem seems to be related to running the system with the USRP 
> though. Someone who is working on this project with me is able to run 
> the same embedded python block, without  the USRP hardware, and gets 
> no Underruns when doing so. We have also been unsuccessful in finding 
> any useful information regarding potential causes and solutions from 
> GNU Radio and USRP documentation.
>
> Best Regards,
>
> Jerrid
>
Well, an underrun is conceptually simple.   It means "you aren't 
supplying me with samples at the desired rate, so when I went to grab some
   samples, there weren't any there".  That means your flow isn't 
supplying them at the desired rate, either due to computational starvation,
   or a mis-understanding/mis-configuration of things like re-samplers.

Some SDRs out there DO NOT REPORT overruns/underruns, so things can 
"seem" great and not be.

Further the computational envelope and requires of the UHD driver may be 
different-enough from other hardware that is operating at
   similar rates that you end up with underruns.  When you're running at 
the edge of what can be accomplished with the compute
   hardware at hand, small differences are what makes the difference.

What sample-rates are we talking about?  Are you configuring your 
hardware for a sample-rate it can actually support, for example?

Much of this discussion really does belong in the discuss-gnuradio 
arena, because it comes down to Gnu Radio performance tuning.

Also, you mention an embedded processing block--presumably embedded 
Python?  Such blocks CANNOT be run at high sample
   rates--even if you use numpy to do all your math, the marhsalling and 
interpreter costs will kill performance compared to a
   similar block written in C++.


> *From:* Marcus D Leech <patchvonbraun@gmail.com>
> *Sent:* Tuesday, October 20, 2020 12:35 PM
> *To:* Jerrid Plymale <jerrid.plymale@canyon-us.com>
> *Cc:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Underruns causing USRP to stop 
> transmitting and receiving
>
> Probably better served by the discuss-gnuradio list and the 
> chat.gnuradio.org online chat community.
>
> Sent from my iPhone
>
>
>
>     On Oct 20, 2020, at 3:30 PM, Jerrid Plymale via USRP-users
>     <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>>
>     wrote:
>
>     ﻿
>
>     Hello All,
>
>     So I am working on writing an embedded python block in GNU Radio
>     Companion to preform some analysis of RF signals that is received
>     by a USRP x310 and transmitted back out of the USRP after analysis
>     has been done. I have been running into some underruns lately that
>     I have not been able to find a solution for. If I execute some of
>     my analysis functions in the work function of the block, the
>     application underruns and it causes the USRP to stop transmitting
>     or receiving. However, if I execute the functions in separate
>     polling functions that are being used to display values in the
>     GUI, I do not get underruns. I think this might has to do with how
>     often the analysis function is being executed, as the poll
>     functions are only called at a rate of 10 Hz which is controlled
>     by a function probe. Can anyone give me suggestions on what to try
>     to fix the underrun problem, and any resources you can point me to
>     that might help would be appreciated.
>
>     Best Regards,
>
>     Jerrid
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------080606030802040500040707
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/20/2020 03:53 PM, Jerrid Plymale
      wrote:<br>
    </div>
    <blockquote
cite="mid:SA0PR19MB438205C5E6E5B458E39C1642C61F0@SA0PR19MB4382.namprd19.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
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
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle20
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
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Marcus,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">The problem seems to be related to running
          the system with the USRP though. Someone who is working on
          this project with me is able to run the same embedded python
          block, without  the USRP hardware, and gets no Underruns when
          doing so. We have also been unsuccessful in finding any useful
          information regarding potential causes and solutions from GNU
          Radio and USRP documentation.<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Best Regards,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Jerrid </p>
      </div>
    </blockquote>
    Well, an underrun is conceptually simple.   It means "you aren't
    supplying me with samples at the desired rate, so when I went to
    grab some<br>
      samples, there weren't any there".  That means your flow isn't
    supplying them at the desired rate, either due to computational
    starvation,<br>
      or a mis-understanding/mis-configuration of things like
    re-samplers.<br>
    <br>
    Some SDRs out there DO NOT REPORT overruns/underruns, so things can
    "seem" great and not be.<br>
    <br>
    Further the computational envelope and requires of the UHD driver
    may be different-enough from other hardware that is operating at<br>
      similar rates that you end up with underruns.  When you're running
    at the edge of what can be accomplished with the compute<br>
      hardware at hand, small differences are what makes the difference.<br>
    <br>
    What sample-rates are we talking about?  Are you configuring your
    hardware for a sample-rate it can actually support, for example?<br>
    <br>
    Much of this discussion really does belong in the discuss-gnuradio
    arena, because it comes down to Gnu Radio performance tuning.<br>
    <br>
    Also, you mention an embedded processing block--presumably embedded
    Python?  Such blocks CANNOT be run at high sample<br>
      rates--even if you use numpy to do all your math, the marhsalling
    and interpreter costs will kill performance compared to a<br>
      similar block written in C++.<br>
    <br>
    <br>
    <blockquote
cite="mid:SA0PR19MB438205C5E6E5B458E39C1642C61F0@SA0PR19MB4382.namprd19.prod.outlook.com"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b>From:</b> Marcus D Leech
              <a class="moz-txt-link-rfc2396E" href="mailto:patchvonbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
              <b>Sent:</b> Tuesday, October 20, 2020 12:35 PM<br>
              <b>To:</b> Jerrid Plymale
              <a class="moz-txt-link-rfc2396E" href="mailto:jerrid.plymale@canyon-us.com">&lt;jerrid.plymale@canyon-us.com&gt;</a><br>
              <b>Cc:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] Underruns causing USRP to
              stop transmitting and receiving<o:p></o:p></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal" style="margin-bottom:12.0pt">Probably
          better served by the discuss-gnuradio list and the
          chat.gnuradio.org online chat community. <o:p></o:p></p>
        <div>
          <p class="MsoNormal">Sent from my iPhone<o:p></o:p></p>
        </div>
        <div>
          <p class="MsoNormal"><br>
            <br>
            <o:p></o:p></p>
          <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
            <p class="MsoNormal" style="margin-bottom:12.0pt">On Oct 20,
              2020, at 3:30 PM, Jerrid Plymale via USRP-users &lt;<a
                moz-do-not-send="true"
                href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
              wrote:<o:p></o:p></p>
          </blockquote>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <div>
            <p class="MsoNormal">﻿ <o:p></o:p></p>
            <p class="MsoNormal">Hello All,<o:p></o:p></p>
            <p class="MsoNormal"> <o:p></o:p></p>
            <p class="MsoNormal">So I am working on writing an embedded
              python block in GNU Radio Companion to preform some
              analysis of RF signals that is received by a USRP x310 and
              transmitted back out of the USRP after analysis has been
              done. I have been running into some underruns lately that
              I have not been able to find a solution for. If I execute
              some of my analysis functions in the work function of the
              block, the application underruns and it causes the USRP to
              stop transmitting or receiving. However, if I execute the
              functions in separate polling functions that are being
              used to display values in the GUI, I do not get underruns.
              I think this might has to do with how often the analysis
              function is being executed, as the poll functions are only
              called at a rate of 10 Hz which is controlled by a
              function probe. Can anyone give me suggestions on what to
              try to fix the underrun problem, and any resources you can
              point me to that might help would be appreciated.
              <o:p></o:p></p>
            <p class="MsoNormal"> <o:p></o:p></p>
            <p class="MsoNormal">Best Regards,<o:p></o:p></p>
            <p class="MsoNormal"> <o:p></o:p></p>
            <p class="MsoNormal">Jerrid<o:p></o:p></p>
            <p class="MsoNormal">_______________________________________________<br>
              USRP-users mailing list<br>
              <a moz-do-not-send="true"
                href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a><br>
              <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><o:p></o:p></p>
          </div>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080606030802040500040707--


--===============6518642224312548950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6518642224312548950==--

