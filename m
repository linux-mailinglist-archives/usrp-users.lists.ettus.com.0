Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63A3727D5B8
	for <lists+usrp-users@lfdr.de>; Tue, 29 Sep 2020 20:24:29 +0200 (CEST)
Received: from [::1] (port=55258 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kNKIe-0006Mu-4s; Tue, 29 Sep 2020 14:24:28 -0400
Received: from mail-qv1-f47.google.com ([209.85.219.47]:39869)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1kNKIa-0006ED-4C
 for usrp-users@lists.ettus.com; Tue, 29 Sep 2020 14:24:24 -0400
Received: by mail-qv1-f47.google.com with SMTP id z18so2763049qvp.6
 for <usrp-users@lists.ettus.com>; Tue, 29 Sep 2020 11:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=nIa58oWq+e0S00XC3CruthO+c00PyuV3qGo9p7Rb3hk=;
 b=Ny8FhaQqUa5u9OtJsvb7B49UD2w4gWjEN7mOG9TAmtvXf/k/Fg4L0piYV+moxgpRV1
 MwyMn5ILSKusOiXjHwi4l89LgJ4NFwhoXELLK/wJaQZgcNxm2iGWfwST8vYlP25IGMMZ
 z3yfOVs+XqEAaGRKgpukw76bLX0xOerL43H10pJWL1L3qVX/NrwkjpIHvPHdFszaqCnP
 SMMgitFP/F44cCP/WZFaKXEJ8QSoipH3hVHeLnNWaND7jKLUBTuyOzz6vwDaLFQ2QipZ
 lso3O13cw801ywqNs6+hhQ0sOfI5U/dBRRFS+Dh28w6vgX1T7ITnQWTSkUSjbrL2Kw1q
 ikCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=nIa58oWq+e0S00XC3CruthO+c00PyuV3qGo9p7Rb3hk=;
 b=URDSXGWYtf5XH7xKTdo53J3NRqq2EwCwTPFLgVgHPHh/8UU1FPMZST+NyC5CO0Swrx
 jCNpNAut3xlJS4gmXtrBfdz/PXuMje0ldGubmG6Os5FaXz4vB1cXEnT2lndLgjbX45+l
 Egpg4zaCh//tCLOlWVjNCGix14BwuaV5Yg4DWMVqFxhHOu+Tq05wmreBKDNA3kbCKo8B
 wtgaZeU081LEnwEHKpbjNrkhXhomAVspTVBGNqGxR8UCSjnjlSufMIyVg4bE0HbZMJRR
 Q50fMNi5GTCj8iVDgmLFyrxd68kIchfjJhnSL42ds4Sy8qX8pGCYt1NUDSrC1WboHF/m
 fYSA==
X-Gm-Message-State: AOAM533zW8COzjcM0HvDBKG+/Ds+GzSXL39qYW8rlzN3ybHnMOW+KtPZ
 aIDGAbkdWZaApIBqe4PPNRww5vDZH23kAw==
X-Google-Smtp-Source: ABdhPJxZEN5GbzZ8XJcNmAEHQehFrGJ+tmUwxXaF6yO+APsSooGN7SrzOXOwIiuKoNb6bKdJU/74vQ==
X-Received: by 2002:a0c:80c3:: with SMTP id 61mr5546844qvb.23.1601403823386;
 Tue, 29 Sep 2020 11:23:43 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp130-01-69-158-143-119.dsl.bell.ca. [69.158.143.119])
 by smtp.googlemail.com with ESMTPSA id n7sm6664224qtf.27.2020.09.29.11.23.42
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Sep 2020 11:23:42 -0700 (PDT)
Message-ID: <5F737BA7.1050009@gmail.com>
Date: Tue, 29 Sep 2020 14:23:35 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Mark Koenig <mark.koenig@iubelttechnologies.com>
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <DM6PR12MB306787C9B650A03D7A2CAF878C320@DM6PR12MB3067.namprd12.prod.outlook.com>,
 <1B286BD5-53D8-411C-84CC-0E0B6F2962ED@gmail.com>
 <DM6PR12MB3067482AEC0E9D141AC2FE2C8C320@DM6PR12MB3067.namprd12.prod.outlook.com>,
 <5F7375B7.60104@gmail.com>
 <DM6PR12MB3067CA6916624B9C2B8528328C320@DM6PR12MB3067.namprd12.prod.outlook.com>
In-Reply-To: <DM6PR12MB3067CA6916624B9C2B8528328C320@DM6PR12MB3067.namprd12.prod.outlook.com>
Subject: Re: [USRP-users] TWINRX Gain
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
Content-Type: multipart/mixed; boundary="===============3874281637818711696=="
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
--===============3874281637818711696==
Content-Type: multipart/alternative;
 boundary="------------050801080604070404080202"

This is a multi-part message in MIME format.
--------------050801080604070404080202
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/29/2020 02:02 PM, Mark Koenig wrote:
> Yes, I understand gain varies with temperature and frequency, I just 
> wasnt sure if there was any receive chain analysis performed with the 
> daughtecard to give the developer an idea of what type of gain is 
> provided over the attenuation range at various frequencies.  I am not 
> too concerned about tenths of dBs....I was just interested in what the 
> actual gain range provided by the card is.
>
> Thanks
>
> Mark
> ------------------------------------------------------------------------
>
If you look at the first page of this:

https://files.ettus.com/schematics/twinrx/TwinRX%20RF%20Board%20Rev%20D.pdf

You can see the overall block diagram.  You can also see several PE43503 
attenuators, sprinkled among several different MMIC amplifiers, and
  various different RF pathways through switches and filters depending 
on band.   It would be hard for me to unwind all of that and give you
  a definitive answer.

Even for the IF processing, there are two different IFs, depending on 
the frequency band--again with various distributions of gain and
   attenuation (either explicit attenuation, or attenuation via 
filtering)--all of which have considerable uncertainty--due to 
batch-to-batch
   variability and temperature effects.   I'm fairly sure that even the 
designer of the board couldn't tell you, for any given board configuration
   what the actual gain measured between the antenna input an the ADC 
input actually was, with better than 5dB confidence.  Which is where
   calibration comes in.

https://files.ettus.com/schematics/twinrx/TwinRX%20IF%20Board%20Rev%20C.pdf

In a laboratory instrument, like a spectrum analyser, all of this is 
painstakingly calibrated at the factory, usually using lookup tables (or the
   analog-era equivalent), based on well-characterized calibration 
sources.  So when you set the gain level on the front-panel of the device
   to some dB value, you'll actually get that value at the measurement 
point and when you look at the measurement on the display and it
   says -70dBm, it's actually -70dBm at the input terminal.  SDRs aren't 
that, typically.  Although one could build a fairly nice lab instrument
   *around* an SDR, using all the aforementioned calibration exercises, etc.

Now, this all, I admit, sounds a tad "lecturey".  I know you probably 
know all of this, but many on the list don't, or perhaps haven't thought 
about
   it much.  So, I'm prompted to deliver this, or a very similar 
"lecture" a few times a year due to similar queries to yours.

--------------050801080604070404080202
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/29/2020 02:02 PM, Mark Koenig
      wrote:<br>
    </div>
    <blockquote
cite="mid:DM6PR12MB3067CA6916624B9C2B8528328C320@DM6PR12MB3067.namprd12.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Yes, I understand gain varies with temperature and frequency, I
        just wasnt sure if there was any receive chain analysis
        performed with the daughtecard to give the developer an idea of
        what type of gain is provided over the attenuation range at
        various frequencies.  I am not too concerned about tenths of
        dBs....I was just interested in what the actual gain range
        provided by the card is.</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Thanks</div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Mark</div>
      <hr style="display:inline-block;width:98%" tabindex="-1"><br>
    </blockquote>
    If you look at the first page of this:<br>
    <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/schematics/twinrx/TwinRX%20RF%20Board%20Rev%20D.pdf">https://files.ettus.com/schematics/twinrx/TwinRX%20RF%20Board%20Rev%20D.pdf</a><br>
    <br>
    You can see the overall block diagram.  You can also see several
    PE43503 attenuators, sprinkled among several different MMIC
    amplifiers, and<br>
     various different RF pathways through switches and filters
    depending on band.   It would be hard for me to unwind all of that
    and give you<br>
     a definitive answer.<br>
    <br>
    Even for the IF processing, there are two different IFs, depending
    on the frequency band--again with various distributions of gain and<br>
      attenuation (either explicit attenuation, or attenuation via
    filtering)--all of which have considerable uncertainty--due to
    batch-to-batch<br>
      variability and temperature effects.   I'm fairly sure that even
    the designer of the board couldn't tell you, for any given board
    configuration<br>
      what the actual gain measured between the antenna input an the ADC
    input actually was, with better than 5dB confidence.  Which is where<br>
      calibration comes in.<br>
    <br>
<a class="moz-txt-link-freetext" href="https://files.ettus.com/schematics/twinrx/TwinRX%20IF%20Board%20Rev%20C.pdf">https://files.ettus.com/schematics/twinrx/TwinRX%20IF%20Board%20Rev%20C.pdf</a><br>
    <br>
    In a laboratory instrument, like a spectrum analyser, all of this is
    painstakingly calibrated at the factory, usually using lookup tables
    (or the<br>
      analog-era equivalent), based on well-characterized calibration
    sources.  So when you set the gain level on the front-panel of the
    device<br>
      to some dB value, you'll actually get that value at the
    measurement point and when you look at the measurement on the
    display and it<br>
      says -70dBm, it's actually -70dBm at the input terminal.  SDRs
    aren't that, typically.  Although one could build a fairly nice lab
    instrument<br>
      *around* an SDR, using all the aforementioned calibration
    exercises, etc.<br>
    <br>
    Now, this all, I admit, sounds a tad "lecturey".  I know you
    probably know all of this, but many on the list don't, or perhaps
    haven't thought about<br>
      it much.  So, I'm prompted to deliver this, or a very similar
    "lecture" a few times a year due to similar queries to yours.<br>
  </body>
</html>

--------------050801080604070404080202--


--===============3874281637818711696==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3874281637818711696==--

