Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 245F13754F9
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 15:42:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 19A85383F42
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 09:42:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="HSMJ0qLb";
	dkim-atps=neutral
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by mm2.emwd.com (Postfix) with ESMTPS id 5DC54383D5C
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 09:41:23 -0400 (EDT)
Received: by mail-oi1-f170.google.com with SMTP id d21so5483281oic.11
        for <usrp-users@lists.ettus.com>; Thu, 06 May 2021 06:41:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=RaDjlhbr4qdcpZvmqQZSdkVu6BsCKRuNOYyXrn88aBc=;
        b=HSMJ0qLbzg1IdaaVk6eps8Ul48nhdPYhDsRaQTxltERvdpf7xWSwLaB99jq1x64Ce4
         q8EhS54ulf35ZLxAthv82/D+IenOvPwFVOvHajtezQQbod2R0u9oGUvmE812E/XK/RMJ
         mAtGmA0TfikRyA25nTe2w1l2B6wcHQZdf3fhJ7dwwaOfjywPZHBEksM0DCsa2XfI4Bxt
         +lrnCMKdt+xtlViY5zOt63jhmVkZu/g5hSoWm0aAuwd3xhb0kLp/kVoxq8EN6+VXnXyl
         Y9vunEqKO9yYgAX21tVRh5D4mpvKZ/p8xcr5ZR2RYwpYP9qqAB6kGliT2T5aBrNES234
         /H+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=RaDjlhbr4qdcpZvmqQZSdkVu6BsCKRuNOYyXrn88aBc=;
        b=kgFHr2bgE7IlDkyvvMBy77u3sOSMltPvU9P0ydUZ9k30E29KTx0XYhfi6irNuXrvps
         f0EdbGbnmBfelmovxfaVVAhsSxJ4Rt8Tjc1kEBw3T9lwz4qX5XBRHZy4r3NhjRbJSm3f
         A8oXsFEZzvEWYyGCgzd7IAK4weArDDAi8z53vT4f7VFcv6ZUsrQUhdSFKmhgDvZkSzXX
         42mn9PauUpa0eKjPbRmvvTm2sRL6gb2HMGd5eDt/cnSOJNb99tWsSxmbBX16Mzd+zRK5
         fS9TqEHtEE7uJsTo2/BLirML49ByqXsrwmtbKS6CoE4e+gQhlOvIum06qX0uAhqEdAeG
         EHzg==
X-Gm-Message-State: AOAM530uPKDUxQFs4wdFMg1txOnDaL6uR0oavfcHDR1LFe2gYPrzauCB
	a8gfHIhLCH0rOm9/ztA8jsefcLIkZBoK9ioTYyJMXdiukEADqQ==
X-Google-Smtp-Source: ABdhPJy6hUW/kCkP1N47dY4rOvwLZxdBC/BdYQ5h/40VVCsndgfcMtF3bODwUAUhEkwU4uacZ5Drv6TrNzhRtxNROZY=
X-Received: by 2002:aca:75c6:: with SMTP id q189mr10887126oic.124.1620308482363;
 Thu, 06 May 2021 06:41:22 -0700 (PDT)
MIME-Version: 1.0
References: <70113035fa85437b8ad159f0e11b5941@heig-vd.ch>
In-Reply-To: <70113035fa85437b8ad159f0e11b5941@heig-vd.ch>
From: Rob Kossler <rkossler@nd.edu>
Date: Thu, 6 May 2021 09:41:11 -0400
Message-ID: <CAB__hTRZq-zXvZ6sxKRYb8GChWSYMWXeBfttX4PHd5qiYmv=VA@mail.gmail.com>
To: =?UTF-8?Q?Burella_P=C3=A9rez_Juli=C3=A1n_Mariano?= <julian.burellaperez@heig-vd.ch>
Message-ID-Hash: 3ZKP34KT2S3RH54JZK4JUBZSFDJ6JHC4
X-Message-ID-Hash: 3ZKP34KT2S3RH54JZK4JUBZSFDJ6JHC4
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [N320] Using white rabbit with OPNT Master Switch
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3ZKP34KT2S3RH54JZK4JUBZSFDJ6JHC4/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5017762358990461783=="

--===============5017762358990461783==
Content-Type: multipart/alternative; boundary="00000000000084db2d05c1a977ec"

--00000000000084db2d05c1a977ec
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Juli=C3=A1n,
I am also getting these same errors and have been unsuccessful getting WR
working on either 3.15 or 4.0.  I have asked this list to see if anyone is
presently using WR successfully, but have not had any replies.  I know that
Ettus is presently looking into WR issues.
Rob


On Thu, May 6, 2021 at 8:57 AM Burella P=C3=A9rez Juli=C3=A1n Mariano <
julian.burellaperez@heig-vd.ch> wrote:

> Hello,
>
> We have a setup where we're trying to sync a N320 (bitstream WX) using
> White rabbit with a OPNT Timing Switch as Master configured as Free Runni=
ng
> Master.
>
>
> +------------------------+                        +---------------------+
> |                                 |             SFP0  |
>          |
> | OPNT Timing Switch   |---------------- |        N320             |
> |                                 |                        |
>                |
> +------------------------+                        +---------------------+
>
>
> We are trying to run test program `test_pps_input` in order to see if PPS
> is working as expected.
> When running without any argument, the PPS is correctly detected, I
> suppose it is because it uses as time source `internal`.
> Then when I try to use `sfp0` as a time source, I observed 2 different
> behaviors:
>
> Command run: ./test_pps_input
> --args=3D"clock_source=3Dinternal,time_source=3Dsfp0" --source=3Dsfp0
>
> 1. I get the following message:
>
> [ERROR] [RPC] TDC Failed to reset.
> [INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!
> [ERROR] [MPM.Sync-0] TDC Failed to Reset! Check your clocks! Status: 0x0
> [ERROR] [MPM.RPCServer] init() failed with error: TDC Failed to reset.
> Error: RuntimeError: Error during RPC call to `init'. Error message: TDC
> Failed to reset.
>
> And after this message, the PPS led does not blink anymore.
>
> 2.
> If I then run again the test after failing previously, this time I don't
> get any error message but a exception is thrown because no PPS was detect=
ed.
>
> We know that the OPNT Timing switch works when used with a OPNT node,
> where we get PPS and 10MHz signals.
>
> Do you think that there could be an issue when N320 and OPNT Switch try t=
o
> sync together, or do you have any idea of what I could explore ?
>
> Thank you in advance for any help you can provide me with.
>
> Best,
> Juli=C3=A1n
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000084db2d05c1a977ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Juli=C3=A1n,</div><div dir=3D"ltr">I a=
m also getting these same errors and have been unsuccessful getting WR work=
ing on either 3.15 or 4.0.=C2=A0 I have asked this list to see if anyone is=
 presently using WR successfully, but have not had any replies.=C2=A0 I kno=
w that Ettus is presently looking into WR issues.</div><div dir=3D"ltr">Rob=
<br><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Thu, May 6, 2021 at 8:57 AM Burella P=C3=A9rez Juli=
=C3=A1n Mariano &lt;<a href=3D"mailto:julian.burellaperez@heig-vd.ch" targe=
t=3D"_blank">julian.burellaperez@heig-vd.ch</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
We have a setup where we&#39;re trying to sync a N320 (bitstream WX) using =
White rabbit with a OPNT Timing Switch as Master configured as Free Running=
 Master.<br>
<br>
<br>
+------------------------+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 +---------------------+<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0SFP0=C2=A0 |=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
| OPNT Timing Switch=C2=A0 =C2=A0|---------------- |=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 N320=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0|<br>
+------------------------+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 +---------------------+<br>
<br>
<br>
We are trying to run test program `test_pps_input` in order to see if PPS i=
s working as expected.<br>
When running without any argument, the PPS is correctly detected, I suppose=
 it is because it uses as time source `internal`.<br>
Then when I try to use `sfp0` as a time source, I observed 2 different beha=
viors:<br>
<br>
Command run: ./test_pps_input --args=3D&quot;clock_source=3Dinternal,time_s=
ource=3Dsfp0&quot; --source=3Dsfp0<br>
<br>
1. I get the following message:<br>
<br>
[ERROR] [RPC] TDC Failed to reset.<br>
[INFO] [MPM.Rhodium-0.init.LMK04828] LMK initialized and locked!<br>
[ERROR] [MPM.Sync-0] TDC Failed to Reset! Check your clocks! Status: 0x0<br=
>
[ERROR] [MPM.RPCServer] init() failed with error: TDC Failed to reset.<br>
Error: RuntimeError: Error during RPC call to `init&#39;. Error message: TD=
C Failed to reset.<br>
<br>
And after this message, the PPS led does not blink anymore.<br>
<br>
2.<br>
If I then run again the test after failing previously, this time I don&#39;=
t get any error message but a exception is thrown because no PPS was detect=
ed.<br>
<br>
We know that the OPNT Timing switch works when used with a OPNT node, where=
 we get PPS and 10MHz signals.<br>
<br>
Do you think that there could be an issue when N320 and OPNT Switch try to =
sync together, or do you have any idea of what I could explore ?<br>
<br>
Thank you in advance for any help you can provide me with.<br>
<br>
Best,<br>
Juli=C3=A1n<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</div>

--00000000000084db2d05c1a977ec--

--===============5017762358990461783==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5017762358990461783==--
