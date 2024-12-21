Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 016189F9DF5
	for <lists+usrp-users@lfdr.de>; Sat, 21 Dec 2024 03:33:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 3E8D4385D78
	for <lists+usrp-users@lfdr.de>; Fri, 20 Dec 2024 21:33:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734748411; bh=zAhDtqXJ1VI5lRxnX7eFUqiBmo7AO3sZtw0dqY3Xc/Y=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=UiA8kjeguLOU8bqjxY46VsnyVj0mszkmnweI9YIFa8Ys5TCl3fPg1Y38YbFl71koS
	 5Cyjd7eelo+8sGU9QGzJpXfE+WNK8vMWPxhEKyPEHSAuB/sL8kXfw3MIRx2P1FjNu4
	 uAd+gantuR7/8K5Gt6bM7Frt3F6oBU+fu3TJc4r4TXzaIQ2od6dpwJa5N/+hA47Cf1
	 /K5AOcO9VhKxhTRwfRKMIYm4+4IeIglKWUr1f4ILnrlPq8TlDfBefGnmmVWEc/v6Eg
	 pSLezXM5q7HQVyMY1cQrjY6+SpwP6jNue2aIGl7Qy2Pchr6CEoMuUjYrGHEfOAeWNm
	 iFaIHNbY6sNog==
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id 7E3F8385AC8
	for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 21:32:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="w4WLZasf";
	dkim-atps=neutral
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e3a0d2d15adso1883626276.0
        for <usrp-users@lists.ettus.com>; Fri, 20 Dec 2024 18:32:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1734748358; x=1735353158; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZbDDBcAdYvuCGcHk4kV6U8S3V6GR7Dh+kJe1FGpxNs8=;
        b=w4WLZasfxLLyGSMq9henpWBzLckQNolNfZtW0XLmNilU+qXVjCN2thEe16JyxO+p29
         k551yhOMBq8/9Zr0pexX+HcfpvKcTmVXHPKVYunxpYrc2uVMgQfywBbiQegpt0KoxwXm
         5f6Iwxj81EfQlO0LVI5zz9cfxngo6Yh+vZNKcsxmYzH8bxt1WyVDUIsVRjaSUWxrvZiW
         vrQ2NXZaY9lRiCrylce3cdApN8geUCsYmGh697z8BSH3Y5dDhA8ibOUbemLCo0302+5v
         gVpCTIQjnU0tQENrQCA/26G33YXeDDvTA2ixx+ZcaW0DkHKV3RB3Eh3utNNk9U1WzGN0
         /Kag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734748358; x=1735353158;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZbDDBcAdYvuCGcHk4kV6U8S3V6GR7Dh+kJe1FGpxNs8=;
        b=hAg+dICBBSiFR6xKCtxVXC9E72vKi7oU0sQx7TwRv/3MqIFdGPMOWh8o8UOt8LdVow
         2OUF/csgg8dhM55FWAH/larHD7aIoUsUIjOuA0OoA7wYePUNLpFBC1XJpcQ0Wb6XkErl
         8k/+4RltNL/9Qsfa1UkviDwGTkjYBm6sSqJBwmcpI/QHbh45fjzeBdurJ6aiSvsxS4O0
         2kq5cN+aa0sw5LJs9wS0g5VB9EJiNDlEL9XJcWdzThucsBumwKA1zR4fOB4o48TDYWPD
         jUkPvMtaU4CTvHfBgTBKAAM144ogLAZ7GjQk+F6plbHGPqE4qMsW+mxQko+Oh2faWPyT
         FVRA==
X-Gm-Message-State: AOJu0YySp6oJmsaKA//suFfrE655ptr73GeGD2X4qC+dQHoN3EvsV5dd
	6OFZkLjh7yKbmfWO9+QFA8N4WYa7cl0A+5rgQiOdX/cB9Nd5vvkIO/kMQWxvu8wkHRgESNDLpFh
	nd93DnpJjGg4WhSoCzsv1rbVnSCZGtsxVmbPxL0W/c+G12WCQpms=
X-Gm-Gg: ASbGncs+6c9fyqlStlPK1KPhBw4SNElAJpceFBEr0N4jodmNyWDW8gtsDDoVAC7Dsze
	X19SIbzZSsOxAb3kxxdKgq+Lv+smw8sPKYukfEA==
X-Google-Smtp-Source: AGHT+IHFv1wBf7KnVEJ86ihS7uP9ebRRflI/1raJlsZ6BkFm5PiYKuHaTDigD/NUg3usG0dUzDU/hdDFcvuOZg0xiGA=
X-Received: by 2002:a05:6902:1883:b0:e4a:130:44e with SMTP id
 3f1490d57ef6-e538c271c09mr4521354276.24.1734748357966; Fri, 20 Dec 2024
 18:32:37 -0800 (PST)
MIME-Version: 1.0
References: <1X6xsdqwhYYYpw2tmztnnqe6t8BUiNXMcFHr4nu0co@lists.ettus.com>
In-Reply-To: <1X6xsdqwhYYYpw2tmztnnqe6t8BUiNXMcFHr4nu0co@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 20 Dec 2024 20:32:21 -0600
Message-ID: <CAFche=huym+W1fazOfU6G2r923Zj8=M51QHwc0hnGyLcWEpi=Q@mail.gmail.com>
To: steve.wakelam@roke.co.uk
Message-ID-Hash: BA5GZ3TPA455LFSVXAF7PHTSLGPARCJS
X-Message-ID-Hash: BA5GZ3TPA455LFSVXAF7PHTSLGPARCJS
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC 4 equivalent of clear_tx_seqnum
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/BA5GZ3TPA455LFSVXAF7PHTSLGPARCJS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0967219509952181052=="

--===============0967219509952181052==
Content-Type: multipart/alternative; boundary="000000000000a6d8880629be9382"

--000000000000a6d8880629be9382
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

RFNoC 4 tries to do this automatically at the start of a session. When UHD
initializes a block, it will try to flush all of its FIFOs to clear any
data from the previous session. There's no equivalent to clear_tx_seqnum. I
suggest letting UHD do its thing and see if that's sufficient for your
needs.

Thanks,

Wade

On Fri, Dec 20, 2024 at 1:39=E2=80=AFAM <steve.wakelam@roke.co.uk> wrote:

> Hi
>
>
> In our RFNOC3 system we used clear_tx_seqnum to clear the input FIFOs of
> our system when the application started. However I believe it was for
> AXI_Wrapper and this was a useful side-effect?
>
>
> What can we do in RFNOC4 to achieve the same functionality?
>
>
> Thanks
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000a6d8880629be9382
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>RFNoC 4 tries to do this automatically at the start o=
f a session. When UHD  initializes a block, it will try to flush all of its=
 FIFOs to clear any data from the previous session. There&#39;s no equivale=
nt to clear_tx_seqnum. I suggest letting UHD do its thing and see if that&#=
39;s sufficient for your needs.</div><div><br></div><div>Thanks,</div><div>=
<br></div><div>Wade<br></div></div><br><div class=3D"gmail_quote gmail_quot=
e_container"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 20, 2024 at =
1:39=E2=80=AFAM &lt;<a href=3D"mailto:steve.wakelam@roke.co.uk">steve.wakel=
am@roke.co.uk</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><p>Hi</p><p><br></p><p>In our RFNOC3 system we used clear_tx_s=
eqnum to clear the input FIFOs of our system when the application started. =
However I believe it was for AXI_Wrapper and this was a useful side-effect?=
</p><p><br></p><p>What can we do in RFNOC4 to achieve the same functionalit=
y?</p><p><br></p><p>Thanks</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000a6d8880629be9382--

--===============0967219509952181052==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0967219509952181052==--
