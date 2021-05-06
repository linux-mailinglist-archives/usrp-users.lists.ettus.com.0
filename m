Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECD63759EB
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 20:00:39 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CB8883842BA
	for <lists+usrp-users@lfdr.de>; Thu,  6 May 2021 14:00:38 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=ettus-com.20150623.gappssmtp.com header.i=@ettus-com.20150623.gappssmtp.com header.b="f2g2Jb1s";
	dkim-atps=neutral
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	by mm2.emwd.com (Postfix) with ESMTPS id 77DA138424C
	for <usrp-users@lists.ettus.com>; Thu,  6 May 2021 13:59:49 -0400 (EDT)
Received: by mail-pf1-f181.google.com with SMTP id b15so5727726pfl.4
        for <usrp-users@lists.ettus.com>; Thu, 06 May 2021 10:59:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5MItSYsEEmM1LHpt8PTp4FbmfoEIq1G7Lz9YaCXqZAs=;
        b=f2g2Jb1s76cPoSMnU5JienC0XyNgPZqAI+Ap8C3xUjCvjhxnNGKi0GbOlQEvtZ3y7E
         A1Sx7TPH04SJsRbVhBSw6L5ILV8mTjQRddpRSh7JTMkun6Bl/iwOaor2xmNxtQDBicap
         fM8MjMPVHH3RfnaiVDZ7YSFvPA/KmSxtUbzfFLXdfveWCRBITRrjPZESjwLcXKM0m8QG
         Nu9fNh4ID824RSN45sdKe/D6CDpscNQtxGw49jXdbzjJ8fWVWKZec9ZkSnOdALm8BGIJ
         wvlOv2E0WmJLMmrgJSGAxzVTlPCMItQTNrcfa2bG/KSLWd9Zjjn+CzBnmI+sIQoeoXqP
         AtlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5MItSYsEEmM1LHpt8PTp4FbmfoEIq1G7Lz9YaCXqZAs=;
        b=tD905PhJ2yKWUOkplG7KKmHHGabJpxfAdgYQ2CSh0eiZqlU+mN1DCG40LBWBio53s8
         9v2pOSQgCD9s6sng1JicJSF2NtPbRM/rDreg2PwZSkiIxrTVhwItoVvQ9VaiAt1cGEj5
         0HOTBqrEp3AP58Nn3hjwc8Qkpq4180DW/wy771RtcHLyGd4+vEqJx9CqH6kw73Ct/cT3
         Ax/um3nInjGqylTFnNUGn8WBCU4SP2e8VmdqDWOjwvkrAZNtmbntECzzlERm9054KkV4
         8om6n0bPn/m6oypoqV9Zcsbm+x4uLKKK/cb/3+Gv7o6v0Ihgci4awhz712pHT533QhgM
         yhMw==
X-Gm-Message-State: AOAM530K9M+T0kSBVI6X7zv5l/ibJYdY+OvEuzpJsC7Dp6pm67jnaDY3
	IzymCr2x4zSVFFL256QvyfleFbGDfzeZ5pN8rk6hY30W
X-Google-Smtp-Source: ABdhPJw9LYqJA6bfTgAhwyY9B8HJLQ2DYoscQGeQPuha16vQb9tLNC53jvskWvvbchhmKz5SeoCMzXBGe3O+Zj7yUIs=
X-Received: by 2002:a62:6544:0:b029:261:14cc:b11d with SMTP id
 z65-20020a6265440000b029026114ccb11dmr5891720pfb.12.1620323988451; Thu, 06
 May 2021 10:59:48 -0700 (PDT)
MIME-Version: 1.0
References: <70113035fa85437b8ad159f0e11b5941@heig-vd.ch> <CAB__hTRZq-zXvZ6sxKRYb8GChWSYMWXeBfttX4PHd5qiYmv=VA@mail.gmail.com>
 <398c0b9b17644d049dc39b3cd4f4f99e@heig-vd.ch>
In-Reply-To: <398c0b9b17644d049dc39b3cd4f4f99e@heig-vd.ch>
From: Michael Dickens <michael.dickens@ettus.com>
Date: Thu, 6 May 2021 13:59:37 -0400
Message-ID: <CAGNhwTNueuM1NR8nxcYHWjHi9fey=xgp1KqAKm+uSujA-atHig@mail.gmail.com>
To: =?UTF-8?Q?Burella_P=C3=A9rez_Juli=C3=A1n_Mariano?= <julian.burellaperez@heig-vd.ch>
Message-ID-Hash: GBF46J7KOEG3JZ2HY5N3TASUGZIOXZ2U
X-Message-ID-Hash: GBF46J7KOEG3JZ2HY5N3TASUGZIOXZ2U
X-MailFrom: michael.dickens@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Rob Kossler <rkossler@nd.edu>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [N320] Using white rabbit with OPNT Master Switch
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GBF46J7KOEG3JZ2HY5N3TASUGZIOXZ2U/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8663861792351686425=="

--===============8663861792351686425==
Content-Type: multipart/alternative; boundary="000000000000c0c5e305c1ad13ef"

--000000000000c0c5e305c1ad13ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Juli=C3=A1n - I'm working on this issue for Ettus. I'll bring you into a
discussion off list; once we get a resolution we can post back here. - MLD


On Thu, May 6, 2021 at 1:54 PM Burella P=C3=A9rez Juli=C3=A1n Mariano <
julian.burellaperez@heig-vd.ch> wrote:

> Hi Rob,
>
> Thank you for your feedback !
>
> I am relieved to learn that I'm not the only user experience issues using
> WR with N32x boards.
> Where did you find out that Ettus is presently looking into WR issues ?
> I'm asking because I can see a different thread from 2019 (
> http://ettus.80997.x6.nabble.com/USRP-users-N320-XQ-image-issue-using-sfp=
0-as-time-source-td13973.html
> )
> Which as far as I can see, no fix is implemented in uhd:master.
>
> BTW, I work with uhd4.0 - commit cf570707a2.
> We tried 2 different N320 boards, both resulted in the same behavior.
>
> Best,
>
> Juli=C3=A1n
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> Juli=C3=A1n Mariano Burella P=C3=A9rez
> M.Sc.Eng. TIN, Embedded Systems
> Collaborateur Ra&D HES
> Prof.:          +41 24 557 62 84
> julian.burellaperez@heig-vd.ch<mailto:julian.burellaperez@heig-vd.ch>
> Haute =C3=89cole d'Ing=C3=A9nierie et de Gestion du Canton de Vaud
> Route de Cheseaux 1 - CP 521 - 1401 Yverdon-les-Bains
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> ________________________________
> De : Rob Kossler <rkossler@nd.edu>
> Envoy=C3=A9 : jeudi, 6 mai 2021 15:41:11
> =C3=80 : Burella P=C3=A9rez Juli=C3=A1n Mariano
> Cc : usrp-users@lists.ettus.com
> Objet : Re: [USRP-users] [N320] Using white rabbit with OPNT Master Switc=
h
>
> Hi Juli=C3=A1n,
> I am also getting these same errors and have been unsuccessful getting WR
> working on either 3.15 or 4.0.  I have asked this list to see if anyone i=
s
> presently using WR successfully, but have not had any replies.  I know th=
at
> Ettus is presently looking into WR issues.
> Rob
>
>
> On Thu, May 6, 2021 at 8:57 AM Burella P=C3=A9rez Juli=C3=A1n Mariano <
> julian.burellaperez@heig-vd.ch<mailto:julian.burellaperez@heig-vd.ch>>
> wrote:
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
> USRP-users mailing list -- usrp-users@lists.ettus.com<mailto:
> usrp-users@lists.ettus.com>
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com<mailto:
> usrp-users-leave@lists.ettus.com>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c0c5e305c1ad13ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0<span style=3D"color:rgb(80,0,80)">Juli=C3=A1n - I=
&#39;m working on this issue for Ettus. I&#39;ll bring you into a discussio=
n off list; once we get a resolution we can post back here. - MLD</span><di=
v><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_s=
ignature"><div dir=3D"ltr"><div dir=3D"ltr"><br></div></div></div></div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Thu, May 6, 2021 at 1:54 PM Burella P=C3=A9rez Juli=C3=A1n Mariano &l=
t;<a href=3D"mailto:julian.burellaperez@heig-vd.ch">julian.burellaperez@hei=
g-vd.ch</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">Hi Rob,<br>
<br>
Thank you for your feedback !<br>
<br>
I am relieved to learn that I&#39;m not the only user experience issues usi=
ng WR with N32x boards.<br>
Where did you find out that Ettus is presently looking into WR issues ?<br>
I&#39;m asking because I can see a different thread from 2019 (<a href=3D"h=
ttp://ettus.80997.x6.nabble.com/USRP-users-N320-XQ-image-issue-using-sfp0-a=
s-time-source-td13973.html" rel=3D"noreferrer" target=3D"_blank">http://ett=
us.80997.x6.nabble.com/USRP-users-N320-XQ-image-issue-using-sfp0-as-time-so=
urce-td13973.html</a>)<br>
Which as far as I can see, no fix is implemented in uhd:master.<br>
<br>
BTW, I work with uhd4.0 - commit cf570707a2.<br>
We tried 2 different N320 boards, both resulted in the same behavior.<br>
<br>
Best,<br>
<br>
Juli=C3=A1n<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Juli=C3=A1n Mariano Burella P=C3=A9rez<br>
M.Sc.Eng. TIN, Embedded Systems<br>
Collaborateur Ra&amp;D HES<br>
Prof.:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 +41 24 557 62 84<br>
<a href=3D"mailto:julian.burellaperez@heig-vd.ch" target=3D"_blank">julian.=
burellaperez@heig-vd.ch</a>&lt;mailto:<a href=3D"mailto:julian.burellaperez=
@heig-vd.ch" target=3D"_blank">julian.burellaperez@heig-vd.ch</a>&gt;<br>
Haute =C3=89cole d&#39;Ing=C3=A9nierie et de Gestion du Canton de Vaud<br>
Route de Cheseaux 1 - CP 521 - 1401 Yverdon-les-Bains<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
________________________________<br>
De : Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">r=
kossler@nd.edu</a>&gt;<br>
Envoy=C3=A9 : jeudi, 6 mai 2021 15:41:11<br>
=C3=80 : Burella P=C3=A9rez Juli=C3=A1n Mariano<br>
Cc : <a href=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-u=
sers@lists.ettus.com</a><br>
Objet : Re: [USRP-users] [N320] Using white rabbit with OPNT Master Switch<=
br>
<br>
Hi Juli=C3=A1n,<br>
I am also getting these same errors and have been unsuccessful getting WR w=
orking on either 3.15 or 4.0.=C2=A0 I have asked this list to see if anyone=
 is presently using WR successfully, but have not had any replies.=C2=A0 I =
know that Ettus is presently looking into WR issues.<br>
Rob<br>
<br>
<br>
On Thu, May 6, 2021 at 8:57 AM Burella P=C3=A9rez Juli=C3=A1n Mariano &lt;<=
a href=3D"mailto:julian.burellaperez@heig-vd.ch" target=3D"_blank">julian.b=
urellaperez@heig-vd.ch</a>&lt;mailto:<a href=3D"mailto:julian.burellaperez@=
heig-vd.ch" target=3D"_blank">julian.burellaperez@heig-vd.ch</a>&gt;&gt; wr=
ote:<br>
Hello,<br>
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
rget=3D"_blank">usrp-users@lists.ettus.com</a>&lt;mailto:<a href=3D"mailto:=
usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a=
>&gt;<br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>&lt;mailto:<=
a href=3D"mailto:usrp-users-leave@lists.ettus.com" target=3D"_blank">usrp-u=
sers-leave@lists.ettus.com</a>&gt;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c0c5e305c1ad13ef--

--===============8663861792351686425==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8663861792351686425==--
