Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F80C9EB6CD
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 17:44:51 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 35202385F3B
	for <lists+usrp-users@lfdr.de>; Tue, 10 Dec 2024 11:44:49 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733849089; bh=wtBBNeYYCDxscTUQUK4+tJVI6r9NXeMeiVX2bXXMiEc=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=C0PG3AymVcPxA7Polpms4HFn7IT1juymvRlKTRrzOfNbrPTryXDtcsMyWaOfe67/n
	 rr1HayHdSqxrhpSxnF65oRbMPbWxqR7dI0ookQtase/uTFIP1h+s4P3bH0eKdvM9G6
	 0CZJ2SpGTfOKNXs/ylOrnejLKdPPP5ZooZgIsBZ0lb2CArJvxTEPFPgQLX82u4QfI3
	 ZUmjlD5o1dUBfkeKNzfQxdVNPmXlcgiSu15teuoXAo8sXosJ6aAbBVz6+PJfw09/uD
	 eEGlffkj4F7q5HKtLTdDSVOQ8i+D+tTIdu6dDiLZG6b5t4gtPxoy5DglKbnWwtZVL5
	 TA+PfNPjeTjwA==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D697385ED5
	for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 11:44:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="E1k12AVs";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-5d34030ebb2so7799666a12.1
        for <usrp-users@lists.ettus.com>; Tue, 10 Dec 2024 08:44:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1733849055; x=1734453855; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=jYLc+teQ9CC6+pUsByLmzLbCYuOkJ/pTemAyma5vDQI=;
        b=E1k12AVsOOUx6+BNtJUzIzg8zpDFtvb/x0yOaKOaFlvr3qvRa/pAJvqcHJGZZ/PoXb
         DZzwxktve8HxLsHk0GQZ6TVl1nscG/tKSPxsPwMnqLygrOP1/HdGiWzr/ZzJ3gXgcF6M
         ZgbhE9Sd9/2rvKVmGM/Vpnc+MZI3Hm/VCkA7GovDQewO9d80HubC660pKGqalxJtOTzS
         5o4NVHgD9rNCJYoLt5+tnIWluFyDbv6A1ct4IwzoT2Vd/pCGjfPu/MtbMTG83w3YmGgD
         xWTMnnJl5aj+ATy+VjKYKR6N1HC8R1mNi0BJrf9MTSi1x40ZGnaLMjksZEPoWxI/e0NW
         cQdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733849055; x=1734453855;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jYLc+teQ9CC6+pUsByLmzLbCYuOkJ/pTemAyma5vDQI=;
        b=GqLki2Rjt0eRJ6vspoRnqgCl0+iH3f/8K6saChw6QQwQ9+0rfxW6FVf0Wv+1EvgoFn
         SZCrVX/iQAL8odpaOscbjEQUSv/xdjtOSrUy/xJLWWqtcREP9N53iVN3aDNgSKZhJ3r5
         bStawgNHgQHviGqk9AQZZN0ofj3bJTKDWGTIQEovnz1UFbBcuyuur5QsRo9PAlkc52cv
         o9F8TqSHW6rNSY5x76LwACXcgkl32UzJ55gfquDJhatpD5fIHdXxFHQWX4fFrmS2r7+1
         /bWfTy3k230hSS6qOjHE7lzwk4myWUQhg4gj7N9vbiO+azesPmUC056+Mahcwp1Gxkvx
         IN1Q==
X-Gm-Message-State: AOJu0YxtHYGThJJsM/G4OQR5wti6hivn3s7Iyqjskhsgeh749fhe0uTw
	BUZiWiuHrJxrBvd9eVtwK0wqyC5GFQLR/LIpmuuTEE49rdtzvHn+Y6WsN2LKdF7WcPyzSwnBvQU
	6l9rux2wVK2WPxYsnOq0dNFlKMKNh+z0W6hWMnnyBiHx+rRPeosQTrSLL
X-Gm-Gg: ASbGncuqfNNhCqAoAVSshGQEDfL2q/REx4f0k5L7WRqIOvyX3MWQCkVbVkcIC3hwcv1
	qcHWbWWqfltSE6L5Ww64RJS9PQLWUKuN1IA==
X-Google-Smtp-Source: AGHT+IHR2o++33ZNlmCAMWtMFm/U0XYcYN+VEXi3s4hhB4YOER1jLIbVPCbEGUhlEdbpRBiuusUjeOIy7pwCoA0uBto=
X-Received: by 2002:a05:6402:2551:b0:5cf:d078:c9dc with SMTP id
 4fb4d7f45d1cf-5d4185fe213mr6475885a12.22.1733849054880; Tue, 10 Dec 2024
 08:44:14 -0800 (PST)
MIME-Version: 1.0
References: <PYlFxq1MvpqoRAC9f9EwnkONwHOWeqgLTss3dTMadA@lists.ettus.com>
In-Reply-To: <PYlFxq1MvpqoRAC9f9EwnkONwHOWeqgLTss3dTMadA@lists.ettus.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Tue, 10 Dec 2024 17:44:03 +0100
Message-ID: <CAFOi1A5O27MKb9nVEJLBPfBd1beQmX7v_5QC0TEZjH0Xhy_tmA@mail.gmail.com>
To: seppo.j.rantala@vtt.fi
Message-ID-Hash: 5VYY2UYUGOBBC2A3IONCSIOYQKW374CK
X-Message-ID-Hash: 5VYY2UYUGOBBC2A3IONCSIOYQKW374CK
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Blocker issue with NI-2943R (=Ettus x310) PCIe connectivity
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5VYY2UYUGOBBC2A3IONCSIOYQKW374CK/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4547180386834724196=="

--===============4547180386834724196==
Content-Type: multipart/alternative; boundary="00000000000002cc0d0628ed31a7"

--00000000000002cc0d0628ed31a7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Seppo,

hard to say why the USRP isn't showing up on the PCIe bus. I've only ever
used the official NI PCIe extension card (
https://www.ettus.com/all-products/pcie-kit/), in principle, I don't see
why your card wouldn't work, but it's not something we can help with,
unfortunately.

BTW, if you are able to get a 10 GbE card, you can exceed the rates of the
PCIe link, with almost no downsides compared to PCIe.

--M

On Fri, Nov 22, 2024 at 11:21=E2=80=AFAM <seppo.j.rantala@vtt.fi> wrote:

> Hi, I cannot get the NI-2943R (=3DEttus x310) connected to the PC via the
> PCIe transport connection. The Ettus firmware is upgraded to the currentl=
y
> latest one, UHD version is UHD_4.7.0.0-0ubuntu1~jammy1. The default HG
> image was uploaded to Ettus. The upload was done via SFP+ Port 0 Interfac=
e,
> 1GbE copper SFP connected. Since I had Terasic PCIe x4 Cable Adapter (PCA=
)
> conversion card available, I would like to use that instead of 1GbE SFP
> port.
>
> PC is Precision 3680 Tower WS. The OS is Ubuntu 22.04.5 LTS with kernel
> Linux 6.8.0-49-generic. The NI Linux device drivers were installed
> according to the guide:
> https://files.ettus.com/manual/page_ni_rio_kernel.html
>
> Command lspci -k -d 1093:c4c4 returns nothing. I checked the Terasic PCIe
> x4 PCA LEDs during operation: If I first power on the NI-2943R before
> powering up the PC as recommended, the LEDs on PCA stay off. In the other
> order, powering up NI-2943R after the PC, the D2 edge, D3 power and DN2-D=
N4
> (signal detect output for CH_B, receiver detect outputfor CH_A0 and CH_B0=
).
>
> I have tried various grub options, disabling power saving modes there and
> so on but now just more or less helpless. Does anyone has had similar
> issues with the similar HW.
>
> I attached output list of dmidecode, lspci and lshw commands.
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000002cc0d0628ed31a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Seppo,</div><div><br></div><div>hard to say why th=
e USRP isn&#39;t showing up on the PCIe bus. I&#39;ve only ever used the of=
ficial NI PCIe extension card (<a href=3D"https://www.ettus.com/all-product=
s/pcie-kit/">https://www.ettus.com/all-products/pcie-kit/</a>), in principl=
e, I don&#39;t see why your card wouldn&#39;t work, but it&#39;s not someth=
ing we can help with, unfortunately.</div><div><br></div><div>BTW, if you a=
re able to get a 10 GbE card, you can exceed the rates of the PCIe link, wi=
th almost no downsides compared to PCIe.</div><div><br></div><div>--M<br></=
div></div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, Nov 22, 2024 at 11:21=E2=80=AFAM &lt;<a h=
ref=3D"mailto:seppo.j.rantala@vtt.fi">seppo.j.rantala@vtt.fi</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>Hi, I cannot=
 get the NI-2943R (=3DEttus x310) connected to the PC via the PCIe transpor=
t connection. The Ettus firmware is upgraded to the currently latest one, U=
HD version is UHD_4.7.0.0-0ubuntu1~jammy1. The default HG image was uploade=
d to Ettus. The upload was done via SFP+ Port 0 Interface, 1GbE copper SFP =
connected. Since I had Terasic PCIe x4 Cable Adapter (PCA) conversion card =
available, I would like to use that instead of 1GbE SFP port.</p><p>PC is P=
recision 3680 Tower WS. The OS is Ubuntu 22.04.5 LTS with kernel Linux 6.8.=
0-49-generic. The NI Linux device drivers were installed according to the g=
uide: <a href=3D"https://files.ettus.com/manual/page_ni_rio_kernel.html" ta=
rget=3D"_blank">https://files.ettus.com/manual/page_ni_rio_kernel.html</a><=
br><br>Command lspci -k -d 1093:c4c4 returns nothing. I checked the Terasic=
 PCIe x4 PCA LEDs during operation: If I first power on the NI-2943R before=
 powering up the PC as recommended, the LEDs on PCA stay off. In the other =
order, powering up NI-2943R after the PC, the D2 edge, D3 power and DN2-DN4=
 (signal detect output for CH_B, receiver detect outputfor CH_A0 and CH_B0)=
.</p><p>I have tried various grub options, disabling power saving modes the=
re and so on but now just more or less helpless. Does anyone has had simila=
r issues with the similar HW.</p><p>I attached output list of dmidecode, ls=
pci and lshw commands.<br><br></p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000002cc0d0628ed31a7--

--===============4547180386834724196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4547180386834724196==--
