Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E598944EA77
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 16:37:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id F12D9383E81
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 10:37:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="dzLyhdoc";
	dkim-atps=neutral
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	by mm2.emwd.com (Postfix) with ESMTPS id DAF7C3810F0
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 10:37:11 -0500 (EST)
Received: by mail-oi1-f176.google.com with SMTP id 7so8386837oip.12
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 07:37:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qFwdM0VyhtiZ5Z1QLr58xQuwK9fOCb9kaAvgwNRTbRE=;
        b=dzLyhdocB64jeQiYHaKyBzqXI9NaT57/V6CmG4vcuhLR8YQiNA7DCWYQL9dlwv4MM3
         dHpyLqL8ToKfi/beE6+uxti8I2JJjKAtXEe+9GsZfXMPRZ12WW3LlIVA6yE4KwzQ5d3Q
         QuSLflEKv4Qj/spL+MT0au4M3+EOINUfE6O3Gbj3hGFdLDdCmpJ1K50OegDyATk5ZoFR
         pYwwPGd4y4+uowuE1Oje2qMM/Cd/Uz+G5VdA80GRC6f7z9YMUg3ROmO7sZS6Oloq/Z6L
         GdPoOBu6GK2YssyJkgfD+oJoELhpQcT9zWw7zYW2sHI1IzetHpbSjA1MRihIAyY3VfJK
         lmiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qFwdM0VyhtiZ5Z1QLr58xQuwK9fOCb9kaAvgwNRTbRE=;
        b=a24fiwDuOfU5ZwjXSWvGYFkmXJAJw58oLisPmmZ8ZdaOVdbknoLxzf8XD2K2pEzxMD
         nOEBZOVmkvybXrsMMRCT84ZTUZ9WoSeBdkNicCGzMzbBnShFQfDmjb8FBH0k1G2B1vHy
         UYQhBZXcoK/ijx3mIEvQCO3j+dVzT/1cQQwkoOzPDUQXfZiuW4Q06K2jnb0aNZYbCHWa
         L4ou6Lp/ZIT1GIBq4k4vQYKCSkYoDOwLveoiK8Qlyiz+Rgf8YJtXe49uCzGbEcmtHpjB
         mkODH+6BmAOw4SOMDtliTbsm5kaYZMKz6YMMXYyaLb5Jq9VM92HiJEsmf7aMYjFcE/Vb
         xjuQ==
X-Gm-Message-State: AOAM531q2EahjNigePP+jSPevmDXcvBGlExyFaXhGyQEEEgZT6E89JTH
	stpLs157cKF02uUj8sA/TTY23YK7nWtUh6rCmphR2A==
X-Google-Smtp-Source: ABdhPJy8kQhvwYdhj8wLDGLBgJucqo2JA3oJSrh+N9GnChVsNfFQJkCaZ9bERqhVXeX2aBqrRWIg7jTNEkI3eXxlhRA=
X-Received: by 2002:a05:6808:1919:: with SMTP id bf25mr13823671oib.33.1636731430981;
 Fri, 12 Nov 2021 07:37:10 -0800 (PST)
MIME-Version: 1.0
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
In-Reply-To: <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 12 Nov 2021 10:37:00 -0500
Message-ID: <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Message-ID-Hash: FSSQIF52LPIFRO6REIMYC7OKLRUGIIUN
X-Message-ID-Hash: FSSQIF52LPIFRO6REIMYC7OKLRUGIIUN
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FSSQIF52LPIFRO6REIMYC7OKLRUGIIUN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1629043081720418555=="

--===============1629043081720418555==
Content-Type: multipart/alternative; boundary="00000000000089870205d0993b79"

--00000000000089870205d0993b79
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Jonathon,
This morning, I discovered that after writing the file system image with
bmaptool,

   - if I immediately pull the SD card from the host card reader and insert
   it into the E310, it boots up ok
   - If I instead pull the SD card and re-insert it right away in the host
   card reader (to force auto-remount), do nothing, then click to eject the=
 SD
   card and insert in the E310. It does not boot up!  The host (Ubuntu 20.0=
4)
   must do something to the SD card by simply mounting and ejecting the SD
   card. Perhaps it has something to do with the Data partition being an
   expandable partition?

Any ideas on this? The reason for wanting to re-mount the SD card in the
host system right away is to configure the /data/network/eth0.network
interface to change it from DHCP to Static IP. At first I speculated that
re-writing this file on the host was causing the issue, but later I
determined that just the mount/eject sequence causes the problem.

Also, any ideas on how I can fix the "date/time" so that it doesn't always
come up "Aug 6"?

Rob


On Thu, Nov 11, 2021 at 6:20 PM Jonathon Pendlum <jonathon.pendlum@ettus.co=
m>
wrote:

> Hey Rob,
>
> Did you use bmaptool to write the image to your SD card? I ran into the
> same issue when using bmaptool. I switched to using dd instead and that
> fixed the issue.
>
> Jonathon
>
> On Thu, Nov 11, 2021, 18:00 Rob Kossler <rkossler@nd.edu> wrote:
>
>> Hi,
>> I'm having some issues with my E310 related to booting up the file syste=
m
>> (UHD 4.1 file system loaded using bmaptool). Any help appreciated!
>>
>>    - Issue 1: during boot up, E310 linux fails mounting the /data
>>    partition and consequently doesn't configure the Ethernet correctly (=
such
>>    that I can't login via ssh) (see below startup log from console windo=
w).
>>       - Note that I can look at the micro SD card on my Ubuntu host and
>>       I see 4 partitions: /uboot, /data, & the 2 OS partitions.  Everyth=
ing looks
>>       OK.
>>       - I'm starting to suspect a bad micro SD card, but I don't have
>>       solid reasoning for that.
>>    - Issue 2: when I'm in this failed startup state, I can use "ip addr
>>    add" to configure the eth0 device but I can't figure out how to resta=
rt the
>>    sshd so that I can ssh into it (note I can ssh out just fine after se=
tting
>>    the IP addr). Does anyone know how to do so?
>>    - Issue 3: I can't figure out how to set the real-time clock.  If I
>>    run "date" after bootup, it shows "Aug 6".  I can fix this, but upon
>>    reboot, it is back to "Aug 6".  If I run "hwclock", it says it can't =
find
>>    the hwclock. Does anyone know how to set the time in a non-volatile w=
ay
>>    such that it won't be "Aug 6" after a power cycle.
>>
>> Rob
>>
>>
>> *Bootup Console Log*
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
>> [  OK  ] Stopped Dispatch Password =E2=80=A6ts to Console Directory Watc=
h.
>> [  OK  ] Stopped Forward Password R=E2=80=A6uests to Wall Directory Watc=
h.
>>
>> *hwclock output*
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
>>
>

--00000000000089870205d0993b79
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks Jonathon,<div>This morning, I discovered that after=
 writing the file system image with bmaptool,</div><div><ul><li>if I immedi=
ately pull the SD card from the host card reader and insert it into the E31=
0, it boots up ok</li><li>If I instead pull the SD card and re-insert it ri=
ght away in the host card reader (to force auto-remount), do nothing, then =
click to eject the SD card and insert in the E310. It does not boot up!=C2=
=A0 The host (Ubuntu 20.04) must do something to the SD card by simply moun=
ting and ejecting the SD card. Perhaps it has something to do with the Data=
 partition being an expandable partition?</li></ul><div>Any ideas on this? =
The reason for wanting to re-mount the SD card in the host system right awa=
y is to configure the /data/network/eth0.network interface to change it fro=
m DHCP to Static IP. At first I speculated that re-writing this file on the=
 host was causing the issue, but later I determined that just the mount/eje=
ct sequence causes the problem.</div></div><div><br></div><div>Also, any id=
eas on how I can fix the &quot;date/time&quot; so that it doesn&#39;t alway=
s come up &quot;Aug 6&quot;?</div><div><br></div><div>Rob</div><div><br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, Nov 11, 2021 at 6:20 PM Jonathon Pendlum &lt;<a href=3D"mailto:j=
onathon.pendlum@ettus.com">jonathon.pendlum@ettus.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Hey =
Rob,<div dir=3D"auto"><br></div><div dir=3D"auto">Did you use bmaptool to w=
rite the image to your SD card? I ran into the same issue when using bmapto=
ol. I switched to using dd instead and that fixed the issue.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Jonathon</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 11, 2021, 1=
8:00 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">r=
kossler@nd.edu</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div dir=3D"ltr">Hi,<div>I&#39;m having some issues with my E=
310 related to booting up the file system (UHD 4.1 file system loaded using=
 bmaptool). Any help appreciated!</div><div><ul><li>Issue 1: during boot up=
, E310 linux fails mounting the /data partition and consequently doesn&#39;=
t configure the Ethernet correctly (such that I can&#39;t login via ssh) (s=
ee below startup log from console window).=C2=A0</li><ul><li>Note that I ca=
n look at the micro SD card on my Ubuntu host and I see 4 partitions: /uboo=
t, /data, &amp; the 2 OS partitions.=C2=A0 Everything looks OK.=C2=A0</li><=
li>I&#39;m starting to suspect a bad micro SD card, but I don&#39;t have so=
lid reasoning for that.</li></ul><li>Issue 2: when I&#39;m in this failed s=
tartup state, I can use &quot;ip addr add&quot; to configure the eth0 devic=
e but I can&#39;t figure out how to restart the sshd so that I can ssh into=
 it (note I can ssh out just fine after setting the IP addr). Does anyone k=
now how to do so?</li><li>Issue 3: I can&#39;t figure out how to set the re=
al-time clock.=C2=A0 If I run &quot;date&quot; after bootup, it shows &quot=
;Aug 6&quot;.=C2=A0 I can fix this, but upon reboot, it is back to &quot;Au=
g 6&quot;.=C2=A0 If I run &quot;hwclock&quot;, it says it can&#39;t find th=
e hwclock. Does anyone know how to set the time in a non-volatile way such =
that it won&#39;t be &quot;Aug 6&quot; after a power cycle.</li></ul><div>R=
ob</div><div><br></div><div><br></div><div><b>Bootup Console Log</b></div><=
div><font face=3D"monospace">[ =C2=A0OK =C2=A0] Found device /dev/mmcblk0p1=
.<br>[ =C2=A0OK =C2=A0] Found device /dev/mmcblk0p4.<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0Starting File System Check on /dev/mmcblk0p1...<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0Starting File System Check on /dev/mmcblk0p4...<=
br>[ =C2=A0OK =C2=A0] Started File System Check on /dev/mmcblk0p1.<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Mounting /uboot...<br>[ =C2=A0OK =C2=A0] Mou=
nted /uboot.<br>[<font color=3D"#ff0000">FAILED</font>] Failed to start Fil=
e System Check on /dev/mmcblk0p4.<br>See &#39;systemctl status systemd-fsck=
@dev-mmcblk0p4.service&#39; for details.<br>[DEPEND] Dependency failed for =
/data.<br>[DEPEND] Dependency failed for Local File Systems.<br>[DEPEND] De=
pendency failed for Grow File System on /data.<br>[ =C2=A0OK =C2=A0] Stoppe=
d Dispatch Password =E2=80=A6ts to Console Directory Watch.<br>[ =C2=A0OK =
=C2=A0] Stopped Forward Password R=E2=80=A6uests to Wall Directory Watch.</=
font><br></div></div><div><font face=3D"monospace"><br></font></div><div><f=
ont face=3D"monospace"><b>hwclock output</b></font></div><div><font face=3D=
"monospace">sh-5.0# hwclock --verbose<br>hwclock from util-linux 2.34<br>Sy=
stem Time: 1628268135.768399<br>Trying to open: /dev/rtc0<br>Trying to open=
: /dev/rtc<br>Trying to open: /dev/misc/rtc<br>No usable clock interface fo=
und.<br>hwclock: Cannot access the Hardware Clock via any known method.<br>=
</font></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div>
</blockquote></div>

--00000000000089870205d0993b79--

--===============1629043081720418555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1629043081720418555==--
