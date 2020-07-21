Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B22228545
	for <lists+usrp-users@lfdr.de>; Tue, 21 Jul 2020 18:27:07 +0200 (CEST)
Received: from [::1] (port=41808 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jxv6f-0006M8-Jo; Tue, 21 Jul 2020 12:27:05 -0400
Received: from mail-qk1-f182.google.com ([209.85.222.182]:40670)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jxv6b-00068D-Lr
 for usrp-users@lists.ettus.com; Tue, 21 Jul 2020 12:27:01 -0400
Received: by mail-qk1-f182.google.com with SMTP id h7so4048430qkk.7
 for <usrp-users@lists.ettus.com>; Tue, 21 Jul 2020 09:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=353+ObDmO2WDiFOpojqlFiGdQP/Ye92zT9JUVosC7sY=;
 b=bv67afq+RIKOMxm5rJ2fFYp5jXhVPl/flir9TE6wyoCh9kAHqUYeLpmED5DN3S4mEk
 9sRf7yKDQdi9iB2Fg66GOrEhCKCC5wBB71+7mQzWTT7Y+NLh1Snac8JWfrLVzFq3q9VR
 8qQOR6Qm6gOC+Y1d0kRGbaQ7OAsbH6okvOQ+URU+qMbSm638uU9PnCHOyFvOs2kOzTTN
 Rf+BrQ/2HyR62/UJfvlzOezJbve1mJFcG5WBpPwvKnD9jiYDvOijmOlPEwe5H4Pe8fQp
 R1moS+F3WD1uTRi/t5/VjCGf1Y2aqSLqS9n4Yt2v6vtlOMrdvvAeAYao2vWb5/OLRJ+q
 j0qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=353+ObDmO2WDiFOpojqlFiGdQP/Ye92zT9JUVosC7sY=;
 b=BpsyTXQKpO6WdxY4QLnh8/NFJTM6rVUVsd7Pj8F5VisiaZLUVL6ldXZoQv7ta+drMd
 azuQHN5QTxM0wKM0NG70zCQZbU+KKbdaMn6WKT6dWXyx72DYzaEDL/+4jWjYtl1UQjzf
 j4vG33ndwF7ik3+0LKVup9BWaZXnE+yRAeBeEKIrn7gtpJgKXOX7ZYN7mUI6HxeoY88o
 BCjMruR8ZhT2pj9X7EP4wRFD6QY/hAH0l6PCCQsCJ29QqemuHq0ialHGlcqLDCDOfhtj
 Erf6xyHZVAG/loHIwla8mRuNJEM00oPvO8ngqAWC0c96AmHGjRwTFNNrO+r/ZWutV1Rd
 XLKg==
X-Gm-Message-State: AOAM530S7ab0p5bP1+jOZqt7vNPWmrEF/2bzxBDuUSOixzQWmdtVEH5H
 PnuVtGudLV2h92vNmx41YQFXG0dveBIzdQ==
X-Google-Smtp-Source: ABdhPJz2VnNJZXBmP8x/ixPbVFzaT8x8pST5t6Qem+CyWoCXS/6Zzabi4sRoBIGnKQ77+v/mIEJjyw==
X-Received: by 2002:a37:9004:: with SMTP id s4mr19215122qkd.286.1595348780853; 
 Tue, 21 Jul 2020 09:26:20 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.googlemail.com with ESMTPSA id w8sm2933519qka.52.2020.07.21.09.26.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 Jul 2020 09:26:20 -0700 (PDT)
Message-ID: <5F17172A.9040600@gmail.com>
Date: Tue, 21 Jul 2020 12:26:18 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Prasad <kpras@trilcomm.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <001b01d65f79$eae66ea0$c0b34be0$@com> <5F171581.7080201@gmail.com>
 <003b01d65f7b$852d6850$8f8838f0$@com>
In-Reply-To: <003b01d65f7b$852d6850$8f8838f0$@com>
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
Content-Type: multipart/mixed; boundary="===============2870476442291901906=="
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
--===============2870476442291901906==
Content-Type: multipart/alternative;
 boundary="------------080705040004030809040403"

This is a multi-part message in MIME format.
--------------080705040004030809040403
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 07/21/2020 12:25 PM, Prasad wrote:
>
> We are using internal clock, don’t use any GPSDO or external clock.
>
> So for internal clock is this expected?
>
> Thanks,
>
The internal clock is specced to +/- 2PPM.   You're seeing much less 
than that, so it's within spec.


> *From:*USRP-users [mailto:usrp-users-bounces@lists.ettus.com] *On 
> Behalf Of *Marcus D. Leech via USRP-users
> *Sent:* Tuesday, July 21, 2020 9:49 PM
> *To:* usrp-users@lists.ettus.com
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


--------------080705040004030809040403
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 07/21/2020 12:25 PM, Prasad wrote:<br>
    </div>
    <blockquote cite="mid:003b01d65f7b$852d6850$8f8838f0$@com"
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
        <p class="MsoNormal"><span style="color:#1F497D">We are using
            internal clock, don’t
            use any GPSDO or external clock.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">So for internal
            clock is this
            expected?<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    The internal clock is specced to +/- 2PPM.   You're seeing much less
    than that, so it's within spec.<br>
    <br>
    <br>
    <blockquote cite="mid:003b01d65f7b$852d6850$8f8838f0$@com"
      type="cite">
      <div class="Section1">
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span
                style="font-size:10.0pt;font-family:
&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext"> USRP-users
                [<a class="moz-txt-link-freetext" href="mailto:usrp-users-bounces@lists.ettus.com">mailto:usrp-users-bounces@lists.ettus.com</a>] <b>On
                  Behalf Of </b>Marcus D. Leech
                via USRP-users<br>
                <b>Sent:</b> Tuesday, July 21, 2020 9:49 PM<br>
                <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] 1 Ts delay in USRP B210<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
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
              procedure, we observe atleast </span><i><span
                style="font-family:&quot;Cambria
                Math&quot;,&quot;serif&quot;;
                color:#1F497D">±</span></i><span style="color:#1F497D">1
            </span><i><span style="font-family:&quot;Cambria
                Math&quot;,&quot;serif&quot;;color:#1F497D">Ts</span></i><span
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
              style="font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,&quot;serif&quot;"><o:p> </o:p></span></p>
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
            <o:p></o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------080705040004030809040403--


--===============2870476442291901906==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2870476442291901906==--

