Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B53914208
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 21:11:17 +0200 (CEST)
Received: from [::1] (port=55304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNMXX-0004rE-Pf; Sun, 05 May 2019 15:11:11 -0400
Received: from mail-qt1-f175.google.com ([209.85.160.175]:35040)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <patchvonbraun@gmail.com>)
 id 1hNMWz-0004jD-NY
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 15:11:07 -0400
Received: by mail-qt1-f175.google.com with SMTP id d20so2376046qto.2
 for <usrp-users@lists.ettus.com>; Sun, 05 May 2019 12:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=message-id:date:from:user-agent:mime-version:to:cc:subject
 :references:in-reply-to;
 bh=QsXRTCs7fH8oeUX8E/dGrUBvm4Z6xg2wkhV4GjUJ1vM=;
 b=Tu+j+K2X8anvioovOdXHBeHPlR1mf3suvXVuZzE2GjxegM3HeLLGiA4eChzXvW5G7W
 eHPj8rAjE1QFME6lFvd8Lt5nnBAFJLRBR/ZvvtnChrnFsVB6h6o1lWzj2QzBajQfwe/4
 xP2PBYrCYDmgZBW5gUMoOSxyxX3IbckWrZMkHhsq40Fbt6FJsH3sE3p9nY/LViUQuUxm
 gZwzHYmEhJh+eYAfXt1tSZbs4s4QFukqljZB3rgAsqJJzU+NOe+U1+yIR4IjQ80/EIQ2
 Xbp8viwLKNi7t87TlbHL1+vl2wzlyfLBrKdplIoJhkt2BOJKrVQOpxXUWhRbGgafkxh4
 LOFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
 :cc:subject:references:in-reply-to;
 bh=QsXRTCs7fH8oeUX8E/dGrUBvm4Z6xg2wkhV4GjUJ1vM=;
 b=IAcdBI2n/AIh3dAUriAtujn2ag8/j4SrOEQz138Rie/uImJFNl3nalcfvGfcTkIsNo
 Bo34fpsZfrfc5dsxDtmP7cCxbXCR+I2vykpvkW62reh63RMbxSmt2cl1otbL0MBG46ZW
 c9fSEItfop94GR/QOteiJMrhOZDj1RTNaLwpxAUwpcGD5P2+wSuqOD/6Gy0pKoeKb5Pu
 cnZM2Fd9rfSq1gCDst0vfqngp20KyMN0xDkykmH4htBnOQ9cNuhYFj8LMwdf/INPR1zR
 uGnFMfcMr2rUgpADnWXT96sqDqc6HTL9rPZl7Smif8gO5wP38An7sNkzMK82yjufCx2l
 mHCg==
X-Gm-Message-State: APjAAAUQQRHw+R+744c/Ph5Ig7DTyHN3AgQfyGvQPxr2o4KnG+Vm+DRh
 adW2zMBqKSjjMCY2i6uJRIsgvH5NgWI=
X-Google-Smtp-Source: APXvYqw18xOWHypmbGlsBiJTHA2o7quVd3kRUyp8SK9BPHCh34rjWa5D3utHaplfB4nfsCiz7x13XQ==
X-Received: by 2002:ac8:2f8f:: with SMTP id l15mr15081688qta.137.1557083397018; 
 Sun, 05 May 2019 12:09:57 -0700 (PDT)
Received: from lab.localdomain ([24.146.32.18])
 by smtp.googlemail.com with ESMTPSA id o44sm6957179qto.36.2019.05.05.12.09.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 05 May 2019 12:09:56 -0700 (PDT)
Message-ID: <5CCF3503.9070803@gmail.com>
Date: Sun, 05 May 2019 15:09:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
 rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Brian Padalino <bpadalino@gmail.com>, 
 franz kurniawan <digitalturtle2010@gmail.com>
References: <CADE5U-e_T08OHwSMWA1bf=ZowbfBnG8OAtY+Sk+A8ZgeEsX_Lg@mail.gmail.com>
 <CADE5U-f05s5shd-JBRLrYKZYcjitk4rJ2VUhH-LgJ4GWgFbc7Q@mail.gmail.com>
 <CADE5U-dEzm-uRTfx1oK4KPYJOcP-uZzfSjs=V9hdLWwnU9Mb8w@mail.gmail.com>
 <CADE5U-eMh9P6oeWaYddeaVpBgWw+hGwrsKZsW1dr+TF7q9AYzg@mail.gmail.com>
 <CADE5U-f5C+KmqQ5AmDDk0PW163e4Zoe26G2mDLv0HZUEkiTUuw@mail.gmail.com>
 <CADE5U-d6qmUvvKz7e5NUdscuFntTXY5CTQnOp=Su5VZ3wnmatA@mail.gmail.com>
 <CADE5U-cHS-Q-2j3U9jfjNaanFG2YDvBWPyGQxTW81HESSbWyxg@mail.gmail.com>
 <5CCF00B6.7010407@gmail.com>
 <CADE5U-eKkLJhyWBhkoqq96iTMcFo2Z_NE7eUi4y8FyWocPaP4A@mail.gmail.com>
 <BA29EA88-EE05-41A1-BDC1-4206E31AA443@gmail.com>
 <CADE5U-emV9YVgecLrZRR54S8407hP7xMaFA5t+uf-ARGeDVmAQ@mail.gmail.com>
 <5AEC47DB-1CD7-43C1-A284-885D9A6B40A9@gmail.com>
 <CADE5U-e2BZR_v8-e0nvcOkYof-YOT2vVqQxLPFZCFC0g=bHTLA@mail.gmail.com>
 <CADE5U-fgECvK4tc_QRwRin12x+F3MNWAh1rABWMa-z8q8=UYsQ@mail.gmail.com>
 <CAEXYVK78kiSyrcxz5D5Zp_0XTOZ1yVQh9oLpOjH77TrVNmMF4Q@mail.gmail.com>
In-Reply-To: <CAEXYVK78kiSyrcxz5D5Zp_0XTOZ1yVQh9oLpOjH77TrVNmMF4Q@mail.gmail.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B210 mini I/Q imbalance?
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
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4910920462910811545=="
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
--===============4910920462910811545==
Content-Type: multipart/alternative;
 boundary="------------020500090301040900010801"

This is a multi-part message in MIME format.
--------------020500090301040900010801
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 05/05/2019 01:12 PM, Brian Padalino wrote:
> Since it's AM, try shifting your center frequency by a little bit.
>
> Extract the envelope the same way, though.
>
> My thought is the DC cancellation circuitry in the 9361 is killing 
> your AM waveform, so use a low-IF approach instead.
>
> Brian
You beat me to it.  Yes, this will be true of most direct-conversion 
architectures--there will be DC-offset removal in the analog
   (or digital) pathways before samples are delivered to the host. That 
removal process will turn the DC anomaly from a large
   spur to a notch, so if you are doing narrow-band AM demodulation at 
"DC" in the complex signal domain, some of that signal
   will have  been removed.   Offset tuning eliminates this issue.


>
> On Sun, May 5, 2019 at 1:05 PM franz kurniawan via USRP-users 
> <usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>> wrote:
>
>     I reduced to -40db, -50db and have the same result..
>
>     I attached the pictures of b200mini vs other SDR with the same
>     signal generator..
>
>     I expect the same result with the 'other SDR' result..
>     The IQ data of b200 is seems to be incorrect (imbalance? )
>
>     I have tried the uhd of these version :
>     v3.14.0.0-rc3 ,
>     release_003_007_001,
>     release_003_010_001_000
>
>     But all have the same result..
>
>     I tried to disable the set_auto_iq_balance to both false and true,
>     but have no effect..
>
>     Thank you
>
>     On May 5, 2019 11:27 PM, "Marcus D Leech" <patchvonbraun@gmail.com
>     <mailto:patchvonbraun@gmail.com>> wrote:
>
>         -20dBM is loud. Try backing the generator down to -40dBm
>
>
>         Sent from my iPhone
>
>         On May 5, 2019, at 12:14 PM, franz kurniawan
>         <digitalturtle2010@gmail.com
>         <mailto:digitalturtle2010@gmail.com>> wrote:
>
>>         I set the generator at -20db and b200 gain at 50..
>>         I check that there is no cutoff at the usrp output and the
>>         input to AM demod block..
>>
>>         Below are the setting of uhd block in gnuradio
>>         Samp rate 500k
>>         Output type float32
>>         Sync PC clock
>>         Clock rate 10 Mhz external
>>         Freq 121MHz
>>         Gain 50
>>         Ch0 Bandwidth 200000
>>
>>
>>         Thank you
>>
>>         On May 5, 2019 11:05 PM, "Marcus D Leech"
>>         <patchvonbraun@gmail.com <mailto:patchvonbraun@gmail.com>> wrote:
>>
>>             What output level for the generator? What gain setting on
>>             the b205?
>>
>>
>>             Sent from my iPhone
>>
>>             On May 5, 2019, at 11:58 AM, franz kurniawan
>>             <digitalturtle2010@gmail.com
>>             <mailto:digitalturtle2010@gmail.com>> wrote:
>>
>>>             So, i try to make AM receiver..
>>>             And the resulted demodulated audio was distorted from
>>>             its original signal..
>>>             So, at this experiment i used signal generator to make
>>>             AM with sine wave modulated signal..
>>>             I expect to get pure sine wave signal after AM demod
>>>             process..
>>>             However, the sine wave is distorted as attached picture
>>>
>>>             I compared with another brand SDR and can get my
>>>             expected signal..
>>>             So i guess there is some problem with the b210mini
>>>
>>>             Thank you
>>>
>>>
>>>
>>>             On May 5, 2019 10:28 PM, "Marcus D. Leech via
>>>             USRP-users" <usrp-users@lists.ettus.com
>>>             <mailto:usrp-users@lists.ettus.com>> wrote:
>>>
>>>                 On 05/05/2019 10:53 AM, franz kurniawan via
>>>                 USRP-users wrote:
>>>
>>>                     Dear USRP users,
>>>
>>>                     I used b210mini and encounter I/Q imbalance as
>>>                     below picture..
>>>                     As a result, the analog signal demodulation was
>>>                     distorted and result a crappy sound..
>>>                     I
>>>                     Is there any workaround regarding this issue?
>>>
>>>                     Thank you
>>>
>>>
>>>                 Not sure what you mean.  The I/Q seem to be about
>>>                 90deg out of phase wrt one another, which is exactly
>>>                 what you'd expect.
>>>
>>>                 Could you describe what it is you're trying to do?
>>>                 Something with an audio demodulator?
>>>
>>>
>>>
>>>                 _______________________________________________
>>>                 USRP-users mailing list
>>>                 USRP-users@lists.ettus.com
>>>                 <mailto:USRP-users@lists.ettus.com>
>>>                 http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>>
>>>             <IMG-20190505-WA0001.jpg>
>>
>
>     _______________________________________________
>     USRP-users mailing list
>     USRP-users@lists.ettus.com <mailto:USRP-users@lists.ettus.com>
>     http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>


--------------020500090301040900010801
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">On 05/05/2019 01:12 PM, Brian Padalino
      wrote:<br>
    </div>
    <blockquote
cite="mid:CAEXYVK78kiSyrcxz5D5Zp_0XTOZ1yVQh9oLpOjH77TrVNmMF4Q@mail.gmail.com"
      type="cite">
      <div dir="ltr">Since it's AM, try shifting your center frequency
        by a little bit.
        <div><br>
        </div>
        <div>Extract the envelope the same way, though.</div>
        <div><br>
        </div>
        <div>My thought is the DC cancellation circuitry in the 9361 is
          killing your AM waveform, so use a low-IF approach instead.</div>
        <div><br>
        </div>
        <div>Brian</div>
      </div>
    </blockquote>
    You beat me to it.  Yes, this will be true of most direct-conversion
    architectures--there will be DC-offset removal in the analog<br>
      (or digital) pathways before samples are delivered to the host. 
    That removal process will turn the DC anomaly from a large<br>
      spur to a notch, so if you are doing narrow-band AM demodulation
    at "DC" in the complex signal domain, some of that signal<br>
      will have  been removed.   Offset tuning eliminates this issue.<br>
    <br>
    <br>
    <blockquote
cite="mid:CAEXYVK78kiSyrcxz5D5Zp_0XTOZ1yVQh9oLpOjH77TrVNmMF4Q@mail.gmail.com"
      type="cite"><br>
      <div class="gmail_quote">
        <div dir="ltr" class="gmail_attr">On Sun, May 5, 2019 at 1:05 PM
          franz kurniawan via USRP-users &lt;<a moz-do-not-send="true"
            href="mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class="gmail_quote" style="margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir="auto">I reduced to -40db, -50db and have the same
            result..
            <div dir="auto"><br>
            </div>
            <div dir="auto">I attached the pictures of b200mini vs other
              SDR with the same signal generator..</div>
            <div dir="auto"><br>
            </div>
            <div dir="auto">I expect the same result with the 'other
              SDR' result..</div>
            <div dir="auto">The IQ data of b200 is seems to be incorrect
              (imbalance? )</div>
            <div dir="auto"><br>
            </div>
            <div dir="auto">I have tried the uhd of these version :</div>
            <div dir="auto">v3.14.0.0-rc3 , </div>
            <div dir="auto">release_003_007_001, </div>
            <div dir="auto">release_003_010_001_000</div>
            <div dir="auto"><br>
            </div>
            <div dir="auto">But all have the same result..</div>
            <div dir="auto"><br>
            </div>
            <div dir="auto">I tried to disable the set_auto_iq_balance
              to both false and true, but have no effect..</div>
            <div dir="auto"><br>
            </div>
            <div dir="auto">Thank you</div>
          </div>
          <div class="gmail_extra"><br>
            <div class="gmail_quote">On May 5, 2019 11:27 PM, "Marcus D
              Leech" &lt;<a moz-do-not-send="true"
                href="mailto:patchvonbraun@gmail.com" target="_blank">patchvonbraun@gmail.com</a>&gt;
              wrote:<br type="attribution">
              <blockquote class="gmail-m_1464258312546627213quote"
                style="margin:0px 0px 0px 0.8ex;border-left:1px solid
                rgb(204,204,204);padding-left:1ex">
                <div dir="auto">-20dBM is loud. Try backing the
                  generator down to -40dBm
                  <div><br>
                    <br>
                    <div
                      id="gmail-m_1464258312546627213m_2029498226510055085AppleMailSignature"
                      dir="ltr">Sent from my iPhone</div>
                    <div class="gmail-m_1464258312546627213elided-text">
                      <div dir="ltr"><br>
                        On May 5, 2019, at 12:14 PM, franz kurniawan
                        &lt;<a moz-do-not-send="true"
                          href="mailto:digitalturtle2010@gmail.com"
                          target="_blank">digitalturtle2010@gmail.com</a>&gt;
                        wrote:<br>
                        <br>
                      </div>
                      <blockquote type="cite">
                        <div dir="ltr">
                          <div dir="auto">I set the generator at -20db
                            and b200 gain at 50..
                            <div dir="auto">I check that there is no
                              cutoff at the usrp output and the input to
                              AM demod block..</div>
                            <div dir="auto"><br>
                            </div>
                            <div dir="auto">Below are the setting of uhd
                              block in gnuradio</div>
                            <div dir="auto">Samp rate 500k</div>
                            <div dir="auto">Output type float32</div>
                            <div dir="auto">Sync PC clock</div>
                            <div dir="auto">Clock rate 10 Mhz external</div>
                            <div dir="auto">Freq 121MHz</div>
                            <div dir="auto">Gain 50</div>
                            <div dir="auto">Ch0 Bandwidth 200000</div>
                            <div dir="auto"><br>
                            </div>
                            <div dir="auto"><br>
                            </div>
                            <div dir="auto">Thank you</div>
                          </div>
                          <div class="gmail_extra"><br>
                            <div class="gmail_quote">On May 5, 2019
                              11:05 PM, "Marcus D Leech" &lt;<a
                                moz-do-not-send="true"
                                href="mailto:patchvonbraun@gmail.com"
                                target="_blank">patchvonbraun@gmail.com</a>&gt;
                              wrote:<br type="attribution">
                              <blockquote class="gmail_quote"
                                style="margin:0px 0px 0px
                                0.8ex;border-left:1px solid
                                rgb(204,204,204);padding-left:1ex">
                                <div dir="auto">What output level for
                                  the generator? What gain setting on
                                  the b205?
                                  <div><br>
                                    <br>
                                    <div
id="gmail-m_1464258312546627213m_2029498226510055085m_-8860653040052543334AppleMailSignature"
                                      dir="ltr">Sent from my iPhone</div>
                                    <div dir="ltr"><br>
                                      On May 5, 2019, at 11:58 AM, franz
                                      kurniawan &lt;<a
                                        moz-do-not-send="true"
                                        href="mailto:digitalturtle2010@gmail.com"
                                        target="_blank">digitalturtle2010@gmail.com</a>&gt;
                                      wrote:<br>
                                      <br>
                                    </div>
                                    <blockquote type="cite">
                                      <div dir="ltr">
                                        <div dir="auto">
                                          <div>So, i try to make AM
                                            receiver..</div>
                                          <div dir="auto">And the
                                            resulted demodulated audio
                                            was distorted from its
                                            original signal..</div>
                                          <div dir="auto">So, at this
                                            experiment i used signal
                                            generator to make AM with
                                            sine wave modulated signal..</div>
                                          <div dir="auto">I expect to
                                            get pure sine wave signal
                                            after AM demod process..</div>
                                          <div dir="auto">However, the
                                            sine wave is distorted as
                                            attached picture</div>
                                          <div dir="auto"><br>
                                          </div>
                                          <div dir="auto">I compared
                                            with another brand SDR and
                                            can get my expected signal..</div>
                                          <div dir="auto">So i guess
                                            there is some problem with
                                            the b210mini</div>
                                          <div dir="auto"><br>
                                          </div>
                                          <div dir="auto">Thank you</div>
                                          <div dir="auto"><br>
                                          </div>
                                          <div dir="auto"><br>
                                            <div class="gmail_extra"
                                              dir="auto"><br>
                                              <div class="gmail_quote">On
                                                May 5, 2019 10:28 PM,
                                                "Marcus D. Leech via
                                                USRP-users" &lt;<a
                                                  moz-do-not-send="true"
href="mailto:usrp-users@lists.ettus.com" target="_blank">usrp-users@lists.ettus.com</a>&gt;
                                                wrote:<br
                                                  type="attribution">
                                                <blockquote
                                                  style="margin:0px 0px
                                                  0px
                                                  0.8ex;border-left:1px
                                                  solid
                                                  rgb(204,204,204);padding-left:1ex">
                                                  <div>On 05/05/2019
                                                    10:53 AM, franz
                                                    kurniawan via
                                                    USRP-users wrote:<br>
                                                    <blockquote
                                                      class="gmail_quote"
                                                      style="margin:0px
                                                      0px 0px
                                                      0.8ex;border-left:1px
                                                      solid
                                                      rgb(204,204,204);padding-left:1ex">
                                                      Dear USRP users,<br>
                                                      <br>
                                                      I used b210mini
                                                      and encounter I/Q
                                                      imbalance as below
                                                      picture..<br>
                                                      As a result, the
                                                      analog signal
                                                      demodulation was
                                                      distorted and
                                                      result a crappy
                                                      sound..<br>
                                                      I<br>
                                                      Is there any
                                                      workaround
                                                      regarding this
                                                      issue?<br>
                                                      <br>
                                                      Thank you<br>
                                                      <br>
                                                      <br>
                                                    </blockquote>
                                                  </div>
                                                  Not sure what you
                                                  mean.  The I/Q seem to
                                                  be about 90deg out of
                                                  phase wrt one another,
                                                  which is exactly what
                                                  you'd expect.<br>
                                                  <br>
                                                  Could you describe
                                                  what it is you're
                                                  trying to do? 
                                                  Something with an
                                                  audio demodulator?<br>
                                                  <br>
                                                  <br>
                                                  <br>
_______________________________________________<br>
                                                  USRP-users mailing
                                                  list<br>
                                                  <a
                                                    moz-do-not-send="true"
href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
                                                  <a
                                                    moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
                                                    rel="noreferrer"
                                                    target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                                                </blockquote>
                                              </div>
                                              <br>
                                            </div>
                                          </div>
                                        </div>
                                      </div>
                                    </blockquote>
                                    <blockquote type="cite">
                                      <div dir="ltr">&lt;IMG-20190505-WA0001.jpg&gt;</div>
                                    </blockquote>
                                  </div>
                                </div>
                              </blockquote>
                            </div>
                          </div>
                        </div>
                      </blockquote>
                    </div>
                  </div>
                </div>
              </blockquote>
            </div>
            <br>
          </div>
          _______________________________________________<br>
          USRP-users mailing list<br>
          <a moz-do-not-send="true"
            href="mailto:USRP-users@lists.ettus.com" target="_blank">USRP-users@lists.ettus.com</a><br>
          <a moz-do-not-send="true"
href="http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com"
            rel="noreferrer" target="_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------020500090301040900010801--


--===============4910920462910811545==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4910920462910811545==--

