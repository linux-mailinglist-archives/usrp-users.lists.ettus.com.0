Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EEAAD9C06D5
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 14:07:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DA06F385FB1
	for <lists+usrp-users@lfdr.de>; Thu,  7 Nov 2024 08:07:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1730984874; bh=6toTBf5mcSF65XbiKl+ZlDj05NpeQ99P69HvAHQzq+A=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=vQkGhuyrnUmu8BAXAhM8KO8fpM7vJQ9pR2Vy5UJNRjZGSx3ryNnwiCZhK3JpuxTrC
	 zBvql0wzmc52Yk+Yzjut1WekSVsQ4SkiETtC/JM/zmmXmsNRKmcs0TJy0eLOZyi/D3
	 QkCPKPgMfKtZMvDdqMrUYrXvFr8q/Ui4pTQcVcN8sQU/+4EGZGqy8mM0/ntZ0aXi8P
	 RDRV7PUL4ePBdgIRHa5tviORrSpE5q2U9MslcRBDO9bR+EOkvdHfEo0HFx75GtnY9s
	 2Q6N0z2QUoouao7m6FDVbHuSOmIuGrrNNSCwkkaaztTO3IYSMj8jW5FT0/va3JOCkp
	 ZNeaZcSDTYM6g==
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 40432386164
	for <usrp-users@lists.ettus.com>; Thu,  7 Nov 2024 08:07:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=iptronix.com header.i=@iptronix.com header.b="nxzySTDe";
	dkim-atps=neutral
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539fe02c386so1797909e87.0
        for <usrp-users@lists.ettus.com>; Thu, 07 Nov 2024 05:07:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=iptronix.com; s=google; t=1730984823; x=1731589623; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rTFdNIuqyMeYcE9h4fMJzf4TtY6MhinLSebf00aDZ0E=;
        b=nxzySTDe+MzNhTEsevEZ+DoZd2DkQBAPj8DPFNXvbMIDq7r8mQeBg3YvTVL9TfWtfj
         zDH0+fMfwLKfD8sBrOIjk9xJABiQjzWts6rbg/no2tvZaVYWFinuGXWzmCI9x3lGZSzH
         zr2hGJA0X8/LunISULGAeoSdVq1y7UE1So3j9ecDm9hKwXJ0hB5plzH1xecbL8JCJv3H
         RMtbYFVI6kqTfNkEfvKeh9EuKKt1oC24inAvH1LALTdbsHh+FfkixKc9Zc9rYth4qJW1
         T2lnq8q5VRvwjgraOEl2FETJ2UvXCWSxKm9fHk/f0AgbKIAya0NVvOStccPQJF2bFpFM
         3vBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730984823; x=1731589623;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rTFdNIuqyMeYcE9h4fMJzf4TtY6MhinLSebf00aDZ0E=;
        b=Btti4BjQ+ksaz1DW3QM3tE2XaiUypuNn6WD7bB86Hj3qORcc+0I9T54ZDBjL3M9QdF
         4ph3K4FkB/z40d4GdG4XFjFcAWxL6IdeD17tVSclNIos1c3GmP0Mn/pcCJRtYGR7j1IQ
         VPiaKZ+q26LocXZlOg/yla02i4DUDlZZe8j48xdIEv0plCAJcICceh8BXIUo46yQOfnC
         WLlqtCMzsDcd5CIif29rBcq0skHzg7xcNu3obK4m4ZB/k83VRE7nAFeKf+UiF+v81QZ6
         zodQ6nJGzYvvNtn51l4pKyBxp3xzvs3vNxIvJrUgcNB4Ewr4FfZ2Ir6j0WUYjlDF5hb9
         8o4w==
X-Gm-Message-State: AOJu0Yz6ou754hQwrv7EUcIo0AT+k9YIk94OUgTlphO8UKGsfXt6kl5O
	yLHc60glyVC/1I0I1uyuDOT/MCZtsXjxml7NMkFOixfzyhpqM3tzLoIE9RbhGTrRr6dQoFj/wPf
	OHx+GlvKvho8InxdNmOk/dLrbzWzDx6n1X+2fMuxLdDH81rEJtpg=
X-Google-Smtp-Source: AGHT+IG18Bkm/4l1IXaXWwJ/gdPpsPN56c7TBoY4UonmByY3bbuZbbQQ7+wc2GbbUcr4XlZJzFun/1dzccXehAkDTa0=
X-Received: by 2002:a2e:9a16:0:b0:2fe:e45a:4f6c with SMTP id
 38308e7fff4ca-2ff1b8a4fecmr4964741fa.6.1730984823285; Thu, 07 Nov 2024
 05:07:03 -0800 (PST)
MIME-Version: 1.0
From: Dario Pennisi <dario@iptronix.com>
Date: Thu, 7 Nov 2024 14:06:52 +0100
Message-ID: <CAKHaR3mg3OhJiX2bw04z7tmOi4xL8r8p9zQzLAC5hyoipWUVjw@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: THMMMNSIICQFA2FTMN4D43DDS5YI2YPN
X-Message-ID-Hash: THMMMNSIICQFA2FTMN4D43DDS5YI2YPN
X-MailFrom: dario@iptronix.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] PS-USB usage on x440
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/THMMMNSIICQFA2FTMN4D43DDS5YI2YPN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2304735875175523520=="

--===============2304735875175523520==
Content-Type: multipart/alternative; boundary="0000000000008109150626524fda"

--0000000000008109150626524fda
Content-Type: text/plain; charset="UTF-8"

Hi,
i'm trying to use ps-USB port as a NCM interface to an external and i think
i correctly added the required stuff but i see a major issue that is
present also when not adding the related modifications:
1) issuing lsusb shows nothing
2) regardless of the modifications the host PC shows failure to enumerate
the device in dmesg whereas x440 doesn't show anything

i'm suspecting
i'm currently using UHD4.5 with an image recompiled from the zeus version
of meta-ettus

looking at dmesg in the original kernel i see the following:
[    1.539650] usbcore: registered new interface driver usbfs
[    1.539693] usbcore: registered new interface driver hub
[    1.539728] usbcore: registered new device driver usb
[    2.436706] usbcore: registered new interface driver uas
[    2.436749] usbcore: registered new interface driver usb-storage
[    2.436810] usbcore: registered new interface driver usbserial_generic
[    2.436835] usbserial: USB Serial support registered for generic
[    2.436863] usbcore: registered new interface driver ch341
[    2.436886] usbserial: USB Serial support registered for ch341-uart
[    2.436913] usbcore: registered new interface driver cp210x
[    2.436935] usbserial: USB Serial support registered for cp210x
[    2.436962] usbcore: registered new interface driver ftdi_sio
[    2.436985] usbserial: USB Serial support registered for FTDI USB Serial
Device
[    2.437014] usbcore: registered new interface driver pl2303
[    2.437041] usbserial: USB Serial support registered for pl2303

however looking for /dev/usb* i see only /dev/usbmon0 so apparently no usb
port is being registered. is this missing in the device tree?

thanks,

Dario

--0000000000008109150626524fda
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br clear=3D"all"></div><div>i&#39;m trying to use=
 ps-USB port as a NCM interface to an external and i think i correctly adde=
d the required stuff but i see a major issue that is present also when not =
adding the related modifications:</div><div>1) issuing lsusb shows nothing<=
/div><div>2) regardless of the modifications the host PC shows failure to e=
numerate the device in dmesg whereas x440 doesn&#39;t show anything</div><d=
iv><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signa=
ture"><div dir=3D"ltr"><br></div><div>i&#39;m suspecting=C2=A0</div><div>i&=
#39;m currently using UHD4.5 with an image recompiled from the zeus version=
 of meta-ettus</div><div><br></div><div>looking at dmesg in the original ke=
rnel i see the following:</div><div>[ =C2=A0 =C2=A01.539650] usbcore: regis=
tered new interface driver usbfs<br>[ =C2=A0 =C2=A01.539693] usbcore: regis=
tered new interface driver hub<br>[ =C2=A0 =C2=A01.539728] usbcore: registe=
red new device driver usb<br>[ =C2=A0 =C2=A02.436706] usbcore: registered n=
ew interface driver uas<br>[ =C2=A0 =C2=A02.436749] usbcore: registered new=
 interface driver usb-storage<br>[ =C2=A0 =C2=A02.436810] usbcore: register=
ed new interface driver usbserial_generic<br>[ =C2=A0 =C2=A02.436835] usbse=
rial: USB Serial support registered for generic<br>[ =C2=A0 =C2=A02.436863]=
 usbcore: registered new interface driver ch341<br>[ =C2=A0 =C2=A02.436886]=
 usbserial: USB Serial support registered for ch341-uart<br>[ =C2=A0 =C2=A0=
2.436913] usbcore: registered new interface driver cp210x<br>[ =C2=A0 =C2=
=A02.436935] usbserial: USB Serial support registered for cp210x<br>[ =C2=
=A0 =C2=A02.436962] usbcore: registered new interface driver ftdi_sio<br>[ =
=C2=A0 =C2=A02.436985] usbserial: USB Serial support registered for FTDI US=
B Serial Device<br>[ =C2=A0 =C2=A02.437014] usbcore: registered new interfa=
ce driver pl2303<br>[ =C2=A0 =C2=A02.437041] usbserial: USB Serial support =
registered for pl2303<br></div><div><br></div><div>however looking for /dev=
/usb* i see only /dev/usbmon0 so apparently no usb port is being registered=
. is this missing in the device tree?</div><div><br></div><div>thanks,</div=
><div><br></div><div>Dario</div></div></div></div>

--0000000000008109150626524fda--

--===============2304735875175523520==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2304735875175523520==--
