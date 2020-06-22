Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F4C202EF8
	for <lists+usrp-users@lfdr.de>; Mon, 22 Jun 2020 06:12:10 +0200 (CEST)
Received: from [::1] (port=42864 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jnDo4-0002X1-01; Mon, 22 Jun 2020 00:11:40 -0400
Received: from mail-oo1-f47.google.com ([209.85.161.47]:42595)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <colbyboyer@genxcomminc.com>)
 id 1jnDnz-0002TA-Ut
 for usrp-users@lists.ettus.com; Mon, 22 Jun 2020 00:11:35 -0400
Received: by mail-oo1-f47.google.com with SMTP id 127so3069992ooc.9
 for <usrp-users@lists.ettus.com>; Sun, 21 Jun 2020 21:11:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=genxcomminc.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=66pF8OrSooQRxeGrD1wdy9dzrUT6cYC5IfsXBwL+KOs=;
 b=ZBUFkjcBVQo7wMp/nH15qwkHIsEX2og4GRm37/LlYYC23B8PheO6lGZE7CdKd5jzPs
 EgX4oIiU3eAcFyWdSgTDVI0TMBSMgG9yr8hsXr5Q0KX8aN+wGbeHRnysqkynYaNgVh/5
 pkGQmz6QJ/lQ6DylPF3GnjXl0pL13ArDmlPiH3CWCcQv90UmpAqkvhi3AALn40jSx4kW
 nrmbnftqSok1swwrZ6nl7FtY4BMrSLbHpGiXE6K4EhbZYHlRivW7kgN5MDXYZKJaWxoL
 qc33y3C8PBtDPeO5goXzWDDAOmW6kL41/h++5cXmrYhURmNxt/Wou+t2m52ZkZV+5BNU
 eACA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=66pF8OrSooQRxeGrD1wdy9dzrUT6cYC5IfsXBwL+KOs=;
 b=mEMwfvgPpncf+1J9TRjxeUAA/ojthx4cMjtb6rb4I9bG6Is8HUEWSDe/S4l2IGP/eW
 yQz0rwFRb3LJtLdkF3r6Wxd6nNEhLGBP1SarKrU85oqnjjzvXYR7oTW2ceLY+zq9A0lv
 5Z4+5V6EwJ1c85ti3WYcxWwEtTnYEt/KJ8NHnQoNeEAVAR7WlEAwsYirQ8ofkMqrakKa
 8bWLNj2R6AXKWqvrGvxlIyVn7RGHBn6Go2/ZBu6V65/nRQMkcyjGHx1vndpyNLQ3YbuJ
 iTwfJDpL2D/lNEnCpP253GtvanXClr9IfqZBPNC+ORrO0wBBKrP6ipWJ/hCqFr/kWi3g
 D0iA==
X-Gm-Message-State: AOAM532HsrQqcLfHEvlwDrjuHPKk0SHMSKCjxYrlJwdYLGJaHSLylr9H
 aD7ErBN72R12Mt7jJ3eUVbYtVs99scw+VhE0vnu9dg==
X-Google-Smtp-Source: ABdhPJwkH3FYJ7GfHCYt5Wx8fqe/UjMYP1Qw8a2Oqd4dNs3twSjel6Ir7f1a08dTz5idRiBD9hoqQVbWOfihxLYhxKo=
X-Received: by 2002:a4a:4f44:: with SMTP id c65mr2820039oob.55.1592799055183; 
 Sun, 21 Jun 2020 21:10:55 -0700 (PDT)
MIME-Version: 1.0
References: <CACxOa3Zr_hPaEtu1_OGHfZn=7B_t1CWmYBYasVYVkrg4ZOaSpg@mail.gmail.com>
 <5EEB7DDA.2060403@gmail.com>
 <CACxOa3ZW4x+2+vXnpwvf34bUdx+F_rQ8pADBoyDB7WAHJnv1MA@mail.gmail.com>
 <5EEBEB8D.9060408@gmail.com>
 <CACxOa3ZtKxvsXeGCER7BO2-YJRoKYLWScE6TasFKw-X5aFrRFg@mail.gmail.com>
 <5EEC262E.9000309@gmail.com>
In-Reply-To: <5EEC262E.9000309@gmail.com>
Date: Sun, 21 Jun 2020 23:10:45 -0500
Message-ID: <CACxOa3Yuz5+WSJekXvhn_k9acamV0XDWCiciwbhjH5O48rJ0Kg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] SW control of DB TX/RX DSA on N310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Colby Boyer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Colby Boyer <colbyboyer@genxcomminc.com>
Content-Type: multipart/mixed; boundary="===============1539735789534475397=="
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

--===============1539735789534475397==
Content-Type: multipart/alternative; boundary="000000000000e2145c05a8a46dcd"

--000000000000e2145c05a8a46dcd
Content-Type: text/plain; charset="UTF-8"

Marcus, thank you for following up with R&D.

Traced the call to 'void magnesium_radio_ctrl_impl::_set_dsa_val' and that
goes through the VITA/CHDR interface.

The AD9371 gain control goes through the MPM RPC interface.

Thanks,
Colby

On Thu, Jun 18, 2020 at 9:42 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/18/2020 07:57 PM, Colby Boyer wrote:
> > Thank you Marcus.
> >
> OK, so talking to one of the developers, Michael West, only SOME of the
> notional control traffic goes through MPM (and thus through the RPC
>    mechanism).
>
> The rest is carried via VITA/CHDR in a more "traditional" manner, such
> as "peek/poke" traffic, etc.
>
>
>

--000000000000e2145c05a8a46dcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Marcus, thank you for following up with R&amp;D. <br>=
</div><div><br></div><div>Traced the call to &#39;void magnesium_radio_ctrl=
_impl::_set_dsa_val&#39; and that goes through the VITA/CHDR interface. <br=
></div><div><br></div><div>The AD9371 gain control goes through the MPM RPC=
 interface. <br></div><div><br></div><div>Thanks,</div><div>Colby<br></div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Jun 18, 2020 at 9:42 PM Marcus D. Leech &lt;<a href=3D"mailto:patch=
vonbraun@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">On 06/18/2020 07:57 PM, Colby Bo=
yer wrote:<br>
&gt; Thank you Marcus.<br>
&gt;<br>
OK, so talking to one of the developers, Michael West, only SOME of the <br=
>
notional control traffic goes through MPM (and thus through the RPC<br>
=C2=A0 =C2=A0mechanism).<br>
<br>
The rest is carried via VITA/CHDR in a more &quot;traditional&quot; manner,=
 such <br>
as &quot;peek/poke&quot; traffic, etc.<br>
<br>
<br>
</blockquote></div>

--000000000000e2145c05a8a46dcd--


--===============1539735789534475397==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1539735789534475397==--

