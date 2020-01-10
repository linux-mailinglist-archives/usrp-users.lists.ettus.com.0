Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 977E21371BF
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jan 2020 16:51:27 +0100 (CET)
Received: from [::1] (port=58780 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1ipwZK-0006hz-CZ; Fri, 10 Jan 2020 10:51:26 -0500
Received: from mail-lf1-f48.google.com ([209.85.167.48]:44867)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1ipwZF-0006dt-Tv
 for usrp-users@lists.ettus.com; Fri, 10 Jan 2020 10:51:22 -0500
Received: by mail-lf1-f48.google.com with SMTP id v201so1813972lfa.11
 for <usrp-users@lists.ettus.com>; Fri, 10 Jan 2020 07:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yrmIfcm+QlqaVdZIWdGHETzyrHdlcFIGRlrsjFVOadY=;
 b=IV+2pID3jqDMaT4DbS7Qns+aLOy+ZO40ik+crccPNFHB62+QTsHiH08oh5YVculhfD
 oVZ07GjsJrjbnT3+9UZn/YtVykqmxhGEAA/wdzwMLt9Zr6QamZpGBF6B41pN1Z2eiitv
 AOTel4Rzw+LDZjgectpcD86qLGgZwA9YngmKjmALzkq+vwTugCBuK2WZilTpp+izwpyR
 nEazssRkJcC0GrCu4iPH0mFPV2qdXWXySxjGlCNJG4tiFQfBAtvEtAyvcPQzXLCktKw6
 ChxYiKUM4B1MzcedG7GDUwVmw3zI9gjz1p4IY+Nic2/+hhvnIaH8/F99iAkD7/gCNwJC
 F/Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yrmIfcm+QlqaVdZIWdGHETzyrHdlcFIGRlrsjFVOadY=;
 b=K+5VLx0UEzsDq1aROKauilYsBSmz2L0ttjOJkV3T1Tmmmq1cED/PiRqZ0gjHdXMM2/
 8079DnJSHXPKhRabRmyyWWenfkv6fod3bqzEP0rk68KqPv1aK1K2T1OAY6GRVsoCWxdP
 pPhjdvyFXfN86aI/QbR7QSryEmOavPFsp25pO9gDBd8vnzgPJzyzXyrMohWbQnX+dIKN
 O4VF8Dq5pmC6nelZTWV6sz9fj4Gj1UCJ2uWTiMa26xZsESlIBgU+pv8hqn0pauOIiHs6
 SyMK9xwpQdhKZBHc7hQordiBONFXyMD+5Tlc6yaLl6Fut3ZjoGkVrRFv/sqqOlbL6skm
 tHqA==
X-Gm-Message-State: APjAAAU1PA/xUX05Or6VYYvPaMX9BTMft0k/SwWhU43iRRqbrqdPPWxq
 ZdmgXv0tIGwTkkV8TCVaZ9/WeZvBDMGyd5xphouCu/lc
X-Google-Smtp-Source: APXvYqwMBVF5GG4GqHGd5X/n22tPuQr+2cUpDeSXpROhRSMxbqKKHmYVbrShoLHhC38DIEFQJnHx/lRR5s/oEaz5Oao=
X-Received: by 2002:ac2:5f49:: with SMTP id 9mr2719836lfz.151.1578671440639;
 Fri, 10 Jan 2020 07:50:40 -0800 (PST)
MIME-Version: 1.0
References: <CAC5MLo6XRYaw7MahbQvvgnda+6Yud_nkUNOYdbacfiGR1Z0jKg@mail.gmail.com>
In-Reply-To: <CAC5MLo6XRYaw7MahbQvvgnda+6Yud_nkUNOYdbacfiGR1Z0jKg@mail.gmail.com>
Date: Fri, 10 Jan 2020 09:50:29 -0600
Message-ID: <CANf970a2QsvOXf4W+qfnHfwbPo=+=O5_tifcy-VcC2_S2p5WyA@mail.gmail.com>
To: MILIND KUMAR VADDIRAJU <ee16b025@ee.iitm.ac.in>
Subject: Re: [USRP-users] Regarding N321 shutdown
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
Cc: usrp-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8304988317186600706=="
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

--===============8304988317186600706==
Content-Type: multipart/alternative; boundary="0000000000006fd76e059bcb1678"

--0000000000006fd76e059bcb1678
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Milind,

You should run that command when you're ssh'ed into the device or have a
serial session open. That command won't affect the N321 if it is simply run
from a host terminal (I'd imagine it will just shut down your host).

Connecting via SSH:
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connect=
ing_to_the_ARM_via_SSH

Setting up a Serial Console Connection:
https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setting=
_up_a_Serial_Console_Connection

-Sam

On Fri, Jan 10, 2020 at 6:30 AM MILIND KUMAR VADDIRAJU via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi,
>
> I'm new to the world of SDR and have just been handed a USRP N321. The
> guide here
> <https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide>
> strongly recommends shutting the system down correctly instead of using a
> long press of the power button. However the command
>
> shutdown =C2=AD-h now
>
> in the terminal of a host computer connected to the USRP via an ethernet =
cable fails. Could
> someone please let me know what the appropriate method to shut the USRP d=
own is?
>
> Cheers,
>
> Milind
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--0000000000006fd76e059bcb1678
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Milind,</div><div><br></div><div>You should run that =
command when you&#39;re ssh&#39;ed into the device or have a serial session=
 open. That command won&#39;t affect the N321 if it is simply run from a ho=
st terminal (I&#39;d imagine it will just shut down your host). <br></div><=
div><br></div><div>Connecting via SSH: <a href=3D"https://kb.ettus.com/USRP=
_N300/N310/N320/N321_Getting_Started_Guide#Connecting_to_the_ARM_via_SSH">h=
ttps://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Connecti=
ng_to_the_ARM_via_SSH</a></div><div><br></div><div>Setting up a Serial Cons=
ole Connection: <a href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Ge=
tting_Started_Guide#Setting_up_a_Serial_Console_Connection">https://kb.ettu=
s.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Setting_up_a_Serial_Co=
nsole_Connection</a></div><div><br></div><div><div dir=3D"ltr" class=3D"gma=
il_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div=
 dir=3D"ltr">-Sam<br></div></div></div></div></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jan 10, 2020 at =
6:30 AM MILIND KUMAR VADDIRAJU via USRP-users &lt;<a href=3D"mailto:usrp-us=
ers@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hi,</d=
iv><div><br></div><div>I&#39;m new to the world of SDR and have just been h=
anded a USRP N321. The guide <a href=3D"https://kb.ettus.com/USRP_N300/N310=
/N320/N321_Getting_Started_Guide" target=3D"_blank">here</a> strongly recom=
mends shutting the system down correctly instead of using a long press of t=
he power button. However the command <br><pre>shutdown =C2=AD-h now<br><fon=
t size=3D"2"><font face=3D"georgia,serif"><br>in the terminal of a host com=
puter connected to the USRP via an ethernet cable fails. Could <br>someone =
please let me know what the appropriate method to shut the USRP down is?</f=
ont></font><br><font size=3D"2"><span style=3D"font-family:georgia,serif"><=
br>Cheers,</span></font><font size=3D"2"><span style=3D"font-family:georgia=
,serif"><br></span></font></pre><pre><font size=3D"2"><span style=3D"font-f=
amily:georgia,serif">Milind</span></font><br></pre> </div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--0000000000006fd76e059bcb1678--


--===============8304988317186600706==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8304988317186600706==--

