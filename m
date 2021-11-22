Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B774589BB
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 08:19:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63C513843A8
	for <lists+usrp-users@lfdr.de>; Mon, 22 Nov 2021 02:19:54 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="dKGCi4fx";
	dkim-atps=neutral
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by mm2.emwd.com (Postfix) with ESMTPS id F1CAC383CC4
	for <usrp-users@lists.ettus.com>; Mon, 22 Nov 2021 02:19:08 -0500 (EST)
Received: by mail-ed1-f45.google.com with SMTP id t5so72891368edd.0
        for <usrp-users@lists.ettus.com>; Sun, 21 Nov 2021 23:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6+ZfiCcNHGABVsBLtr3yLPIfiMvmw76RigGB1v5iZr0=;
        b=dKGCi4fxOImt7Dt10Sfw13T2kILg9jRdUIeQcY6IhYD/+ePpC3831LolcJJgGRXbvq
         csVoFfvO8DZZV2TdAvxasz3m0NqAGSw7airBI845Vt97La4RsxLyvxjoTAxigNGjH8US
         Yk48I9rdDac0WHc8MW34sg3KZPboEolFwIlCOqp6qzKenR21fs3Yuq8b26h8xxVvBjBA
         V1NJy3oHsycPQHQALdUAzvWgSw7jAChGiwX+Kuswpmr0MjzWQ8sxSfce0HPXvc5bAwo4
         BXmPw71DyNxiZh+LdHEDtalcxvKMyftBs8tQlVHvJJDRehuyv62wUwzL4H754U04SH4b
         B4zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6+ZfiCcNHGABVsBLtr3yLPIfiMvmw76RigGB1v5iZr0=;
        b=G2n56LYG6kC6OJI3RkRqzn9DbHD7xlD2PK08ftGhQeRumSPEUtqPe3JXgzpqaR8e2I
         UyJgNpo3VRwyiFGKBmLJQoxeMdBKW/ijWKvAr0lEp5gor/SYtIC4wDbkgmsORlRWeJnZ
         +FUghCCKd6KcyjR3oQWGSWV+uD0w3JBiTM37spI5iedyB6Eq9rwT57D4Hg2rx33fcftl
         42m9H36luug11qKGlsMwkQWKHspbd9HiISopwQ5MNjrwQAJfseYXY8KjE1unValONcs8
         NOC0ofv76vr1OpFMF/hmDvcQjA9T36aKwm0HjesOOvv1VTtolZjjsSjO7Ney4dLPqDOb
         ps7A==
X-Gm-Message-State: AOAM531fAjPXBwXPtVz0PLScVyssCJlzFlNyOmk38HaR47MW8QaTAhdl
	EZEFObiLzLx3zUSyWVmibnm4E35wfjyZjue9QTA=
X-Google-Smtp-Source: ABdhPJzc4NuPDw2IoN9ziIiz44qFAzvD9ImhKCzRIGJ5uyDzY1ERlF6JFxZcC0Yj2eCtF+yDddcj3Hb12HEQFcsHGe0=
X-Received: by 2002:a50:ef02:: with SMTP id m2mr60634463eds.172.1637565547882;
 Sun, 21 Nov 2021 23:19:07 -0800 (PST)
MIME-Version: 1.0
References: <CAMMoi3t5ZhJG5w0zJ=28UTLua2sE9YTSqfMZHN3TLfsPHrHehg@mail.gmail.com>
 <81cb143c-ea65-a1c6-0ce8-30edbc2f2d8a@gmail.com>
In-Reply-To: <81cb143c-ea65-a1c6-0ce8-30edbc2f2d8a@gmail.com>
From: Richard Bell <richard.bell4@gmail.com>
Date: Sun, 21 Nov 2021 23:18:57 -0800
Message-ID: <CAMMoi3vu6pOOgXoeOpyLGZ-FtW84S9Y1qz4bEQPocbuit99QWA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: LLUITMVHMGYWGHZLY67AOLL57ARRP7BW
X-Message-ID-Hash: LLUITMVHMGYWGHZLY67AOLL57ARRP7BW
X-MailFrom: richard.bell4@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: 5 x N310 Network Setup
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LLUITMVHMGYWGHZLY67AOLL57ARRP7BW/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2402999103037268322=="

--===============2402999103037268322==
Content-Type: multipart/alternative; boundary="000000000000c72e9b05d15b70d3"

--000000000000c72e9b05d15b70d3
Content-Type: text/plain; charset="UTF-8"

Hey Marcus,

I would like to be able to use all four channels of each N310 if desired.
In that case it would take 2 SFP+ per N310 as I understand it. If I only
use 1 channel I would require 1 SFP+ port, I understand your point.

Richard

On Sun, Nov 21, 2021 at 10:08 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-11-22 00:55, Richard Bell wrote:
>
> Hello,
>
> I am attempting to setup 5 USRP N310's to be controlled by a single host.
> You can assume the host has enough processing power to avoid being the
> bottleneck. My question here is only concerned with properly setting up the
> network so that 100 MHz of bandwidth capture is theoretically supported by
> each of the 5 N310's per channel.
>
> Would the following setup support the above:
> 1) Connect each of the 1G Ethernet management ports to a switch and
> connect the switch to the host. Each radio should be assigned an IP address
> automatically by a DHCP server as I understand it.
> 2) Connect the SFP+ ports to a corresponding NIC SFP+ port on the host
> computer. With 5 N310's this will correspond to 10 total SFP+ ports
> required at the host, two per radio.
>
> Is this correct, or do I need to change something? Also, is there a way to
> reduce the required number of SFP+ ports required on the host by using a
> 100G switch in some way?
>
> Thank you for any assistance you can provide
>
> Richard
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> I'm slightly confused by the wording. Do you intend to bring in a total of
> 1Gsps or 500Gsps?
>
> A single 10G SFP+ port should support about 200Msps.   Unless I botched
> the late-night math, you'd only need both SFP+ ports per N310 if you were
> bringing in up to 400Msps.
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000c72e9b05d15b70d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey Marcus,<div><br></div><div>I would like to be able to =
use all=C2=A0four channels of each N310 if desired. In that case it would t=
ake 2 SFP+ per N310 as I understand it. If I only use 1 channel I would req=
uire 1 SFP+ port, I understand your point.</div><div><br></div><div>Richard=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Sun, Nov 21, 2021 at 10:08 PM Marcus D. Leech &lt;<a href=3D"mailt=
o:patchvonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-22 00:55, Richard Bell
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Hello,
        <div><br>
        </div>
        <div>I am attempting to setup 5 USRP N310&#39;s to be controlled by
          a single host. You can assume the host has enough processing
          power to avoid being the bottleneck. My question here is only
          concerned with properly setting up the network so that 100 MHz
          of bandwidth capture is theoretically supported by each of the
          5 N310&#39;s per channel.</div>
        <div><br>
        </div>
        <div>Would the following setup support the above:</div>
        <div>1) Connect each of the 1G Ethernet management ports to a
          switch=C2=A0and connect the switch to the host. Each radio should
          be assigned an IP address automatically by a DHCP server as I
          understand it.=C2=A0</div>
        <div>2) Connect the SFP+ ports to a corresponding NIC SFP+ port
          on the host computer. With 5 N310&#39;s this will correspond to 1=
0
          total SFP+ ports required at the host, two per radio.</div>
        <div><br>
        </div>
        <div>Is this correct, or do I need to change something? Also, is
          there a way to reduce the required number of SFP+ ports
          required on the host by using a 100G switch in some way?</div>
        <div><br>
        </div>
        <div>Thank you for any assistance you can provide</div>
        <div><br>
          Richard</div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre>_______________________________________________
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
    </blockquote>
    I&#39;m slightly confused by the wording. Do you intend to bring in a
    total of 1Gsps or 500Gsps?<br>
    <br>
    A single 10G SFP+ port should support about 200Msps.=C2=A0=C2=A0 Unless=
 I
    botched the late-night math, you&#39;d only need both SFP+ ports per
    N310 if you were bringing in up to 400Msps.<br>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000c72e9b05d15b70d3--

--===============2402999103037268322==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2402999103037268322==--
