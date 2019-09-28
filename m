Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6022C125F
	for <lists+usrp-users@lfdr.de>; Sun, 29 Sep 2019 01:02:47 +0200 (CEST)
Received: from [::1] (port=38740 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iELjg-0001kw-Hl; Sat, 28 Sep 2019 19:02:44 -0400
Received: from mail-qt1-f177.google.com ([209.85.160.177]:38188)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iELjd-0001dH-De
 for usrp-users@lists.ettus.com; Sat, 28 Sep 2019 19:02:41 -0400
Received: by mail-qt1-f177.google.com with SMTP id j31so12071553qta.5
 for <usrp-users@lists.ettus.com>; Sat, 28 Sep 2019 16:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:subject:references
 :in-reply-to; bh=PRmnROK2aO3FwTPHc4GaSseD7ZvYs/lJIh9E0fOib0k=;
 b=TbZyWqqBMf84Rk4AEs8b7tpOsosb+bqY+chWlXtzHF01gWYbpJWpjLS05QQJFx1V0k
 U0TD93Mbv6Rtl+9H9c8jjGBPsKQVG7JUAl7fJH1XI2rWsw+v233JPq4lM62ZqN3X09Cv
 xVRDbJzk2L93mgKaFYZoF7mr22lpONKWoecsXXb+U7PUVJ8s8I+6cEqMkYzmNtHXceNW
 l6bRbKR0Cpx7aT5/wrg9H9A/6iZZDuOmp6AiEqMMTeG628k4/2VaaQJPyd/gYzIuAwMh
 y0CVXsvUcG0wL9xI2J+6GKu6Orw1OiYEVgv7HZAirOQhaelCaOXM+M4XUDeT6JKBU00P
 1kkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :subject:references:in-reply-to;
 bh=PRmnROK2aO3FwTPHc4GaSseD7ZvYs/lJIh9E0fOib0k=;
 b=dJQmTpjJ9tJuqj5ZVrUCEiCIbMaEIzYgKFkpj32cqzH30ZwmYcjSzvoAghH61w8eEa
 qw1YrsCowfYAwaJ6w1snjadfkwdsaSoCOMqVH0IhkkXfvJ4BRMLAJX8G+2zMUD4bYsRN
 KYz/W3ZbVyRS49fzvU6ioTpnTjWh6DahQbERHyJa5LNjWYYr3UfoUnQEGMAVr2Ulj0qb
 GBt2k8yvIYcu6kBrC9GnnwcBihIZVFXKWOWbA4/zjkiH9dnpnbcXE6uYaGX6Yd15T1H3
 AVPC4057FSkY8F2tlzTyyAhK/XJ3ioPU0hPgagEZQWeG+bYV7EV07M4tdTQdbVUsJLiE
 ABLQ==
X-Gm-Message-State: APjAAAV5RySpAdY5xTG5eGeTjoXC0PxB2j25jgr6HE05evU6Sq5/Rkwe
 KVYvqjcFaswqWRVI1FK5NOvNt2mj
X-Google-Smtp-Source: APXvYqzS3e2pSLFiICSJRSIIqonXyBHLQUnrrGiA16ly3WzyFhhDHf/oOvZqflkOWEB0UJHuJs2fBQ==
X-Received: by 2002:ac8:1208:: with SMTP id x8mr697696qti.32.1569711720592;
 Sat, 28 Sep 2019 16:02:00 -0700 (PDT)
Received: from [192.168.2.12] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.googlemail.com with ESMTPSA id 44sm5318627qtu.45.2019.09.28.16.01.58
 for <usrp-users@lists.ettus.com>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 28 Sep 2019 16:01:58 -0700 (PDT)
Message-ID: <5D8FE666.507@gmail.com>
Date: Sat, 28 Sep 2019 19:01:58 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <CAB50+dR1Lvz5rC8Mj5SeuSCUeaBRnAnOUebvRhjtcsBk-Q7fKA@mail.gmail.com>
In-Reply-To: <CAB50+dR1Lvz5rC8Mj5SeuSCUeaBRnAnOUebvRhjtcsBk-Q7fKA@mail.gmail.com>
Subject: Re: [USRP-users] Gnuradio USRP Sink -
 Finished/noutput_items/complete/anything
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
Content-Type: multipart/mixed; boundary="===============5838412893321189213=="
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
--===============5838412893321189213==
Content-Type: multipart/alternative;
 boundary="------------020506050105060702040508"

This is a multi-part message in MIME format.
--------------020506050105060702040508
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 09/28/2019 06:17 PM, Andrew Payne via USRP-users wrote:
> Hello,
>
> I am writing a program in Python to interface with a simple file 
> source to USRP sink flowgraph.
>
> I have a short IQ file that I simply want to play once without 
> repeating, and I want the calling Python code to "know" when it's 
> completed after commanding the GR class instance to start via a call 
> to tb.start(), if tb is the class instance variable.  I came across 
> the C++ GR API here: 
> https://www.gnuradio.org/doc/doxygen/classgr_1_1block.html#a89242cb1ac9d2bf5e75f923745baa576
>
> ^ That shows there's a gr.finished() boolean return that tells you 
> when the flowgraph is done, but evidently .finished is not an 
> attribute of tb.  The only methods that worked for me are 
> tb.start/tb.run, tb.wait, tb.stop.
>
> I'd also be happy with polling the GR class instance for the 
> noutput_items from the work function of the USRP_sink block. I know 
> the file size so I can have a while loop with the noutput_items value 
> as a condition, but how do I do that in Python?  I think I am getting 
> close with these 2 results from Google but still not getting it:
> 1) 
> https://stackoverflow.com/questions/50938245/gnuradio-number-of-output-items/50943105
> 2) 
> https://stackoverflow.com/questions/32305813/gnuradio-how-to-change-the-noutput-items-dynamically-when-writing-oot-block
>
> Thanks,
> Andrew
>
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
I'll note that top_block is a special class, and the gr::block::finished 
applies to "ordinary" blocks.

This type of question properly belongs on the discuss-gnuradio mailing 
list, not here, since it is NOT peculiar to USRP hardware at all.

In the absence of anything better, my approach could branch into a 
couple of different things:

     o see how "top_block::wait" is implemented, and see if there's an 
opportunity there
     o watch the output file size using os.stat()

But again, this question is properly a Gnu Radio question, and not a UHD 
question.



--------------020506050105060702040508
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 09/28/2019 06:17 PM, Andrew Payne
      via USRP-users wrote:<br>
    </div>
    <blockquote
cite="mid:CAB50+dR1Lvz5rC8Mj5SeuSCUeaBRnAnOUebvRhjtcsBk-Q7fKA@mail.gmail.com"
      type="cite">
      <div dir="ltr">Hello,
        <div><br>
        </div>
        <div>I am writing a program in Python to interface with a simple
          file source to USRP sink flowgraph.</div>
        <div><br>
        </div>
        <div>I have a short IQ file that I simply want to play once
          without repeating, and I want the calling Python code to
          "know" when it's completed after commanding the GR class
          instance to start via a call to tb.start(), if tb is the class
          instance variable.  I came across the C++ GR API here: <a
            moz-do-not-send="true"
href="https://www.gnuradio.org/doc/doxygen/classgr_1_1block.html#a89242cb1ac9d2bf5e75f923745baa576">https://www.gnuradio.org/doc/doxygen/classgr_1_1block.html#a89242cb1ac9d2bf5e75f923745baa576</a></div>
        <div><br>
        </div>
        <div>^ That shows there's a gr.finished() boolean return that
          tells you when the flowgraph is done, but evidently .finished
          is not an attribute of tb.  The only methods that worked for
          me are tb.start/tb.run, tb.wait, tb.stop.</div>
        <div><br>
          I'd also be happy with polling the GR class instance for the
          noutput_items from the work function of the USRP_sink block. I
          know the file size so I can have a while loop with the
          noutput_items value as a condition, but how do I do that in
          Python?  I think I am getting close with these 2 results from
          Google but still not getting it:</div>
        <div>1) <a moz-do-not-send="true"
href="https://stackoverflow.com/questions/50938245/gnuradio-number-of-output-items/50943105">https://stackoverflow.com/questions/50938245/gnuradio-number-of-output-items/50943105</a></div>
        <div>2) <a moz-do-not-send="true"
href="https://stackoverflow.com/questions/32305813/gnuradio-how-to-change-the-noutput-items-dynamically-when-writing-oot-block">https://stackoverflow.com/questions/32305813/gnuradio-how-to-change-the-noutput-items-dynamically-when-writing-oot-block</a></div>
        <div><br>
        </div>
        <div>Thanks,</div>
        <div>Andrew</div>
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
    I'll note that top_block is a special class, and the
    gr::block::finished applies to "ordinary" blocks.<br>
    <br>
    This type of question properly belongs on the discuss-gnuradio
    mailing list, not here, since it is NOT peculiar to USRP hardware at
    all.<br>
    <br>
    In the absence of anything better, my approach could branch into a
    couple of different things:<br>
    <br>
        o see how "top_block::wait" is implemented, and see if there's
    an opportunity there<br>
        o watch the output file size using os.stat()<br>
    <br>
    But again, this question is properly a Gnu Radio question, and not a
    UHD question.<br>
    <br>
    <br>
  </body>
</html>

--------------020506050105060702040508--


--===============5838412893321189213==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5838412893321189213==--

