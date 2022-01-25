Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 854DB49A22B
	for <lists+usrp-users@lfdr.de>; Tue, 25 Jan 2022 02:54:52 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 15EA5383064
	for <lists+usrp-users@lfdr.de>; Mon, 24 Jan 2022 20:54:51 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ncsu.edu header.i=@ncsu.edu header.b="aB8sv9MP";
	dkim-atps=neutral
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id E45D93844B2
	for <USRP-users@lists.ettus.com>; Mon, 24 Jan 2022 20:53:59 -0500 (EST)
Received: by mail-yb1-f177.google.com with SMTP id v186so57262626ybg.1
        for <USRP-users@lists.ettus.com>; Mon, 24 Jan 2022 17:53:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncsu.edu; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=IjDhVohU1SUXcIj3ge502BNeDjxa6bQ53xxRsgvcwlg=;
        b=aB8sv9MPcKxF+fyhsBCxytdGCPGnm0T/J0QW+aO2tYA9wFlGaRvcgyOqcyrBVSoee+
         6dy1k1ppRo3abQyKn3hlGeoASWMlMhC+ZtXEJ3c4SnFlJySx90ktKk1xfre/W1qkam7t
         GaWD0sSdmCVwlbxRtV9JEu4yCKOBLjWBRDM2rqG+ZhcOF6yzOeMXzQZFU5hFiTKsPWQW
         5bxODcDF0VwYvtb5lCvaMwl5NCjbyCwZ96OTKgXBkGARkV1V0MddhzDITzJGysAjVrID
         Q9W/YQsvpJpJJbaHKhu9ZsfF+WKY5zLWOrehPrhXNGeIi+r6QV10//USFF+aHBcRAJmo
         OMBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=IjDhVohU1SUXcIj3ge502BNeDjxa6bQ53xxRsgvcwlg=;
        b=rWJomzBeHkXyfwY9Nvn7qFnqwSP7xNSd6zWB9mZv8Vqs5VhMeWMbmthu1Fy4hoOyju
         hQQxDR94g9GcecdImlH2xsrkx7Det73vsXZaiudzbQPtyLTuQyW70JiJgoqoMTnXavkn
         x0jskfC5x93UfkhibWmqqM0umBQpBnqMGpBEa7/vR/bihQbAaXfeSo/JMGx/FnKIEqVJ
         1qoup6SmcAV5bqrXopSOA8WLBpdA7XqSOzowfyRT6nrAVQpKaoKll18YSpwm5adA3okz
         WoSXPIZ+ImSpEqhrltYlyh6Spm519FGPoHuJZuW6IUURZ4RkL1g/W9BAp5t8+rm1Uv8W
         Uisw==
X-Gm-Message-State: AOAM532fQ3V+iN7U9GbzVCJbtzq/fVfd3R2Mi6OcX7d2EOR0Djwghpx8
	Pn3GwK0M4/kBRr8l07+O5WoNFt9yF7R+ITrHnxsUMNX3D3B0/w==
X-Google-Smtp-Source: ABdhPJwwNsE6ddzRbXeZ2BsW4obx+o6k97tIcUeVVHm4J0iZHM4uS69Vy/uY4X+vh7oqe6QmX+ggth0HigrKus9XE5Y=
X-Received: by 2002:a25:418f:: with SMTP id o137mr25674454yba.97.1643075639065;
 Mon, 24 Jan 2022 17:53:59 -0800 (PST)
MIME-Version: 1.0
Date: Mon, 24 Jan 2022 20:53:48 -0500
Message-ID: <CAKhiL6XkCaqTqbx3S3AbCUh1Cdkg2JQ-hQwp367K2DkogscniQ@mail.gmail.com>
To: USRP-users@lists.ettus.com
Message-ID-Hash: 422WPNFU4UJT33DHGQQ5MUMJD7DKLXC7
X-Message-ID-Hash: 422WPNFU4UJT33DHGQQ5MUMJD7DKLXC7
X-MailFrom: ljsmith9@ncsu.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Synchronization of two USRP x310s
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/422WPNFU4UJT33DHGQQ5MUMJD7DKLXC7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: LoyCurtis Smith via USRP-users <usrp-users@lists.ettus.com>
Reply-To: LoyCurtis Smith <ljsmith9@ncsu.edu>
Content-Type: multipart/mixed; boundary="===============3847716847790395325=="

--===============3847716847790395325==
Content-Type: multipart/alternative; boundary="000000000000ce66fd05d65e5b59"

--000000000000ce66fd05d65e5b59
Content-Type: text/plain; charset="UTF-8"

My system setup is as follows:

   - 2 x USRP x310 with CBX-120 daughterboard
   - 2 x Ubuntu 18.04 workstation
   - 2 x Taoglas 45.8113 antenna
   - 2 x  Internal Reference Clock (Master Clock set at 184.32 MHz)
   - 2 x Internal Time source
   - 2 x Connected via 1 Gig-E interfaces
   - 2 x Using UHD 4.1

The devices have been in two setups: stacked and a few inches apart.

I am attempting to deploy a 5G network using the openairinterface (OAI)
software system. Both devices synchronize initially, then they fail. With
openairinterface, I am using frequency offset compensation at the UE. Its a
useful parameter when running over the air and/or without an external
clock/time source (
https://gitlab.eurecom.fr/oai/openairinterface5g/blob/develop/doc/RUNMODEM.md
)

Is there a way to synchronize the reference clock/timing of both USRP x310s
over the air? In the future, I will be attempting to connect a third USRP
x310. My setup will include one base station and two user devices.

V/r

LoyCurtis Smith

--000000000000ce66fd05d65e5b59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>My system setup is as follows:=C2=A0</div><div><ul><l=
i>2 x USRP x310 with CBX-120 daughterboard</li><li>2 x Ubuntu 18.04 worksta=
tion</li><li>2 x Taoglas 45.8113 antenna</li><li>2 x=C2=A0 Internal Referen=
ce Clock (Master Clock set at 184.32 MHz)</li><li>2 x Internal Time source=
=C2=A0</li><li>2 x Connected via 1 Gig-E interfaces</li><li>2 x Using UHD 4=
.1</li></ul><div>The devices have been in two setups: stacked and a few inc=
hes apart.=C2=A0</div><div><br></div><div>I am attempting to deploy a 5G ne=
twork using the openairinterface (OAI) software system. Both devices synchr=
onize initially, then they fail. With openairinterface, I am using frequenc=
y offset compensation at the UE. Its a useful parameter when running over t=
he air and/or without an external clock/time source (<a href=3D"https://git=
lab.eurecom.fr/oai/openairinterface5g/blob/develop/doc/RUNMODEM.md">https:/=
/gitlab.eurecom.fr/oai/openairinterface5g/blob/develop/doc/RUNMODEM.md</a>)=
</div><div><br></div><div>Is there a way to synchronize the reference clock=
/timing of both USRP x310s over the air? In the future, I will be attemptin=
g to connect a third USRP x310. My setup will include one base station and =
two user devices.=C2=A0</div><div><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"=
><font color=3D"#073763"><br></font></div><div dir=3D"ltr"><font color=3D"#=
073763">V/r</font><div><span style=3D"background-color:rgb(255,255,255)"><f=
ont color=3D"#073763"><br></font></span></div><div><span style=3D"backgroun=
d-color:rgb(255,255,255)"><font color=3D"#073763">LoyCurtis Smith</font></s=
pan></div></div></div></div></div></div></div></div>

--000000000000ce66fd05d65e5b59--

--===============3847716847790395325==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3847716847790395325==--
