Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 093A72285E0
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 18:38:54 +0200 (CEST)
Received: from [::1] (port=41908 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxvI3-0000ED-OX; Tue, 21 Jul 2020 12:38:51 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:42876)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxvHy-0008Vp-M1
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 12:38:46 -0400
Received: by mail-qk1-f193.google.com with SMTP id b79so6210099qkg.9
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 09:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=RP+f4F6dX9qdX1ZoqSa0Qhp+y1JvtXFIZ1aHckq9gUI=;
 b=RtKHqbRjwBcTEQTIdNTb/eui8r68UbamdzkqFNarwJM7qcAq0roAeL0VEhbIWjX7mj
 pQEeGs8jEzR5uUXfkyr09eRqIekxy/b0o6CRSWgJZjUNRR7WwgEneLUeApuqV40gPAFF
 aMRmYwe2XRd6q/0v8GRtJSPMWoVtlyHdDiFBk02EWNtURdwzec8zjqffgBA5Ffzl4BYk
 DbPxSz9CQAqzHQpiNpVkvkYbu2TbYnC4GzLCJUJoISXcx4fG5ygj+WMxNHqLfGG1Rl2j
 wQegWTdx0vnQNWbKtcq1zwtCzBTi/A9OQ+WTtBjY9bhR7coOQ0WcVljJiBLRiO0SPoRt
 C96A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=RP+f4F6dX9qdX1ZoqSa0Qhp+y1JvtXFIZ1aHckq9gUI=;
 b=lSJcKn4soeuWlkaejtl/Uem3ATeiFngLaDiv9o6mcB8a6plKaDOjCwHMUTWqo9fc0N
 KyKlQcd3xWFlV7/wmQFcQkGkpXAwnKrtDcGY+5LYAhCCBS/XvRPXTPDqOUOf2am+hYUc
 tfR9Fylz2havbP7rJ4QfoLnWAMaS3QB3MucwbMaqKhVMO6uiyvZ6drO7eo73nSfimT2l
 omZU73WcISPtIIGNxUB4QcEOddDeIXSnS2cPKyAHjKlA+CyEg4wrmm78/1nNefvQceMr
 stY1D5uDdTVqQZC1IiDbx911hBIJ10JI8txV9HhefSs6FVDBlcNccSzPqx/h8lPCKtYg
 PV9g==
X-Gm-Message-State: AOAM533RmJmDZMH8fBv0TLOZCkb/OacPZoWSbUXoO/cb/85WNxOcZCGz
 hARsKwkR49Zp3brANsdyBHRokMbqhcyi9g==
X-Google-Smtp-Source: ABdhPJz8oiyF91F+iaddJCKoBLx6xM5cjWyt8v4hsHN2GM/xHwx6H2vsFY67vkCGTTA9/KCjgRyMtw==
X-Received: by 2002:a37:b701:: with SMTP id h1mr26568329qkf.335.1595349485913; 
 Tue, 21 Jul 2020 09:38:05 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id f4sm22222728qtp.38.2020.07.21.09.38.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jul 2020 09:38:04 -0700 (PDT)
Message-ID: <5F1719EB.6000400@gmail.com>
Date: Tue, 21 Jul 2020 12:38:03 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Prasad <kpras@trilcomm.com>, usrp-users@lists.ettus.com
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com> <5F17172A.9040600@gmail.com>
 <004301d65f7c$7138a750$53a9f5f0$@com>
In-Reply-To: <004301d65f7c$7138a750$53a9f5f0$@com>
Subject: Re: [USRP-users] 1 Ts delay in USRP B210
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
Content-Type: multipart/mixed; boundary="===============6792346297190747275=="
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
--===============6792346297190747275==
Content-Type: multipart/alternative;
 boundary="------------040503040308050307000707"

This is a multi-part message in MIME format.
--------------040503040308050307000707
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/21/2020 12:31 PM, Prasad wrote:
>
> Then how we can handle this drift in our 5G-NR stack by using 
> /uhd_rx_streamer_issue_stream_cmd/?
>
> Or we should go with GPSDO/external clock?
>
> Thanks,
>
Well, since most users on here aren't experts on 5G stacks, me included, 
I can't tell you what to do to your stack to handle
   clock drift.  But I WILL say that clock drift is an inevitable issue, 
and as you get better clocks, the scale of that issue becomes
   smaller as you spend more money on better clocks.

A built-in GPSDO would not be a bad investment if clock drift at a scale 
of 0.8PPM is an issue for your implementation.

Many digital demodulators implement algorithms for dealing with 
clock-drift and imprecision on the rx side using PLLs and the like.
   But for 5G I have no idea how that would play out.


> *From:*Marcus D. Leech [mailto:patchvonbraun@gmail.com]
> *Sent:* Tuesday, July 21, 2020 9:56 PM
> *To:* Prasad; usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] 1 Ts delay in USRP B210
>
> On 07/21/2020 12:25 PM, Prasad wrote:
>
>     We are using internal clock, don’t use any GPSDO or external clock.
>
>     So for internal clock is this expected?
>
>     Thanks,
>
> The internal clock is specced to +/- 2PPM.   You're seeing much less 
> than that, so it's within spec.
>
>
>
> *From:*USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On 
> Behalf Of *Marcus D. Leech via USRP-users
> *Sent:* Tuesday, July 21, 2020 9:49 PM
> *To:* usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>
> *Subject:* Re: [USRP-users] 1 Ts delay in USRP B210
>
> On 07/21/2020 12:13 PM, Prasad via USRP-users wrote:
>
>     Soft reminder!
>
>     Thanks,
>
>     *From:*Prasad [mailto:kpras@trilcomm.com]
>     *Sent:* Monday, July 20, 2020 7:58 PM
>     *To:* 'usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>'
>     *Cc:* 'Rao Yenamandra'
>     *Subject:* 1 Ts delay in USRP B210
>
>     Dear Team.
>
>     Hope you are doing well and safe.
>
>     We are bringing up our NR-5G UE stack with USRP B210.
>
>     If time permits, would you pls. reply to below concern with your
>     valuable information.
>
>     During the synchronization procedure, we observe atleast /±/1
>     /Ts/ (Sampling Time) drift in rx streamer in every  ~40ms time period.
>
>     Are we missing any time_spec during /uhd_rx_streamer_recv/ api or
>     in /uhd_tx_streamer_send/ ?
>
>     Master clock rate: 30.72e6
>
>     Sampling rate: 30.72e6
>
>     Carrier frequency: 3.8e9
>
>     We use one B210 to transmit time domain samples back to back and
>     others to receive.
>
>     Log snippet:
>
>     Init PSS detected with lag: /4469/ (/PSS detection offset from the
>     slot boundary/ )
>
>     sss has been detected
>
>     Init PSS detected with lag: 4469
>
>     sss has been detected
>
>     Init PSS detected with lag: 4469
>
>     sss has been detected
>
>     Init PSS detected with lag: 4469
>
>     sss has been detected
>
>     Init PSS detected with lag: 4470 à1 Ts drift
>
>     sss has been detected
>
>     Init PSS detected with lag: 4470
>
>     sss has been detected
>
>     Init PSS detected with lag: 4470
>
>     sss has been detected
>
>     Init PSS detected with lag: 4471 à1 Ts drift.
>
>     sss has been detected
>
>     Init PSS detected with lag: 4472à1 Ts drift
>
>     sss has been detected
>
>     Init PSS detected with lag: 4472
>
>     sss has been detected
>
>     Init PSS detected with lag: 4472
>
>     sss has been detected
>
>     Init PSS detected with lag: 4484 à12 Ts drift
>
>     sss has been detected
>
>     Thanks! in advance.
>
>     Regards,
>
>     Prasad.
>
> Are you just using the on-board reference clock, or using something 
> like a GPS module?
>
> The drift you show is roughly 0.8PPM (if I've done my math correctly), 
> which is well within spec for this board without a better reference clock.
>
>
>


--------------040503040308050307000707
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/21/2020 12:31 PM, Prasad wrote:<br>
    </div>
    <blockquote cite="mid:004301d65f7c$7138a750$53a9f5f0$@com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <style>
<!--
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Times New Roman \, serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
 /* Style Definitions */
 p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	color:black;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle20
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page Section1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.Section1
	{page:Section1;}
-->
</style><!--[if gte mso 9]><xml>
 <o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
 <o:shapelayout v:ext="edit">
  <o:idmap v:ext="edit" data="1" />
 </o:shapelayout></xml><![endif]-->
      <div class="Section1">
        <p class="MsoNormal"><span style="color:#1F497D">Then how we can
            handle this
            drift in our 5G-NR stack by using <i>uhd_rx_streamer_issue_stream_cmd</i>?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Or we should go
            with
            GPSDO/external clock?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Thanks,</span></p>
      </div>
    </blockquote>
    Well, since most users on here aren't experts on 5G stacks, me
    included, I can't tell you what to do to your stack to handle<br>
      clock drift.  But I WILL say that clock drift is an inevitable
    issue, and as you get better clocks, the scale of that issue becomes<br>
      smaller as you spend more money on better clocks.<br>
    <br>
    A built-in GPSDO would not be a bad investment if clock drift at a
    scale of 0.8PPM is an issue for your implementation.<br>
    <br>
    Many digital demodulators implement algorithms for dealing with
    clock-drift and imprecision on the rx side using PLLs and the like.<br>
      But for 5G I have no idea how that would play out.<br>
    <br>
    <br>
    <blockquote cite="mid:004301d65f7c$7138a750$53a9f5f0$@com"
      type="cite">
      <div class="Section1">
        <p class="MsoNormal"><span style="color:#1F497D"><o:p></o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span
                style="font-size:10.0pt;font-family:
&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext"> Marcus D.
                Leech
                [<a class="moz-txt-link-freetext" href="mailto:patchvonbraun@gmail.com">mailto:patchvonbraun@gmail.com</a>] <br>
                <b>Sent:</b> Tuesday, July 21, 2020 9:56 PM<br>
                <b>To:</b> Prasad; <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] 1 Ts delay in USRP B210<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">On 07/21/2020 12:25 PM, Prasad wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span style="color:#1F497D">We are using
              internal clock,
              don’t use any GPSDO or external clock.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">So for
              internal clock is this
              expected?</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Thanks,</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
        </blockquote>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,&quot;serif&quot;">The
            internal clock is specced to +/- 2PPM.   You're seeing much
            less than
            that, so it's within spec.<br>
            <br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span
                style="font-size:10.0pt;font-family:
&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext"> USRP-users
                [<a moz-do-not-send="true"
                  href="mailto:usrp-users-bounces@lists.ettus.com">mailto:usrp-users-bounces@lists.ettus.com</a>]
                <b>On Behalf Of </b>Marcus D. Leech via USRP-users<br>
                <b>Sent:</b> Tuesday, July 21, 2020 9:49 PM<br>
                <b>To:</b> <a moz-do-not-send="true"
                  href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] 1 Ts delay in USRP B210</span><o:p></o:p></p>
          </div>
        </div>
        <p class="MsoNormal"> <o:p></o:p></p>
        <div>
          <p class="MsoNormal">On 07/21/2020 12:13 PM, Prasad via
            USRP-users wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span style="color:#1F497D">Soft
              reminder!</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Thanks,</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <div>
            <div style="border:none;border-top:solid #B5C4DF
              1.0pt;padding:3.0pt 0in 0in 0in">
              <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                  Prasad [<a moz-do-not-send="true"
                    href="mailto:kpras@trilcomm.com">mailto:kpras@trilcomm.com</a>]
                  <br>
                  <b>Sent:</b> Monday, July 20, 2020 7:58 PM<br>
                  <b>To:</b> '<a moz-do-not-send="true"
                    href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>'<br>
                  <b>Cc:</b> 'Rao Yenamandra'<br>
                  <b>Subject:</b> 1 Ts delay in USRP B210</span><o:p></o:p></p>
            </div>
          </div>
          <p class="MsoNormal"> <o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Dear Team.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Hope you are
              doing well and safe.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">We are
              bringing up our NR-5G UE
              stack with USRP B210.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">If time
              permits, would you pls.
              reply to below concern with your valuable information. </span><o:p></o:p></p>
          <p class="MsoNormal"> <o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">During the
              synchronization
              procedure, we observe atleast </span><i>±</i><span
              style="color:#1F497D">1 </span><i>Ts</i><span
              style="color:#1F497D"> (Sampling Time) drift in rx
              streamer in every
               ~40ms time period.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Are we
              missing any time_spec
              during  <i>uhd_rx_streamer_recv</i> api or in <i>uhd_tx_streamer_send</i>
              ?</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Master clock
              rate: 30.72e6</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Sampling
              rate:   
              30.72e6</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Carrier
              frequency: 3.8e9</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">We use one
              B210 to transmit time
              domain samples back to back and others to receive.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Log snippet:</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: <i>4469</i>
              (<i>PSS detection offset from the slot boundary</i> )</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4469</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4469</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4469</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4470
            </span><span style="font-family:Wingdings;color:#1F497D">à</span><span
              style="color:#1F497D"> 1 Ts drift</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4470</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4470</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4471
            </span><span style="font-family:Wingdings;color:#1F497D">à</span><span
              style="color:#1F497D"> 1 Ts drift.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4472</span><span
              style="font-family:Wingdings;color:#1F497D">à</span><span
              style="color:#1F497D">
              1 Ts drift</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4472</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4472</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Init PSS
              detected with lag: 4484
            </span><span style="font-family:Wingdings;color:#1F497D">à</span><span
              style="color:#1F497D"> 12 Ts drift</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">sss has been
              detected</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Thanks! in
              advance.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Regards,</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Prasad.</span><o:p></o:p></p>
          <p class="MsoNormal"><span
              style="font-size:12.0pt;font-family:&quot;Times New Roman
              , serif&quot;,&quot;serif&quot;"> </span><o:p></o:p></p>
        </blockquote>
        <p class="MsoNormal" style="margin-bottom:12.0pt"><span
            style="font-size:12.0pt;
            font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Are
            you just using the on-board
            reference clock, or using something like a GPS module?<br>
            <br>
            The drift you show is roughly 0.8PPM (if I've done my math
            correctly), which is
            well within spec for this board without a better reference
            clock.<br>
            <br>
            <br>
            <br>
          </span><o:p></o:p></p>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,&quot;serif&quot;"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------040503040308050307000707--


--===============6792346297190747275==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6792346297190747275==--

