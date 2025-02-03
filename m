Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DD0E2A25D35
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 15:46:28 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA506385260
	for <lists+usrp-users@lfdr.de>; Mon,  3 Feb 2025 09:46:24 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1738593984; bh=Yu0AiQhXb4g98+FZJ+czLdEdklLDD+5spKOc3NG/gRk=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=yhDWdSUhpRvd2boso1/yHKNb8xCx++bVbiuEFbTYG92PTqyrOLxJ9Cf0Vs5MX3orX
	 +U5PL1Mqq6N58jwq51F75vWUXqkprUdDtDkn4jnV0KMue9wFj3MkxTVNdyBytNh0Cv
	 MnUzkrdzleuI3uQJi/94YPIUzhLFPUrsRS96/ARgxgSscGAUls12CNpEAePh8phgcP
	 3D0XJVl1NIlrQ2+cUWGfPR8EZP7mWytMffyGTUFnYMHrx38nXMz19m97XBibhBHkD1
	 w8mLsIUQHu4+BY+kVVZ4anTL40SP2qLUL4Sb75hUgt1ayaVABuv9h6XsakPze6YQs9
	 V9R7fqHGV4wXA==
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 1FD0A385B58
	for <usrp-users@lists.ettus.com>; Mon,  3 Feb 2025 09:45:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="kFzOYNi+";
	dkim-atps=neutral
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5dc82e38c10so6455983a12.3
        for <usrp-users@lists.ettus.com>; Mon, 03 Feb 2025 06:45:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1738593919; x=1739198719; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EE8Y/OBM4kBKOng6p82GDuQoA3F3INTvMS3C2Zdlmp8=;
        b=kFzOYNi+id4PpTeJkkJZcehiDpDU3qSmGA9DlfhpzA83MI2AQhVoVjz1qbyAzWzS4R
         xtSU1P2/Cq0/9KypoeAL7od9I2yHPvpMx0IISP3xJ00XfEtK2t4fvWKfL2UmY6k5/2y+
         cgqXic5l3O3jcW6AI9cCOj5+zJ0+Ehi1iJ8Idt6OcrtAek8Mzr+V1/f5ozRraVKCGa47
         H0PjVT+oesYKO67Kng5hAX99ak7LqOyNNoiIE880DIb0ewJywyUT5jOgy3+CIVSh3OFh
         COX36Ci8JqzQ3NJAnO7JcZcfMEcsZj0WqndF1pPwj0foUIyILSQNzDE8uO8JrMEXuvnJ
         eqNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738593919; x=1739198719;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EE8Y/OBM4kBKOng6p82GDuQoA3F3INTvMS3C2Zdlmp8=;
        b=ZetbDA4POvVHb90K5WotD1A8JtNGplQg0+cW/6aSKhXnYMPcMAltRwvAnXwAjUh7Z6
         +MrWAkMoVUEajVU6ml2fPupstAz2oVh3RTaso5T3MyojYv90hcMI+DLTi9k+CQxt0hey
         WeYF3wAlj2XqWP33uXIPSN76oD/IuFn6GVjaeWLVznNFRX02/QVobSzSqry6dQEs111x
         67kmE4gU1J+rlppfOpOg8vpmcWDP0v9qcA2H1LFAHOM1ySuhKDoxf6ItDFk4cYx4WXyy
         yAkc5C4xXFIYR0KELhoW/+/ZbFV94Wd1yZjWY8p8QQ/KY+aboq1Ix9p3FzwWlrGqt51F
         k/ag==
X-Gm-Message-State: AOJu0YyW3Ku4FLrl0zozCtam46/sJZJHYHRVrLGgyMwzw9Z5WBGLupTB
	TA+NQIBW1AItbJPw9Uk5zGliYtk+M9btV3z6+2JAS72wySS25svygOfaJ8f9rZflCDDa707KYKX
	H1qRuX4qgLRUEznulf6vVXOX5F7su/QtLPEYq
X-Gm-Gg: ASbGncsNtCxK8MLpUce2frlgCRDNaPxDatqbOXV0KysCTor543D9X+TYtnknm5FBpDH
	haVWW0ZsJ/kS3Gfd3v7OubmMVmyNVEPaTm9KmFLPs6zLg53FG3jP9jAuEytpWoc3ST/xQGu1p
X-Google-Smtp-Source: AGHT+IG1QDaeQqXlW+Yj6zDpHIq5kjPl4D1rObShMCg/rERHcVQq7U/EB1mGj7Gp0SSCTDlVJ9SusE05VHBXRAXBn1s=
X-Received: by 2002:a05:6402:5246:b0:5dc:1289:7f1c with SMTP id
 4fb4d7f45d1cf-5dc5f033223mr25681056a12.29.1738593918884; Mon, 03 Feb 2025
 06:45:18 -0800 (PST)
MIME-Version: 1.0
References: <CAO9dUFqQpY6N6FO26JZyR9QCP2R+1Wcp+0g-pU9Gj05FhCgiew@mail.gmail.com>
In-Reply-To: <CAO9dUFqQpY6N6FO26JZyR9QCP2R+1Wcp+0g-pU9Gj05FhCgiew@mail.gmail.com>
Date: Mon, 3 Feb 2025 09:45:11 -0500
X-Gm-Features: AWEUYZn4d4Yw4iNedzKpaVGXtQXgUNlVQoaGEhYaqaZIvoDhS5eFiYn5n1Diddk
Message-ID: <CAB__hTQ=Kag5YVBbnxWHQBsrDSsxr6WVUcFr32JiG12nY6=RUg@mail.gmail.com>
To: =?UTF-8?B?TWljaGHFgiBHw7Nybnk=?= <michalgorny01@gmail.com>
Message-ID-Hash: FCDY2N5R7GPORQ5XKQZBPSKFRSYZD6PN
X-Message-ID-Hash: FCDY2N5R7GPORQ5XKQZBPSKFRSYZD6PN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: synchronization betwen TX and RX
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FCDY2N5R7GPORQ5XKQZBPSKFRSYZD6PN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============2321922866929615302=="

--===============2321922866929615302==
Content-Type: multipart/alternative; boundary="000000000000f1c04c062d3df009"

--000000000000f1c04c062d3df009
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Micha=C5=82,
You will need to use timed commands for both the tx and rx. And, you will
need to do more than just set them both to start at zero. Instead you need
to read the current time (get_time_now), add an offset, and then set the
"start_time" for both tx and rx equal to the current time plus offset.  The
offset must be large enough to account for the time that elapses while
sending the commands. This should make it behave consistently from run to
run, but it doesn't mean that the frequency will be zero for a zero delay
target. You will have to introduce your own calibration in order for this
to be the case.  Does that make sense?
Rob

On Mon, Feb 3, 2025 at 7:15=E2=80=AFAM Micha=C5=82 G=C3=B3rny <michalgorny0=
1@gmail.com> wrote:

> Hi,
>
> I am working on making a FMCW radar on USRP E320 where a significant part
> of the software is on rfnoc.
>
> To the replay block it feeds a file which is a signal or more precisely a
> single pulse, from the replay block it feeds the same signal to the radio
> block to send it. the same signal from the replay block through the secon=
d
> output feeds to its own conjugate multiplication block. where there is a
> multiplication between the transmitted signal conjugated and received.
>
> I check the operation of the program using matlab where it expects a
> constant  frequency. The program works, but each subsequent run gives me =
a
> different frequency. I think the problem lies in the synchronization
> between sending and receiving. How to make it happen at the same time?
>
>
>
> in the attachment I send my code.
>
> Thank you very much for any help.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000f1c04c062d3df009
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Micha=C5=82,<div>You will need to use =
timed commands for both the tx and rx. And, you will need to do more than j=
ust set them both to start at zero. Instead you need to read the current ti=
me (get_time_now), add an offset, and then set the &quot;start_time&quot; f=
or both tx and rx equal to the current time plus offset.=C2=A0 The offset m=
ust be large enough to account for the time that elapses while sending the =
commands. This should make it behave consistently from run to run, but it d=
oesn&#39;t mean that the frequency will be zero for a zero delay target. Yo=
u=C2=A0will have to introduce your=C2=A0own calibration in order for this t=
o be the case.=C2=A0 Does that make sense?</div><div>Rob=C2=A0</div></div><=
br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Feb 3, 2025 at 7:15=E2=80=AFAM Micha=C5=82 G=C3=B3r=
ny &lt;<a href=3D"mailto:michalgorny01@gmail.com">michalgorny01@gmail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr"><p style=3D"margin:0in;font-family:Calibri;font-size:11pt" l=
ang=3D"pl">Hi, </p>

<p style=3D"margin:0in;font-family:Calibri;font-size:11pt" lang=3D"pl">I am=
 working
on making a FMCW radar on USRP E320 where a significant part of the softwar=
e is
on rfnoc. </p>

<p style=3D"margin:0in;font-family:Calibri;font-size:11pt" lang=3D"pl">To t=
he
replay block it feeds a file which is a signal or more precisely a single
pulse, from the replay block it feeds the same signal to the radio block to
send it. the same signal from the replay block through the second output fe=
eds
to its own conjugate multiplication block. where there is a multiplication
between the transmitted signal conjugated and received. </p>

<p style=3D"margin:0in;font-family:Calibri;font-size:11pt" lang=3D"pl">I ch=
eck the
operation of the program using matlab where it expects a constant=C2=A0 fre=
quency. The program works, but each
subsequent run gives me a different frequency. I think the problem lies in =
the
synchronization between sending and receiving. How to make it happen at the
same time? </p>

<p style=3D"margin:0in;font-family:Calibri;font-size:11pt" lang=3D"pl">=C2=
=A0</p>

<p style=3D"margin:0in;font-family:Calibri;font-size:11pt" lang=3D"pl">in t=
he
attachment I send my code. </p>

<p style=3D"margin:0in;font-family:Calibri;font-size:11pt" lang=3D"pl">Than=
k you
very much for any help.=C2=A0</p></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000f1c04c062d3df009--

--===============2321922866929615302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2321922866929615302==--
