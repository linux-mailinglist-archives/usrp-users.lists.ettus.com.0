Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C534044EAE7
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 16:58:47 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CC09D384152
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 10:58:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="fhq7az7N";
	dkim-atps=neutral
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 970F3383DA2
	for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 10:57:55 -0500 (EST)
Received: by mail-qv1-f41.google.com with SMTP id b17so6532542qvl.9
        for <usrp-users@lists.ettus.com>; Fri, 12 Nov 2021 07:57:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=Nw5d4Ni0JU6tSNV1Nnfy+GffGFqULK25SBiKoanYjuA=;
        b=fhq7az7NYAO7bwq/9iexOKMuhjDZkbrMTfNKaoFR76Ib2QoCIENuH1z4ipgTT7sqbY
         +XWnONT3Hwms0FrOcjwwGR61ELXq/g8Rj9hN4qQOeYdvLoP9NRG71X7AxVTugd+AtxY/
         uKjkYLh+iVNlVPUBVSo9wnVdowBYbMz1cp9LF4y5eItSuhxG34nrSbH1zxBKKTZE4pO7
         7nARtzgjt3XVyL/l5EtRz/jcjrUcHsszpWRzjxZCG4LPtLTNMqMkObsndQRXYiaeU4vo
         hrV7+Lp6Rni19gxKukpM1nolExMU9K1mirFk4Q3PgYj7yIQbb44zDwWBQTHQxsnl7vvi
         O+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=Nw5d4Ni0JU6tSNV1Nnfy+GffGFqULK25SBiKoanYjuA=;
        b=fkCt29yhXiLxN+L5OvyrxZBtNgr55cjXK+vIuiIO7xBVW+gZc2R5chOIpjYhfZtZmI
         c6xe1PzZfhJqhRjvTK+CH0c1gIaHWDFrSeQXIb076qWADbnkmbZIGwh1OsfAwkH+VBDT
         5YsSJvxCBmPLoRoN5L3pK8SF0u9Z9GB4Uob7xqvHy4idZ5guf3X8eA1rus8kE7eOA7U0
         5E27wKJXlGhWcdlzS6tn2Vv0yJNH/GLcreY7ljYI8JRyUK9wGNkFNQHTKknfbyJISvr/
         ie0sAkP2pSEEd7MTeAG0kB0c5PfJclzGrS42tBMjLqqr1VNPQBLseHaxSxBwDLCBfk1y
         vlsQ==
X-Gm-Message-State: AOAM530t16yjT/d8aPa2XCgSdqkJ3x6xMhLVWDUYSaU24vde7wtSj0kK
	bNheBKb21VugkgMmHUidEGLmIXsHNw0=
X-Google-Smtp-Source: ABdhPJxlhmfGUT+cdOUQx5i06WfvB7iSF6CQVbj9niKz/LyUyuZMPI7/bYS0797r9dZvjkoadUJftQ==
X-Received: by 2002:a0c:f8cc:: with SMTP id h12mr15676782qvo.6.1636732674662;
        Fri, 12 Nov 2021 07:57:54 -0800 (PST)
Received: from [192.168.2.212] (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.googlemail.com with ESMTPSA id v3sm3205288qtw.53.2021.11.12.07.57.53
        for <usrp-users@lists.ettus.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 07:57:54 -0800 (PST)
Message-ID: <cb4dad38-00a0-1bec-e68d-00d1aa89c56e@gmail.com>
Date: Fri, 12 Nov 2021 10:57:53 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.1
Content-Language: en-US
To: usrp-users@lists.ettus.com
References: <CAB__hTT2dcHqDV-OKN9konwjX-5ru1DicuVjU1gsjYPf+CGz1A@mail.gmail.com>
 <CAL7q81vYb9ktOTQb=CfhtEM26dK3cHOe-xE41jD=gWhQniKfVA@mail.gmail.com>
 <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmail.com>
Message-ID-Hash: CR7REHCCGCDIH4AAQONCC6LQZXQ2JAU3
X-Message-ID-Hash: CR7REHCCGCDIH4AAQONCC6LQZXQ2JAU3
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/CR7REHCCGCDIH4AAQONCC6LQZXQ2JAU3/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3766227216977099778=="

This is a multi-part message in MIME format.
--===============3766227216977099778==
Content-Type: multipart/alternative;
 boundary="------------3KJ4va9nRCLAlQN6M0rQ7JVy"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------3KJ4va9nRCLAlQN6M0rQ7JVy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2021-11-12 10:37, Rob Kossler wrote:
> Thanks Jonathon,
> This morning, I discovered that after writing the file system image=20
> with bmaptool,
>
>   * if I immediately pull the SD card from the host card reader and
>     insert it into the E310, it boots up ok
>   * If I instead pull the SD card and re-insert it right away in the
>     host card reader (to force auto-remount), do nothing, then click
>     to eject the SD card and insert in the E310. It does not boot up!=C2=
=A0
>     The host (Ubuntu 20.04) must do something to the SD card by simply
>     mounting and ejecting the SD card. Perhaps it has something to do
>     with the Data partition being an expandable partition?
>
> Any ideas on this? The reason for wanting to re-mount the SD card in=20
> the host system right away is to configure the=20
> /data/network/eth0.network interface to change it from DHCP to Static=20
> IP. At first I speculated that re-writing this file on the host was=20
> causing the issue, but later I determined that just the mount/eject=20
> sequence causes the problem.
>
> Also, any ideas on how I can fix the "date/time" so that it doesn't=20
> always come up "Aug 6"?
>
> Rob
According to the schematics, there IS an RTC chip on the E310, so my=20
guess is that the system image didn't include the driver for it.

Let me check with R&D.

>
>
> On Thu, Nov 11, 2021 at 6:20 PM Jonathon Pendlum=20
> <jonathon.pendlum@ettus.com> wrote:
>
>     Hey Rob,
>
>     Did you use bmaptool to write the image to your SD card? I ran
>     into the same issue when using bmaptool. I switched to using dd
>     instead and that fixed the issue.
>
>     Jonathon
>
>     On Thu, Nov 11, 2021, 18:00 Rob Kossler <rkossler@nd.edu> wrote:
>
>         Hi,
>         I'm having some issues with my E310 related to booting up the
>         file system (UHD 4.1 file system loaded using bmaptool). Any
>         help appreciated!
>
>           * Issue 1: during boot up, E310 linux fails mounting the
>             /data partition and consequently doesn't configure the
>             Ethernet correctly (such that I can't login via ssh) (see
>             below startup log from console window).
>               o Note that I can look at the micro SD card on my Ubuntu
>                 host and I see 4 partitions: /uboot, /data, & the 2 OS
>                 partitions.=C2=A0 Everything looks OK.
>               o I'm starting to suspect a bad micro SD card, but I
>                 don't have solid reasoning for that.
>           * Issue 2: when I'm in this failed startup state, I can use
>             "ip addr add" to configure the eth0 device but I can't
>             figure out how to restart the sshd so that I can ssh into
>             it (note I can ssh out just fine after setting the IP
>             addr). Does anyone know how to do so?
>           * Issue 3: I can't figure out how to set the real-time
>             clock.=C2=A0 If I run "date" after bootup, it shows "Aug 6"=
.=C2=A0 I
>             can fix this, but upon reboot, it is back to "Aug 6".=C2=A0=
 If
>             I run "hwclock", it says it can't find the hwclock. Does
>             anyone know how to set the time in a non-volatile way such
>             that it won't be "Aug 6" after a power cycle.
>
>         Rob
>
>
>         *Bootup Console Log*
>         [ =C2=A0OK =C2=A0] Found device /dev/mmcblk0p1.
>         [ =C2=A0OK =C2=A0] Found device /dev/mmcblk0p4.
>         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting File System Check on=
 /dev/mmcblk0p1...
>         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting File System Check on=
 /dev/mmcblk0p4...
>         [ =C2=A0OK =C2=A0] Started File System Check on /dev/mmcblk0p1.
>         =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Mounting /uboot...
>         [ =C2=A0OK =C2=A0] Mounted /uboot.
>         [FAILED] Failed to start File System Check on /dev/mmcblk0p4.
>         See 'systemctl status systemd-fsck@dev-mmcblk0p4.service' for
>         details.
>         [DEPEND] Dependency failed for /data.
>         [DEPEND] Dependency failed for Local File Systems.
>         [DEPEND] Dependency failed for Grow File System on /data.
>         [ =C2=A0OK =C2=A0] Stopped Dispatch Password =E2=80=A6ts to Con=
sole Directory Watch.
>         [ =C2=A0OK =C2=A0] Stopped Forward Password R=E2=80=A6uests to =
Wall Directory Watch.
>
>         *hwclock output*
>         sh-5.0# hwclock --verbose
>         hwclock from util-linux 2.34
>         System Time: 1628268135.768399
>         Trying to open: /dev/rtc0
>         Trying to open: /dev/rtc
>         Trying to open: /dev/misc/rtc
>         No usable clock interface found.
>         hwclock: Cannot access the Hardware Clock via any known method.
>         _______________________________________________
>         USRP-users mailing list -- usrp-users@lists.ettus.com
>         To unsubscribe send an email to usrp-users-leave@lists.ettus.co=
m
>
>
> _______________________________________________
> USRP-users mailing list --usrp-users@lists.ettus.com
> To unsubscribe send an email tousrp-users-leave@lists.ettus.com

--------------3KJ4va9nRCLAlQN6M0rQ7JVy
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2021-11-12 10:37, Rob Kossler wrote=
:<br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmai=
l.com">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <div dir=3D"ltr">Thanks Jonathon,
        <div>This morning, I discovered that after writing the file
          system image with bmaptool,</div>
        <div>
          <ul>
            <li>if I immediately pull the SD card from the host card
              reader and insert it into the E310, it boots up ok</li>
            <li>If I instead pull the SD card and re-insert it right
              away in the host card reader (to force auto-remount), do
              nothing, then click to eject the SD card and insert in the
              E310. It does not boot up!=C2=A0 The host (Ubuntu 20.04) mu=
st
              do something to the SD card by simply mounting and
              ejecting the SD card. Perhaps it has something to do with
              the Data partition being an expandable partition?</li>
          </ul>
          <div>Any ideas on this? The reason for wanting to re-mount the
            SD card in the host system right away is to configure the
            /data/network/eth0.network interface to change it from DHCP
            to Static IP. At first I speculated that re-writing this
            file on the host was causing the issue, but later I
            determined that just the mount/eject sequence causes the
            problem.</div>
        </div>
        <div><br>
        </div>
        <div>Also, any ideas on how I can fix the "date/time" so that it
          doesn't always come up "Aug 6"?</div>
        <div><br>
        </div>
        <div>Rob</div>
      </div>
    </blockquote>
    According to the schematics, there IS an RTC chip on the E310, so my
    guess is that the system image didn't include the driver for it.<br>
    <br>
    Let me check with R&amp;D.<br>
    <br>
    <blockquote type=3D"cite"
cite=3D"mid:CAB__hTQxDvfrm5Qr4vHmy_4mKYSKOAO+8oYqT37f5poqKjtiMg@mail.gmai=
l.com">
      <div dir=3D"ltr">
        <div><br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 11, 2021 at 6:2=
0
          PM Jonathon Pendlum &lt;<a
            href=3D"mailto:jonathon.pendlum@ettus.com"
            moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">jona=
thon.pendlum@ettus.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
          0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          <div dir=3D"auto">Hey Rob,
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">Did you use bmaptool to write the image to
              your SD card? I ran into the same issue when using
              bmaptool. I switched to using dd instead and that fixed
              the issue.</div>
            <div dir=3D"auto"><br>
            </div>
            <div dir=3D"auto">Jonathon</div>
          </div>
          <br>
          <div class=3D"gmail_quote">
            <div dir=3D"ltr" class=3D"gmail_attr">On Thu, Nov 11, 2021,
              18:00 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"
                target=3D"_blank" moz-do-not-send=3D"true"
                class=3D"moz-txt-link-freetext">rkossler@nd.edu</a>&gt;
              wrote:<br>
            </div>
            <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
              0.8ex;border-left:1px solid
              rgb(204,204,204);padding-left:1ex">
              <div dir=3D"ltr">Hi,
                <div>I'm having some issues with my E310 related to
                  booting up the file system (UHD 4.1 file system loaded
                  using bmaptool). Any help appreciated!</div>
                <div>
                  <ul>
                    <li>Issue 1: during boot up, E310 linux fails
                      mounting the /data partition and consequently
                      doesn't configure the Ethernet correctly (such
                      that I can't login via ssh) (see below startup log
                      from console window).=C2=A0</li>
                    <ul>
                      <li>Note that I can look at the micro SD card on
                        my Ubuntu host and I see 4 partitions: /uboot,
                        /data, &amp; the 2 OS partitions.=C2=A0 Everythin=
g
                        looks OK.=C2=A0</li>
                      <li>I'm starting to suspect a bad micro SD card,
                        but I don't have solid reasoning for that.</li>
                    </ul>
                    <li>Issue 2: when I'm in this failed startup state,
                      I can use "ip addr add" to configure the eth0
                      device but I can't figure out how to restart the
                      sshd so that I can ssh into it (note I can ssh out
                      just fine after setting the IP addr). Does anyone
                      know how to do so?</li>
                    <li>Issue 3: I can't figure out how to set the
                      real-time clock.=C2=A0 If I run "date" after bootup=
, it
                      shows "Aug 6".=C2=A0 I can fix this, but upon reboo=
t,
                      it is back to "Aug 6".=C2=A0 If I run "hwclock", it
                      says it can't find the hwclock. Does anyone know
                      how to set the time in a non-volatile way such
                      that it won't be "Aug 6" after a power cycle.</li>
                  </ul>
                  <div>Rob</div>
                  <div><br>
                  </div>
                  <div><br>
                  </div>
                  <div><b>Bootup Console Log</b></div>
                  <div><font face=3D"monospace">[ =C2=A0OK =C2=A0] Found =
device
                      /dev/mmcblk0p1.<br>
                      [ =C2=A0OK =C2=A0] Found device /dev/mmcblk0p4.<br>
                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting File Sys=
tem Check on
                      /dev/mmcblk0p1...<br>
                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Starting File Sys=
tem Check on
                      /dev/mmcblk0p4...<br>
                      [ =C2=A0OK =C2=A0] Started File System Check on
                      /dev/mmcblk0p1.<br>
                      =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Mounting /uboot..=
.<br>
                      [ =C2=A0OK =C2=A0] Mounted /uboot.<br>
                      [<font color=3D"#ff0000">FAILED</font>] Failed to
                      start File System Check on /dev/mmcblk0p4.<br>
                      See 'systemctl status
                      <a class=3D"moz-txt-link-abbreviated" href=3D"mailt=
o:systemd-fsck@dev-mmcblk0p4.service">systemd-fsck@dev-mmcblk0p4.service<=
/a>' for details.<br>
                      [DEPEND] Dependency failed for /data.<br>
                      [DEPEND] Dependency failed for Local File Systems.<=
br>
                      [DEPEND] Dependency failed for Grow File System on
                      /data.<br>
                      [ =C2=A0OK =C2=A0] Stopped Dispatch Password =E2=80=
=A6ts to Console
                      Directory Watch.<br>
                      [ =C2=A0OK =C2=A0] Stopped Forward Password R=E2=80=
=A6uests to Wall
                      Directory Watch.</font><br>
                  </div>
                </div>
                <div><font face=3D"monospace"><br>
                  </font></div>
                <div><font face=3D"monospace"><b>hwclock output</b></font=
></div>
                <div><font face=3D"monospace">sh-5.0# hwclock --verbose<b=
r>
                    hwclock from util-linux 2.34<br>
                    System Time: 1628268135.768399<br>
                    Trying to open: /dev/rtc0<br>
                    Trying to open: /dev/rtc<br>
                    Trying to open: /dev/misc/rtc<br>
                    No usable clock interface found.<br>
                    hwclock: Cannot access the Hardware Clock via any
                    known method.<br>
                  </font></div>
              </div>
              _______________________________________________<br>
              USRP-users mailing list -- <a
                href=3D"mailto:usrp-users@lists.ettus.com"
                rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"t=
rue"
                class=3D"moz-txt-link-freetext">usrp-users@lists.ettus.co=
m</a><br>
              To unsubscribe send an email to <a
                href=3D"mailto:usrp-users-leave@lists.ettus.com"
                rel=3D"noreferrer" target=3D"_blank" moz-do-not-send=3D"t=
rue"
                class=3D"moz-txt-link-freetext">usrp-users-leave@lists.et=
tus.com</a><br>
            </blockquote>
          </div>
        </blockquote>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <pre class=3D"moz-quote-pre" wrap=3D"">____________________________=
___________________
USRP-users mailing list -- <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a class=3D"moz-txt-link-abbreviated" hre=
f=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.ettu=
s.com</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>
--------------3KJ4va9nRCLAlQN6M0rQ7JVy--

--===============3766227216977099778==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3766227216977099778==--
