Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7AA44DE6C
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 00:21:04 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4AC84384692
	for <lists+usrp-users@lfdr.de>; Thu, 11 Nov 2021 18:21:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="HpKImDUO";
	dkim-atps=neutral
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 206A73842F8
	for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 18:20:20 -0500 (EST)
Received: by mail-vk1-f170.google.com with SMTP id 84so4171388vkc.6
        for <usrp-users@lists.ettus.com>; Thu, 11 Nov 2021 15:20:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1dK2ZWF3yVaCaWKd6MW9ixoxEKbtq4IgugAjw0/PZzI=;
        b=HpKImDUOT+lk2/CpCbbs5vS855uhGyCWHOUwpdWSJs5d1T/gANhsqnNfI7K6nNFpHO
         tLAja+ComBRkI03gXJlvWjVpeSI8FC+NvNylM4Zqv4APGJHdWfyEiWd1t5zWHtvZYQ8V
         bM3KUO2UvhdETXPdzd0m/poJYQJrtrDHG1TypwlQzoqzOL/H9/jPq9BR9Ugh72rTNt1z
         LLLbFojAEt0dqvwNn8f38Y0WcQ0Idp9dVRs1Fce/rXS8yIH3PmcSqvqz2df568/JOYIr
         6+RpdM3VjnUSk+y6X5kFa6nDZZ5uhKss3efwp2cydsIdDeREZ1sfJeC9yvKeSeE0JHpy
         GYkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1dK2ZWF3yVaCaWKd6MW9ixoxEKbtq4IgugAjw0/PZzI=;
        b=tEJkDBORnzcQNzlTWcktCsPJ5Hsu6fbHQzhQnKZ2s59uKrrKj6TImTT5h9rOVeiWGc
         qOIlxI7AV+EvbLBe5at25cd95MWpE6fXa6feXNCduKuaklxvXJREcHaBxb/nLYpHsJpo
         pP6nB6i/j+F7wiongeVygl9eVPEGB6cM0SNEJg4WWg3u+ucmm58fMu3nY3XLj3oALBc8
         8cHQ5wH2sWE/4Y7urI8j5cupIG0MI9di9gFqEeTnAplGVtvK6HFQaLJC91xy+n9WAO7c
         8yDBLugY8o+46zlXMhKUWel55K8ONEriG/LCR9pIPf7jEg4vLEqUcHU/wdqxo8AQcHDO
         EFRA==
X-Gm-Message-State: AOAM531Fw31tbfitpcK29+RXnqcvfLCYyWOWfAFYzeD5C75b4UOgfDQT
	neItM3nQDPGCo9EshBR15Yd3TX/GnDi3pWzjyR6yIBDU
X-Google-Smtp-Source: ABdhPJzudkKDyXfrLeHe52VkLE2eYEHh2vKOLlb18RKkrfQOBUrvTXR03fg7tlPgMvxVzD96kuV/J/CJ7yCFRcYWMQk=
X-Received: by 2002:a05:6122:884:: with SMTP id 4mr16769741vkf.6.1636672819947;
 Thu, 11 Nov 2021 15:20:19 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
In-Reply-To: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
From: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Date: Thu, 11 Nov 2021 18:20:08 -0500
Message-ID: <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: 5UNU3SYPCYDI7234ZTZCM5TBLLWGBJBN
X-Message-ID-Hash: 5UNU3SYPCYDI7234ZTZCM5TBLLWGBJBN
X-MailFrom: jonathon.pendlum@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5UNU3SYPCYDI7234ZTZCM5TBLLWGBJBN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1815895184827651327=="

--===============1815895184827651327==
Content-Type: multipart/alternative; boundary="0000000000000c017305d08b968a"

--0000000000000c017305d08b968a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey Rob,

Did you use bmaptool to write the image to your SD card? I ran into the
same issue when using bmaptool. I switched to using dd instead and that
fixed the issue.

Jonathon

On Thu, Nov 11, 2021, 18:00 Rob Kossler <rkossler@nd.edu> wrote:

> Hi,
> I'm having some issues with my E310 related to booting up the file system
> (UHD 4.1 file system loaded using bmaptool). Any help appreciated!
>
>    - Issue 1: during boot up, E310 linux fails mounting the /data
>    partition and consequently doesn't configure the Ethernet correctly (s=
uch
>    that I can't login via ssh) (see below startup log from console window=
).
>       - Note that I can look at the micro SD card on my Ubuntu host and I
>       see 4 partitions: /uboot, /data, & the 2 OS partitions.  Everything=
 looks
>       OK.
>       - I'm starting to suspect a bad micro SD card, but I don't have
>       solid reasoning for that.
>    - Issue 2: when I'm in this failed startup state, I can use "ip addr
>    add" to configure the eth0 device but I can't figure out how to restar=
t the
>    sshd so that I can ssh into it (note I can ssh out just fine after set=
ting
>    the IP addr). Does anyone know how to do so?
>    - Issue 3: I can't figure out how to set the real-time clock.  If I
>    run "date" after bootup, it shows "Aug 6".  I can fix this, but upon
>    reboot, it is back to "Aug 6".  If I run "hwclock", it says it can't f=
ind
>    the hwclock. Does anyone know how to set the time in a non-volatile wa=
y
>    such that it won't be "Aug 6" after a power cycle.
>
> Rob
>
>
> *Bootup Console Log*
> [  OK  ] Found device /dev/mmcblk0p1.
> [  OK  ] Found device /dev/mmcblk0p4.
>          Starting File System Check on /dev/mmcblk0p1...
>          Starting File System Check on /dev/mmcblk0p4...
> [  OK  ] Started File System Check on /dev/mmcblk0p1.
>          Mounting /uboot...
> [  OK  ] Mounted /uboot.
> [FAILED] Failed to start File System Check on /dev/mmcblk0p4.
> See 'systemctl status systemd-fsck@dev-mmcblk0p4.service' for details.
> [DEPEND] Dependency failed for /data.
> [DEPEND] Dependency failed for Local File Systems.
> [DEPEND] Dependency failed for Grow File System on /data.
> [  OK  ] Stopped Dispatch Password =E2=80=A6ts to Console Directory Watch=
.
> [  OK  ] Stopped Forward Password R=E2=80=A6uests to Wall Directory Watch=
.
>
> *hwclock output*
> sh-5.0# hwclock --verbose
> hwclock from util-linux 2.34
> System Time: 1628268135.768399
> Trying to open: /dev/rtc0
> Trying to open: /dev/rtc
> Trying to open: /dev/misc/rtc
> No usable clock interface found.
> hwclock: Cannot access the Hardware Clock via any known method.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000000c017305d08b968a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hey Rob,<div dir=3D"auto"><br></div><div dir=3D"auto">Did=
 you use bmaptool to write the image to your SD card? I ran into the same i=
ssue when using bmaptool. I switched to using dd instead and that fixed the=
 issue.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Jonathon</div></=
div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Thu, Nov 11, 2021, 18:00 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu=
">rkossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><d=
iv dir=3D"ltr">Hi,<div>I&#39;m having some issues with my E310 related to b=
ooting up the file system (UHD 4.1 file system loaded using bmaptool). Any =
help appreciated!</div><div><ul><li>Issue 1: during boot up, E310 linux fai=
ls mounting the /data partition and consequently doesn&#39;t configure the =
Ethernet correctly (such that I can&#39;t login via ssh) (see below startup=
 log from console window).=C2=A0</li><ul><li>Note that I can look at the mi=
cro SD card on my Ubuntu host and I see 4 partitions: /uboot, /data, &amp; =
the 2 OS partitions.=C2=A0 Everything looks OK.=C2=A0</li><li>I&#39;m start=
ing to suspect a bad micro SD card, but I don&#39;t have solid reasoning fo=
r that.</li></ul><li>Issue 2: when I&#39;m in this failed startup state, I =
can use &quot;ip addr add&quot; to configure the eth0 device but I can&#39;=
t figure out how to restart the sshd so that I can ssh into it (note I can =
ssh out just fine after setting the IP addr). Does anyone know how to do so=
?</li><li>Issue 3: I can&#39;t figure out how to set the real-time clock.=
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank" rel=3D"noreferrer">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank" rel=3D"noreferrer">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>

--0000000000000c017305d08b968a--

--===============1815895184827651327==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1815895184827651327==--
