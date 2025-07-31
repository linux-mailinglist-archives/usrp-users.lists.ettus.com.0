Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF3FB17720
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 22:27:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1743538683B
	for <lists+usrp-users@lfdr.de>; Thu, 31 Jul 2025 16:27:33 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1753993653; bh=BRi8B2sUxBAD5avjizUIoVCJY6ZncjRv5AiwR+V09s8=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=aS/qGZ3gJ004tyMMMcwDAGXXOdH6s1f1jabeSMqHUu0O3ek0rtx0KdomNAvb4kHfM
	 EQ/fpx61t2D6X31pyptkqvRlnSC3EX6HewhduLdn+8466hsyx5Leh9HlSj57TOT7Ch
	 KX2TFIYo9LjTnZmDRbcLfbpsg3N3mj9pqCNjvnZ3Wy1k47SYy7cF4+CZfSnORsxGwb
	 lq2AuB9FZ9wjXSzI++o4B7PwY3WkoBa0HIrSpy+0RSqjAzrWyvwQCDOYzgKHpT1nzz
	 glw+Gb7hS89HRrh6HsHBV+Nauy4TJ9vTUCIvyx/NcKY64x+PWczlPpTOv387XyaDiz
	 zM9LoUtGl+hYg==
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	by mm2.emwd.com (Postfix) with ESMTPS id EE5A238648C
	for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 16:26:52 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="SB21lAT2";
	dkim-atps=neutral
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ae3a604b43bso144390266b.0
        for <usrp-users@lists.ettus.com>; Thu, 31 Jul 2025 13:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1753993612; x=1754598412; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=j/DCaQ+6olzr8CFjPc9kqTeQkfcLcmF1Hll53SFfjVE=;
        b=SB21lAT2ejlrUaFPq4STuNIRojB6ERdhmGkAtTrsepBqx4H89RWbIkmpwZ78ygbcNA
         NzRFNN0plQo9F9MAd4JCjgdoZ2JIrxOoOYWa/+WFcm58oYtpea9uxkhtMYPxGWftLUfP
         fQ2FftgJK+kLZKdu/vQexTyW2FwNKsSGOk92fjm9gGuswOpn6Q2O7sYKcZPLT1xB7TmT
         Bp4YCPFxWVgz2/tScz/genUkSAapusf0T63g9u+Wf8F7rU4irO2LFuw8D1xju/2gCjjv
         j/IjAg9SI4yApP7aN/JyyUVakvycQlmPrg0dwTLUISSbu9FMbYpYH69bEAKcreM5qnpi
         Bsog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753993612; x=1754598412;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j/DCaQ+6olzr8CFjPc9kqTeQkfcLcmF1Hll53SFfjVE=;
        b=sjU8EnYL/AMWkCwCqlUV5644ijPC9NVWMFEbn6/HnGgieEO9EqeorrB6ro3Ai8CyNI
         AJIEi1suUXSXc1SxdlYAAhL3z4Fw16Lituqr/1mgmOwXphWtuOOjzb7EBKLB+wJzQDi4
         YS9i9obcnDnF1YjCzsWONmx42+IvJYuACM0npeHJZqWFARw/BLNF5rA8sOBqD0wrAHlA
         hd6c66jr3sti9/3tHaBAwjG56+RuITuD+XM4aEdCqkZxZv45VTvhk1NEfsUazxiibx4G
         lCu6vDzmRCp1Y1l5Ttd4eiBARhIsQlPpgZyhz3hW3rS+kJ/9gcCJWUgIPBVn0nWL7ejj
         atgg==
X-Gm-Message-State: AOJu0YzqSETcThH3OMtsX5SwBGXBvyRPWf2xHKl9iQ5glGJyJulIGf02
	Hta0ByQEvl0n3qYZHPELtBH/gBYajN8xjmELIPDVJ8/m00o8G+DEozLOBh09HUJVW5z/Rf1ObJr
	Kz9ER70vQVhu+wF09a74/uyeGIOQAEktVEYX+MOBD6iAqrWWUnsJY/CzT6Q==
X-Gm-Gg: ASbGncvRBmKWsWe/CMrqgdA3gtFEncQiHekaZfeHQaO4QplD4dauK/skpuDwwLtoCmD
	aGZ8O5vdME+ncescft+HesCTTnf+tSSl53ROJimKe7ke0WXlG87qzMloiD92VHTXSxhbXUDDo4k
	zegQDm//sxchytlnrCXRkRmYwakpfW+JIkTK5GPIPLeu7vEhH39Y56DrXg0AHzpfHKQId1oV2tI
	oSoAESZ1islExBJ/y4uyyhSvMwVqwlfB5hcJn0=
X-Google-Smtp-Source: AGHT+IFaXC5cKUruLMOfYnugI3DNlp/KLQK2H1AF17dAUVL8SStlnmhLOaiT4u/9rtmj9RonCKDJNSlrDE5OSXO8eYU=
X-Received: by 2002:a17:907:3f0a:b0:aec:63fd:3b2e with SMTP id
 a640c23a62f3a-af9317c979dmr20727866b.22.1753993611438; Thu, 31 Jul 2025
 13:26:51 -0700 (PDT)
MIME-Version: 1.0
References: <fWj6MRI5rIJLRu5Z8SjLUqE2poC1Ckawlvp0SQtY0@lists.ettus.com>
In-Reply-To: <fWj6MRI5rIJLRu5Z8SjLUqE2poC1Ckawlvp0SQtY0@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 31 Jul 2025 22:26:40 +0200
X-Gm-Features: Ac12FXztgJ5KLdsHMNCrQTeVeUOl1bdYZxRhce8kFWxzXIjGPQYheCxZE7bzHg4
Message-ID: <CAFOi1A52foB13G5epZk7ZCWiN019ssrXbsHcmA-MT9nc181Xeg@mail.gmail.com>
To: gechb21@gmail.com
Message-ID-Hash: BF4KIVAPPG4RR4ICCUNQIMZTN6BE7MCP
X-Message-ID-Hash: BF4KIVAPPG4RR4ICCUNQIMZTN6BE7MCP
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Underflow Issue During Transmission and Reception with USRP X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BF4KIVAPPG4RR4ICCUNQIMZTN6BE7MCP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2203133500716113274=="

--===============2203133500716113274==
Content-Type: multipart/alternative; boundary="00000000000025fffa063b3f76d9"

--00000000000025fffa063b3f76d9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Also, can you confirm that tx_transmit_data.dat stores the samples as
16-bit IQ integers?

--M

On Thu, Jul 31, 2025 at 4:06=E2=80=AFPM <gechb21@gmail.com> wrote:

>
> When I run the following command:
>
> /usr/lib/uhd/examples/tx_samples_from_file --freq 2484e6 --rate 3e6 --gai=
n
> 10 --wirefmt sc16 --ref=3Dinternal --file
> /home/ubuntutx/uhd/examples/tx_transmit_data.dat --repeat
>
> UHD generates this warning:
>
> =E2=80=9CThe requested interpolation is odd; the user should expect
> CIC rolloff. Select an even interpolation to ensure that a halfband filte=
r
> is enabled.=E2=80=9D
>
> The transmission appears to run without errors, but I don=E2=80=99t see a=
ny signal
> on the spectrum analyzer. Could you please clarify what this warning mean=
s
> and if it might be related to why the signal isn=E2=80=99t showing up?
>
> Thanks.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000025fffa063b3f76d9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Also, can you confirm that tx_transmit_data.dat store=
s the samples as 16-bit IQ integers?</div><div><br></div><div>--M</div></di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">On Thu, Jul 31, 2025 at 4:06=E2=80=AFPM &lt;<a href=3D"ma=
ilto:gechb21@gmail.com">gechb21@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><p><br></p><p>When I run the follo=
wing command:</p><p>/usr/lib/uhd/examples/tx_samples_from_file --freq 2484e=
6 --rate 3e6 --gain 10 --wirefmt sc16 --ref=3Dinternal --file /home/ubuntut=
x/uhd/examples/tx_transmit_data.dat --repeat </p><p>UHD generates this warn=
ing:</p><p>=E2=80=9CThe requested interpolation is odd; the user should exp=
ect CIC=C2=A0rolloff.=C2=A0Select an even interpolation to ensure that a ha=
lfband filter is=C2=A0enabled.=E2=80=9D</p><p>The transmission appears to r=
un without errors, but I don=E2=80=99t see any signal on the spectrum analy=
zer. Could you please clarify what this warning means and if it might be re=
lated to why the signal isn=E2=80=99t showing up?</p><p>Thanks.</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000025fffa063b3f76d9--

--===============2203133500716113274==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2203133500716113274==--
