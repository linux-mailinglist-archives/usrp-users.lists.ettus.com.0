Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5862386AC9
	for <lists+usrp-users@lfdr.de>; Thu,  8 Aug 2019 21:51:13 +0200 (CEST)
Received: from [::1] (port=55126 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hvoRL-0003bi-2A; Thu, 08 Aug 2019 15:51:11 -0400
Received: from mail-qt1-f171.google.com ([209.85.160.171]:46963)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hvoRG-0003VD-W2
 for usrp-users@lists.ettus.com; Thu, 08 Aug 2019 15:51:07 -0400
Received: by mail-qt1-f171.google.com with SMTP id h21so93431953qtn.13
 for <usrp-users@lists.ettus.com>; Thu, 08 Aug 2019 12:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=aYEcLOeNTL8dVx8ZWdx5aHeUutUjuNyG8gD8hZ8mFK8=;
 b=LQy13+dl1b5gtE5l3tpHmMl+09NyUvu6TI8+tnF8NuRl7GyuDv42OhF0JnVDIEBZNC
 d4fy2gHpUt1ajYNRalaJwQzyyZub6YcuPGN3T8wcAJwgVpIwXkYm21F5qD6KfpRDlsFC
 p/yO+F97SA5c/yRZ1ZVelCtQS5HQ7DS5W4X7NRpEI3pq+2DkyGTxvnjfM6G00gfwE35b
 u+DuHRP7hdp9671/eAc/1jam4XhXJMCgirjws79n4C5DyUiksumXOd862QIbhE3m+/8j
 Z5r/1lqIC5NZZId8WqeLLqbucp5fn4iDqUUbCYRMSMYznDu+TsfUh0BOmxPI7fksaZvk
 KgZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=aYEcLOeNTL8dVx8ZWdx5aHeUutUjuNyG8gD8hZ8mFK8=;
 b=hEtX0he70nOiLt6IYdRu16zdra652Lb34wfRlLeDlaXcMxxk83ctSOsq/cdBpFl8hG
 6wb7DFDWlSF+ERX6X4ObbF288YAykUhN9DcfV1hVWKO2uSNlAj8IJJvQ5uLp1drG+q0V
 6IeCxRlpKVvCmmqs8Mm4X0v8g4Dyz8Jo6jBVcd4UOxlgLOmhExL2oqO/R98p+iqhOloX
 CzzVjw0W0v4fA8W6QDgM7pmK0gU5JALRw1Ys3qh0wTtxQjIeHhL12904fZFuHikgNrAn
 OuPSGM1t1jQPJezC0Yp6A0hsypi7EEgHjC83csCXcroHpiVacu8Jy1yshAnljL56JgB2
 VRrQ==
X-Gm-Message-State: APjAAAUUyrIxdZbnoASCuHWmPVNha7ou5tJ9nMuY5M1yRgIbh2VGmahL
 yWo9TOeD8qlWw6TpxIm03fTmepIi
X-Google-Smtp-Source: APXvYqzmFuL+yrhKYyaP8aSZHthXUl62EEJBj5ggd1w8MKTQLC9IcePF32yBKn1YPhz0V7Xg5obrYg==
X-Received: by 2002:a0c:f788:: with SMTP id s8mr14141612qvn.35.1565293826254; 
 Thu, 08 Aug 2019 12:50:26 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id q56sm48485403qtq.64.2019.08.08.12.50.25
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 12:50:25 -0700 (PDT)
Message-ID: <5D4C7D01.8060709@gmail.com>
Date: Thu, 08 Aug 2019 15:50:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAPLnO-LHCspbvfZjQd4Nmcq4GzxKEEOPBmXeEESSf7vboTy==Q@mail.gmail.com>
 <CAPLnO-JWykiKQRB1a1NOoMMXEyTbgXMiFUGk3K70f28LSfK+SQ@mail.gmail.com>
 <162bd826-1815-4880-8ef0-7428078c51a0@www.fastmail.com>
 <CAPLnO-Kagbfu8yn41ZV0j4P6nAwOFCOnFWPD-uN=5Sfj5u58ag@mail.gmail.com>
 <3d43bfce-93e4-4556-9478-ba30913b8c3f@www.fastmail.com>
In-Reply-To: <3d43bfce-93e4-4556-9478-ba30913b8c3f@www.fastmail.com>
Subject: Re: [USRP-users] Fwd: Varying delay in signal reception
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
Content-Type: multipart/mixed; boundary="===============8355552444870947874=="
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
--===============8355552444870947874==
Content-Type: multipart/alternative;
 boundary="------------010801000906020203050208"

This is a multi-part message in MIME format.
--------------010801000906020203050208
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 08/08/2019 01:32 PM, Michael Dickens via USRP-users wrote:
> Hi Sneha - Please "reply all" to keep the discussion on the USRP users 
> email list. More eyes reading these means a greater chance that folks 
> will jump in to help!
>
> The startup time for UHD / USRP / GR will be very similar between 
> different runs of the exact same flowgraph, but not exactly the same. 
> If you were to somehow measure these and plot them, I'd bet you'd get 
> a curve that looks Gaussian except with limits (a "truncated normal 
> distribution"). The exact same file being Tx'd over and again will 
> have a slightly different delay on Tx each time.
>
> Not sure this is what you're experiencing. If you don't think it is, 
> then please provide more information; what we have right now is pretty 
> thin.
>
> Hope this is useful! - MLD
I was going to make the same general comment--we don't have enough 
information about exactly *what* you mean by "delay", and exactly
   how you're measuring it.

It's nearly impossible to get predictable-and-repeatable fine-scale 
latency on a software-based system running on a general-purpose
   operating-system like Linux or Windows.  If your system-design 
requires this to be so, then you have a problem with your system design.
>
> On Thu, Aug 8, 2019, at 11:38 AM, Sneha vasan wrote:
>> Hi Michael,
>>
>> I sent a email before I confirmed the subscription for the usrp 
>> users. So I was wondering if I could receive the email back if 
>> replied in usrp lists. So just forwarded once again just to be sure. 
>> Probably I would have put a note there.
>>
>> I am generating the signal using Matlab and store it in a file and 
>> then send it to the USRP using gnu-radio. So now when I make multiple 
>> recordings of the signal at different time , I am receiving the 
>> signal at varying intial delay . I except the delay to be constant as 
>> I am send same signal and with same parameters.
>>
>> Regards,
>> Sneha
>
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com


--------------010801000906020203050208
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 08/08/2019 01:32 PM, Michael Dickens
      via USRP-users wrote:<br>
    </div>
    <blockquote
      cite="mid:3d43bfce-93e4-4556-9478-ba30913b8c3f@www.fastmail.com"
      type="cite">
      <title></title>
      <style type="text/css">p.MsoNormal,p.MsoNoSpacing{margin:0}</style>
      <div style="font-family:Arial;">Hi Sneha - Please "reply all" to
        keep the discussion on the USRP users email list. More eyes
        reading these means a greater chance that folks will jump in to
        help!<br>
      </div>
      <div style="font-family:Arial;"><br>
      </div>
      <div style="font-family:Arial;">The startup time for UHD / USRP /
        GR will be very similar between different runs of the exact same
        flowgraph, but not exactly the same. If you were to somehow
        measure these and plot them, I'd bet you'd get a curve that
        looks Gaussian except with limits (a "truncated normal
        distribution"). The exact same file being Tx'd over and again
        will have a slightly different delay on Tx each time.</div>
      <div style="font-family:Arial;"><br>
      </div>
      <div style="font-family:Arial;">Not sure this is what you're
        experiencing. If you don't think it is, then please provide more
        information; what we have right now is pretty thin.<br>
      </div>
      <div style="font-family:Arial;"><br>
      </div>
      <div style="font-family:Arial;">Hope this is useful! - MLD<br>
      </div>
    </blockquote>
    I was going to make the same general comment--we don't have enough
    information about exactly *what* you mean by "delay", and exactly<br>
      how you're measuring it.<br>
    <br>
    It's nearly impossible to get predictable-and-repeatable fine-scale
    latency on a software-based system running on a general-purpose<br>
      operating-system like Linux or Windows.  If your system-design
    requires this to be so, then you have a problem with your system
    design.<br>
    <blockquote
      cite="mid:3d43bfce-93e4-4556-9478-ba30913b8c3f@www.fastmail.com"
      type="cite">
      <div style="font-family:Arial;"><br>
      </div>
      <div style="font-family:Arial;"><span style="font-size: 0.875rem;
          font-family: &quot;Source Sans Pro&quot;, sans-serif;">On Thu,
          Aug 8, 2019, at 11:38 AM, Sneha vasan wrote:</span><br>
      </div>
      <blockquote type="cite" id="qt">
        <div dir="ltr">
          <div>Hi Michael,<br>
          </div>
          <div><br>
          </div>
          <div>I sent a email before I confirmed the subscription for
            the usrp users. So I was wondering if I could receive the
            email back if replied in usrp lists. So just forwarded once
            again just to be sure. Probably I would have put a note
            there.<br>
          </div>
          <div><br>
          </div>
          <div>I am generating the signal using Matlab and store it in a
            file and then send it to the USRP using gnu-radio. So now
            when I make multiple recordings of the signal at different
            time , I am receiving the signal at varying intial delay . I
            except the delay to be constant as I am send same signal and
            with same parameters.<br>
          </div>
          <div><br>
          </div>
          <div>Regards,<br>
          </div>
          <div>Sneha<br>
          </div>
        </div>
      </blockquote>
      <div style="font-family:Arial;"><br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
USRP-users mailing list
<a class="moz-txt-link-abbreviated" href="mailto:USRP-users@lists.ettus.com">USRP-users@lists.ettus.com</a>
<a class="moz-txt-link-freetext" href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------010801000906020203050208--


--===============8355552444870947874==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8355552444870947874==--

