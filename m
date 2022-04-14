Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 481EE5004D9
	for <lists+usrp-users@lfdr.de>; Thu, 14 Apr 2022 05:53:17 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2E6CE384CE1
	for <lists+usrp-users@lfdr.de>; Wed, 13 Apr 2022 23:53:16 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1649908396; bh=lEKSKvmFv4cDXTvJi9J4YezBLlvLjWkKNUmw7b+BdO8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=i8t8GpLGmhdlkRyRFYiEOdfJbHCKHxrtbfm8p15d6Pg/avpeihbb1M7qiA7trUn0l
	 OWwFQ9qJ2dYJS9MPSAHNGa3N29/UeVfXBN/cR7v7uqOQDUhxu8IMbi68oUsEU1JKDR
	 1I73Va8HihOOO43e3AUAQwkK92H33AIJVeeHeycHnCb90YmoTmm2q1GJQu53vTIf/x
	 3Fl05uY199VSNwfgic63WWX0hgsVpQgjRvV4CLeek6A71qJFeUFWcTQwvIae2cT6UD
	 gSrUfQo5bb1f3v+/EfbH8OGZzLRmXsQPFwxtaNYhyXShIctarkaFNqseEy5+y7kIIb
	 UFtEczJVpMA4Q==
Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
	by mm2.emwd.com (Postfix) with ESMTPS id EA018384B7C
	for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 23:52:09 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="VO5uyp1Y";
	dkim-atps=neutral
Received: by mail-qk1-f170.google.com with SMTP id j6so3017450qkp.9
        for <usrp-users@lists.ettus.com>; Wed, 13 Apr 2022 20:52:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=3dt8LynMvOtYPnQtjf2c+HisuwUV0+x9ZZ2DyhwYc6s=;
        b=VO5uyp1Y80YhYRgMd2InkJph9/nlX9N4LEX5a00f/ECwpVy80xoBKmT+C0IS92DQ7e
         WZOpa46aBbN2U85rM8jk9nqdMROYBWoqlwd6adr8Lt5Wt8aoXRzfEbnlP5A8GogydiDx
         SPMRQ88VEBZhP7V4UDwFvz6P8JCchUWxoaA4hLNwFaXtgaE4L4mhwsN37lymKNj4otjn
         lTeBjmIVnxdvCvWnmVtODDiyHxXWuibqerRqW16rlu7m0r5lJA/zBAmPqK8qPe9T4+2r
         MXtNr5Fk/DwJCKLV+sEf9WnQSsMN5mLTJ4UDF7zH/850+dqQPO77OIQUlDaE0k0K0qLD
         8h6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=3dt8LynMvOtYPnQtjf2c+HisuwUV0+x9ZZ2DyhwYc6s=;
        b=4h7b1v6BEuQ6TYj7glBnoHGeOjjHGtiQR/C++21EQZD/yBIM48yHQigzLnNpQZGmgb
         IfZr6mblJoEgODyRo2KPOflKqGQEPHGvk830VTTikogxON7Igdjr+bZvnbn5QkNy7S4G
         DmeYMmKpVl9qclP0h1rv/j0MIUfEOXqNu9uLsYQmPwaO7u6GCOI7YS+MV8Ar2XyrTNjk
         yuf09YTAYZ8HGL6vG5BUwg6yN5SssphBlvIwL/QBR+4De3VfkHYdcnvXn9jC60pfd9zQ
         IA1yMcn5jya4Ax5MiL7ocHzS9G3eT8khiZNK/XAoeIngjoquX7C0t8I2Z23QUjGn468b
         Ubcw==
X-Gm-Message-State: AOAM5310ct2TuY5f+5xDtYNXR5jqvFKOvpR5hyKOVn3nMKWRxs2NfuVh
	ipVX+dXcL2t4ELz7TSQoDdXE5OdJ/EU=
X-Google-Smtp-Source: ABdhPJy3TWgd+fApbJZ8C6W5FtPyQSjbLN8LoeMD+5fhZ1eMCsd/EIEuQtWTYPVbktL7sOKDyPmboQ==
X-Received: by 2002:a37:4349:0:b0:680:f1f5:23b0 with SMTP id q70-20020a374349000000b00680f1f523b0mr501306qka.530.1649908329119;
        Wed, 13 Apr 2022 20:52:09 -0700 (PDT)
Received: from [192.168.2.201] (bras-base-smflon1825w-grc-19-76-68-79-178.dsl.bell.ca. [76.68.79.178])
        by smtp.googlemail.com with ESMTPSA id i17-20020a05620a405100b0069c45deb548sm464272qko.130.2022.04.13.20.52.08
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Apr 2022 20:52:08 -0700 (PDT)
Message-ID: <d014f269-e776-baa3-0125-ad8e05b46d61@gmail.com>
Date: Wed, 13 Apr 2022 23:52:08 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAOucfAOCAAvZ8GuirG15oZ30EPO1=ENs3teM8FKUhm3YyaptXQ@mail.gmail.com>
Message-ID-Hash: 3P3YLMLLLUASRT6DTVZYRBDVISG7IZVR
X-Message-ID-Hash: 3P3YLMLLLUASRT6DTVZYRBDVISG7IZVR
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Issue with TRX-B output
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3P3YLMLLLUASRT6DTVZYRBDVISG7IZVR/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6166716994468554086=="

This is a multi-part message in MIME format.
--===============6166716994468554086==
Content-Type: multipart/alternative;
 boundary="------------1Ho8eY42Gb9wToNRyEM0wepA"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------1Ho8eY42Gb9wToNRyEM0wepA
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-04-13 13:32, Lautaro Lorenzen wrote:
> Hi everyone,
>
> I'm trying to run a simple example on an Ettus E310.
> I'm using an E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5.
>
> Everything seems to work okay, but I can not manage to get the second 
> channel (TRX-B) to transmit anything. FYI: I can receive from both 
> channels RX-A and RX-B.
> The problem came up when I tried to transmit something via gnu-radio, 
> changing the "subdev" arg to "A:1" instead of leaving it blank as I 
> normally do.
> When I pressed start, everything seemed to compile fine, but the GUI 
> freezes (something that did not happen when using TRX-A).
>
> To see if gnu-radio was the problem, I logged in the embedded linux 
> and tried some uhd examples from usr/lib/uhd/examples.
> As expected, I ran ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:0 
> and the tx light turned on and I could see something on my 
> oscilloscope. Also, a few "LLLLL" appeared on the console.
>
> When I ran:
> ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:1, everything looks 
> the same but no light, no signal, and no "LLLLL" are displayed on the 
> console. Just the message "press ctrl+C to stop streaming".
>
> Any help would be very much appreciated.
> Regards,
> Lautaro.
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
IF you run:

uhd_config_info --version

On the actual E312, what does it return?

Also, what does:

uhd_usrp_probe

Return (again, on the device itself).


--------------1Ho8eY42Gb9wToNRyEM0wepA
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-04-13 13:32, Lautaro Lorenzen
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAOucfAOCAAvZ8GuirG15oZ30EPO1=3DENs3teM8FKUhm3YyaptXQ@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">Hi everyone,</=
div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif"><br>
        </div>
        <div class=3D"gmail_default"
          style=3D"font-family:arial,helvetica,sans-serif">I'm trying to
          run a simple example on an Ettus E310. <br>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">I'm using an
            E312 with UHD 4.1.0.5 and gnuradio v3.8.0.5. <br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif"><br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">Everything
            seems to work okay, but I can not manage to get the second
            channel (TRX-B) to transmit anything. FYI: I can receive
            from both channels RX-A and RX-B.<br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">The problem
            came up when I tried to transmit something via gnu-radio,
            changing the "subdev" arg to "A:1" instead of leaving it
            blank as I normally do. <br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">When I
            pressed start, everything seemed to compile fine, but the
            GUI freezes (something that did not happen when using
            TRX-A).</div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif"><br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">To see if
            gnu-radio was the problem, I logged in the embedded linux
            and tried some uhd examples from usr/lib/uhd/examples.</div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">As expected,
            I ran ./tx_waveforms --rate 1e6 --freq 100e6 --subdev A:0=C2=A0
            and the tx light turned on and I could see something on my
            oscilloscope. Also, a few "LLLLL" appeared on the console.</d=
iv>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif"><br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">When I ran: =
<br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">./tx_wavefor=
ms
            --rate 1e6 --freq 100e6 --subdev A:1, everything looks the
            same but no light, no signal, and no "LLLLL" are displayed
            on the console. Just the message "press ctrl+C to stop
            streaming".</div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif"><br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">Any help
            would be very much appreciated. <br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">Regards,</di=
v>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif">Lautaro.<br>
          </div>
          <div class=3D"gmail_default"
            style=3D"font-family:arial,helvetica,sans-serif"><br>
          </div>
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
    IF you run:<br>
    <br>
    uhd_config_info --version<br>
    <br>
    On the actual E312, what does it return?<br>
    <br>
    Also, what does:<br>
    <br>
    uhd_usrp_probe <br>
    <br>
    Return (again, on the device itself).<br>
    <br>
    <br>
  </body>
</html>

--------------1Ho8eY42Gb9wToNRyEM0wepA--

--===============6166716994468554086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6166716994468554086==--
