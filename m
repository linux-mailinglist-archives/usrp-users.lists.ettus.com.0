Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EF54D662DCD
	for <lists+usrp-users@lfdr.de>; Mon,  9 Jan 2023 18:59:05 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 37C9F383FA2
	for <lists+usrp-users@lfdr.de>; Mon,  9 Jan 2023 12:59:05 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1673287145; bh=6C9Ll6QJT6eDpABwd740H8KWY9aRhCBEBll7tA0sS0Y=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=fidhWiTOSxr0ZiERkImfnWvhETJQGYQ+rqaAjlPmsH3fp3tqtOCEpk2JVmqho8nMJ
	 iUGVFYsupyDtiq0qILufbg1A7IImVFUk61cJ3pXgpMu0UIxc6Myae732QZcbX8La6C
	 QohxMk0aLYiHtYZwSmoRNnXIB/zKkmCCG+ob5RCjR+hmzaX7xHJDo10fTzBWsNydMT
	 wy6hOQJI+R5hwsv8lgkbQozJWXZK/WcPy/BN18quJjqf95LIYnJDOcxBPAJF69JQIp
	 M+g1xi89bfkX7yi6TZggoN8bzkLXo1uGXhDl1yVmuzrzfTXpaGkeov8xjITnIzUoap
	 4eMa9mFgqr3xg==
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id A031A383F8A
	for <usrp-users@lists.ettus.com>; Mon,  9 Jan 2023 12:58:14 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Kj+acNY/";
	dkim-atps=neutral
Received: by mail-qt1-f180.google.com with SMTP id h26so8515444qtu.2
        for <usrp-users@lists.ettus.com>; Mon, 09 Jan 2023 09:58:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iaK6WiujVLaagvW9EvFldHfELMS56KMHjXef+bdSlgQ=;
        b=Kj+acNY/LtjHE5W5Tr5gdkrcLQ1IpRzvdYqW1CdB6ZiomfwjwrtsFPho/YEo3WIxHd
         JkXoN9AvBiF7EloyE6sWqstU8PPVZXzUBcXfMcnHEeSzSjPkJQOi6yxauHqJE44Kbcrs
         VR0BoHJlDzMbujpEI3sbg+YIYkwueG/1XF+b01dUojKrnhucw6BKjxUvfpAHussxlYXK
         ebn4lOVLsBcaCbrzIse54KmNgoFQVQUYjMYevdkFrpUBVui8BSYt/tgogrXqfE/NY4QL
         m5OYSe0DDUY3wqkENl7Y7UOXhjVoOYV5g/4pudVeVcvyCjOBpWU8+WVdBGR5PukvH02S
         cbYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iaK6WiujVLaagvW9EvFldHfELMS56KMHjXef+bdSlgQ=;
        b=LOQ/vn0P/AlGX2a26gT9pXQiU7xsQ4vDAd1hQkIQyS1m+Zs/VKm04ktBvpmGssMiR1
         gZFyEIwgQS8/usxe5TaRVAle/bzaeEJ7B7uNST2EviauMHlPvJbVpN5q4WK2nhw4//JF
         i3ijZAR8OP44ePHgCUoNYi63oyv9Fje5bV2fTDHwDAe3PuTJvuZTMhA5ZgNxReExMMeD
         6cM4SXVoDuIxVhmquUM0YXoTEQPGcmY2DUilJ3x0n3J7ndz4CpLlYpnjpnGEK8zUfWLv
         1uXxfSkTq+QCd9nYETtTU1EQP40yzwEBB3gIK9bkH7I0L2ZCvYOG3yNLlce0iz8HKFur
         SSuw==
X-Gm-Message-State: AFqh2koVktWFOdFzSkryKd+Dthei8YlmABpRCimyyhlUJHTwkMpLX9vD
	X1M9b1nH9r5O6cix+L2fq7JumSHBGqw=
X-Google-Smtp-Source: AMrXdXvBVswls95i4RhLjxP/TcGsFRlVR/HQGB20CUxrEadbZ2zQGIiFHguxEfn7+gAiE/8ELH3jVg==
X-Received: by 2002:ac8:6f19:0:b0:3a9:84bd:7cc5 with SMTP id bs25-20020ac86f19000000b003a984bd7cc5mr100033709qtb.39.1673287093800;
        Mon, 09 Jan 2023 09:58:13 -0800 (PST)
Received: from [192.168.2.182] (bras-base-smflon1825w-grc-21-184-144-50-56.dsl.bell.ca. [184.144.50.56])
        by smtp.googlemail.com with ESMTPSA id az42-20020a05620a172a00b006fae7e6204bsm2671491qkb.108.2023.01.09.09.58.13
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 09:58:13 -0800 (PST)
Message-ID: <d5587907-7ceb-7bd7-dd55-8d75b123df1e@gmail.com>
Date: Mon, 9 Jan 2023 12:58:12 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAJM5CQ12EUA_=KnSM-3dxfqiJH9vbsXh-jGzjLmM+qNFZ_TB0g@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAJM5CQ12EUA_=KnSM-3dxfqiJH9vbsXh-jGzjLmM+qNFZ_TB0g@mail.gmail.com>
Message-ID-Hash: RDEGYCXHPYCN3JBGYRGL5BVKLRVOAZMV
X-Message-ID-Hash: RDEGYCXHPYCN3JBGYRGL5BVKLRVOAZMV
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How to eliminate the envelope of communication signals between two USRP N210s?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RDEGYCXHPYCN3JBGYRGL5BVKLRVOAZMV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5159095812086038595=="

This is a multi-part message in MIME format.
--===============5159095812086038595==
Content-Type: multipart/alternative;
 boundary="------------RVhPkOq9UXEvBI2xx7UEo2fH"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------RVhPkOq9UXEvBI2xx7UEo2fH
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/01/2023 12:50, Ze Zhang wrote:
>
> Hi all!
>
> I was using two USRP N210 to send and receive signals and the distance=20
> between the two antennas was about 20 cm. I sent three frames of QPSK=20
> signals via a binary file.
>
> On the receiving end, I found an envelope in the amplitude of the=20
> signal that looks like a Sa function or a sine function.=C2=A0The first=
=20
> figure shows the transmitted signal and the following pictures show=20
> the received signal.
>
> And after a spectrum analysis of the QPSK signal, it was found that=20
> there was a low-frequency component in the signal (which could also be=20
> a DC component due to the FFT frequency resolution). I would like to=20
> know how to eliminate this effect.
>
> Thanks in advance.
>
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com
You're running into the "DC anomaly" which is expected in=20
direct-conversion radio hardware.

You can use "offset tuning" to=C2=A0 move considerably away from "DC".

Use a "tune_request" in your tuning that includes an offset frequency,=20
of perhaps 10-20kHz.

https://files.ettus.com/manual/structuhd_1_1tune__request__t.html
--------------RVhPkOq9UXEvBI2xx7UEo2fH
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 09/01/2023 12:50, Ze Zhang wrote:<b=
r>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAJM5CQ12EUA_=3DKnSM-3dxfqiJH9vbsXh-jGzjLmM+qNFZ_TB0g@mail.gm=
ail.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">
          Hi all!</div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">I was usin=
g
          two USRP N210 to send and receive signals and the distance
          between the two antennas was about 20 cm. I sent three frames
          of QPSK signals via a binary file.<br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">On the
          receiving end, I found an envelope in the amplitude of the
          signal that looks like a Sa function or a sine function.=C2=A0T=
he
          first figure shows the transmitted signal and the following
          pictures show the received signal.=C2=A0</div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">And after =
a
          spectrum analysis of the QPSK signal, it was found that there
          was a low-frequency component in the signal (which could also
          be a DC component due to the FFT frequency resolution). I
          would like to know how to eliminate this effect. <br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large">Thanks in
          advance.<br>
        </div>
        <div class=3D"gmail_default" style=3D"font-size:large"><br
            class=3D"gmail-Apple-interchange-newline">
        </div>
        <br>
        <img class=3D"mailtrack-img" alt=3D"" style=3D"display:flex"
src=3D"https://mailtrack.io/trace/mail/4cf9cf63782c4265a60e1b1f439fb6252d=
79365d.png?u=3D6026279"
          moz-do-not-send=3D"true" width=3D"0" height=3D"0"></div>
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
    You're running into the "DC anomaly" which is expected in
    direct-conversion radio hardware.<br>
    <br>
    You can use "offset tuning" to=C2=A0 move considerably away from "DC"=
.<br>
    <br>
    Use a "tune_request" in your tuning that includes an offset
    frequency, of perhaps 10-20kHz.<br>
    <br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://files.ettus.com/ma=
nual/structuhd_1_1tune__request__t.html">https://files.ettus.com/manual/s=
tructuhd_1_1tune__request__t.html</a><br>
  </body>
</html>

--------------RVhPkOq9UXEvBI2xx7UEo2fH--

--===============5159095812086038595==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5159095812086038595==--
