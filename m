Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E9AFBE7
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 16:53:19 +0200 (CEST)
Received: from [::1] (port=41472 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLU8D-0004JK-FU; Tue, 30 Apr 2019 10:53:17 -0400
Received: from mail-qt1-f180.google.com ([209.85.160.180]:42921)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hLU7d-00046N-Be
 for usrp-users@lists.ettus.com; Tue, 30 Apr 2019 10:53:11 -0400
Received: by mail-qt1-f180.google.com with SMTP id p20so16391851qtc.9
 for <usrp-users@lists.ettus.com>; Tue, 30 Apr 2019 07:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=Gbfs8Zu5Z3ow3iYC4Y/FbCGAFgM+y9wabkDnwfWr0e8=;
 b=pJ/5FQFgiOiqiOVNdTjTblVbuq/m/sGdGyNAotU9V4ryeTKWHiF2gFOl8mVyrPyAVi
 CFGS2Tk4pFzYpf+d6zwU5Xh32xSn7Djcxv8d8wrJi7leER3Mn2CthogkwLUCb+iNQlXa
 tM3nxowRcwW9+wKxPvHZ9l3MUs1DkKJITRGNssErYjdIeZBQ+YNIF4EaXaz9lBV/Ixl1
 CEYYO4twSU+x1r35ES6aKMQBtIR0mc8RYJnWsZGkWd5D5RZDiLhGU0Yrnt2Pau5C8hx0
 3kZ75pJLB/qIw3SSM5LbvZ8BDETLyYyXNpXFvPqWZWa5Jx783zmLWjod2+HgVLTiDU9q
 gAPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=Gbfs8Zu5Z3ow3iYC4Y/FbCGAFgM+y9wabkDnwfWr0e8=;
 b=H7yTPUa0PzvLjVfzFKMxYwzr5oIk9ZYRpG6D74XV4FiGizgb/TgF9okIxUMrfErA2A
 YwsZlO4ojyhCZlUXu9a6mAj66C7nIaww3FViHw/1zTaRfU9J0TPXRlyrp6lhEW4qyJIj
 51p6z8aeGxrVJOKjVxF05Nrrktf5tdR/pbG0NytTt7bz+7iCYYEO1nUEQzRpZBzTPx77
 nWXrO5j1eYtU5xBH3G17nuP8l0FsggNOK65aJ7U9VLHGDijfaqnZKHX/HksC6gJp+FSp
 P91jA1M3HUYfglAbjx584EXtC6toSIzuvsjoUHAv+K9Y1OBN6YLcfnNrOO+dbrLGl7FO
 bJuw==
X-Gm-Message-State: APjAAAWwZ2EFtbrEhyjfhEwEn4K68D8fRZ0YX1xoZZXB/Ktuspd4pVQG
 PloSEsET6/zMvZi1Xz8i/HOByflAaBRAPg==
X-Google-Smtp-Source: APXvYqy9DqU//YV2+xhK8nz1q05VfpjnGKnDxUWTYrK1cqHXiniyqaqN+vRIsaVY+yiagLkk00fjPg==
X-Received: by 2002:aed:2a2c:: with SMTP id c41mr44558331qtd.311.1556635920395; 
 Tue, 30 Apr 2019 07:52:00 -0700 (PDT)
Received: from [192.168.2.12]
 (smflon1825w-lp140-02-174-95-204-168.dsl.bell.ca. [174.95.204.168])
 by smtp.googlemail.com with ESMTPSA id
 l199sm18090506qke.54.2019.04.30.07.51.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 07:51:59 -0700 (PDT)
Message-ID: <5CC8610E.5060007@gmail.com>
Date: Tue, 30 Apr 2019 10:51:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Jason Matusiak <jason@gardettoengineering.com>, 
 "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
References: <BL0PR12MB23407D3418F13ABDC01D6826AF390@BL0PR12MB2340.namprd12.prod.outlook.com>,
 <5CC797D5.1070401@gmail.com>
 <BL0PR12MB23408FC518AA7EBAE2D53176AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com>
In-Reply-To: <BL0PR12MB23408FC518AA7EBAE2D53176AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com>
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
Content-Type: multipart/mixed; boundary="===============2696172185969443156=="
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
--===============2696172185969443156==
Content-Type: multipart/alternative;
 boundary="------------090404020603060504080000"

This is a multi-part message in MIME format.
--------------090404020603060504080000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/30/2019 09:15 AM, Jason Matusiak wrote:
> I guess I would need a block to count samples if I am going to a null 
> sink?  Otherwise I am not sure how to guage how many samples have passed.
I was just thinking to look at runtime--for a large enough sample-count, 
the initial startup overhead would be a small fraction of the total
   runtime.

You could use the "benchmark_rate" tool to do this as well.

>
> Well, this is probably ignorant of me, but I assumed a higher master 
> clock rate would allow me some sort of speed benefit somewhere.  I 
> guess I can't say what since it has nothing to do with the Linux CPU 
> speed....  What is the benefit to running at a slower rate?
No, master_clock_rate has *nothing* to do with CPU speed.  It just 
controls the rate that the ADC/DSP/DDC chain runs at in the radio section.
   There's nothing inherently *wrong* with running at a very high 
decimation ratio, it's just that it isn't *necessary*.


>
> ------------------------------------------------------------------------
> *From:* USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of 
> Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
> *Sent:* Monday, April 29, 2019 8:33 PM
> *To:* usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] E312 wrong sample rate
> On 04/29/2019 03:28 PM, Jason Matusiak via USRP-users wrote:
>> I was debugging a problem with a flowgraph when I realized that I 
>> wasn't getting the amount of samples I expected passing out of the 
>> USRP source block.  If I set a sample rate too low, it tells me it 
>> has to set the sample rate to 0.125MSps.  Currently I have a single 
>> stream from my source block, 30MHz clock rate, 500kHz sample rate.
>>
>> If I run for 20 seconds streaming the data to a file (unbuffered set 
>> to off) as a complex, I would expect to see 20s * 8B * 500KHz = 80MB 
>> of data in the file.
>>
>> Instead, running it empirically (so the numbers will have to be 
>> ballpark and not exact), I see file size of 116153944.  If I make the 
>> assumption that the sample rate was really 500kHz, that means it ran 
>> for 29.03s. This is obviously off by 50%.  If I assume that 10s of 
>> data was really collected, that means I had an actual sample rate of 
>> 1.451924MSps.
>>
>> If I run these tests with the minimal 125kHz sample rate, I see 
>> things off by about double what I would expect.
>>
>> Moving my sample rate around the 1MSps range seems to work closer to 
>> what I expect, but of course I can't write files that fast without 
>> getting 'O' on the screen.  Ultimately I need to use two receivers, 
>> so I don't believe that I can push the clock rate above 30.72MHz.
>>
>> I am running UHD-3_14 with RFNoC enabled (though I am not using RFNoC 
>> in this particular flowgraph).  What am I missing here?
>>
> Have it write to /dev/null, and time how long it takes to gather some 
> large number of samples, and go from there.
>    If your delivered sample rate is 500ksps, I don't see why you need 
> a master clock rate as high as 30Msps, but perhaps you have
>    your reasons.
>


--------------090404020603060504080000
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 04/30/2019 09:15 AM, Jason Matusiak
      wrote:<br>
    </div>
    <blockquote
cite="mid:BL0PR12MB23408FC518AA7EBAE2D53176AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style type="text/css" style="display:none;"> P {margin-top:0;margin-bottom:0;} </style>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        I guess I would need a block to count samples if I am going to a
        null sink?  Otherwise I am not sure how to guage how many
        samples have passed.</div>
    </blockquote>
    I was just thinking to look at runtime--for a large enough
    sample-count, the initial startup overhead would be a small fraction
    of the total<br>
      runtime.<br>
    <br>
    You could use the "benchmark_rate" tool to do this as well.<br>
    <br>
    <blockquote
cite="mid:BL0PR12MB23408FC518AA7EBAE2D53176AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com"
      type="cite">
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        <br>
      </div>
      <div style="font-family: Calibri, Arial, Helvetica, sans-serif;
        font-size: 12pt; color: rgb(0, 0, 0);">
        Well, this is probably ignorant of me, but I assumed a higher
        master clock rate would allow me some sort of speed benefit
        somewhere.  I guess I can't say what since it has nothing to do
        with the Linux CPU speed....  What is the benefit to running at
        a slower rate?</div>
    </blockquote>
    No, master_clock_rate has *nothing* to do with CPU speed.  It just
    controls the rate that the ADC/DSP/DDC chain runs at in the radio
    section.<br>
      There's nothing inherently *wrong* with running at a very high
    decimation ratio, it's just that it isn't *necessary*.<br>
    <br>
    <br>
    <blockquote
cite="mid:BL0PR12MB23408FC518AA7EBAE2D53176AF3A0@BL0PR12MB2340.namprd12.prod.outlook.com"
      type="cite">
      <div id="Signature">
        <div>
          <div style="font-family:Calibri,Arial,Helvetica,sans-serif;
            font-size:12pt; color:rgb(0,0,0)">
            <br>
          </div>
          <hr tabindex="-1" style="display:inline-block; width:98%">
          <div id="divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
              color="#000000" face="Calibri, sans-serif"><b>From:</b>
              USRP-users <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users-bounces@lists.ettus.com">&lt;usrp-users-bounces@lists.ettus.com&gt;</a> on
              behalf of Marcus D. Leech via USRP-users
              <a class="moz-txt-link-rfc2396E" href="mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com&gt;</a><br>
              <b>Sent:</b> Monday, April 29, 2019 8:33 PM<br>
              <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> Re: [USRP-users] E312 wrong sample rate</font>
            <div> </div>
          </div>
          <div style="background-color:#FFFFFF">
            <div class="x_moz-cite-prefix">On 04/29/2019 03:28 PM, Jason
              Matusiak via USRP-users wrote:<br>
            </div>
            <blockquote type="cite">
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                I was debugging a problem with a flowgraph when I
                realized that I wasn't getting the amount of samples I
                expected passing out of the USRP source block.  If I set
                a sample rate too low, it tells me it has to set the
                sample rate to 0.125MSps.  Currently I have a single
                stream from my source block, 30MHz clock rate, 500kHz
                sample rate.</div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                If I run for 20 seconds streaming the data to a file
                (unbuffered set to off) as a complex, I would expect to
                see 20s * 8B * 500KHz = 80MB of data in the file.</div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Instead, running it empirically (so the numbers will
                have to be ballpark and not exact), I see file size
                of 116153944.  If I make the assumption that the sample
                rate was really 500kHz, that means it ran for 29.03s. 
                This is obviously off by 50%.  If I assume that 10s of
                data was really collected, that means I had an actual
                sample rate of 1.451924MSps.</div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                If I run these tests with the minimal 125kHz sample
                rate, I see things off by about double what I would
                expect.  </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                Moving my sample rate around the 1MSps range seems to
                work closer to what I expect, but of course I can't
                write files that fast without getting 'O' on the
                screen.  Ultimately I need to use two receivers, so I
                don't believe that I can push the clock rate above
                30.72MHz.  </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                <br>
              </div>
              <div
                style="font-family:Calibri,Arial,Helvetica,sans-serif;
                font-size:12pt; color:rgb(0,0,0)">
                I am running UHD-3_14 with RFNoC enabled (though I am
                not using RFNoC in this particular flowgraph).  What am
                I missing here?</div>
              <br>
            </blockquote>
            Have it write to /dev/null, and time how long it takes to
            gather some large number of samples, and go from there.<br>
               If your delivered sample rate is 500ksps, I don't see why
            you need a master clock rate as high as 30Msps, but perhaps
            you have<br>
               your reasons.  <br>
            <br>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------090404020603060504080000--


--===============2696172185969443156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2696172185969443156==--

