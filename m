Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FA6C293453
	for <lists+usrp-users@lfdr.de>; Tue, 20 Oct 2020 07:37:44 +0200 (CEST)
Received: from [::1] (port=57104 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUkL7-0000D5-5b; Tue, 20 Oct 2020 01:37:41 -0400
Received: from mail-qk1-f170.google.com ([209.85.222.170]:44449)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kUkL3-00005Y-2P
 for usrp-users@lists.ettus.com; Tue, 20 Oct 2020 01:37:37 -0400
Received: by mail-qk1-f170.google.com with SMTP id s14so573175qkg.11
 for <usrp-users@lists.ettus.com>; Mon, 19 Oct 2020 22:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=evVg9MeGVjbUvKiZKSaziXUUk3WeEb7G1Pg4rrVj0GM=;
 b=ec4OtNnrB5TQMsB25Enmi2Bm9upDjRBBsq23WCOuVpFgJEdgFiAQupcCtVrEeysVKE
 DGgQUCLdXgR/4hiATV1ezgL7QfcsLerPNmyEab7y5KvetJeIgk1c071OeC4UHc6rHAbk
 uTHpQclkx+AqLrU1Xu/mwQzg+2v4eXAOtrmJhludr3Fa1CibdCrtbRkFsCcjv4VbTSCM
 wrJqaqnhhBAB3CaP5QTdZYsqv582xxfufswRvjyOaX6P5wG/sHqRrnNgo7bRgIpbp17X
 mDwSrgyXNLy0U+Fsb9Cih/a9DFnKqwJsa8cs2VTPlJdjbh6wjsDXPQlPhmrYil6TWDm1
 vmug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=evVg9MeGVjbUvKiZKSaziXUUk3WeEb7G1Pg4rrVj0GM=;
 b=Xqo26zBpTpCVwqA3EU/xOjpzdwFyDNlQuORjAt+rvrSlHClZkunsNwn4sQvtY4kzV4
 KtQRgKTy51lArpQElVqz8D163j6CQBIdxb1rj8meNUgMDKA8C7bSq5snGoHQgn5v/tel
 Gl4niABFQrop48zwIQ5KtasBtBb4djBzK8osEJ6W1w9VzcS7MlnLsmJl1oCO2xRJhPaM
 xZ6io/TDSA6YYBB46ZlnKRaEfaND/yUbS5ozCH5fsYGSmREVD5Dvj+ukzkkKUogb0Tz3
 TNT6jYDZ5cTm61YkewDBwVoiM52tHNKkQFMBd6lk90usdTNa+xoDqs3CzOyZyEoN1tEJ
 pw/g==
X-Gm-Message-State: AOAM5336YEYZMrkqjJor201KRYfJiEBC8VLxfZfR17jM6Qa4mEAj/HwR
 TIndqQYaFx+go5Fpvib18zvUrLdBvQEDmQ==
X-Google-Smtp-Source: ABdhPJzLgC1Yg7o50RyJBOwgj5vosS+hEl8BISdJ5EZEikPZ/nWb3WriiGBEsPmd091KmyI1lmno/g==
X-Received: by 2002:a37:7181:: with SMTP id m123mr1171722qkc.295.1603172216477; 
 Mon, 19 Oct 2020 22:36:56 -0700 (PDT)
Received: from [192.168.2.12]
 (bras-base-smflon1825w-grc-07-174-93-0-246.dsl.bell.ca. [174.93.0.246])
 by smtp.googlemail.com with ESMTPSA id z6sm326596qtw.36.2020.10.19.22.36.55
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Oct 2020 22:36:56 -0700 (PDT)
Message-ID: <5F8E7777.4090502@gmail.com>
Date: Tue, 20 Oct 2020 01:36:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAFsy4Xg+g3NR1dwe8uKj=rmZQ7TV-HLWvvZcoOuMU_u5Z9_Uow@mail.gmail.com>
 <SL2P216MB0331A7E8B4DD97FAF77519B9931F0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
In-Reply-To: <SL2P216MB0331A7E8B4DD97FAF77519B9931F0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM>
Subject: Re: [USRP-users] spectrum availability measurement with usrp
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
Content-Type: multipart/mixed; boundary="===============2108319523882009438=="
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
--===============2108319523882009438==
Content-Type: multipart/alternative;
 boundary="------------050104050008020306050400"

This is a multi-part message in MIME format.
--------------050104050008020306050400
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 10/20/2020 01:05 AM, Kyeong Su Shin via USRP-users wrote:
> Hello Trang:
>
> It depends on your applications. USRPs CAN be used to scan and map the 
> wireless spectrum, but you will have to determine whether the spectrum 
> is empty or not, and it is not a trivial question. For an example, 
> signals from satellites and spacecrafts are often below the thermal 
> noise, so you will need to use special dish antennas and/or correlate 
> the signals with known sequences in order to detect them. Also, USRP 
> B200/B210 are not high-end spectrum analyzers, so they may show you 
> some spurious signals (possible false positives).
>
> So, yes, it is possible, but I don't know whether they are suitable 
> for your use cases.
>
> Regards,
> Kyeong Su Shin
> ------------------------------------------------------------------------
>
Some further wisdom.  SDRs are *components* in an overall engineered RF 
*system and application*.  They aren't "born" knowing your
   particular application.

You'll need some non-trivial knowledge of software development 
methodologies, DSP knowledge, and knowledge of radio and electronics
   to develop an application that suits your needs.

Now, there are lots of applications for SDRs in general out there. I'd 
suggest you query the discuss-gnuradio mailing list as well.

But don't be surprised to find that an application that fits precisely 
what you want to do doesn't exist.

Consider two things:

The set that could be described as "useful things you might want to do 
with radio technology"
The set that could be described as "useful things you might want to do 
with a computer"

Both of those sets are staggeringly large.  So even an intersection will 
also be staggeringly large.  So it should not perhaps be surprising that
   not everything that could possibly be done with this technology has 
already been invented, and conveniently packaged.



--------------050104050008020306050400
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/20/2020 01:05 AM, Kyeong Su Shin
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:SL2P216MB0331A7E8B4DD97FAF77519B9931F0@SL2P216MB0331.KORP216.PROD.OUTLOOK.COM"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Hello Trang:</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        It depends on your applications. USRPs CAN be used to scan and
        map the wireless spectrum, but you will have to determine
        whether the spectrum is empty or not, and it is not a trivial
        question. For an example, signals from satellites and
        spacecrafts are often below the thermal noise, so you will need
        to use special dish antennas and/or correlate the signals with
        known sequences in order to detect them. Also, USRP B200/B210
        are not high-end spectrum analyzers, so they may show you some
        spurious signals (possible false positives).</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        So, yes, it is possible, but I don't know whether they are
        suitable for your use cases.<br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Regards,</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Kyeong Su Shin<br>
      </div>
      <hr style="display:inline-block;width:98%" tabindex="-1"><br>
    </blockquote>
    Some further wisdom.  SDRs are *components* in an overall engineered
    RF *system and application*.  They aren't "born" knowing your<br>
      particular application.<br>
    <br>
    You'll need some non-trivial knowledge of software development
    methodologies, DSP knowledge, and knowledge of radio and electronics<br>
      to develop an application that suits your needs.<br>
    <br>
    Now, there are lots of applications for SDRs in general out there. 
    I'd suggest you query the discuss-gnuradio mailing list as well.<br>
    <br>
    But don't be surprised to find that an application that fits
    precisely what you want to do doesn't exist.<br>
    <br>
    Consider two things:<br>
    <br>
    The set that could be described as "useful things you might want to
    do with radio technology"<br>
    The set that could be described as "useful things you might want to
    do with a computer"<br>
    <br>
    Both of those sets are staggeringly large.  So even an intersection
    will also be staggeringly large.  So it should not perhaps be
    surprising that<br>
      not everything that could possibly be done with this technology
    has already been invented, and conveniently packaged.<br>
    <br>
    <br>
  </body>
</html>

--------------050104050008020306050400--


--===============2108319523882009438==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2108319523882009438==--

