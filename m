Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0C23B276B
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jun 2021 08:32:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C2806384299
	for <lists+usrp-users@lfdr.de>; Thu, 24 Jun 2021 02:32:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="KwJuQQ+o";
	dkim-atps=neutral
Received: from mail-qk1-f194.google.com (mail-qk1-f194.google.com [209.85.222.194])
	by mm2.emwd.com (Postfix) with ESMTPS id ADEB0383B30
	for <usrp-users@lists.ettus.com>; Thu, 24 Jun 2021 02:32:03 -0400 (EDT)
Received: by mail-qk1-f194.google.com with SMTP id bl4so11715646qkb.8
        for <usrp-users@lists.ettus.com>; Wed, 23 Jun 2021 23:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=6DkPXs3OXs2hPNZLg/Y64bkmFITm3i2whU1HDDylo+Y=;
        b=KwJuQQ+oWzqh0hn/KgRk2ESAfvpa5FNZvesDGe3dF/ZLowxY9W7P2gqfofZGFIw3I7
         f996+7kWd2LugYR7QsunOHbm89D2tpBRb/HW20BEzFLAAiUjUafYHbgqEwdNs7VciIeJ
         K8RDQWAUwazifrnTc/Y8JHji6lcM9jeBXA17Tem6C2Yyzd0DLL2t86C6h0PgajA1zqUG
         Q4lE/QiLIZspH6nfeGl+zJWelT0y2lCNbcnfL+VMLCoke4kTxyiNgdlyQW6YLHj/e8cb
         FsJ/pjwmWGof2rIl0TPeOFPdYTBrD70jqdjlYodK6hjTlagO33NGyFMsd1s4pi9iZfo3
         fBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6DkPXs3OXs2hPNZLg/Y64bkmFITm3i2whU1HDDylo+Y=;
        b=UO/MkPjMUqevf+SxrH2kHdpueVx+b+uW8qmnQx0oyXGqLpXKxVWzu1GfakD0Bnlq8Z
         AeAOtSeVFriYy4bcAoc/WRs4kMFkk7hHMHW1cG/OOgnheqdULmHvk3yZpsZvvVPtnS2d
         oNUxn3fyKRbCQXXepzMmfvTq8MP9CTUmPbL1cq/FCJub7A1C6B3+ZO6H1/Nvm/FEiPzh
         ja+V6fX5OSy5bsnUKmh8JMrbYGP8ZULClVMY15SvmnlrdqlGKii0UTvOGOzRkuvubqlL
         pYEUZAPbci0vF+RI5V0hR+jAAU9tgwL9vR4u32wZZhH+28mAjxvgrAl2H/TdPstig1xI
         ngmQ==
X-Gm-Message-State: AOAM5306+fjz7Y8YK5tjTHhSLOEkJtJnIJy1hzhxSh2t3TCg+f4CzVJR
	dDF+6zKAu5qSc4RS1XpLI5NW5ICMDGr2S2VPO4WE3IVHGzXL6HJxU9Bv
X-Google-Smtp-Source: ABdhPJxFkAN62daV+AACb89LyToY9Wo8Y8fnNR4+ITDgn8kdARrOtp5MhrQthgl6VdVFS3zlNooJUJD4eu7GeW7BIYs=
X-Received: by 2002:a5b:ac1:: with SMTP id a1mr2991505ybr.289.1624516322924;
 Wed, 23 Jun 2021 23:32:02 -0700 (PDT)
MIME-Version: 1.0
From: "shachar J. brown" <shachar.brown@gmail.com>
Date: Thu, 24 Jun 2021 09:31:52 +0300
Message-ID: <CAMHwfuggbNypQ4-iQ7n1Tf5jDfoSMyYxW+KsOVDV-sOA5AYr0Q@mail.gmail.com>
To: "shachar J. brown via USRP-users" <usrp-users@lists.ettus.com>, ishai alouche <ishai.alouche@gmail.com>
Message-ID-Hash: DHTYXVIG5PH4XYEH3QJ53LJBZMNRJVQB
X-Message-ID-Hash: DHTYXVIG5PH4XYEH3QJ53LJBZMNRJVQB
X-MailFrom: shachar.brown@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] USB Disconnects While running B210 on Intel Nuc
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DHTYXVIG5PH4XYEH3QJ53LJBZMNRJVQB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0040550009603379168=="

--===============0040550009603379168==
Content-Type: multipart/alternative; boundary="0000000000005c1c4705c57d2e65"

--0000000000005c1c4705c57d2e65
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I am trying to run the given tx_samples_from_file example.
Unfortunately, I keep receiving the uhd::usb_error, approximately 5-30
minutes into the run.

*Technical specs:*
USRP: B210.
Host: Intel Nuc, Core i7, 8th gen.
OS: Ubuntu 20
UHD Version: 4.1.0
USB Controler: XHCI (USB3).


*Error print: *
[ERROR] [TX-STREAM] The tx_stream timed out sending 5000 samples (4080
sent).
[ERROR] [UHD] An unexpected exception was caught in a task loop.The task
loop will now exit, things may not work.EnvironmentError: IOError: usb rx8
transfer status: LIBUSB_TRANSFER_NO_DEVICE
terminate called after throwing an instance of 'uhd::usb_error'
  what():  RuntimeError: USBError -4: usb tx4 submit failed:
LIBUSB_ERROR_NO_DEVICE
Aborted (core dumped)


*dmesg output:*
[19924.922965] usb 4-2: USB disconnect, device number 7
[19925.195595] usb 4-2: new SuperSpeed Gen 1 USB device number 8 using
xhci_hcd
[19925.217437] usb 4-2: LPM exit latency is zeroed, disabling LPM.
[19925.220417] usb 4-2: New USB device found, idVendor=2500,
idProduct=0020, bcdDevice= 0.00
[19925.220422] usb 4-2: New USB device strings: Mfr=1, Product=2,
SerialNumber=3
[19925.220426] usb 4-2: Product: USRP B200
[19925.220429] usb 4-2: Manufacturer: Ettus Research LLC
[19925.220431] usb 4-2: SerialNumber: 31F80A2

Is anyone familiar with this fault?
I would appreciate any help on the matter.

Thanks in advance,
Steve

--0000000000005c1c4705c57d2e65
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everyone,</div><div><br></div><div>I am trying to =
run the given tx_samples_from_file example.</div><div>Unfortunately, I keep=
 receiving the uhd::usb_error, approximately 5-30 minutes into the run.</di=
v><div><br></div><div><b>Technical specs:</b></div><div>USRP: B210.</div><d=
iv>Host: Intel Nuc, Core i7, 8th gen.</div><div>OS: Ubuntu 20</div><div>UHD=
 Version: 4.1.0</div><div>USB Controler: XHCI (USB3).</div><div><br></div><=
div><b>Error print: <br></b></div><div><b></b>[ERROR] [TX-STREAM] The tx_st=
ream timed out sending 5000 samples (4080 sent).<br>[ERROR] [UHD] An unexpe=
cted exception was caught in a task loop.The task loop will now exit, thing=
s may not work.EnvironmentError: IOError: usb rx8 transfer status: LIBUSB_T=
RANSFER_NO_DEVICE<br>terminate called after throwing an instance of &#39;uh=
d::usb_error&#39;<br>=C2=A0 what(): =C2=A0RuntimeError: USBError -4: usb tx=
4 submit failed: LIBUSB_ERROR_NO_DEVICE<br>Aborted (core dumped)</div><div>=
<br></div><div><b>dmesg output:<br></b></div><div>[19924.922965] usb 4-2: U=
SB disconnect, device number 7<br>[19925.195595] usb 4-2: new SuperSpeed Ge=
n 1 USB device number 8 using xhci_hcd<br>[19925.217437] usb 4-2: LPM exit =
latency is zeroed, disabling LPM.<br>[19925.220417] usb 4-2: New USB device=
 found, idVendor=3D2500, idProduct=3D0020, bcdDevice=3D 0.00<br>[19925.2204=
22] usb 4-2: New USB device strings: Mfr=3D1, Product=3D2, SerialNumber=3D3=
<br>[19925.220426] usb 4-2: Product: USRP B200<br>[19925.220429] usb 4-2: M=
anufacturer: Ettus Research LLC<br>[19925.220431] usb 4-2: SerialNumber: 31=
F80A2<br></div><div><br></div><div>Is anyone familiar with this fault?</div=
><div>I would appreciate any help on the matter.</div><div><br></div><div>T=
hanks in advance,</div><div>Steve<br></div><div><br></div><div><br></div><d=
iv><br></div><div><br></div><br></div>

--0000000000005c1c4705c57d2e65--

--===============0040550009603379168==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0040550009603379168==--
