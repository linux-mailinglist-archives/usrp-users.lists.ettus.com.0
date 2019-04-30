Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A93D8EDE9
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 02:34:42 +0200 (CEST)
Received: from [::1] (port=34044 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLGjJ-0006KA-NJ; Mon, 29 Apr 2019 20:34:41 -0400
Received: from mail-qk1-f172.google.com ([209.85.222.172]:40499)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hLGil-0006Ag-3C
 for usrp-users@lists.ettus.com; Mon, 29 Apr 2019 20:34:37 -0400
Received: by mail-qk1-f172.google.com with SMTP id w20so7161337qka.7
 for <usrp-users@lists.ettus.com>; Mon, 29 Apr 2019 17:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=MmtB1L42GKwHjllWx4Ixrv0Q2r4bQwm1IB9YV0ukp0Q=;
 b=B4wOfTEcR2bKX6brbOpUsZ+geWvrKLrawRaEq17mcx0uEuiKX5DH/BQOeDRu95tprj
 5nPCXaILeMDRbSsqXSNtNm7I3ae3r/o4RMWXC328Znx/5AJ5m1v2uhLUoKzeSdQrm2Fy
 x4TbiMLPFR1Sea/k5YHz4zZG29bOsnJOziSC3tnrxRGijVVt1Nd7/EkeAzZbiAhRwkF7
 rbde73knFb3L0H2eM9NhMkjfWvSMsduEd1y/5VaUPCEHDuG0YLw1YTXb03Bzizye0Y0A
 7F7OMcQ/s4/1Xz7Zp4srfsc1TcFrxiE1gp/ZKnC2d+7wZzoX6J9DE+5Cs2ocWr3RXexk
 Gz8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=MmtB1L42GKwHjllWx4Ixrv0Q2r4bQwm1IB9YV0ukp0Q=;
 b=ODSqoveDQiBMeR549TB+P0nTQ2NWwt/u5YFIKSYjMzBy864R1p2bVnHWfV1rktBy4j
 nUSMzEmCESsolNhO3c7W8hyCKpAsSrSJKLk56HbJQf+Oxm5lY/yJVAluay+BzL2S69gZ
 EtpL6EWO5t2okXaezcS0TE2TTcLQPPnefA0Z+qOV2nXiv3YE3nNT5d+9mANHCt4HGnTU
 fEa4Jvvls8NNw14NLbw9nL6+e5G6RmaKv8YqKga3ryKDvOWynKgEI5xcwsNivb72Sdi9
 Bjl4zjbYY8tGUTzgYs6Zhch1NNG8oeqwPSSYKdflDvIhvkJ+8wPlQFgMHfKiCjw2Mvqy
 q6UQ==
X-Gm-Message-State: APjAAAXmiX2qpx7a4SLOKJ7wSgWgZZL5wBqpVTg6nWRAioMAJiKgPXrN
 mAl6MHR57wkR01//qnsjjNUZ1jXMatj1Ag==
X-Google-Smtp-Source: APXvYqyzRb3Hy8L4U0Jqjjd4Lm8YQtpIo7MpJeJwGiODB1NOCOWnoPKFrCNIsgVXtnwl0d2Ie0IRIw==
X-Received: by 2002:a05:620a:1359:: with SMTP id
 c25mr10753736qkl.52.1556584406409; 
 Mon, 29 Apr 2019 17:33:26 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id g50sm8737253qtg.83.2019.04.29.17.33.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 17:33:25 -0700 (PDT)
Message-ID: <5CC797D5.1070401@gmail.com>
Date: Mon, 29 Apr 2019 20:33:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BL0PR12MB23407D3418F13ABDC01D6826AF390@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23407D3418F13ABDC01D6826AF390@BL0PR12MB2340.namprd12.prod.outlook.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] E312 wrong sample rate
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
From: "Marcus D. Leech via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============7999449181142437168=="
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
--===============7999449181142437168==
Content-Type: multipart/alternative;
 boundary="------------030807040102010700080001"

This is a multi-part message in MIME format.
--------------030807040102010700080001
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/29/2019 03:28 PM, Jason Matusiak via USRP-users wrote:
> I was debugging a problem with a flowgraph when I realized that I 
> wasn't getting the amount of samples I expected passing out of the 
> USRP source block.  If I set a sample rate too low, it tells me it has 
> to set the sample rate to 0.125MSps.  Currently I have a single stream 
> from my source block, 30MHz clock rate, 500kHz sample rate.
>
> If I run for 20 seconds streaming the data to a file (unbuffered set 
> to off) as a complex, I would expect to see 20s * 8B * 500KHz = 80MB 
> of data in the file.
>
> Instead, running it empirically (so the numbers will have to be 
> ballpark and not exact), I see file size of 116153944.  If I make the 
> assumption that the sample rate was really 500kHz, that means it ran 
> for 29.03s.  This is obviously off by 50%.  If I assume that 10s of 
> data was really collected, that means I had an actual sample rate of 
> 1.451924MSps.
>
> If I run these tests with the minimal 125kHz sample rate, I see things 
> off by about double what I would expect.
>
> Moving my sample rate around the 1MSps range seems to work closer to 
> what I expect, but of course I can't write files that fast without 
> getting 'O' on the screen.  Ultimately I need to use two receivers, so 
> I don't believe that I can push the clock rate above 30.72MHz.
>
> I am running UHD-3_14 with RFNoC enabled (though I am not using RFNoC 
> in this particular flowgraph).  What am I missing here?
>
Have it write to /dev/null, and time how long it takes to gather some 
large number of samples, and go from there.
    If your delivered sample rate is 500ksps, I don't see why you need a 
master clock rate as high as 30Msps, but perhaps you have
    your reasons.


--------------030807040102010700080001
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 04/29/2019 03:28 PM, Jason Matusiak
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:BL0PR12MB23407D3418F13ABDC01D6826AF390@BL0PR12MB2340.namprd12.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I was debugging a problem with a flowgraph when I realized that
        I wasn't getting the amount of samples I expected passing out of
        the USRP source block.  If I set a sample rate too low, it tells
        me it has to set the sample rate to 0.125MSps.  Currently I have
        a single stream from my source block, 30MHz clock rate, 500kHz
        sample rate.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        If I run for 20 seconds streaming the data to a file (unbuffered
        set to off) as a complex, I would expect to see 20s * 8B *
        500KHz = 80MB of data in the file.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Instead, running it empirically (so the numbers will have to be
        ballpark and not exact), I see file size of 116153944.  If I
        make the assumption that the sample rate was really 500kHz, that
        means it ran for 29.03s.  This is obviously off by 50%.  If I
        assume that 10s of data was really collected, that means I had
        an actual sample rate of 1.451924MSps.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        If I run these tests with the minimal 125kHz sample rate, I see
        things off by about double what I would expect.  </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Moving my sample rate around the 1MSps range seems to work
        closer to what I expect, but of course I can't write files that
        fast without getting 'O' on the screen.  Ultimately I need to
        use two receivers, so I don't believe that I can push the clock
        rate above 30.72MHz.  </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I am running UHD-3_14 with RFNoC enabled (though I am not using
        RFNoC in this particular flowgraph).  What am I missing here?</div>
      <br>
    </blockquote>
    Have it write to /dev/null, and time how long it takes to gather
    some large number of samples, and go from there.<br>
       If your delivered sample rate is 500ksps, I don't see why you
    need a master clock rate as high as 30Msps, but perhaps you have<br>
       your reasons.  <br>
    <br>
  </body>
</html>

--------------030807040102010700080001--


--===============7999449181142437168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7999449181142437168==--

