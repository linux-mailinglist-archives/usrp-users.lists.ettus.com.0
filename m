Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A17836A4644
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 16:42:29 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5DC43842F4
	for <lists+usrp-users@lfdr.de>; Mon, 27 Feb 2023 10:42:27 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1677512547; bh=nKIWtTPOsjfA6Vg1ocWd7JHImZ+ImI3tRXmo/nHJ1l0=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=DSZcFHIQsfJOtv3m6Hnpd0L4NcyOH3kHNEK2iMhzqd4juzNhxA4Q8ZAuKvYzjHdcc
	 DLDECTRgOcR/d2KoEpbEB0v44Tc8BeWxOY26HGysSP9dfoIeAEt5XQnBYAQz7DbnBK
	 YgHnjmVeLx4QNtbphNE8nJsC1C2+RB4Fe7L5a4GcyFVuX4A7r7OQc21PC50Cr7Ifu4
	 ViT0k+QKxDoBLf8sLH+kkk27+/uoaDhIkne+VhfTB1ngkVxUPW4hxpHh3vrscIpXHl
	 AzW/plRxv2JAtDe2WnvJt0OmZAQA3L70UfCtWReVQRUlpHDY1V4ikztaW9/D6wiAbF
	 JTGcMtceOZhiQ==
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	by mm2.emwd.com (Postfix) with ESMTPS id AF6593818CE
	for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 10:41:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SzdHRn5P";
	dkim-atps=neutral
Received: by mail-qt1-f179.google.com with SMTP id s12so7033956qtq.11
        for <usrp-users@lists.ettus.com>; Mon, 27 Feb 2023 07:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rroAlFulbiloCEJqYrsixvYEUrxUDhw3CRiLH0BDb74=;
        b=SzdHRn5PXiDmblhGbKaY5zFJE/dHypRbCSmZk07geSGKX+TX8TF1xuUJhLRhmnaPiy
         V18Cw3Bq0TKQe5PjQf5QFmiioESuVWYwkPxCIu7jgYY7H7M0DQTEYrhsyj8Z16zawEoQ
         aMDZ5gUyrf2RSZJZv5sM7RE8VQdVRm6UkEefcCDxHBXr7VYu6Zu07vU+/rDmA3aL4s4Q
         JfvTa+rfiPaL7C8XPFTgvKj/XFRtD8mIO1Bh3GSe8fizXgv5tv1UBNLuJPD+ESjy3S3L
         57y6XLrrQ4YsUU6XZnILmDcrsAoNP67QyAzAOeeG2mQj2i9rDlRaFCql4TBTLaITK18h
         gjyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rroAlFulbiloCEJqYrsixvYEUrxUDhw3CRiLH0BDb74=;
        b=S0F627PV7wmqiEu1NHAP7UUyPhxIp7Jz90l+m7tkIK2irHBwSipdoa5qBlex5kVNMV
         ks4F24vn7M83fDAcZZ77Fk8Y/1NpeZEiqy+pW9oahdOguc4aaOnMn84EgjaB+OEr+54g
         kx4uPohwsOsXYfH2P/i75iRrqToXUi9zPrwwUOiQflywIUYzl1JyI3UURyBMUty+fIq1
         9BezpuoEYgFZKEeB/JC8IU6AZChtlJP3mWCdt97Y5lctP7Ta95dhx621yrSUa8pkTwVn
         53c3FvOoYDov2wEN5jalVpUaMtORRnrOcAf4f5xNP3WIUeoii8sP6pn0Gv+GCnD/Y8ky
         CvOQ==
X-Gm-Message-State: AO0yUKXwqYxMDgvIxd6wAXLWRdRAspHgt6GludHIEWFzLaTH20l+dnlt
	Jcyssk+5+T1z7xn55vgDuS9r9JSExbE=
X-Google-Smtp-Source: AK7set8Z5Fff9OSBEPEOiAEyc0oqyQuCdRrXHZGauGj54Ns0MjIN+xG8dJebAqLX9fGD5xNzJzliYg==
X-Received: by 2002:ac8:5948:0:b0:3b9:bc8c:c212 with SMTP id 8-20020ac85948000000b003b9bc8cc212mr16881148qtz.29.1677512497779;
        Mon, 27 Feb 2023 07:41:37 -0800 (PST)
Received: from [192.168.2.149] (bras-base-smflon1825w-grc-06-174-88-54-55.dsl.bell.ca. [174.88.54.55])
        by smtp.googlemail.com with ESMTPSA id z8-20020ac87108000000b003bf9f9f1844sm4783106qto.71.2023.02.27.07.41.37
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Feb 2023 07:41:37 -0800 (PST)
Message-ID: <aa61588b-35f2-f691-9aca-a18804400448@gmail.com>
Date: Mon, 27 Feb 2023 10:41:36 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es@lists.ettus.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es@lists.ettus.com>
Message-ID-Hash: HDGCL7NTX7TGMT73WOGOXNDN3UMBVJ4L
X-Message-ID-Hash: HDGCL7NTX7TGMT73WOGOXNDN3UMBVJ4L
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: B210: Receive Signales Sent by another
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HDGCL7NTX7TGMT73WOGOXNDN3UMBVJ4L/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0951813798975455856=="

This is a multi-part message in MIME format.
--===============0951813798975455856==
Content-Type: multipart/alternative;
 boundary="------------OzuNNIGL7wCMKe2x0mu0AX59"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------OzuNNIGL7wCMKe2x0mu0AX59
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 27/02/2023 10:27, oiu13q2t5pibtq1--- via USRP-users wrote:
>
> I have 2 B210 with VERT2450s (i.e. 2.4/5 GHz antennae) and compiled=20
> uhd from source
>
> |[INFO] [UHD] linux; Clang version 14.0.0 ; Boost_107400;=20
> UHD_4.4.0.0-0-g5fac246b|
>
> Following the USRP Guide=20
> https://kb.ettus.com/Verifying_the_Operation_of_the_USRP_Using_UHD_and_=
GNU_Radio,=20
> I checked:
>
> |/usr/lib/uhd/examples/benchmark_rate --rx_rate 10e6 --tx_rate 10e6|
>
> on both SDRs
>
> which yielded
>
> |Num received samples: 100243473|
>
> |Num dropped samples: 0|
>
> |Num overruns detected: 0|
>
> |Num transmitted samples: 100064040|
>
>
> Now I tried to receive signals generated the other via
>
> SDR1: RX:
>
> |/usr/lib/uhd/examples/rx_ascii_art_dft --freq 4996e6 --rate 5e6=20
> --gain 20 --bw 5e6 --ref-lvl -30|
>
> SDR2: TX:
>
> |/usr/lib/uhd/examples/tx_waveforms --freq 4996e6 --rate 5e6 --gain 10|
>
>
> I would expect a peak somewhere around 4996 MHz; I only see noise=20
> which is not affected by the |tx_waveforms |call
>
> The SDRs are in the same room.
>
> The TX LED is red, the RX2 LED is green, indicating that they are=20
> indeed sending and receiving
>
>
> Am I missing something important here?!
>
>
> How can I solve that basic task?
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
The total gain-control range on both TX and RX is over 70dB.=C2=A0=C2=A0 =
The=20
bottom end of that range isn't terribly useful in
 =C2=A0 most practical applications.

Turn your TX gain up to about 50=C2=A0 and your RX gain up to about 50 an=
d=20
try again.


--------------OzuNNIGL7wCMKe2x0mu0AX59
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 27/02/2023 10:27, oiu13q2t5pibtq1--=
-
      via USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:MqC4BLtZgDcOzjpDrUE56nHdZbyKf2mGgBvViB85Es@lists.ettus.=
com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <p>I have 2 B210 with VERT2450s (i.e. 2.4/5 GHz antennae) and
        compiled uhd from source</p>
      <p><code>[INFO] [UHD] linux; Clang version 14.0.0 ; Boost_107400;
          UHD_4.4.0.0-0-g5fac246b</code></p>
      <p>Following the USRP Guide
<a class=3D"moz-txt-link-freetext" href=3D"https://kb.ettus.com/Verifying=
_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio">https://kb.ettus.com/=
Verifying_the_Operation_of_the_USRP_Using_UHD_and_GNU_Radio</a>,
        I checked:</p>
      <p><code>/usr/lib/uhd/examples/benchmark_rate --rx_rate 10e6
          --tx_rate 10e6</code></p>
      <p>on both SDRs</p>
      <p>which yielded</p>
      <p><code>Num received samples: 100243473</code></p>
      <p><code> Num dropped samples: 0</code></p>
      <p><code> Num overruns detected: 0</code></p>
      <p><code> Num transmitted samples: 100064040</code></p>
      <p><br>
      </p>
      <p>Now I tried to receive signals generated the other via</p>
      <p>SDR1: RX:</p>
      <p class=3D""><code>/usr/lib/uhd/examples/rx_ascii_art_dft --freq
          4996e6 --rate 5e6 --gain 20 --bw 5e6 --ref-lvl -30</code></p>
      <p>SDR2: TX:</p>
      <p><code>/usr/lib/uhd/examples/tx_waveforms --freq 4996e6 --rate
          5e6 --gain 10</code></p>
      <p><br>
      </p>
      <p>I would expect a peak somewhere around 4996 MHz; I only see
        noise which is not affected by the <code>tx_waveforms </code>call=
</p>
      <p>The SDRs are in the same room.</p>
      <p>The TX LED is red, the RX2 LED is green, indicating that they
        are indeed sending and receiving</p>
      <p><br>
      </p>
      <p>Am I missing something important here?!</p>
      <p><br>
      </p>
      <p>How can I solve that basic task?</p>
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
    The total gain-control range on both TX and RX is over 70dB.=C2=A0=C2=
=A0 The
    bottom end of that range isn't terribly useful in<br>
    =C2=A0 most practical applications.<br>
    <br>
    Turn your TX gain up to about 50=C2=A0 and your RX gain up to about 5=
0=C2=A0
    and try again.<br>
    <br>
    <br>
  </body>
</html>

--------------OzuNNIGL7wCMKe2x0mu0AX59--

--===============0951813798975455856==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0951813798975455856==--
