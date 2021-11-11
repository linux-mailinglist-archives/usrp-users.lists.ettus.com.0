Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 751B144DE37
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 00:01:03 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 781B238482C
	for <lists+usrp-users@lfdr.de>; Thu, 11 Nov 2021 18:01:02 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="W8M2Ch1W";
	dkim-atps=neutral
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
	by mm2.emwd.com (Postfix) with ESMTPS id D705D3845D0
	for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 18:00:10 -0500 (EST)
Received: by mail-oo1-f48.google.com with SMTP id q39-20020a4a962a000000b002b8bb100791so2377343ooi.0
        for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 15:00:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=2vZiNrL2PUREaiKOEIjfweAaaAV3S1o2YQx8SM7ONfQ=;
        b=W8M2Ch1WNMFmU4zVEIPdZLYikdB7rzy1kZVYWdKFb7AP0zADzjdnJne1DH0rk8xX1z
         0hkEboDSrhkFYdcvRXf2tcDSNnq3a1wmU5sMWEbSaocTKgKZIl1o2aOCy4hrE49TohaB
         ySbAirpkXlPMtr5fqKUrPQNqPuhFUESja5/azZrTZUnyTG2MI0mhrSOCeA2eherev8C6
         2MroVgdjOz2/Ssv9pAK6NO+84I54nUaGsZbBwoon5GeFca0h8ZTFmmjF1dAUkg+apra4
         SWUB8T2796HxBAhmZrkKh5xTiYWzepfHk6eiUc1cOJUzC3sV+LiLrd+27vBnk129CuRf
         UtnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=2vZiNrL2PUREaiKOEIjfweAaaAV3S1o2YQx8SM7ONfQ=;
        b=U+Qsv2v/E3fbmwLFT66wtrlndIZmLGoX0Q54NvgsrggmZGfBIOsuvO0zOoXugYjj39
         59v38FkM4qc6FGxKw7OFeA56WCEs2m/GfzpDvruaImEMeBtUx/F9hrKOkCvJBEu/k4BR
         2b7RxX07VBgfKrmoxhtipC8Zq1w5KPbtxFkAiqtjNGdYBegJfOohOeBr07XZh6+u+xW4
         taS/tNYByCdQhGk9bXiNEqyKvM1qaU50FpW9U8JKz/c8geVB1CBFpglXT6lOHRLWruQj
         iSCdgC1RaPz8Wde0Eu6pxmxnYOoRwaKu2JKACaJJawKG9E8G9kXI+NPd0+pSe6h/k/9q
         BP2Q==
X-Gm-Message-State: AOAM533EXajt5Tdt5fvtTzWaF/+AvYE28JSGtL5NV40FQJLWc3PUZJ0/
	5NI5oT1JlGoyAwlio2qs0ecU/hiMTK3uZFS9wTTLoiKloPEhHQ==
X-Google-Smtp-Source: ABdhPJy+o+vaImBRgKE7SV2fyvR+ejRBj/+22+x4yynb+U+oIM1LJ08SV3XcnUA6KEUKo0SXBDcZC9O+UB0daVKphEk=
X-Received: by 2002:a4a:e848:: with SMTP id j8mr6131879ooj.61.1636671609678;
 Thu, 11 Nov 2021 15:00:09 -0800 (PST)
MIME-Version: 1.0
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 11 Nov 2021 17:59:59 -0500
Message-ID: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: S7JS3NP2YXXA2AGY4Z33JP52FAHAIOT5
X-Message-ID-Hash: S7JS3NP2YXXA2AGY4Z33JP52FAHAIOT5
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S7JS3NP2YXXA2AGY4Z33JP52FAHAIOT5/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1350927324874616072=="

--===============1350927324874616072==
Content-Type: multipart/alternative; boundary="000000000000e8f27105d08b4d45"

--000000000000e8f27105d08b4d45
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm having some issues with my E310 related to booting up the file system
(UHD 4.1 file system loaded using bmaptool). Any help appreciated!

   - Issue 1: during boot up, E310 linux fails mounting the /data partition
   and consequently doesn't configure the Ethernet correctly (such that I
   can't login via ssh) (see below startup log from console window).
      - Note that I can look at the micro SD card on my Ubuntu host and I
      see 4 partitions: /uboot, /data, & the 2 OS partitions.  Everything l=
ooks
      OK.
      - I'm starting to suspect a bad micro SD card, but I don't have solid
      reasoning for that.
   - Issue 2: when I'm in this failed startup state, I can use "ip addr
   add" to configure the eth0 device but I can't figure out how to restart =
the
   sshd so that I can ssh into it (note I can ssh out just fine after setti=
ng
   the IP addr). Does anyone know how to do so?
   - Issue 3: I can't figure out how to set the real-time clock.  If I run
   "date" after bootup, it shows "Aug 6".  I can fix this, but upon reboot,=
 it
   is back to "Aug 6".  If I run "hwclock", it says it can't find the hwclo=
ck.
   Does anyone know how to set the time in a non-volatile way such that it
   won't be "Aug 6" after a power cycle.

Rob


*Bootup Console Log*
[  OK  ] Found device /dev/mmcblk0p1.
[  OK  ] Found device /dev/mmcblk0p4.
         Starting File System Check on /dev/mmcblk0p1...
         Starting File System Check on /dev/mmcblk0p4...
[  OK  ] Started File System Check on /dev/mmcblk0p1.
         Mounting /uboot...
[  OK  ] Mounted /uboot.
[FAILED] Failed to start File System Check on /dev/mmcblk0p4.
See 'systemctl status systemd-fsck@dev-mmcblk0p4.service' for details.
[DEPEND] Dependency failed for /data.
[DEPEND] Dependency failed for Local File Systems.
[DEPEND] Dependency failed for Grow File System on /data.
[  OK  ] Stopped Dispatch Password =E2=80=A6ts to Console Directory Watch.
[  OK  ] Stopped Forward Password R=E2=80=A6uests to Wall Directory Watch.

*hwclock output*
sh-5.0# hwclock --verbose
hwclock from util-linux 2.34
System Time: 1628268135.768399
Trying to open: /dev/rtc0
Trying to open: /dev/rtc
Trying to open: /dev/misc/rtc
No usable clock interface found.
hwclock: Cannot access the Hardware Clock via any known method.

--000000000000e8f27105d08b4d45
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I&#39;m having some issues with my E310 related to=
 booting up the file system (UHD 4.1 file system loaded using bmaptool). An=
y help appreciated!</div><div><ul><li>Issue 1: during boot up, E310 linux f=
ails mounting the /data partition and consequently doesn&#39;t configure th=
e Ethernet correctly (such that I can&#39;t login via ssh) (see below start=
up log from console window).=C2=A0</li><ul><li>Note that I can look at the =
micro SD card on my Ubuntu host and I see 4 partitions: /uboot, /data, &amp=
; the 2 OS partitions.=C2=A0 Everything looks OK.=C2=A0</li><li>I&#39;m sta=
rting to suspect a bad micro SD card, but I don&#39;t have solid reasoning =
for that.</li></ul><li>Issue 2: when I&#39;m in this failed startup state, =
I can use &quot;ip addr add&quot; to configure the eth0 device but I can&#3=
9;t figure out how to restart the sshd so that I can ssh into it (note I ca=
n ssh out just fine after setting the IP addr). Does anyone know how to do =
so?</li><li>Issue 3: I can&#39;t figure out how to set the real-time clock.=
=C2=A0 If I run &quot;date&quot; after bootup, it shows &quot;Aug 6&quot;.=
=C2=A0 I can fix this, but upon reboot, it is back to &quot;Aug 6&quot;.=C2=
=A0 If I run &quot;hwclock&quot;, it says it can&#39;t find the hwclock. Do=
es anyone know how to set the time in a non-volatile way such that it won&#=
39;t be &quot;Aug 6&quot; after a power cycle.</li></ul><div>Rob</div><div>=
<br></div><div><br></div><div><b>Bootup Console Log</b></div><div><font fac=
e=3D"monospace">[ =C2=A0OK =C2=A0] Found device /dev/mmcblk0p1.<br>[ =C2=A0=
OK =C2=A0] Found device /dev/mmcblk0p4.<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0Starting File System Check on /dev/mmcblk0p1...<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0Starting File System Check on /dev/mmcblk0p4...<br>[ =C2=A0OK =
=C2=A0] Started File System Check on /dev/mmcblk0p1.<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0Mounting /uboot...<br>[ =C2=A0OK =C2=A0] Mounted /uboot.<b=
r>[<font color=3D"#ff0000">FAILED</font>] Failed to start File System Check=
 on /dev/mmcblk0p4.<br>See &#39;systemctl status systemd-fsck@dev-mmcblk0p4=
.service&#39; for details.<br>[DEPEND] Dependency failed for /data.<br>[DEP=
END] Dependency failed for Local File Systems.<br>[DEPEND] Dependency faile=
d for Grow File System on /data.<br>[ =C2=A0OK =C2=A0] Stopped Dispatch Pas=
sword =E2=80=A6ts to Console Directory Watch.<br>[ =C2=A0OK =C2=A0] Stopped=
 Forward Password R=E2=80=A6uests to Wall Directory Watch.</font><br></div>=
</div><div><font face=3D"monospace"><br></font></div><div><font face=3D"mon=
ospace"><b>hwclock output</b></font></div><div><font face=3D"monospace">sh-=
5.0# hwclock --verbose<br>hwclock from util-linux 2.34<br>System Time: 1628=
268135.768399<br>Trying to open: /dev/rtc0<br>Trying to open: /dev/rtc<br>T=
rying to open: /dev/misc/rtc<br>No usable clock interface found.<br>hwclock=
: Cannot access the Hardware Clock via any known method.<br></font></div></=
div>

--000000000000e8f27105d08b4d45--

--===============1350927324874616072==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1350927324874616072==--
