Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 398404885C8
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jan 2022 21:04:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7E505384917
	for <lists+usrp-users@lfdr.de>; Sat,  8 Jan 2022 15:04:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="bVOHnpbe";
	dkim-atps=neutral
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	by mm2.emwd.com (Postfix) with ESMTPS id A1E7E384917
	for <usrp-users@lists.ettus.com>; Sat,  8 Jan 2022 15:03:20 -0500 (EST)
Received: by mail-qt1-f173.google.com with SMTP id f17so7004234qtf.8
        for <usrp-users@lists.ettus.com>; Sat, 08 Jan 2022 12:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Wd+v1owkca1xFbpsHLgQ0nG1Rrk25rGd0G17XDIakPs=;
        b=bVOHnpbe3Suc2jdVoZwTRZeNLf+5HugpbKtsopTcjHMPJvURSY95w0vLTYTB0qT4eO
         P80U+krad4yWSNY47/UbC7vgN3T5Fk1ie/FVq4mSc38Fun/gTN0POHrqhp6A0grAaqFT
         BTlcyvL3wPyrOpkvYsDt9qm6SnEb2wLe7MC94HFvkcVFQZ7M1kEsClSbeN9WFy3TF7Bu
         7wHOtolAd7oSyQzIIZlEl3pWs7fV1BqiOIZYTotA+o1+HtZi0Yl4Xahskpvdq+GDh4ic
         UlODXed9NIi2s5mXpQLjbNz4aoiI94ztU3XmyjBexhJVJ18XX26nkaSJAKodWfsZap3A
         js1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Wd+v1owkca1xFbpsHLgQ0nG1Rrk25rGd0G17XDIakPs=;
        b=3e0Lk6LBQMjRlnhYYHW/aJZ8UaA5T9sJp+mrh0ZzYZ39jzCHRrMWMXvXLlkAEay2ln
         MgRXkfPxm9DnLNEIwQ/cFKFYhRqWSmlsF9Ezs/Od2T9QSTCkvrLVswesWH19S/a6urxm
         shLjKxgG0owC1vxW7HmMRrQZ8ignzLsOj8PgVSfCCp6s5d0Y1eoyqQVbGBqXl8GNqt9V
         uD3IeMP3wgazyXj433kDTaLdHhzxIPSdRa33osjSGFDI8JyBP/9u46Gquo4U8GQd0MHc
         sUNcyfPJpK1yHZNE81XX2HA0UAR+tXc17s/jqvHSqAgxx0VebVqV8vFGPJiTBcfNHEbG
         SLBQ==
X-Gm-Message-State: AOAM531pRbrJZJdR6sW+jaHtacdV60oH+PD+qB0c2pYAPjGXqzvHahWn
	XgH7sB6FlgYuhfwILlUL0G3pBrgZyCtYfw==
X-Google-Smtp-Source: ABdhPJxbE3tyI/i+b7EOqgLRhcBcS9RzzY43b1ZlhsAj4CGmCf3BOkTyo+r2hmdq3FWWS1ZwuwP3Ug==
X-Received: by 2002:ac8:5795:: with SMTP id v21mr8912949qta.551.1641672199790;
        Sat, 08 Jan 2022 12:03:19 -0800 (PST)
Received: from [192.168.2.224] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id f33sm1570088qtb.56.2022.01.08.12.03.19
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Jan 2022 12:03:19 -0800 (PST)
Message-ID: <17e33a0e-743e-b544-b89b-299e0f1cf3c2@gmail.com>
Date: Sat, 8 Jan 2022 15:03:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <Mailbird-82239a9a-b4c6-49d0-861f-6d5fbadd0d3e@gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <Mailbird-82239a9a-b4c6-49d0-861f-6d5fbadd0d3e@gmail.com>
Message-ID-Hash: BEXPAPOT5FIILMW73WFCV2YM7X5IMSWB
X-Message-ID-Hash: BEXPAPOT5FIILMW73WFCV2YM7X5IMSWB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: FPGA utilizaton summary for B210
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BEXPAPOT5FIILMW73WFCV2YM7X5IMSWB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1227007429742890706=="

This is a multi-part message in MIME format.
--===============1227007429742890706==
Content-Type: multipart/alternative;
 boundary="------------rzy3fwYWBiH83lRMEGg7PJhK"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------rzy3fwYWBiH83lRMEGg7PJhK
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2022-01-08 15:00, page heller wrote:
> Is there a command to print the FPGA utilization summary for an B210? 
> I'm looking to print a report like that shown in 
> https://kb.ettus.com/B200/B210/B200mini/B205mini#B210_5. -page
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
Those reports come from the FPGA image generation tools from Xylinx.

The Makefile for b2xx FPGA is here in the source tree:

uhd/fpga/usrp3/top/b200


--------------rzy3fwYWBiH83lRMEGg7PJhK
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-08 15:00, page heller wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:Mailbird-82239a9a-b4c6-49d0-861f-6d5fbadd0d3e@gmail.com=
">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div id=3D"__MailbirdStyleContent" style=3D"font-size:
        10pt;font-family: Arial;color: #000000;text-align: left"
        dir=3D"ltr">Is there a command to print the FPGA utilization
        summary for an B210? I'm looking to print a report like that
        shown in=C2=A0<a
          href=3D"https://kb.ettus.com/B200/B210/B200mini/B205mini#B210_5=
"
          title=3D"Click to open in a new window or tab
          https://kb.ettus.com/B200/B210/B200mini/B205mini#B210_5"
          style=3D"font-family: Arial, Helvetica, sans-serif;font-size:
          13px" moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">=
https://kb.ettus.com/B200/B210/B200mini/B205mini#B210_5</a>.
        -page</div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    Those reports come from the FPGA image generation tools from Xylinx.<=
br>
    <br>
    The Makefile for b2xx FPGA is here in the source tree:<br>
    <br>
    uhd/fpga/usrp3/top/b200<br>
    <br>
    <br>
  </body>
</html>
--------------rzy3fwYWBiH83lRMEGg7PJhK--

--===============1227007429742890706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1227007429742890706==--
