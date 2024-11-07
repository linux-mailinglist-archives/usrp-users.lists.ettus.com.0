Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 932D89C0808
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 14:49:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D5334386270
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 08:49:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730987379; bh=W/YE11dZPICMFFYmD0m0jKOvxOKG0G4SgGX+p+zvYts=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KJoso+gOEx3vkLtzExwCYkDow4MTucHvogC5/o65D5gFIhmFRr+mmcqCwoIZnOUJ2
	 JnUipJMWaQDMbBfRyNfnTNEEl4Rk4OiZJCIFkspaWUxX1/q7H9i2XfppiHlKE/Ayr+
	 xflStqjwLghaiejcNRckMFyoNALXPGoTRHYoxIeiQ6oasIiP0uhtTgmWyeWJpk1+JA
	 s5fuFMiN7tjULoz3q4nppKeKxqnAP2vJdyZRFO6QeH+BKGLGkjABhBby17JZeDnzpj
	 wYHIjIS8GrvUH3wrVLa0wu7bXxhtT0pbDI5yruS5D58/1ePqvh1tmUTc6Y7kTd1R80
	 Msg0sXFdImDqw==
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 5327438627B
	for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2024 08:49:11 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="WD8W0uqd";
	dkim-atps=neutral
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-2fb3110b964so8296791fa.1
        for <usrp-users@lists.ettus.com>; Thu, 07 Nov 2024 05:49:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1730987350; x=1731592150; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Aw0ti7usdSVV9w28rcwSBv/pOtPV+ypRQ+servoFOIQ=;
        b=WD8W0uqdJ+kdAvwDSNjLYcuH+kvBBG2waVhIFcpVMid9B1BgW5HDRqFHqOD16Ex+e+
         Ti9GX51Z98qH6AQqZsjqukrpbXO7A14/zGKgYaa4c1HPkaigK7a4bRxY7au1nEE82ZPo
         TTLOMdwnT+IOsV0204LxmdpiWRSwD5Ct7vC+XLpTddhzvggzyHfhJds3O7i2rzlKlJv+
         eQxqI50O7su2098iCKcEX0PmWlIjFjG1e2gZly+RZpllKhgzrAPNSviWpYCz0x/pjtZf
         mvt7P3uNdD60TyC1AYcDhU+f0KgzBCltrWkGvG2MQMgFwafdgD5mU/gtKk++Hxg2DkRK
         2Fpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730987350; x=1731592150;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Aw0ti7usdSVV9w28rcwSBv/pOtPV+ypRQ+servoFOIQ=;
        b=pMSyNG9XpyJC9uN5l0x4tjuhhVa3iHutSYQCSPJvT93ZxQR6BfjEO+UDrpfr4gKdCD
         auRlyHBW6qsOphCTy3JGpUQYs7zpw1ohpIWJGPAFH38uYvHMv5TmsdNx7lu1atm7DHKI
         VeshkYpTdId4QrdjHRVUh/E3VnJ60VqntCd+K9bqMxllCGt0PpKRxRIoahaGgT00v/yX
         /ACc45wP38JdlUO63sMoGY5opGPmtpJ01ySuIlHKLxPj/6fM9AHDGz8jDoljCiLraEb4
         L5OUNQf7GU+4ZLV3v9YhRlDoKAp9fNT03SDYVTEY7H4lvzc2CAZJm3Zi+KzgYKwUTdD7
         P7RA==
X-Gm-Message-State: AOJu0YzLhohoQJRO7nrZpQD2lPZXa2R6mmKdD5KY/LZfjtLh3PFpWTQw
	dWCl4J6+/qdsE6C9T6vUb2TPhfuMbiqtZTnCcpLOry/NpXQ1qwcggHRFn1wlb4XANOWISWFAjud
	3UYOUjYKMUbFISfTIvueMiKxis1Nlh9WFsX7iRWbv9HkmfKDwTk8=
X-Google-Smtp-Source: AGHT+IH2oQDbAeOpuJFrERr1fUu5EidncBG09uZ21sCrAew1mVdWN6ugh9M5hEj8DPYCLyM2IQdqHtNsL2Q3pDV6sLY=
X-Received: by 2002:a05:651c:19ab:b0:2ef:243b:6dce with SMTP id
 38308e7fff4ca-2fedb770dfdmr124706221fa.10.1730987349986; Thu, 07 Nov 2024
 05:49:09 -0800 (PST)
MIME-Version: 1.0
References: <CAKHaR3mg3OhJiX2bw04z7tmOi4xL8r8p9zQzLAC5hyoipWUVjw@mail.gmail.com>
In-Reply-To: <CAKHaR3mg3OhJiX2bw04z7tmOi4xL8r8p9zQzLAC5hyoipWUVjw@mail.gmail.com>
From: Dario Pennisi <dario@iptronix.com>
Date: Thu, 7 Nov 2024 14:48:58 +0100
Message-ID: <CAKHaR3n_M_6iP-w9XVrQECvnkS14_jt6Q18H7O3aFXXL_A1_3g@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: ESWWEEXO5JP4K22DN3HH4OYJRRIZX7QV
X-Message-ID-Hash: ESWWEEXO5JP4K22DN3HH4OYJRRIZX7QV
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: PS-USB usage on x440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ESWWEEXO5JP4K22DN3HH4OYJRRIZX7QV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2792702932457146422=="

--===============2792702932457146422==
Content-Type: multipart/alternative; boundary="0000000000001b6d8c062652e6fb"

--0000000000001b6d8c062652e6fb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
more info... i see from device tree that usb0 (fe200000) is ok and the
other usb (fe300000) is disabled. for usb0 i see the following:

/sys/kernel/debug/usb/fe200000.usb/mode is device

and

/sys/kernel/debug/usb/fe200000.usb/link_state is Disconnected even if the
cable is connected and detected from the other party

i'm using a USB-A to USB-C cable.
any help would be greatly appreciated.
thanks,

Dario

On Thu, Nov 7, 2024 at 2:06=E2=80=AFPM Dario Pennisi <dario@iptronix.com> w=
rote:

> Hi,
> i'm trying to use ps-USB port as a NCM interface to an external and i
> think i correctly added the required stuff but i see a major issue that i=
s
> present also when not adding the related modifications:
> 1) issuing lsusb shows nothing
> 2) regardless of the modifications the host PC shows failure to enumerate
> the device in dmesg whereas x440 doesn't show anything
>
> i'm suspecting
> i'm currently using UHD4.5 with an image recompiled from the zeus version
> of meta-ettus
>
> looking at dmesg in the original kernel i see the following:
> [    1.539650] usbcore: registered new interface driver usbfs
> [    1.539693] usbcore: registered new interface driver hub
> [    1.539728] usbcore: registered new device driver usb
> [    2.436706] usbcore: registered new interface driver uas
> [    2.436749] usbcore: registered new interface driver usb-storage
> [    2.436810] usbcore: registered new interface driver usbserial_generic
> [    2.436835] usbserial: USB Serial support registered for generic
> [    2.436863] usbcore: registered new interface driver ch341
> [    2.436886] usbserial: USB Serial support registered for ch341-uart
> [    2.436913] usbcore: registered new interface driver cp210x
> [    2.436935] usbserial: USB Serial support registered for cp210x
> [    2.436962] usbcore: registered new interface driver ftdi_sio
> [    2.436985] usbserial: USB Serial support registered for FTDI USB
> Serial Device
> [    2.437014] usbcore: registered new interface driver pl2303
> [    2.437041] usbserial: USB Serial support registered for pl2303
>
> however looking for /dev/usb* i see only /dev/usbmon0 so apparently no us=
b
> port is being registered. is this missing in the device tree?
>
> thanks,
>
> Dario
>

--0000000000001b6d8c062652e6fb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><div>more info... i see from device tree=
 that usb0 (fe200000) is ok and the other usb (fe300000) is disabled. for u=
sb0 i see the following:=C2=A0</div><div><br></div><div>/sys/kernel/debug/u=
sb/fe200000.usb/mode is device=C2=A0</div><div><br></div><div>and=C2=A0</di=
v><div><br></div><div>/sys/kernel/debug/usb/fe200000.usb/link_state is Disc=
onnected even if the cable is connected and detected from the other party<b=
r></div><div><br></div><div>i&#39;m using a USB-A to USB-C cable.</div><div=
>any help would be greatly appreciated.</div><div>thanks,</div><div><br></d=
iv><div>Dario</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, Nov 7, 2024 at 2:06=E2=80=AFPM Dario Pennisi &lt=
;<a href=3D"mailto:dario@iptronix.com">dario@iptronix.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Hi,<br clear=3D"all"></div><div>i&#39;m trying to use ps-USB port as a =
NCM interface to an external and i think i correctly added the required stu=
ff but i see a major issue that is present also when not adding the related=
 modifications:</div><div>1) issuing lsusb shows nothing</div><div>2) regar=
dless of the modifications the host PC shows failure to enumerate the devic=
e in dmesg whereas x440 doesn&#39;t show anything</div><div><div dir=3D"ltr=
" class=3D"gmail_signature"><div dir=3D"ltr"><br></div><div>i&#39;m suspect=
ing=C2=A0</div><div>i&#39;m currently using UHD4.5 with an image recompiled=
 from the zeus version of meta-ettus</div><div><br></div><div>looking at dm=
esg in the original kernel i see the following:</div><div>[ =C2=A0 =C2=A01.=
539650] usbcore: registered new interface driver usbfs<br>[ =C2=A0 =C2=A01.=
539693] usbcore: registered new interface driver hub<br>[ =C2=A0 =C2=A01.53=
9728] usbcore: registered new device driver usb<br>[ =C2=A0 =C2=A02.436706]=
 usbcore: registered new interface driver uas<br>[ =C2=A0 =C2=A02.436749] u=
sbcore: registered new interface driver usb-storage<br>[ =C2=A0 =C2=A02.436=
810] usbcore: registered new interface driver usbserial_generic<br>[ =C2=A0=
 =C2=A02.436835] usbserial: USB Serial support registered for generic<br>[ =
=C2=A0 =C2=A02.436863] usbcore: registered new interface driver ch341<br>[ =
=C2=A0 =C2=A02.436886] usbserial: USB Serial support registered for ch341-u=
art<br>[ =C2=A0 =C2=A02.436913] usbcore: registered new interface driver cp=
210x<br>[ =C2=A0 =C2=A02.436935] usbserial: USB Serial support registered f=
or cp210x<br>[ =C2=A0 =C2=A02.436962] usbcore: registered new interface dri=
ver ftdi_sio<br>[ =C2=A0 =C2=A02.436985] usbserial: USB Serial support regi=
stered for FTDI USB Serial Device<br>[ =C2=A0 =C2=A02.437014] usbcore: regi=
stered new interface driver pl2303<br>[ =C2=A0 =C2=A02.437041] usbserial: U=
SB Serial support registered for pl2303<br></div><div><br></div><div>howeve=
r looking for /dev/usb* i see only /dev/usbmon0 so apparently no usb port i=
s being registered. is this missing in the device tree?</div><div><br></div=
><div>thanks,</div><div><br></div><div>Dario</div></div></div></div>
</blockquote></div>

--0000000000001b6d8c062652e6fb--

--===============2792702932457146422==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2792702932457146422==--
