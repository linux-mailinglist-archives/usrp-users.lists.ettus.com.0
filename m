Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F4A95F3C4
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 16:25:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CAD603855C5
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2024 10:25:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1724682307; bh=eabkKZIGenK01rTa+Lb0TI23Q4iXxDYWP8/8rngkgjU=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=ggDsPy1AHLBjb1IPRyhBHmeaTaB8auisa8/9ZxgFP4WSZ2JVt0iIY6+slAMCNmgk3
	 DQBC4ZpX0IOhanaUtltQirNgkD7UxDslMqcupWgz8Hf3f7MlG7v3e3GXRVRINmZZx6
	 UsQ+aJRFAwKaOZepG2UpEMd8ZSwFDRxZ6Y+Y8MDK/onQxdGBLugB02dxTmcgxA9rCM
	 mCILNBfDgpaMsnzduNgi2QpcBt6iVZC5g3LH1ZuDCn5/8z47tE5An08rZW/z4GKNJl
	 cTdgayuajqnFbNqTM1DEI/zM3t3wc+EN089gwdjFfJ+aRSOWV05KvINqseDS7FY+Nm
	 l7sLqlGkY1jcA==
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	by mm2.emwd.com (Postfix) with ESMTPS id 2788E3850EE
	for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 10:24:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="YS4rqrX2";
	dkim-atps=neutral
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5d5c8c1006eso3246673eaf.3
        for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2024 07:24:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724682250; x=1725287050; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HFUNZmnuL/HtLgfdb6C4iaNpA5Tpfp5JF/A5Eb0xA4o=;
        b=YS4rqrX2R8fvuZtbLdcsIRY9wlKMGozVze13OVx2XjpeTFGylfVAxa7foLTgh7LW12
         wDvW7Hi9of8oQBJr9rNEfKcyH2oFVwnPmvIr/B5aLWZxKvyuWL5wzJTGwTxHHf/hUZ5f
         0oQCNTFf98sd2C5JtTT/NT1M2GiOpe3JizK2KAulwx3SQlLATD7RHzG0ghAi0H6bwjTB
         uqixHX0LaNW5FIH4pOEob9pKgWFRC9tYu9+LeWrBFhJS0ZxcTH6srNf8NhpJ2HYAGDLx
         3ibAjLTtjDUD2xMqwpVaDWKjlYVku8dMowP+BjkkuKlDprQenOOwk76trRRqP5mV9ioK
         57HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724682250; x=1725287050;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HFUNZmnuL/HtLgfdb6C4iaNpA5Tpfp5JF/A5Eb0xA4o=;
        b=U9Nn/jg0iqQGDC/+74bB7hPpY8EEqJw7cY8Kc/lOMHqPhVYAJguDWRvT+A0e9mswz0
         5lxHNGsVjDEgYueydwHNAiQbfMbQwK5cQFXpFdniVylgAupZRIWunPPvW5MBa3sINAUe
         wEhGgc1r1IfWnwywYtwCUVkxos6WsAliYfwDlDOK3d78tm7GV3JmhDRzvmvNypkg5SBF
         lFuoE3m7n8Ml6RkHr6UuQTdhJjuHad8hWu6g0cjuzb4W3xty376Nr/uarXu1a6p6SY+/
         Y7EWSjPMW1s9wEYnptaHKkr+Fs+FTHADBTsJVtweuaKYOjibWG0MTRrQRCfvaXdgarAC
         jAXg==
X-Gm-Message-State: AOJu0YzUIqIE0JkP4zVgeQM/5ogfJxleHrEW/UUQ+jPJRs4qpIMZrOSI
	t+xelEL6j1D5x3xjTX0TFhZZYg+LA/YAdBkHmjsg+oJs0Bg1xeLRvzU0Gw==
X-Google-Smtp-Source: AGHT+IHQT8Uge1KV5BsCvuUcSTaAjMlA5aqT9pWnbHjVZ+59ztMd/q8vmFGprfoSIa8N6ZGcgmhFqw==
X-Received: by 2002:a05:6820:206:b0:5d8:e6a:236 with SMTP id 006d021491bc7-5dcc6210b78mr10915458eaf.3.1724682250220;
        Mon, 26 Aug 2024 07:24:10 -0700 (PDT)
Received: from [192.168.2.170] (bas1-toronto12-64-231-212-86.dsl.bell.ca. [64.231.212.86])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6c162db0964sm46410076d6.79.2024.08.26.07.24.09
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 07:24:09 -0700 (PDT)
Message-ID: <524a890b-6dea-4526-aef3-3dfbed714a20@gmail.com>
Date: Mon, 26 Aug 2024 10:24:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <b7EDp_Z-OGLk51ibwQutMTVO7aVrweoUubIOqX594P7xDHOpwd6I31RtEuiCTB3DMjFLfdkKR0dLqBIS1UGsN8df_iSefI5zIAhjCxTWVUY=@protonmail.com>
 <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTSWmo4jBMz7PiLw=uMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gmail.com>
Message-ID-Hash: NJOEBA7SDUIP2NZNWNPK5XB2XOEKFTS6
X-Message-ID-Hash: NJOEBA7SDUIP2NZNWNPK5XB2XOEKFTS6
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Assistance with RFNoC and TwinRX Configuration in Custom FPGA Image
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NJOEBA7SDUIP2NZNWNPK5XB2XOEKFTS6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0988400061731527169=="

This is a multi-part message in MIME format.
--===============0988400061731527169==
Content-Type: multipart/alternative;
 boundary="------------sZEtqK0OnoD4xRQkGtMvvb3h"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------sZEtqK0OnoD4xRQkGtMvvb3h
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 26/08/2024 10:21, Rob Kossler via USRP-users wrote:
> Hi Olo,
> On one point regarding an FFT length of 8192, there is likely an issue=20
> with using the Ettus FFT block. In the past (I haven't checked=20
> recently), this block was limited to a maximum FFT size of 1024=20
> because the entire FFT had to fit in one packet where the maximum=20
> packet payload was about 2000 samples.=C2=A0 It is possible to use larg=
er=20
> FFTs, but this requires some custom code that divorces the FFT size=20
> from the packet size.
> Rob
My understanding is that in recent RFNoC, the limit has been raised to 20=
48:

https://files.ettus.com/manual/classuhd_1_1rfnoc_1_1fft__block__control.h=
tml


>
>
> On Mon, Aug 26, 2024 at 7:41=E2=80=AFAM Olo via USRP-users=20
> <usrp-users@lists.ettus.com> wrote:
>
>     Hello,
>
>     I am currently working on a custom FPGA image that utilizes RFNoC
>     blocks provided by Ettus through the UHD repository. Specifically,
>     I am using blocks such as |split|, |window|, |fft|, and |logpwr|
>     in my design.
>
>     My goal is to achieve the following:
>
>      1. *First TwinRX (radio0):* Use one channel to display every n-th
>         PSD, while simultaneously recording a narrowband channel
>         within the displayed spectrum (using |split| and |ddc|).
>      2. *Second TwinRX (radio1):* Rapidly sweep a large bandwidth and
>         display the PSD, also utilizing the |window|, |fft|, and
>         |logpwr| blocks.
>
>     I would greatly appreciate your feedback on the following points:
>
>      1. *Validation of Initial Design:* I have attached my initial
>         attempt at creating this FPGA image. Could you please review
>         it and let me know if this approach is correct?
>      2. *Achieving Specific PSD Size:* Is it possible to achieve a PSD
>         size of, for example, 8192 using the |window|, |fft|, and
>         |logpwr| blocks? If so, could you advise on the necessary
>         steps to accomplish this?
>      3. *TwinRX Channel Configuration:* Is it feasible to use the
>         second channel on the second TwinRX to receive on a static
>         frequency while the first channel sweeps, and vice versa, can
>         the second channel on the first TwinRX sweep a portion of the
>         spectrum while the first channel remains on a static frequency?
>
>     Your guidance on these questions would be extremely valuable, as
>     it is critical to the success of my project.
>
>     Thank you in advance for your support. I look forward to your
>     response.
>
>     Best regards,
>     Olo.
>
>
>     _______________________________________________
>     USRP-users mailing list -- usrp-users@lists.ettus.com
>     To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------sZEtqK0OnoD4xRQkGtMvvb3h
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 26/08/2024 10:21, Rob Kossler via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTSWmo4jBMz7PiLw=3DuMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div>Hi Olo,</div>
          <div>On one point regarding an FFT length of 8192, there is
            likely an issue with using the Ettus FFT block. In the past
            (I haven't checked recently), this block was limited to a
            maximum FFT size of 1024 because the entire FFT had to fit
            in one packet where the maximum packet payload was about
            2000 samples.=C2=A0 It is possible to use larger FFTs, but th=
is
            requires some custom code that divorces the FFT size from
            the packet size.</div>
          <div>Rob<br>
          </div>
        </div>
      </div>
    </blockquote>
    My understanding is that in recent RFNoC, the limit has been raised
    to 2048:<br>
    <br>
<a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/manual=
/classuhd_1_1rfnoc_1_1fft__block__control.html">https://files.ettus.com/m=
anual/classuhd_1_1rfnoc_1_1fft__block__control.html</a><br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTSWmo4jBMz7PiLw=3DuMzR56RaNTqj_PZo3pk6Oxt9fsGUQ@mail.gm=
ail.com">
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div><br>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 26, 2024 at
            7:41=E2=80=AFAM Olo via USRP-users &lt;<a
              href=3D"mailto:usrp-users@lists.ettus.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote"
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">
            <div
style=3D"font-family:Arial,sans-serif;font-size:14px;color:rgb(0,0,0);bac=
kground-color:rgb(255,255,255)">Hello,<br>
              <p>I am currently working on a custom FPGA image that
                utilizes RFNoC blocks provided by Ettus through the UHD
                repository. Specifically, I am using blocks such as <code=
>split</code>,
                <code>window</code>, <code>fft</code>, and <code>logpwr</=
code>
                in my design.</p>
              <p>My goal is to achieve the following:</p>
              <ol>
                <li><b>First TwinRX (radio0):</b> Use one channel to
                  display every n-th PSD, while simultaneously recording
                  a narrowband channel within the displayed spectrum
                  (using <code>split</code> and <code>ddc</code>).</li>
                <li><b>Second TwinRX (radio1):</b> Rapidly sweep a large
                  bandwidth and display the PSD, also utilizing the <code=
>window</code>,
                  <code>fft</code>, and <code>logpwr</code> blocks.</li>
              </ol>
              <p>I would greatly appreciate your feedback on the
                following points:</p>
              <ol>
                <li><b>Validation of Initial Design:</b> I have attached
                  my initial attempt at creating this FPGA image. Could
                  you please review it and let me know if this approach
                  is correct?</li>
                <li><b>Achieving Specific PSD Size:</b> Is it possible
                  to achieve a PSD size of, for example, 8192 using the
                  <code>window</code>, <code>fft</code>, and <code>logpwr=
</code>
                  blocks? If so, could you advise on the necessary steps
                  to accomplish this?</li>
                <li><b>TwinRX Channel Configuration:</b> Is it feasible
                  to use the second channel on the second TwinRX to
                  receive on a static frequency while the first channel
                  sweeps, and vice versa, can the second channel on the
                  first TwinRX sweep a portion of the spectrum while the
                  first channel remains on a static frequency?</li>
              </ol>
              <p>Your guidance on these questions would be extremely
                valuable, as it is critical to the success of my
                project.</p>
              <p>Thank you in advance for your support. I look forward
                to your response.</p>
              <p>Best regards,<br>
                Olo.<br>
              </p>
              <br>
            </div>
            _______________________________________________<br>
            USRP-users mailing list -- <a
              href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank=
"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">us=
rp-users@lists.ettus.com</a><br>
            To unsubscribe send an email to <a
              href=3D"mailto:usrp-users-leave@lists.ettus.com"
              target=3D"_blank" moz-do-not-send=3D"true"
              class=3D"moz-txt-link-freetext">usrp-users-leave@lists.ettu=
s.com</a><br>
          </blockquote>
        </div>
      </div>
      <br>
      <fieldset class=3D"moz-mime-attachment-header"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------sZEtqK0OnoD4xRQkGtMvvb3h--

--===============0988400061731527169==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0988400061731527169==--
