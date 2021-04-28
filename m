Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A08A36E118
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 23:42:16 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BCB96384CBE
	for <lists+usrp-users@lfdr.de>; Wed, 28 Apr 2021 17:42:15 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="PvHek6d0";
	dkim-atps=neutral
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 13A063849D4
	for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 17:41:21 -0400 (EDT)
Received: by mail-qt1-f176.google.com with SMTP id d12so9748318qtr.4
        for <usrp-users@lists.ettus.com>; Wed, 28 Apr 2021 14:41:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:user-agent:mime-version:to:subject:references
         :in-reply-to;
        bh=RWV7zWmh1eYGgrYRzMR5Ka8W3I8U4L9EQtPWHKUNclc=;
        b=PvHek6d0/TpAJxarmCC8ghj6FSzmPJXE9TPECxiAWgoFjpn3hVF//lJbHaau+xLhUE
         HMzVPFJNqUzI0K+Ev87WdIi2iVV+ZojP+R/LTsuLvm3/5hzmCBogB+0CiwDHYmIYsk6I
         wiZL0wuna5wNNG59YYFu1EiK/+AAw4zwV88UXAHTV44DHaiTyxnu5tWeRTZItdnCl/54
         FETI4aVD87nCZdKpkrjI1GAxcPscMWoNY7dLhH7iDfiGxSZIQ98EJXp3AnlX6nebCwiA
         vikZTxypSlx2F3Z/JvxN98s8wi6ojEMVaCXY4HmOczggBIE1tJJOLjSabY038IlK49+g
         foVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
         :subject:references:in-reply-to;
        bh=RWV7zWmh1eYGgrYRzMR5Ka8W3I8U4L9EQtPWHKUNclc=;
        b=R2QeGq9nXX3RB7ehpk1ucO4uCha+9BrvtBzW07Vg1cnCAHeMuM6PeTY6/l8TsHMysw
         wjc3w6Qy/11BXoycKEdEwkvMavVqDfD3esiMoMIK4oFdqz8dJ7DJtgxD0e0tiTslrUbv
         NmmffAzROfgmyaXscmKNXQrmtL/0S5cCYtsrLIL7UORSulA7ArqaRf2fZpUMpbYR5oMU
         L+XBCMLwuOafsgZDnj3EAoAdIu/gVfrxj03Zc3+yY4FE3M7K+mjevYeZEk+HA4xY58Fo
         Ctq9rYJfpeDA8MrHdELZ+RbAe8ypHVIxKFgKdRD0iaRgyMt1S3du0qs+l3UZElCwRs3F
         yo+w==
X-Gm-Message-State: AOAM533+vmgr+D9Y6o6CKcwQBljWBjGGHBmS4jmmIn0Bhk8/5xxKW0D4
	PGuott826B1H0UNp+6njPSxliZx8Tw3DzQ==
X-Google-Smtp-Source: ABdhPJzyrzw5zBmmGsGJbRiPrJmzDrCQKVyBerHo5KmYmkssdmCWDKPMMEOfAUVo0+xGuPayTXJt5g==
X-Received: by 2002:ac8:5a52:: with SMTP id o18mr29581738qta.138.1619646081396;
        Wed, 28 Apr 2021 14:41:21 -0700 (PDT)
Received: from [192.168.2.12] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.googlemail.com with ESMTPSA id o12sm933542qtg.14.2021.04.28.14.41.20
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 14:41:21 -0700 (PDT)
Message-ID: <6089D680.3010909@gmail.com>
Date: Wed, 28 Apr 2021 17:41:20 -0400
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: usrp-users@lists.ettus.com
References: <BY3PR09MB73167120DD55101EA0FA542EEC409@BY3PR09MB7316.namprd09.prod.outlook.com> <CAEXYVK7F=BP2frJdgdbrdOEWqV_WQeJ6vugmJ2bZXPTuVTE=+w@mail.gmail.com>
In-Reply-To: <CAEXYVK7F=BP2frJdgdbrdOEWqV_WQeJ6vugmJ2bZXPTuVTE=+w@mail.gmail.com>
Message-ID-Hash: NOEYJMYMHWSXUFLOOVE6LR6DXYSB5ACB
X-Message-ID-Hash: NOEYJMYMHWSXUFLOOVE6LR6DXYSB5ACB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Bare metal development on X310
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NOEYJMYMHWSXUFLOOVE6LR6DXYSB5ACB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7742066234779718444=="

This is a multi-part message in MIME format.
--===============7742066234779718444==
Content-Type: multipart/alternative;
 boundary="------------010401010500060808090500"

This is a multi-part message in MIME format.
--------------010401010500060808090500
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 04/28/2021 05:29 PM, Brian Padalino wrote:
> On Wed, Apr 28, 2021 at 5:11 PM Eugene Grayver=20
> <eugene.grayver@aero.org <mailto:eugene.grayver@aero.org>> wrote:
>
>     Hello,
>
>     I am planning to use an X310 (we have at least 50 of them around
>     =F0=9F=99=82 ) for an all-hdl project.  Has anyone used it w/out RF=
NoC or
>     UHD?  How much setup for on-board components is there?  Can I do
>     it w/out the software running on a PC?
>
>
> That's pretty ambitious.
>
> From what I've seen, all the PLL programming, RF switches, and general=20
> setup/housekeeping is done in UHD with very little help by way of a=20
> soft CPU in the FPGA.
>
> I am not sure what your timeline is, but you'd be redoing a lot of=20
> engineering effort just to get to a new baseline. You might want to=20
> consider a small/cheap SBC with gigabit ethernet that runs linux/UHD=20
> and does the housekeeping, and you create your "all-hdl" project as a=20
> single RFNoC block. The other RFNoC block you have in there would be=20
> the Radio block itself - so the RFNoC infrastructure overhead would be=20
> minimized, theoretically.
>
> Do you think this is a possibility, or are you really steadfast on=20
> really doing an all-hdl project?
>
> Brian
>
This will be a "big hill to climb".  UHD chose, very very early on, NOT=20
to do a bunch of things in HDL that could easily be done
   on the host, with a "big stupid register set" model for the HDL. For=20
one, this substantially simplifies debugging and development,
   and wildly reduces the "footprint" of the HDL in the FPGA, making it=20
available for critical on-the-high-speed-sample-path stuff.

It also means that in general, as you introduce new daughtercard=20
hardware, the FPGA doesn't necessarily need to know anything
   about it, because the daughtercard interface is reduced to something=20
generic and general, and the host-side UHD software can
   "know" about how to program daugtercards, etc.



--------------010401010500060808090500
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3DUTF-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 04/28/2021 05:29 PM, Brian Padalino
      wrote:<br>
    </div>
    <blockquote
cite=3D"mid:CAEXYVK7F=3DBP2frJdgdbrdOEWqV_WQeJ6vugmJ2bZXPTuVTE=3D+w@mail.=
gmail.com"
      type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">On Wed, Apr 28, 2021 at 5:11 PM Eugene Grayver
          &lt;<a moz-do-not-send=3D"true"
            href=3D"mailto:eugene.grayver@aero.org">eugene.grayver@aero.o=
rg</a>&gt;
          wrote:<br>
        </div>
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px
            0.8ex;border-left:1px solid
            rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">Hello,</div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)"><br>
              </div>
              <div
style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt;co=
lor:rgb(0,0,0)">I
                am planning to use an X310 (we have at least 50 of them
                around <span id=3D"gmail-m_-4781002844512043234=F0=9F=99=82=
">=F0=9F=99=82 )
                  for an all-hdl project.=C2=A0 Has anyone used it w/out
                  RFNoC or UHD?=C2=A0 How much setup for on-board compone=
nts
                  is there?=C2=A0 Can I do it w/out the software running =
on a
                  PC?</span></div>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>That's pretty=C2=A0ambitious.</div>
          <div><br>
          </div>
          <div>From what I've seen, all the PLL programming, RF
            switches, and general setup/housekeeping is done in UHD with
            very little help by way of a soft CPU in the FPGA.</div>
          <div><br>
          </div>
          <div>I am not sure what your timeline is, but you'd be redoing
            a lot of engineering effort just to get to a new baseline.=C2=
=A0
            You might want to consider a small/cheap SBC with gigabit
            ethernet that runs linux/UHD and does the housekeeping, and
            you create your "all-hdl" project as a single RFNoC block.=C2=
=A0
            The other RFNoC block you have in there would be the Radio
            block itself - so the RFNoC infrastructure overhead would be
            minimized, theoretically.</div>
          <div><br>
          </div>
          <div>Do you think this is a possibility, or are you really
            steadfast on really doing an all-hdl project?</div>
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
      <br>
    </blockquote>
    This will be a "big hill to climb".=C2=A0 UHD chose, very very early =
on,
    NOT to do a bunch of things in HDL that could easily be done<br>
    =C2=A0 on the host, with a "big stupid register set" model for the HD=
L.=C2=A0
    For one, this substantially simplifies debugging and development,<br>
    =C2=A0 and wildly reduces the "footprint" of the HDL in the FPGA, mak=
ing
    it available for critical on-the-high-speed-sample-path stuff.<br>
    <br>
    It also means that in general, as you introduce new daughtercard
    hardware, the FPGA doesn't necessarily need to know anything<br>
    =C2=A0 about it, because the daughtercard interface is reduced to
    something generic and general, and the host-side UHD software can<br>
    =C2=A0 "know" about how to program daugtercards, etc.<br>
    <br>
    <br>
  </body>
</html>

--------------010401010500060808090500--

--===============7742066234779718444==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7742066234779718444==--
