Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A39FB69D97F
	for <lists+usrp-users@lfdr.de>; Tue, 21 Feb 2023 04:47:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DF25E383D22
	for <lists+usrp-users@lfdr.de>; Mon, 20 Feb 2023 22:47:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1676951250; bh=gNyPyjHYfFyg0mtqXBoT8WI19P5B3Jgt+bxg0B2W/Vk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=BJVXGZoozbKJqnp2Qd/dJpLaZUkPVPMG+SYig6wgfDhDo41g6KZrOYtjLss253L3k
	 ms9IYg3c4VkcuO/PFVbWA6J5VnbkmmjcwV0SGPDNjk6ZJMAAFIowu4ugY2ZGvSGBWA
	 J/o16UVZzHSoDwD4rv4RFSe7QWDYCvQAreXWwhdkq+kIcMXv0N9ms6RxFCvA9ifz0b
	 Lf9HV2RrD5uelQ8LmE5RmJy89TBg+L17tH9m6RaUKvgLc0gSQzvtIhWE4HHF5ACbrY
	 DhUR0ZZ4N+VuX7kAAgnDyxlAVFz15tNFSoWmjUFwmqIDsPkUayi+pFut7iF3w6lSJr
	 Rnu9wZiRrv8NQ==
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	by mm2.emwd.com (Postfix) with ESMTPS id A40CF383C8E
	for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 22:46:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="8KrKfFwR";
	dkim-atps=neutral
Received: by mail-ed1-f52.google.com with SMTP id eg37so8097493edb.12
        for <usrp-users@lists.ettus.com>; Mon, 20 Feb 2023 19:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=onHOHl6VHfZcHQmhz3RjHM1NrSdSp4dZuzRJZBFZG5Q=;
        b=8KrKfFwRN+CRIvBdY/lfJ+X6ioX5vpDyuFsHG1vrmhOx/h+mab1UJtP8mYYJAkNB08
         ww3+Hb+WKvb1ozjHxTGsgchlY+N7USVExZ311iPOBZbiE0NnHvCPk+vVZyeEbW3f5wD3
         egLFHG+i5en61pp1Xyv1Cg8mVzuwjOtMJ9UlXUxn2I52Wk+DY7ovW15b2YYs9Atw7WV6
         lweXtYdd4jfhZU8XsW+wDaOBfL4Z3bdoSet3Y59mdivEDhFVd62Q70UExnFSZSBPoHo8
         ucLKmC1LOUSs0O3+Tty5AGkwQtRyVN8Sr6AVWRjUqLXbx/o+Q9Ed24UCcPyq/iwJTpHS
         9KQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=onHOHl6VHfZcHQmhz3RjHM1NrSdSp4dZuzRJZBFZG5Q=;
        b=iFJFvkj5UGwA/oZivHa8Ca38eqccJ6CJfsLL597XvM87gAUGARs/5oWwlnPSHO1ZqE
         bc/vFlY1DA3l/Mb5fAhem1ot80tQSCiDI2SW5b1syDpb257oIJpVhDkU/AZ9XTLq8doF
         zpbXZBlzzvmaKHyQfHjfdylDgS7aoPN6x5UDF4ixhnygAsM+qfvBEas7WNCC1zVJ0TKh
         dRYnaqDyKXpjXF4MEN+l21epit7R9HaFhoYdsPvSAlNiKR+GLVZ31A1K1SiiSJSSO4P9
         54PlPs+eH0l0QN0uqWT6ceNyz46RDYJ9dI9P88RoXSu2AK/bjhbkHdquT/EJIb8axGzz
         T4Hg==
X-Gm-Message-State: AO0yUKXaDptVeIlpWSBj8t+nHLeDWPJDNa3dlNPIMUUeMugN/axEoVF7
	IA88FPV0w62jCBZIzBTBY7LEjJwZbabdsRrOAcZ0hf5rjIFrQ1Au
X-Google-Smtp-Source: AK7set+QjlEvPxhOdRNBUvelPVheku83QXF7nY87rPoLj7IeweY3lo8tXFgueFjFHk1sW6seHSTcV7ilY5J/sCkDHwY=
X-Received: by 2002:a17:906:d9c9:b0:877:ef6d:8e59 with SMTP id
 qk9-20020a170906d9c900b00877ef6d8e59mr5366862ejb.8.1676951213552; Mon, 20 Feb
 2023 19:46:53 -0800 (PST)
MIME-Version: 1.0
References: <CALooG39Scf0NB4sAvB5b8cvdMjAMPh=fY3Zc2N_GMZXbsQgsbg@mail.gmail.com>
In-Reply-To: <CALooG39Scf0NB4sAvB5b8cvdMjAMPh=fY3Zc2N_GMZXbsQgsbg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Mon, 20 Feb 2023 21:46:35 -0600
Message-ID: <CAFche=jgbm5hMZ3GvKqzW4kC4wEYc1pDjiX-WjXX6P=wkHZA6g@mail.gmail.com>
To: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Message-ID-Hash: O7LBDP6AHWV6VV745BNR33N2YPUDFMSC
X-Message-ID-Hash: O7LBDP6AHWV6VV745BNR33N2YPUDFMSC
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP E320 DMA
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/O7LBDP6AHWV6VV745BNR33N2YPUDFMSC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6088722863462883341=="

--===============6088722863462883341==
Content-Type: multipart/alternative; boundary="00000000000063c8f105f52da1db"

--00000000000063c8f105f52da1db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yasir,

Maybe you could add another RFNoC CHDR port to your block just for
streaming the parameter data. So it would have a dedicated streamer
separate from the one used for ADC data.

Wade

On Fri, Feb 17, 2023 at 2:53 AM Yasir =C3=96z=C3=A7al=C4=B1k <simultaneous1=
1@gmail.com>
wrote:

> Hi everyone,
> I have a problem with DMA. I am trying to build a custom RFNoC block whic=
h
> finds pulse parameters (pulse width, pulse repetition interval and
> frequency) and stores them in a block ram. I have built it and it worked =
in
> simulation. The problem is I wanna read those parameters from the host. I=
f
> I try to read them via registers, it is too slow. Therefore; I thought th=
at
> I must use DMA to do that.
>
> In order to reach that goal, I did the things below;
> I statically connected my 2 ports to endpoints. and in the UHD
> application, I connected the radios (RX) to my block and connected my blo=
ck
> to the radios (TX) again. In this way, I successfully took all the ADC
> datas to my block in the FPGA and processed them.
>
> The problem is when I processed the data in the FPGA and tried to read
> parameters back in the host, I needed to use the rfnoc_chdr port and it i=
s
> used by radio for ADC datas. Therefore; I thought I needed to disconnect
> the connection from my port to the radio and connect my port to
> rx_streamer. But, it did not work. It gave an error saying that "attempti=
ng
> to reconnect the block". Can anyone give me advice to read parameters fas=
t
> that my block produced by processing the ADC datas.
>
> Note: I don't wanna take all the ADC datas to the host, but only the
> parameters which my RFNoC block produced while not blocking the ADC signa=
ls
> arriving at my block.
>
> Device : USRP E320
> Host : Ubuntu 20.04 - 1GbE
>
> Kind Regards,
> Yasir.
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000063c8f105f52da1db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Yasir,<div><br></div><div>Maybe you could add another R=
FNoC CHDR port to your block just for streaming the parameter data. So it w=
ould have a dedicated streamer separate from the one used for ADC data.<div=
><br></div><div>Wade</div></div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 17, 2023 at 2:53 AM Yasir =C3=
=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:simultaneous11@gmail.com">simulta=
neous11@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><div dir=3D"ltr">Hi everyone,<div>I have a problem with DM=
A. I am trying to build a custom RFNoC block which finds pulse parameters (=
pulse width, pulse repetition interval and frequency) and stores them in a =
block ram. I have built it and it worked in simulation. The problem is I wa=
nna read those parameters from the host. If I=C2=A0try to read them via reg=
isters, it is too slow. Therefore; I thought that I must use DMA to do that=
.=C2=A0<br></div><div><br></div><div>In order to reach that goal, I did the=
 things below;</div><div>I statically connected my 2 ports to endpoints. an=
d in the UHD application, I connected the radios (RX) to my block and conne=
cted my block to the radios (TX) again. In this way, I successfully took al=
l the ADC datas to my block in the FPGA and processed them.</div><div><br><=
/div><div>The problem is when I processed the data in the FPGA and tried to=
 read parameters back in the host, I needed to use the rfnoc_chdr port and =
it is used by radio for ADC datas. Therefore; I thought I needed to disconn=
ect the connection from my port to the radio and connect my port to rx_stre=
amer. But, it did not work. It gave an error saying that &quot;attempting t=
o reconnect the block&quot;. Can anyone give me advice to read parameters f=
ast that my block produced by processing the ADC datas.</div><div><br></div=
><div>Note: I don&#39;t wanna take all the ADC datas to the host, but only =
the parameters which=C2=A0my RFNoC block produced while=C2=A0not blocking t=
he ADC signals arriving at my=C2=A0block.</div><div><br></div><div>Device :=
 USRP E320</div><div>Host : Ubuntu 20.04 - 1GbE</div><div><br></div><div>Ki=
nd Regards,</div><div>Yasir.</div><div><br></div><div><br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000063c8f105f52da1db--

--===============6088722863462883341==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6088722863462883341==--
