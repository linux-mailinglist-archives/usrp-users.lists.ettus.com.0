Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 599823811D7
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 22:32:12 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 566BC384099
	for <lists+usrp-users@lfdr.de>; Fri, 14 May 2021 16:32:11 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GwRXOf9l";
	dkim-atps=neutral
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	by mm2.emwd.com (Postfix) with ESMTPS id DE31B38408D
	for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 16:29:11 -0400 (EDT)
Received: by mail-ot1-f49.google.com with SMTP id i23-20020a9d68d70000b02902dc19ed4c15so391976oto.0
        for <usrp-users@lists.ettus.com>; Fri, 14 May 2021 13:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=125H7WL2Sx3/Cp9VkkjBAoeX6e0jRoNV90rtJyPWVlQ=;
        b=GwRXOf9l56DzxVvstufvdjkA5fqhqTZJ7DtPa7QsqjQurJDYI6fDBPVX/SGFwfPB6x
         qIMeRxdn4+JzkvIuSLzVi3Buq3rZJ3LYxDsYZ26si86WqDkJXwBiwm5aseQlsAUY74iY
         WpucMD66vRhK1/eDLg7qRiDXOhEH3TYV3MImSJpacdyPr+2clqVhZtPzsfb3h0fAqytO
         5boJ1H2pPLFVsyhvpWtFMWUEsZUCg5rEEhzU9sHyAwYtHF4gBS4X0IfGDsAMEVQN2CrG
         3BYx+6jTvptKU7vUvssJLlbRXC16V6Zn+hdQCmusMiwajxkiSTTtbgz/fjGLrBJzEHIJ
         f8iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=125H7WL2Sx3/Cp9VkkjBAoeX6e0jRoNV90rtJyPWVlQ=;
        b=Q4gJDdS7h1axoQoc7TpAUJEWGSJ2nIGnnv8wVkl1m0TVHAi/C3xf909/V3xYPicPH6
         z9+iwKKEqtY7k/mQJVfqUidwLQiX0s/u9B12E/K44L526e68iVpxVjVp/EmueyvWI9AM
         SF/S03zz6+sLeXOL2R5CY6CRVs++ouic3FBd2YMcnNlQ6dBVrXOW5RbvNYU9tBNGvQuB
         L0psz3/4ocu2Eu6gFZF4njNn0b8JWSMCHdH6eRQyr6MaTxEgdVbg6O+BNpD2isNBa+Gs
         CAGl0w3n2mzvSvEa0PnbZtuCs0TldXwd/MQX7EQ4iuvvfvuvE+N2D3d9k4cEmW5lgTXG
         nXwQ==
X-Gm-Message-State: AOAM531J4k4UfzyUYMq9hQAxbqOmNQRAlNjFw/Iq4XhdDdqxTzw7sAwr
	+/3PIghshFr5/ue1iL1ae3OS4Yum0IWG4X7KqYw=
X-Google-Smtp-Source: ABdhPJzfxSONUFw2vlXrHtwQR+borW+xr4NE8q1hOqVx7kdTHpRYYM0Ej3SMSNw/92KSOY5HfpND5f1a6++2ZRi0Gfs=
X-Received: by 2002:a05:6830:1bd3:: with SMTP id v19mr14714655ota.276.1621024151193;
 Fri, 14 May 2021 13:29:11 -0700 (PDT)
MIME-Version: 1.0
References: <BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509@BLAPR09MB6612.namprd09.prod.outlook.com>
In-Reply-To: <BLAPR09MB6612AA4E4BEC9AB9EC4D73C8D9509@BLAPR09MB6612.namprd09.prod.outlook.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 14 May 2021 16:28:59 -0400
Message-ID: <CAEXYVK4M7VXi8vAaXpneJ_hVvwbaLPQD+Q9vLO7XJvjbifSDvw@mail.gmail.com>
To: Jeffrey P Long <jplong@mitre.org>
Message-ID-Hash: XHDCJ2727TSCJYSXU5MAUTM7L3GFB2XI
X-Message-ID-Hash: XHDCJ2727TSCJYSXU5MAUTM7L3GFB2XI
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC block name?
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XHDCJ2727TSCJYSXU5MAUTM7L3GFB2XI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3418306270941970598=="

--===============3418306270941970598==
Content-Type: multipart/alternative; boundary="000000000000b44ec205c25018db"

--000000000000b44ec205c25018db
Content-Type: text/plain; charset="UTF-8"

On Fri, May 14, 2021 at 4:22 PM Jeffrey P Long <jplong@mitre.org> wrote:

> I am going through the examples in
>
>
>
> Getting Started with RFNoC in UHD 4.0 - Ettus Knowledge Base
> <https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0>
>
>
>
> And I thought maybe I had messed something up but I noticed in the example
> the real block name is not there either
>
>
>
>    |     _____________________________________________________
>
>    |    /
>
>    |   |       RFNoC blocks on this device:
>
>    ...
>
>    |   |   * 0/Block#0
>
>    ...
>
>    |     _____________________________________________________
>
>    |    /
>
>    |   |       Static connections on this device:
>
>    ...
>
>    |   |   * 0/SEP#4:0==>0/Block#0:0
>
>    |   |   * 0/Block#0:0==>0/SEP#4:0
>
>    ...
>
>
>
> Is there a reason why this does not get reflected in the usrp probe?
>
> I am running it on a E320. I built my bit image using the OOT approach.
> Moved it over and the .so created for my block.
>
> Do I need to bring over the block yml file or something?
>

Try setting the UHD_MODULE_PATH environment variable to the location of
your .so file for your block and re-run the probe.

Brian

--000000000000b44ec205c25018db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"></div><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, May 14, 2021 at 4:22 PM Jeffrey P Lon=
g &lt;<a href=3D"mailto:jplong@mitre.org">jplong@mitre.org</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US" style=3D"overflow-wrap: break-word;">
<div class=3D"gmail-m_-465248214528214479WordSection1">
<p class=3D"MsoNormal">I am going through the examples in <u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><a href=3D"https://kb.ettus.com/Getting_Started_with=
_RFNoC_in_UHD_4.0" target=3D"_blank">Getting Started with RFNoC in UHD 4.0 =
- Ettus Knowledge Base</a><u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">And I thought maybe I had messed something up but I =
noticed in the example the real block name is not there either<u></u><u></u=
></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div style=3D"border:1pt solid rgb(221,221,221);padding:12pt;background:rgb=
(249,249,249)">
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0=C2=A0 _____________________________________________________=
<u></u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0 /<u></u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=
=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RFNoC blocks on this device=
:<u></u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 ...<u>=
</u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=
=A0=C2=A0 |=C2=A0=C2=A0 * 0/Block#0<u></u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 ...<u>=
</u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0=C2=A0 _____________________________________________________=
<u></u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0 /<u></u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=
=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Static connections on this =
device:<u></u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 ...<u>=
</u><u></u></span></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=
=A0=C2=A0 |=C2=A0=C2=A0 * 0/SEP#4:0=3D=3D&gt;0/Block#0:0<u></u><u></u></spa=
n></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 |=C2=
=A0=C2=A0 |=C2=A0=C2=A0 * 0/Block#0:0=3D=3D&gt;0/SEP#4:0<u></u><u></u></spa=
n></pre>
<pre style=3D"line-height:15.6pt;background:rgb(249,249,249);border:none;pa=
dding:0in"><span style=3D"font-size:10.5pt;color:black">=C2=A0=C2=A0 ...<u>=
</u><u></u></span></pre>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Is there a reason why this does not get reflected in=
 the usrp probe?<u></u><u></u></p>
<p class=3D"MsoNormal">I am running it on a E320. I built my bit image usin=
g the OOT approach. Moved it over and the .so created for my block.<u></u><=
u></u></p>
<p class=3D"MsoNormal">Do I need to bring over the block yml file or someth=
ing?</p></div></div></blockquote><div><br></div><div>Try setting the UHD_MO=
DULE_PATH environment variable to the location of your .so file for your bl=
ock and re-run the probe.</div><div><br></div><div>Brian</div></div></div>

--000000000000b44ec205c25018db--

--===============3418306270941970598==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3418306270941970598==--
