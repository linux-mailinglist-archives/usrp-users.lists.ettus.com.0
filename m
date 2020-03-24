Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DF2D91911F5
	for <lists+usrp-users@lfdr.de>; Tue, 24 Mar 2020 14:49:10 +0100 (CET)
Received: from [::1] (port=55058 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jGjvW-0005lL-5e; Tue, 24 Mar 2020 09:49:06 -0400
Received: from mail-lj1-f173.google.com ([209.85.208.173]:41784)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <sam.reiter@ettus.com>)
 id 1jGjvS-0005gN-Px
 for usrp-users@lists.ettus.com; Tue, 24 Mar 2020 09:49:02 -0400
Received: by mail-lj1-f173.google.com with SMTP id n17so8297844lji.8
 for <usrp-users@lists.ettus.com>; Tue, 24 Mar 2020 06:48:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O7IvMWqFKcQPU/Ll1z3DfztPRZyMB5AwXGB2XznVYCw=;
 b=ktsR6CfBp8gbqf6Fb8HjMaTH4bWsYz/oQLr1GZB4z1eMymt30y+nm3+TnnnR2Wr3LD
 W+WFZ092Vc/xIFj8ofzw0E1S44Ml67uf32m9R6cLCL2bZ1TFmgYxDWmfe2fgE/EgU8D2
 GrLfKPszEhgoHRFEI8hJAvbCO2Rs+WTJvxezNyt/0o2KQNgaLmbWN/lBsCoL5NW5Y4Sj
 LuC4c1v/Igz5ynhHuM/3d9OLxY8KHkdqy+z5m3tfQkpwPdCJn30d4kQ8HMxMsPxg4+aw
 Al5aCE0PQxDnAuLEv81UnVcUXQNKqJu75LdOulpyGVqjOs2G4qlx7mW/Ixm1RRwrnz+c
 IgTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O7IvMWqFKcQPU/Ll1z3DfztPRZyMB5AwXGB2XznVYCw=;
 b=mzghVlYT14sF4W2Ag9ri0QVWpQVGcI/pcq6i+h7KjnRFkEcIsH4JaLCPLlfce/AsGx
 sGIvd4NF6D89l6PXKvrhkFyQi0DySSENiiLHUQDCqqo0cGtcD9yN90fy44DEGeP9k85Z
 leVZ8SvkDfjZxVwW3uo3VjAIOdeXzP6vx5TEzIdBXBLlaoJy2HVZpEimEsf5HaIuCE24
 tGiMFRt8ugNCu9mtmWhU8ZrjUk4kNBW0ZDhc8LxKPw2M0ydTtqeKN4pidpCzUbiLcZXq
 VlX1wkNxWyJhPh0TLuWdk4b7f82INmHCIBkr56sowvzEyaSWDAySGZeemxvOqfSdD3WB
 MbeA==
X-Gm-Message-State: ANhLgQ2Pb9jv1ZIZ9dqkqTNynWrWO/ag6nNc1cnxBStqqom5LfmP3ipW
 F3ZBGC5qwVwBniEAqcp3jyAcTGlU4GJzapUuIwVsYR0O
X-Google-Smtp-Source: ADFU+vsnJYEHhDPlrjGL3u/Np7kSaOS/O7a7Qc8amXSNBjJAPvSnDTbp/FDcxb0tNiws9BgpfNfwXsZ0V/iy1g6oFs8=
X-Received: by 2002:a2e:9d98:: with SMTP id c24mr6791441ljj.137.1585057701327; 
 Tue, 24 Mar 2020 06:48:21 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR09MB407777596E9014B53CBEC704D9F00@MN2PR09MB4077.namprd09.prod.outlook.com>
In-Reply-To: <MN2PR09MB407777596E9014B53CBEC704D9F00@MN2PR09MB4077.namprd09.prod.outlook.com>
Date: Tue, 24 Mar 2020 08:48:20 -0500
Message-ID: <CANf970bcHZZPWg-VQ-xNtxd5eYWWTEW+kQUGfPyC1M-ddrXKvg@mail.gmail.com>
To: "Long, Jeffrey P." <jplong@mitre.org>
Subject: Re: [USRP-users] E320 GPS staying locked?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Sam Reiter via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Sam Reiter <sam.reiter@ettus.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1949556016343000468=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============1949556016343000468==
Content-Type: multipart/alternative; boundary="0000000000003c959305a19a0118"

--0000000000003c959305a19a0118
Content-Type: text/plain; charset="UTF-8"

Hey Jeff,

What type of GPS antenna are you using? 3.3V or 5V? If it's compatible with
X310 & other USRPs, I would imagine you'll be good to go with the E320...
Do you see the locked / unlocked status change between consecutive runs of
something like gpsmon on the E320?

There were some early-ish runs of the E320 that are eligible for a GPSDO
rework, feel free to send support@ettus.com a direct email with your E320's
serial number and I can see if yours is one of the affected units.

Sam Reiter

On Mon, Mar 23, 2020 at 4:27 PM Long, Jeffrey P. via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Has anyone had issues with the E320 GPS locking or staying locked? I have
> a LabSat GNSS simulator that I am reliably able to get a E310, X310, and
> even a N310 to lock to however the E320 I just got will occasionally lock
> and then fall out almost immediately. I used mender to up it to 3.15LTS and
> everything else works pretty well. I run the e320bist on the gpsdo and it
> reports it mostly being unlocked but occasionally it will lock for a minute
> or so. When it does lock I can run the query gpsdo immediately after and it
> will report locked but again it only lasts for a min or so.
>
>
>
> Thanks
>
> Jeff
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000003c959305a19a0118
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div><div c=
lass=3D"gmail_default" style=3D"font-family:verdana,sans-serif">Hey Jeff,=
=C2=A0</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-=
serif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">What type of GPS antenna are you using? 3.3V or=C2=A05V? If it&=
#39;s compatible with X310 &amp; other USRPs, I would imagine you&#39;ll be=
 good to go with the E320... Do you see the locked / unlocked status change=
 between consecutive runs of something like gpsmon on the E320?</div><div c=
lass=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br></div><=
div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">There =
were some early-ish runs of the E320 that are eligible for a GPSDO rework, =
feel free to send <a href=3D"mailto:support@ettus.com">support@ettus.com</a=
> a direct email with your E320&#39;s serial number and I can see if yours =
is one of the affected units.</div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=
=3D"font-family:verdana,sans-serif">Sam Reiter</div></div></div></div></div=
></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Mon, Mar 23, 2020 at 4:27 PM Long, Jeffrey P. via USRP-user=
s &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">





<div lang=3D"EN-US">
<div class=3D"gmail-m_-5100932759653853636WordSection1">
<p class=3D"MsoNormal">Has anyone had issues with the E320 GPS locking or s=
taying locked? I have a LabSat GNSS simulator that I am reliably able to ge=
t a E310, X310, and even a N310 to lock to however the E320 I just got will=
 occasionally lock and then fall out
 almost immediately. I used mender to up it to 3.15LTS and everything else =
works pretty well. I run the e320bist on the gpsdo and it reports it mostly=
 being unlocked but occasionally it will lock for a minute or so. When it d=
oes lock I can run the query gpsdo
 immediately after and it will report locked but again it only lasts for a =
min or so.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks<u></u><u></u></p>
<p class=3D"MsoNormal">Jeff<u></u><u></u></p>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000003c959305a19a0118--


--===============1949556016343000468==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1949556016343000468==--

