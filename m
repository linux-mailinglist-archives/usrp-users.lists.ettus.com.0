Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6704548EBA4
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 15:26:06 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1AE703855A3
	for <lists+usrp-users@lfdr.de>; Fri, 14 Jan 2022 09:26:05 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="fBa6pZM+";
	dkim-atps=neutral
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	by mm2.emwd.com (Postfix) with ESMTPS id 5B5B03850C5
	for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 09:25:13 -0500 (EST)
Received: by mail-yb1-f178.google.com with SMTP id c6so24350332ybk.3
        for <usrp-users@lists.ettus.com>; Fri, 14 Jan 2022 06:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Acp9B6KRo3fiSmmpFCRjL0XaUJ0Q+7RzgS0I4i8jJd8=;
        b=fBa6pZM+mYLD4xFnVGtnqpJJYexkNydjLHW7b6mDnobyB9ntkJzBZ57BN6SVgQmXgR
         9XTe8G46c+mAlkcO1waBWPLAehcLIwTV38TlW7vowGDW/8Y6eoD4rj8Hjh99hP6WTeTj
         etv30M9R/5M8wA5NR0LLODzdTMKR0bfsWTVWMDmngS6955AFsZv7lV0PeFPxnGX1hoow
         KrYXV28mVZb/zW3sJNVGEGOeRk2eCasbof6VCdptUAJVQLUT9YS66LbVqvzQKvyHeQsb
         Y3a/I2k43TSuxou+pIBCQV8KT7ivNcSIbJ/D98bi1kFd7j7hRjfdbrJGutInNNlbZxEK
         BKSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Acp9B6KRo3fiSmmpFCRjL0XaUJ0Q+7RzgS0I4i8jJd8=;
        b=jtOiRl3GvSz8PjWCg0yphx8mja7pT9sXe7d+/DNuNe9bMjiLuRO6l1MkNJsArL7TWF
         0r6LObR4fZxwVtK7TbvWlqi16818jBjnL4myYaQCHDL2PNIEB5dy0bpPlfRXO9jl9cT+
         R233aX8cmKfWX93iFeTZ19gv6SbTTJMBTsS4lTyXiwSG3fP1pyj/F1xKtmD13xRqsDOE
         v0TRD/DfRVje2cA/BG8CEqR9GzAiAANtdeOq4S8M07bQWpBWIdzcFue1ea/zE4XuhJ26
         fvyOH6Zzhm28aumJ5FOoBcyhg3mT5MEId98mFEL8n6XS6Z1dWn3UpoZ6s2wm3/S5FXd4
         IEfQ==
X-Gm-Message-State: AOAM532NESDRjAvQv1RUgycK+M9XZkAIw93oHPytVFcy1su2IqUNS0rt
	ry6FSE+GeomB66ygbb6b0QMaBTcOOQBOy+lQ4ZeDI3n3umk=
X-Google-Smtp-Source: ABdhPJzGT20cyUKVJK2gUtTpxh5BVjQksidFk9WQI0tAQ+H3J2X6Of4J4vungx0C1rPlM+Jo9wRUWw80fi5ZJ9mt1m4=
X-Received: by 2002:a25:8002:: with SMTP id m2mr7377005ybk.13.1642170312393;
 Fri, 14 Jan 2022 06:25:12 -0800 (PST)
MIME-Version: 1.0
References: <9A9A1A5E-7E18-4FA6-9E1E-263E88992806@gmail.com>
In-Reply-To: <9A9A1A5E-7E18-4FA6-9E1E-263E88992806@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 14 Jan 2022 09:25:04 -0500
Message-ID: <CAB__hTQ6tr3TTmRChFu__utx+H1-0GJY0p-rU91PBg4HZMx0zA@mail.gmail.com>
To: Paul Atreides <maud.dib1984@gmail.com>
Message-ID-Hash: B7PPKVUAIN4YVDMU5MQQ3UIMWCS2UMI7
X-Message-ID-Hash: B7PPKVUAIN4YVDMU5MQQ3UIMWCS2UMI7
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N321 LO sharing between RF 0/1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/B7PPKVUAIN4YVDMU5MQQ3UIMWCS2UMI7/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3314884631064994501=="

--===============3314884631064994501==
Content-Type: multipart/alternative; boundary="000000000000223e4b05d58b92d7"

--000000000000223e4b05d58b92d7
Content-Type: text/plain; charset="UTF-8"

Hi Paul,
Based on the block diagram
<https://files.ettus.com/manual/page_usrp_n3xx.html#n3xx_rh_lo_sharing>, I
think I would set both LOs to use an external source. I would set the
Tx0 export the LO on Tx Output 0 and then route it directly back into Tx
Input 1 which then goes to a 1:2 splitter to feed both inputs.  In addition
to exporting the LO and setting the LO source to external for both ports,
you also need to enable the Tx Output 0 (disabled by default). I've
forgotten the command to do so.
Rob



On Fri, Jan 14, 2022 at 1:11 AM Paul Atreides <maud.dib1984@gmail.com>
wrote:

> I am trying to configure the N321 to take some TX phase measurements
> between RF0 and RF1
> I have updated the file system to the latest release using the KB
> guidance.
>
> My host/software side is:
> GNURadio 3.9.5
> UHD 4.1.0.5
> Ubuntu 20.04
>
> My gr-uhd block has the LO settings:
> Channel 0 export = true
> Channel 0 LO = internal
>
> Channel 1 export = false
> Channel 1 LO = external
>
> On the hardware side am I understanding the LO diagram correctly that in
> order to achieve the highest phase accuracy between channels i need to
> share the LO between the transmit ports of RF0 and RF1?
> If so, would I do that by physically connecting the TX LO OUT0 (really
> 0-3) to TX LO IN1?
>
> Am I missing anything obvious for the settings and/or is there a more
> desirable way to do this?
>
> Thanks
>
> <end transmission>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000223e4b05d58b92d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div>Based on the<a href=3D"https://files.ettus.co=
m/manual/page_usrp_n3xx.html#n3xx_rh_lo_sharing"> block diagram</a>, I thin=
k I would set both LOs to use an external source. I would set the Tx0=C2=A0=
export the LO on Tx Output 0 and then route it directly back into Tx Input =
1 which then goes to a 1:2 splitter to feed both inputs.=C2=A0 In addition =
to exporting the LO and setting the LO source to external for both ports, y=
ou also need to enable the Tx Output 0 (disabled by default). I&#39;ve forg=
otten the command to do so.</div><div>Rob</div><div><br></div><div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Fri, Jan 14, 2022 at 1:11 AM Paul Atreides &lt;<a href=3D"mailto:maud.=
dib1984@gmail.com">maud.dib1984@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">I am trying to configure the N321 =
to take some TX phase measurements between RF0 and RF1 <br>
I have updated the file system to the latest release using the KB guidance.=
 <br>
<br>
My host/software side is:<br>
GNURadio 3.9.5<br>
UHD 4.1.0.5<br>
Ubuntu 20.04<br>
<br>
My gr-uhd block has the LO settings:<br>
Channel 0 export =3D true<br>
Channel 0 LO =3D internal<br>
<br>
Channel 1 export =3D false<br>
Channel 1 LO =3D external<br>
<br>
On the hardware side am I understanding the LO diagram correctly that in or=
der to achieve the highest phase accuracy between channels i need to share =
the LO between the transmit ports of RF0 and RF1? <br>
If so, would I do that by physically connecting the TX LO OUT0 (really 0-3)=
 to TX LO IN1? <br>
<br>
Am I missing anything obvious for the settings and/or is there a more desir=
able way to do this?<br>
<br>
Thanks<br>
<br>
&lt;end transmission&gt;<br>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000223e4b05d58b92d7--

--===============3314884631064994501==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3314884631064994501==--
