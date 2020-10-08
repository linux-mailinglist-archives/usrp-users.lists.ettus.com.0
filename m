Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C846287C98
	for <lists+usrp-users@lfdr.de>; Thu,  8 Oct 2020 21:43:07 +0200 (CEST)
Received: from [::1] (port=52288 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kQbof-0006W8-H5; Thu, 08 Oct 2020 15:43:05 -0400
Received: from mail-qt1-f174.google.com ([209.85.160.174]:38243)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kQbob-0006QD-HI
 for usrp-users@lists.ettus.com; Thu, 08 Oct 2020 15:43:01 -0400
Received: by mail-qt1-f174.google.com with SMTP id q26so6133654qtb.5
 for <usrp-users@lists.ettus.com>; Thu, 08 Oct 2020 12:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=f1kXFdjusiC+K6eKlilWG5N2wkuTFr1fQ4V7v49T/G0=;
 b=OTBVQQgo9EN190vuZAghacdPfDLBqnsjirV0p6RfnrjnEsSAF4kJNQ11ln0nifapQP
 i/ylUzTUBQLOHnfv6MN+g7blo253EYC6F8N/JNuOurVWzjHnU+pHZaBKBhgM1W/c2O1e
 O1Pl/ZjtRtBU+j+614qsid38cglorYIQy7n4HykIVwLCw0tKJ2zDM+0fQH7q/BPtCmJS
 EuRaq3JzUu0vzhTCDQvQak2A4VwWi3/uPsApir9/z1QZDZIJS8ib6X6RQyZ6Cq/iVHM/
 +ZGd88/JM3gfKeD84Fi6EA1E+choGUgB7iALgx8ox5llii+ak/sut5hldd/0LofEn5Fb
 gQcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=f1kXFdjusiC+K6eKlilWG5N2wkuTFr1fQ4V7v49T/G0=;
 b=LHLZH8G8GuxNx2vmLYZTwpjq0Au5ZgYlEhn76LLqpdH5OeparCz0wHn+eGFZnbn/AF
 vA/so78i1r+a9PxH0UQbdI6QSEv4XmpVTeWQjaZzgf2vrn9DCMKRQv3U218BhXDwIYWq
 7WB2U4pkWzp61c7x6jf/QcGBaoFabzsbVn2Lyr8CToheePN7zPt8wGfUyB2xd8AjeVlm
 94rLmO3u0eIETYOQjaeznEz1Qfm9V9ZF2v6aebV/cg1n0riJg2MDmz0Hul5FEYh5Utyr
 wKbwX4bQy0h2If9t4ESbMt5q0HAZlRxiEt4A/+nDMflfGaA5yCU69uIMQrcmGE6mTJ7q
 MYfw==
X-Gm-Message-State: AOAM530ZQCJQ4zbfCKGODFGUwlcbkFP59oNoV+bXqxbj8yrNf7hxVRVD
 9ut2DzKFGCDGyqzEQyaGuzN4LztREOm/xw==
X-Google-Smtp-Source: ABdhPJzpP3RjrXrJNqaSmyA6oUqL3/XsdgEb5kGNgcmAXnHd3GiWeeGz50LBQCE5cQzYLxNMJvdkqA==
X-Received: by 2002:ac8:7188:: with SMTP id w8mr10120714qto.134.1602186140724; 
 Thu, 08 Oct 2020 12:42:20 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id d47sm4800853qtk.53.2020.10.08.12.42.20
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Oct 2020 12:42:20 -0700 (PDT)
Message-ID: <5F7F6B9B.708@gmail.com>
Date: Thu, 08 Oct 2020 15:42:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <977DB5BC614A438B9066262CBAEDBC75@PC1> <5F7DF8FA.707@gmail.com>
 <1316B17C73CD4E78A29C851758B9424F@PC1> <5F7F603B.3040102@gmail.com>
 <8BDDB039BE74418FA519715D5BB4062B@PC1>
In-Reply-To: <8BDDB039BE74418FA519715D5BB4062B@PC1>
Subject: Re: [USRP-users] B210 USRP object creation
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
Content-Type: multipart/mixed; boundary="===============1337326527790468268=="
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
--===============1337326527790468268==
Content-Type: multipart/alternative;
 boundary="------------000601000709060307070000"

This is a multi-part message in MIME format.
--------------000601000709060307070000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 10/08/2020 03:33 PM, David Taylor (manx.net) via USRP-users wrote:
> Point taken. - I didn’t actually check the original default values of 
> the VID and PID, but they were reset according to the table provided, 
> so that they could be tested as arguments in the make statement below.
> “About the Motherboard and Daughtercard EEPROM on USRP Devices (5th 
> August 2020)”
> The aim is to be able to manipulate some GPIO bits in the block work 
> function and to align events using the 1PPS input.
> Regards,
> David GD4FMB
>
Ok, so presumably you're using Gnu Radio, since you're talking about 
"block work functions".

So this issue straddles the two universes--UHD/USRP and Gnu Radio.

I'd encourage you to use the UHD test tools to confirm sanity of your 
setup and then move on to a stupid-simple flow-graph with standard
   blocks.  Once THAT works, then one can think about grabbing the usrp 
source/sink "object" and being able to use it in your own
   processing "block".   There used to be a way to do this even within 
GRC but I fear that it was a custom block (perhaps from the old
   gr-balint set of blocks) that would allow you to grab an object 
handle and pass it as a variable into your own functions.

It's something I've wanted to do myself from time to time.   Of course 
if you're coding in "naked" GR, without using GRC, it's easy.
   But GRC uses a "data flow" model, and is less "procedural", so it 
gives an added layer of abstraction that makes it difficult to do
   what you want to do.   The gr-uhd module provides GPIO functions:

https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__block.html#ab09502e1c8c43a546616b9a998f137f1

But they aren't exposed in any meaningful way into GRC that I know of.

I'll note that in GR3.9, there is support for something called "code 
snippets" which would let you "dip down into the lower layers" without
   having to post-facto edit generated Python code.



--------------000601000709060307070000
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 10/08/2020 03:33 PM, David Taylor
      (manx.net) via USRP-users wrote:<br>
    </div>
    <blockquote cite="mid:8BDDB039BE74418FA519715D5BB4062B@PC1"
      type="cite">
      <meta content="text/html; charset=windows-1252"
        http-equiv="Content-Type">
      <div dir="ltr">
        <div style="FONT-SIZE: 12pt; FONT-FAMILY: 'Calibri'; COLOR:
          #000000">
          <div>Point taken. - I didn’t actually check the original
            default values of the VID and PID, but they were reset
            according to the table provided, so that they could be
            tested as arguments in the make statement below.</div>
          <div>“About the Motherboard and Daughtercard EEPROM on USRP
            Devices (5th August 2020)”</div>
          <div> </div>
          <div>The aim is to be able to manipulate some GPIO bits in the
            block work function and to align events using the 1PPS
            input.</div>
          <div> </div>
          <div>Regards,</div>
          <div>David GD4FMB</div>
          <br>
        </div>
      </div>
    </blockquote>
    Ok, so presumably you're using Gnu Radio, since you're talking about
    "block work functions".<br>
    <br>
    So this issue straddles the two universes--UHD/USRP and Gnu Radio.<br>
    <br>
    I'd encourage you to use the UHD test tools to confirm sanity of
    your setup and then move on to a stupid-simple flow-graph with
    standard<br>
      blocks.  Once THAT works, then one can think about grabbing the
    usrp source/sink "object" and being able to use it in your own<br>
      processing "block".   There used to be a way to do this even
    within GRC but I fear that it was a custom block (perhaps from the
    old<br>
      gr-balint set of blocks) that would allow you to grab an object
    handle and pass it as a variable into your own functions.<br>
    <br>
    It's something I've wanted to do myself from time to time.   Of
    course if you're coding in "naked" GR, without using GRC, it's easy.<br>
      But GRC uses a "data flow" model, and is less "procedural", so it
    gives an added layer of abstraction that makes it difficult to do<br>
      what you want to do.   The gr-uhd module provides GPIO functions:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__block.html#ab09502e1c8c43a546616b9a998f137f1">https://www.gnuradio.org/doc/doxygen-v3.7.9.1/classgr_1_1uhd_1_1usrp__block.html#ab09502e1c8c43a546616b9a998f137f1</a><br>
    <br>
    But they aren't exposed in any meaningful way into GRC that I know
    of.<br>
    <br>
    I'll note that in GR3.9, there is support for something called "code
    snippets" which would let you "dip down into the lower layers"
    without<br>
      having to post-facto edit generated Python code.<br>
    <br>
    <br>
  </body>
</html>

--------------000601000709060307070000--


--===============1337326527790468268==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1337326527790468268==--

