Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB959E088E
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 17:31:11 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE96C38586F
	for <lists+usrp-users@lfdr.de>; Mon,  2 Dec 2024 11:31:10 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733157070; bh=V/9EVBRIzZIYtgWhFiyI77+pQyOs6jqbi+m7dsjsNis=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=XWvO+RUlQ+PWKOtAnblOSmAcI8UzhK3b1U/qShYfvBG/jmtOVatrl8f6n70bNdin2
	 dGsvJGUuZY0p5rQdsv5SWhISziVDxcA+/oxwBVA2xQ6TWWlEe1+kLjUux0Wbl+0kwG
	 OLQ6wK5EpiLIfX+yWiHEv+MpOJPAAJMLl/SQPHJeKYUhR8iHpRgfqEbQlOlFyRMxuH
	 AtNGeDf/kFqURNH9q6SxbT9+vJ6XrO8TpyVW/HGS3h7nzjsHKXOifcs+A69TjdGAJW
	 v3jTB8WY/4Xho6NMM/acIBVDiDeOVRduqVMXMWuyLJQjBV0nwBLLiRhW5SvUVmxpF1
	 DO3jVJIuvSAKw==
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
	by mm2.emwd.com (Postfix) with ESMTPS id 9D0F238584B
	for <usrp-users@lists.ettus.com>; Mon,  2 Dec 2024 11:28:07 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aRAFdDGj";
	dkim-atps=neutral
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6d89ec77177so12878276d6.3
        for <usrp-users@lists.ettus.com>; Mon, 02 Dec 2024 08:28:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733156887; x=1733761687; darn=lists.ettus.com;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ttB7Y+yci+QSzHLsl5vHGP8ZSXLPyzINdRal1HfDKMk=;
        b=aRAFdDGjdpqySb4pJ+7vtDZQ671sMx/cgWuYBEaTPG6mFFolOvcJFioQxWuELAAo7F
         YgJeX/Hnw/4qowOH4zhNl6HSkKPb4qLs55ek5amQhOczaPkSr8DIzzFw4UsfLSoW0Wis
         DoNEvkwJL8jGrbr6wPYTTVeFq/iMxw7aINVeyK2j1/R3EnpAXg6vbEXV5pEqG15IPGZ8
         /LMhEb7VZEgN9UqcjY5DynPUT1H/obafq0FhhbXRNYuOdQ5B+rugHzDxJZem/REniNF9
         4KdouXUBa6MXyNCTb/ihtZbjx1DcSJSkD8ffE7eT1gIMJJsouPePgYZESD7+aiPamgiE
         m4Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733156887; x=1733761687;
        h=in-reply-to:from:references:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ttB7Y+yci+QSzHLsl5vHGP8ZSXLPyzINdRal1HfDKMk=;
        b=VtQ3DPV5gwBdW02DNdRqwNkb/yo401fJRVCh5C5COt0XHG8FXhZQIkn09XZ4U5d164
         NaAAc7oC+w+8nusR7rb0IInC68ZM8IMTNpUH7kqEzZ8RivamzrpsHWOELW88R2t/wiY7
         H2wslF4kNnOB5xqnVfoVzO/MdJbW6s8tOupdqpFrcOAWVOtTXioHK6ez1yZpy6kAZv8t
         Ktb2/Y4q7CEyF+NdOfKFYV5a/WwQIZaLBzgXM2VaxSS1na6qCLlRPz/15CGN1w0RoopM
         UCoNgfEChOsSlrdgL+ueato8ohoB+heg+3mxHAoI4sn2huUUWrp390Aq2Bz9g+3WoIy4
         5a8Q==
X-Gm-Message-State: AOJu0YyxbQqTACdDzmITZSIO1lYeu8DZ70BJ9EgRpNup1XNesCoaen6H
	mbEIsfLF4cGtsb3poAXybix7eDnxtJxEAx/yOe/mFruI4I2OX93Kn1XOLw==
X-Gm-Gg: ASbGncvpxqUjth/3Eh+zM2QvrXbNZDRvH/rSt4BhWYE6bdcjvAZB6VTqatae8uE6bA+
	fw8fvn/hRH81WHrH0/JKWU2sOuDJHRdOhptI4eyJ0rpOPNVKNX7V5P4b+zuVv5KD/cmK1xYC+RO
	SaXmYyMG++xec/BhEkems5gMZhDe3uTFhOqu37ImEnmih39YRAGND2Sci1myIbnMxBAKyoGtGN2
	qmT1aTS6xQjelJMKEAtmJT1i7UOFeN6HA5asVivsbC1GCzPi6080gD1qdo8
X-Google-Smtp-Source: AGHT+IEWCbbOmOlczmibjbBibhzoWDFzpVYJSRbUmA/V91F255hIaGbzm/LbwNjJXRP+I5MpqVMZ+A==
X-Received: by 2002:a05:6214:509e:b0:6d8:8ca0:a7 with SMTP id 6a1803df08f44-6d88ca006d7mr176655306d6.30.1733156886888;
        Mon, 02 Dec 2024 08:28:06 -0800 (PST)
Received: from [192.168.2.170] ([174.88.53.166])
        by smtp.googlemail.com with ESMTPSA id 6a1803df08f44-6d883839882sm41384056d6.13.2024.12.02.08.28.06
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Dec 2024 08:28:06 -0800 (PST)
Message-ID: <af845f78-e539-428c-84ff-31cf459ef42b@gmail.com>
Date: Mon, 2 Dec 2024 11:27:55 -0500
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CACPignSFf5S5YPP93JKX+TMCMd-SF+wR1AammdqJhtJhZ-4V0w@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CACPignSFf5S5YPP93JKX+TMCMd-SF+wR1AammdqJhtJhZ-4V0w@mail.gmail.com>
Message-ID-Hash: LQN4BQUM7OVK5AOY7WXGRFO6CG7ACVXF
X-Message-ID-Hash: LQN4BQUM7OVK5AOY7WXGRFO6CG7ACVXF
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP N210 Gain Issue
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LQN4BQUM7OVK5AOY7WXGRFO6CG7ACVXF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2943395417851100278=="

This is a multi-part message in MIME format.
--===============2943395417851100278==
Content-Type: multipart/alternative;
 boundary="------------ShUqkHJRloPeAHJREecWu1zi"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------ShUqkHJRloPeAHJREecWu1zi
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 02/12/2024 05:43, Muhammad Anas wrote:
> Dear,
>
> I'm using USRP N210 with GNU radio companion for transmission of=20
> signal of 50M Hz and testing the signal on the R&S FSH20 Spectrum=20
> analyzer using SMA cable, unfortunately I am not getting the desired=20
> gain level of 20 dBm according to the datasheet of USRP, in the=20
> spectrum analyzer. I'm getting -92 dBm at 0 level gain from the usrp=20
> sink block in GNU radio and getting the only max -68 dBm gain at 25=20
> gain level from USRP sink block. After 25, to even 100 level, I'm=20
> still getting the -68 dBm at the receiving point. Here are my settings=20
> of FSH20:
>
> Ref: -20 dBm
> Att: 20 dB
> RBW and VBW: 30k Hz
> SWT: 1.29 s
>
> Kindly, help me that if the problem is with the USRP or I will do=20
> something to achieve the desired gain of 20 dBm, without using any=20
> external amplifier. What are the reasons behind this problem and how I=20
> can diagnose them.
>
> Regards
> Muhammad Anas
You haven't said which daughtercard you're using.=C2=A0 I don't think ANY=
 of=20
our radios will produce +20dBm, even at
 =C2=A0 MAX gain with high baseband magnitude.



--------------ShUqkHJRloPeAHJREecWu1zi
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 02/12/2024 05:43, Muhammad Anas
      wrote:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CACPignSFf5S5YPP93JKX+TMCMd-SF+wR1AammdqJhtJhZ-4V0w@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"auto">Dear,
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">I'm using USRP N210 with GNU radio companion fo=
r
          transmission of signal of 50M Hz and testing the signal on the
          R&amp;S FSH20 Spectrum analyzer using SMA cable, unfortunately
          I am not getting the desired gain level of 20 dBm according to
          the datasheet of USRP, in the spectrum analyzer. I'm getting
          -92 dBm at 0 level gain from the usrp sink block in GNU radio
          and getting the only max -68 dBm gain at 25 gain level from
          USRP sink block. After 25, to even 100 level, I'm still
          getting the -68 dBm at the receiving point. Here are my
          settings of FSH20:</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Ref: -20 dBm</div>
        <div dir=3D"auto">Att: 20 dB</div>
        <div dir=3D"auto">RBW and VBW: 30k Hz</div>
        <div dir=3D"auto">SWT: 1.29 s</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Kindly, help me that if the problem is with the
          USRP or I will do something to achieve the desired gain of 20
          dBm, without using any external amplifier. What are the
          reasons behind this problem and how I can diagnose them.</div>
        <div dir=3D"auto"><br>
        </div>
        <div dir=3D"auto">Regards</div>
        <div dir=3D"auto">Muhammad Anas</div>
      </div>
    </blockquote>
    You haven't said which daughtercard you're using.=C2=A0 I don't think=
 ANY
    of our radios will produce +20dBm, even at<br>
    =C2=A0 MAX gain with high baseband magnitude.<br>
    <br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CACPignSFf5S5YPP93JKX+TMCMd-SF+wR1AammdqJhtJhZ-4V0w@mail.gmai=
l.com"><span
      style=3D"white-space: pre-wrap">
</span></blockquote>
    <br>
  </body>
</html>

--------------ShUqkHJRloPeAHJREecWu1zi--

--===============2943395417851100278==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2943395417851100278==--
