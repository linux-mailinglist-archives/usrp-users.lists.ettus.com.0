Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D69344DF52
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 01:50:48 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5CED538475B
	for <lists+usrp-users@lfdr.de>; Thu, 11 Nov 2021 19:50:47 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="SC67wI0a";
	dkim-atps=neutral
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com [209.85.160.180])
	by mm2.emwd.com (Postfix) with ESMTPS id 356D5384775
	for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 19:50:01 -0500 (EST)
Received: by mail-qt1-f180.google.com with SMTP id c12so7002443qtd.5
        for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 16:50:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=sLcfnqcEgflOoryw7Wbh0V4rs+6dwQ4L9wmanCeNQ90=;
        b=SC67wI0a4k/ADQLyolLZi0j3RsMlRwCeuqHab0npidW5P7VNsYIWKN2nRzEFfsFVxN
         zDjlOR9XPMCoozudO1+VLfr9O0zHLHDw23EW50yV4RgRsSqz/bD3f3fUrFR2RvCA7BMh
         DxU2g1+/7MUnQi2L4AcZWxOr55225LO8dJliNKgQVY61RLtxza3NP8btSnZuNAxRVkVm
         krxRuk/pU+QFMTRanq2mnjIqDlOR/pMbsDClm/fvlAKNwZ3xp9wXPLjoGFjJBj/BCRsq
         NzEhDSw1md6V6RabJpqDM23HYhm/eoy+y7Dn140UAbKvuMPpaLmZN1aJjNeErKiTDv1i
         RdUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=sLcfnqcEgflOoryw7Wbh0V4rs+6dwQ4L9wmanCeNQ90=;
        b=ageuiSw13+KE0cXWYQiZ1UV9SJbTgUyvVDN/s4AeCRvw59aPWR6lekIucy8P38ZSov
         FtqVcmwlWs4VBpdsJ4R6dn714c+7qBbX47kohrCjfRvEiM5XbHSoTaSJS0EnfL5hZiX1
         RqipVFpuyFADP2U8hMWRrRgzL6XJkM7XViEeYiu75rH+q9fhD6yCohn8ehC3GWoa6nJq
         /WzAZS7TTujUfP8FEOdYZeRaxXy/Cc3mw/SqfGPJ+K2kVqJ4wxc1BnljttASYwmr3QsQ
         HFZScM6htjsaP7KtqnUdtx+L/ECpdBo13coqpYkr6zPuVswRVaNduAul73RIaXLQy45m
         42lw==
X-Gm-Message-State: AOAM530WgcpOnyZmyX38r0rkgv3/7tzLBgaklcsR0WrQKYu1tu6NgIhi
	P0Qj6xvDm2n+ZKF7J87DNfw4Sw02HME=
X-Google-Smtp-Source: ABdhPJwmGGLTZiLUguqYrsmbrg/eNYyecjUHbvFTaMmidQiBiplH5EGin7PbCw6LE2eUWwEaI6AgqQ==
X-Received: by 2002:ac8:5888:: with SMTP id t8mr12049440qta.121.1636678201115;
        Thu, 11 Nov 2021 16:50:01 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id e17sm2363915qtw.18.2021.11.11.16.50.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Nov 2021 16:50:00 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Thu, 11 Nov 2021 19:49:59 -0500
Message-Id: <BAD9F07A-E14C-4B8A-8355-8CC69B1AAD44@gmail.com>
References: <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
In-Reply-To: <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
X-Mailer: iPhone Mail (18H107)
Message-ID-Hash: 4ZNLFERYPGL5ZEX5GHEFCDBGNDPIX7ZN
X-Message-ID-Hash: 4ZNLFERYPGL5ZEX5GHEFCDBGNDPIX7ZN
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/4ZNLFERYPGL5ZEX5GHEFCDBGNDPIX7ZN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4037475828798420634=="


--===============4037475828798420634==
Content-Type: multipart/alternative; boundary=Apple-Mail-BF417B25-C7D2-4C9A-87E2-BE4E4AE0E859
Content-Transfer-Encoding: 7bit


--Apple-Mail-BF417B25-C7D2-4C9A-87E2-BE4E4AE0E859
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Tangentially E310 now uses systemd, so systemctl start ssh.service


Sent from my iPhone

> On Nov 11, 2021, at 6:20 PM, Jonathon Pendlum <jonathon.pendlum@ettus.com>=
 wrote:
>=20
> =EF=BB=BF
> Hey Rob,
>=20
> Did you use bmaptool to write the image to your SD card? I ran into the sa=
me issue when using bmaptool. I switched to using dd instead and that fixed t=
he issue.
>=20
> Jonathon
>=20
>> On Thu, Nov 11, 2021, 18:00 Rob Kossler <rkossler@nd.edu> wrote:
>> Hi,
>> I'm having some issues with my E310 related to booting up the file system=
 (UHD 4.1 file system loaded using bmaptool). Any help appreciated!
>> Issue 1: during boot up, E310 linux fails mounting the /data partition an=
d consequently doesn't configure the Ethernet correctly (such that I can't l=
ogin via ssh) (see below startup log from console window).=20
>> Note that I can look at the micro SD card on my Ubuntu host and I see 4 p=
artitions: /uboot, /data, & the 2 OS partitions.  Everything looks OK.=20
>> I'm starting to suspect a bad micro SD card, but I don't have solid reaso=
ning for that.
>> Issue 2: when I'm in this failed startup state, I can use "ip addr add" t=
o configure the eth0 device but I can't figure out how to restart the sshd s=
o that I can ssh into it (note I can ssh out just fine after setting the IP a=
ddr). Does anyone know how to do so?
>> Issue 3: I can't figure out how to set the real-time clock.  If I run "da=
te" after bootup, it shows "Aug 6".  I can fix this, but upon reboot, it is b=
ack to "Aug 6".  If I run "hwclock", it says it can't find the hwclock. Does=
 anyone know how to set the time in a non-volatile way such that it won't be=
 "Aug 6" after a power cycle.
>> Rob
>>=20
>>=20
>> Bootup Console Log
>> [  OK  ] Found device /dev/mmcblk0p1.
>> [  OK  ] Found device /dev/mmcblk0p4.
>>          Starting File System Check on /dev/mmcblk0p1...
>>          Starting File System Check on /dev/mmcblk0p4...
>> [  OK  ] Started File System Check on /dev/mmcblk0p1.
>>          Mounting /uboot...
>> [  OK  ] Mounted /uboot.
>> [FAILED] Failed to start File System Check on /dev/mmcblk0p4.
>> See 'systemctl status systemd-fsck@dev-mmcblk0p4.service' for details.
>> [DEPEND] Dependency failed for /data.
>> [DEPEND] Dependency failed for Local File Systems.
>> [DEPEND] Dependency failed for Grow File System on /data.
>> [  OK  ] Stopped Dispatch Password =E2=80=A6ts to Console Directory Watch=
.
>> [  OK  ] Stopped Forward Password R=E2=80=A6uests to Wall Directory Watch=
.
>>=20
>> hwclock output
>> sh-5.0# hwclock --verbose
>> hwclock from util-linux 2.34
>> System Time: 1628268135.768399
>> Trying to open: /dev/rtc0
>> Trying to open: /dev/rtc
>> Trying to open: /dev/misc/rtc
>> No usable clock interface found.
>> hwclock: Cannot access the Hardware Clock via any known method.
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-BF417B25-C7D2-4C9A-87E2-BE4E4AE0E859
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Tangentially E310 now uses systemd, so syst=
emctl start ssh.service<div><br><br><div dir=3D"ltr">Sent from my iPhone</di=
v><div dir=3D"ltr"><br><blockquote type=3D"cite">On Nov 11, 2021, at 6:20 PM=
, Jonathon Pendlum &lt;jonathon.pendlum@ettus.com&gt; wrote:<br><br></blockq=
uote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div dir=3D"a=
uto">Hey Rob,<div dir=3D"auto"><br></div><div dir=3D"auto">Did you use bmapt=
ool to write the image to your SD card? I ran into the same issue when using=
 bmaptool. I switched to using dd instead and that fixed the issue.</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Jonathon</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 11, 2021=
, 18:00 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi,<di=
v>I'm having some issues with my E310 related to booting up the file system (=
UHD 4.1 file system loaded using bmaptool). Any help appreciated!</div><div>=
<ul><li>Issue 1: during boot up, E310 linux fails mounting the /data partiti=
on and consequently doesn't configure the Ethernet correctly (such that I ca=
n't login via ssh) (see below startup log from console window).&nbsp;</li><u=
l><li>Note that I can look at the micro SD card on my Ubuntu host and I see 4=
 partitions: /uboot, /data, &amp; the 2 OS partitions.&nbsp; Everything look=
s OK.&nbsp;</li><li>I'm starting to suspect a bad micro SD card, but I don't=
 have solid reasoning for that.</li></ul><li>Issue 2: when I'm in this faile=
d startup state, I can use "ip addr add" to configure the eth0 device but I c=
an't figure out how to restart the sshd so that I can ssh into it (note I ca=
n ssh out just fine after setting the IP addr). Does anyone know how to do s=
o?</li><li>Issue 3: I can't figure out how to set the real-time clock.&nbsp;=
 If I run "date" after bootup, it shows "Aug 6".&nbsp; I can fix this, but u=
pon reboot, it is back to "Aug 6".&nbsp; If I run "hwclock", it says it can'=
t find the hwclock. Does anyone know how to set the time in a non-volatile w=
ay such that it won't be "Aug 6" after a power cycle.</li></ul><div>Rob</div=
><div><br></div><div><br></div><div><b>Bootup Console Log</b></div><div><fon=
t face=3D"monospace">[ &nbsp;OK &nbsp;] Found device /dev/mmcblk0p1.<br>[ &n=
bsp;OK &nbsp;] Found device /dev/mmcblk0p4.<br>&nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;Starting File System Check on /dev/mmcblk0p1...<br>&nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp;Starting File System Check on /dev/mmcblk0p4...<br>[ &nbsp;OK &=
nbsp;] Started File System Check on /dev/mmcblk0p1.<br>&nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp;Mounting /uboot...<br>[ &nbsp;OK &nbsp;] Mounted /uboot.<br>[<fo=
nt color=3D"#ff0000">FAILED</font>] Failed to start File System Check on /de=
v/mmcblk0p4.<br>See 'systemctl status systemd-fsck@dev-mmcblk0p4.service' fo=
r details.<br>[DEPEND] Dependency failed for /data.<br>[DEPEND] Dependency f=
ailed for Local File Systems.<br>[DEPEND] Dependency failed for Grow File Sy=
stem on /data.<br>[ &nbsp;OK &nbsp;] Stopped Dispatch Password =E2=80=A6ts t=
o Console Directory Watch.<br>[ &nbsp;OK &nbsp;] Stopped Forward Password R=E2=
=80=A6uests to Wall Directory Watch.</font><br></div></div><div><font face=3D=
"monospace"><br></font></div><div><font face=3D"monospace"><b>hwclock output=
</b></font></div><div><font face=3D"monospace">sh-5.0# hwclock --verbose<br>=
hwclock from util-linux 2.34<br>System Time: 1628268135.768399<br>Trying to o=
pen: /dev/rtc0<br>Trying to open: /dev/rtc<br>Trying to open: /dev/misc/rtc<=
br>No usable clock interface found.<br>hwclock: Cannot access the Hardware C=
lock via any known method.<br></font></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.ett=
us.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.co=
m</a><br>
</blockquote></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></div></body></html>=

--Apple-Mail-BF417B25-C7D2-4C9A-87E2-BE4E4AE0E859--

--===============4037475828798420634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4037475828798420634==--
