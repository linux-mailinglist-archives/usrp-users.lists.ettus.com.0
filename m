Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD9A4AAD8B
	for <lists+usrp-users@lfdr.de>; Sun,  6 Feb 2022 03:32:49 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 30F4F3863E5
	for <lists+usrp-users@lfdr.de>; Sat,  5 Feb 2022 21:32:48 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="Q4YEU2HU";
	dkim-atps=neutral
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id F28EA3845A5
	for <usrp-users@lists.ettus.com>; Sat,  5 Feb 2022 21:31:52 -0500 (EST)
Received: by mail-yb1-f174.google.com with SMTP id 124so29696387ybw.6
        for <usrp-users@lists.ettus.com>; Sat, 05 Feb 2022 18:31:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UHEvlaCd31JNGiDHwKW+XMoS3fwxHyOQAAIPfDIjaZY=;
        b=Q4YEU2HUFY/rTP+rhv12CM8vKjuy+/bzrQ/kXpeYzQaUkJK2QF37/pACVW0dMk/CHj
         EZMnnSJe6Smvb28xJuP4U6/rL7jF4gzvtVy3YkyOl1rXn15ZOK+F61ryKkizavxfPUTr
         610rmxbDFKd+J0FTu1eD4tFidsM3FCrZjalq6dxnLby1xLzDIAYa+vAEAryrJfaivrFB
         otL8DGXZLO3L/Q3jaLN/3GGBZix0D6CDUJaggzZp0P9jBKQly53wmd+QDZQpF5w9HLGu
         Q/PJBDuic58WrTMZVPbXDSNhkSKJMHSZ18QCtjJHzklLx1tMrh/x/twirqV+bcTBT+JE
         SzHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UHEvlaCd31JNGiDHwKW+XMoS3fwxHyOQAAIPfDIjaZY=;
        b=eVdzkCsiyjYNqamDTyW4BReK2Ezwq24Bj75J6F2q1rnr1XsYL/yczDyk8mqA4YcFpq
         2bRrfYn0odGK1fd+r6adZmnRwFLv9sng260AoXJ1//xeV3U/BpLjay1FRxdeH+FxtXYp
         KBOwut/QX8jsdfUybeQ5aIEA1pXZifFP/3gcjDz3aOgidBieqGDsJWX/8lTE6nP8g4ex
         DME9cvxKoZi6ulVFaP/tiLIIxjQl9u2RUzlYleGqPbpMUH7AZGKRgah2M6XWCaX1YBHG
         3EzkkMZr9lDhFZEHIsBYY7FASbzsw+MBUuQdF/b7DQDiEUtzP/APMIQvXKvwAjloUjey
         k5tw==
X-Gm-Message-State: AOAM530aTH/Pycfyj7VNXesmeTDMqEgqvFCqz5DvHUxZxTXFyUTX5Lon
	YOhV3I4htHlAIv5ycJJ09p6JXrOz9IerWaxvNhiD3hBUFcStH/Qn
X-Google-Smtp-Source: ABdhPJx2YIftD7aYAwfMvyk0SbgV+cpfAL56rORhb99UDevMsTkT/5UxtuEQHggSYMMGl25lYyXYPHYWPTo2Dy6ax80=
X-Received: by 2002:a25:32c7:: with SMTP id y190mr3034874yby.719.1644114712272;
 Sat, 05 Feb 2022 18:31:52 -0800 (PST)
MIME-Version: 1.0
References: <CAA=S3PsPWHqfaPe-_HqwoOGqvJ2uA_59h9AKiTsMcyZFA7mv3Q@mail.gmail.com>
In-Reply-To: <CAA=S3PsPWHqfaPe-_HqwoOGqvJ2uA_59h9AKiTsMcyZFA7mv3Q@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 5 Feb 2022 20:31:37 -0600
Message-ID: <CAFche=h4Eo-no7Eqfey_HYO84XuWsdYqz6xNQXj+bUB2OGrwtA@mail.gmail.com>
To: sp h <stackprogramer@gmail.com>
Message-ID-Hash: DZDOE4O4D2MX5X24VJQVQ6MZ6UNERROW
X-Message-ID-Hash: DZDOE4O4D2MX5X24VJQVQ6MZ6UNERROW
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: what's BSP connections in USRP RFNOC image core files?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DZDOE4O4D2MX5X24VJQVQ6MZ6UNERROW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1759757610702951789=="

--===============1759757610702951789==
Content-Type: multipart/alternative; boundary="0000000000006539ca05d75049b5"

--0000000000006539ca05d75049b5
Content-Type: text/plain; charset="UTF-8"

The BSP (board support package) connections are the product-specific ports,
like the radio, timekeeper, DRAM, etc. You can identify them because they
always go to or from the "_device_". Clocks also come from the _device_.
You can see a list of ports on each product by looking at the BSP YAML
files here:
https://github.com/EttusResearch/uhddev/tree/master/host/include/uhd/rfnoc/core

The other connections are between blocks, or between blocks and stream
endpoints.

Wade

On Sat, Feb 5, 2022 at 12:28 AM sp h <stackprogramer@gmail.com> wrote:

> Hi, In RFNOC image core files I saw that BSP connection?
> what's them and what's the difference between ordinary connections and BSP
> connections...
>
> thanks in advance
>
> *BSP connections:*
> # BSP Connections
>   - { srcblk: radio0, srcport: ctrl_port, dstblk: _device_, dstport:
> ctrlport_radio0 }
>   - { srcblk: radio1, srcport: ctrl_port, dstblk: _device_, dstport:
> ctrlport_radio1 }
>   - { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: dram }
>   - { srcblk: _device_, srcport: x300_radio0, dstblk: radio0, dstport:
> x300_radio }
>   - { srcblk: _device_, srcport: x300_radio1, dstblk: radio1, dstport:
> x300_radio }
>   - { srcblk: _device_, srcport: time_keeper, dstblk: radio0, dstport:
> time_keeper }
>   - { srcblk: _device_, srcport: time_keeper, dstblk: radio1, dstport:
> time_keeper }
>
>
> *Other connections:*
>  # ep0 to radio0(0) - RFA TX
>   - { srcblk: ep0,    srcport: out0,  dstblk: duc0,   dstport: in_0 }
>   - { srcblk: duc0,   srcport: out_0, dstblk: radio0, dstport: in_0 }
>   # radio(0) to ep0 - RFA RX
>   - { srcblk: radio0, srcport: out_0, dstblk: ddc0,   dstport: in_0 }
>   - { srcblk: ddc0,   srcport: out_0, dstblk: ep0,    dstport: in0  }
>   # radio0(1) to ep1 - RFA RX
>   - { srcblk: radio0, srcport: out_1, dstblk: ddc0,   dstport: in_1 }
>   - { srcblk: ddc0,   srcport: out_1, dstblk: ep1,    dstport: in0  }
>   # ep2 to radio1(0) - RFA TX
>   - { srcblk: ep2,    srcport: out0,  dstblk: duc1,   dstport: in_0 }
>   - { srcblk: duc1,   srcport: out_0, dstblk: radio1, dstport: in_0 }
>   # radio1(0) to ep2 - RFA RX
>   - { srcblk: radio1, srcport: out_0, dstblk: ddc1,   dstport: in_0 }
>   - { srcblk: ddc1,   srcport: out_0, dstblk: ep2,    dstport: in0  }
>   # radio0(1) to ep3 - RFA RX
>   - { srcblk: radio1, srcport: out_1, dstblk: ddc1,   dstport: in_1 }
>   - { srcblk: ddc1,   srcport: out_1, dstblk: ep3,    dstport: in0  }
>   # ep4 to replay0(0)
>   - { srcblk: ep4,     srcport: out0,  dstblk: replay0, dstport: in_0 }
>   # replay0(0) to ep4
>   - { srcblk: replay0, srcport: out_0, dstblk: ep4,     dstport: in0  }
>   # ep5 to replay0(1)
>   - { srcblk: ep5,     srcport: out0,  dstblk: replay0, dstport: in_1 }
>   # replay0(1) to ep5
>   - { srcblk: replay0, srcport: out_1, dstblk: ep5,     dstport: in0  }
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000006539ca05d75049b5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The BSP (board support package) connections are the p=
roduct-specific ports, like the radio, timekeeper, DRAM, etc. You can ident=
ify them because they always go to or from the &quot;_device_&quot;. Clocks=
 also come from the _device_. You can see a list of ports on each product b=
y looking at the BSP YAML files here: <a href=3D"https://github.com/EttusRe=
search/uhddev/tree/master/host/include/uhd/rfnoc/core">https://github.com/E=
ttusResearch/uhddev/tree/master/host/include/uhd/rfnoc/core</a></div><div><=
br></div><div>The other connections are between blocks, or between blocks a=
nd stream endpoints.<br></div><div><br></div><div>Wade<br></div></div><br><=
div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Feb=
 5, 2022 at 12:28 AM sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com">s=
tackprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hi, In RFNOC image core files I saw=
 that BSP connection?<div>what&#39;s them and what&#39;s=C2=A0the differenc=
e=C2=A0between ordinary=C2=A0connections and BSP connections...</div><div><=
br></div><div>thanks in advance</div><div><br></div><div><b>BSP connections=
:</b></div><div># BSP Connections<br>=C2=A0 - { srcblk: radio0, srcport: ct=
rl_port, dstblk: _device_, dstport: ctrlport_radio0 }<br>=C2=A0 - { srcblk:=
 radio1, srcport: ctrl_port, dstblk: _device_, dstport: ctrlport_radio1 }<b=
r>=C2=A0 - { srcblk: replay0, srcport: axi_ram, dstblk: _device_, dstport: =
dram }<br>=C2=A0 - { srcblk: _device_, srcport: x300_radio0, dstblk: radio0=
, dstport: x300_radio }<br>=C2=A0 - { srcblk: _device_, srcport: x300_radio=
1, dstblk: radio1, dstport: x300_radio }<br>=C2=A0 - { srcblk: _device_, sr=
cport: time_keeper, dstblk: radio0, dstport: time_keeper }<br>=C2=A0 - { sr=
cblk: _device_, srcport: time_keeper, dstblk: radio1, dstport: time_keeper =
}<br><b><br></b></div><div><br></div><div><b>Other connections:</b></div><d=
iv>=C2=A0# ep0 to radio0(0) - RFA TX<br>=C2=A0 - { srcblk: ep0, =C2=A0 =C2=
=A0srcport: out0, =C2=A0dstblk: duc0, =C2=A0 dstport: in_0 }<br>=C2=A0 - { =
srcblk: duc0, =C2=A0 srcport: out_0, dstblk: radio0, dstport: in_0 }<br>=C2=
=A0 # radio(0) to ep0 - RFA RX<br>=C2=A0 - { srcblk: radio0, srcport: out_0=
, dstblk: ddc0, =C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 s=
rcport: out_0, dstblk: ep0, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # r=
adio0(1) to ep1 - RFA RX<br>=C2=A0 - { srcblk: radio0, srcport: out_1, dstb=
lk: ddc0, =C2=A0 dstport: in_1 }<br>=C2=A0 - { srcblk: ddc0, =C2=A0 srcport=
: out_1, dstblk: ep1, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # ep2 to =
radio1(0) - RFA TX<br>=C2=A0 - { srcblk: ep2, =C2=A0 =C2=A0srcport: out0, =
=C2=A0dstblk: duc1, =C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: duc1, =C2=
=A0 srcport: out_0, dstblk: radio1, dstport: in_0 }<br>=C2=A0 # radio1(0) t=
o ep2 - RFA RX<br>=C2=A0 - { srcblk: radio1, srcport: out_0, dstblk: ddc1, =
=C2=A0 dstport: in_0 }<br>=C2=A0 - { srcblk: ddc1, =C2=A0 srcport: out_0, d=
stblk: ep2, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # radio0(1) to ep3 =
- RFA RX<br>=C2=A0 - { srcblk: radio1, srcport: out_1, dstblk: ddc1, =C2=A0=
 dstport: in_1 }<br>=C2=A0 - { srcblk: ddc1, =C2=A0 srcport: out_1, dstblk:=
 ep3, =C2=A0 =C2=A0dstport: in0 =C2=A0}<br>=C2=A0 # ep4 to replay0(0)<br>=
=C2=A0 - { srcblk: ep4, =C2=A0 =C2=A0 srcport: out0, =C2=A0dstblk: replay0,=
 dstport: in_0 }<br>=C2=A0 # replay0(0) to ep4<br>=C2=A0 - { srcblk: replay=
0, srcport: out_0, dstblk: ep4, =C2=A0 =C2=A0 dstport: in0 =C2=A0}<br>=C2=
=A0 # ep5 to replay0(1)<br>=C2=A0 - { srcblk: ep5, =C2=A0 =C2=A0 srcport: o=
ut0, =C2=A0dstblk: replay0, dstport: in_1 }<br>=C2=A0 # replay0(1) to ep5<b=
r>=C2=A0 - { srcblk: replay0, srcport: out_1, dstblk: ep5, =C2=A0 =C2=A0 ds=
tport: in0 =C2=A0}<b><br></b></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000006539ca05d75049b5--

--===============1759757610702951789==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1759757610702951789==--
