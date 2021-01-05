Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C07A22EA578
	for <lists+usrp-users@lfdr.de>; Tue,  5 Jan 2021 07:35:30 +0100 (CET)
Received: from [::1] (port=45122 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kwfwH-0003EV-39; Tue, 05 Jan 2021 01:35:29 -0500
Received: from mail-vs1-f47.google.com ([209.85.217.47]:37111)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1kwfwD-00031j-1K
 for usrp-users@lists.ettus.com; Tue, 05 Jan 2021 01:35:25 -0500
Received: by mail-vs1-f47.google.com with SMTP id j140so15828883vsd.4
 for <usrp-users@lists.ettus.com>; Mon, 04 Jan 2021 22:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q0cohQv7Phu9XCs//rJWpHJvMFPvB/vsCjleH0fekFc=;
 b=bwnFwM2T7t9eS3FtDkkpM/mbSAdxj0ducgWtYAYpbVWXFYfsgPvElXuxGft9k1jLsi
 5JhB0ITSjB96m6GbS6m8b8/aAPuCvRh+LINKlLH9jhHC5TLJojzFf0MtwMsh7o0xkcI1
 q+Nv0jYJB1eHjSuQ1mSf8RpDHN8qg4VPlERIoWmS+qgFyMp7Yf6bbEFsbAEWb9d+eFFr
 l9MOpLKr/P9/9Z0ozXWUKWlPzhg4PyCYGzJK8Vz+wh6rU7advdnuEliKayLReQe5QYLa
 +eA5F6Dplf8kvRYBtjmT4QzqGFfoVtgA28602+nAwVeEMLfTPU0Ab0p9+IPvtiaqbaYC
 coPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q0cohQv7Phu9XCs//rJWpHJvMFPvB/vsCjleH0fekFc=;
 b=om+BE5NtUZmoS/dVFtWIig0BdFG5r8DuDk9OtCGzWywXargsUffagHaKDHT4CckkoH
 HyzGPJvbtdi3iS2Ec1jq0P1XMVQOwBS26FPMQFHkNXcYXjz+ecOBNOLfb9M9lr51cwO8
 eSNcwikbIr9U/Oj3dnsamcPEfcvvg63nqDFvdMVOvKrQ4kYUFNu1hxxiZ0KCHgOYD3xu
 cpYRVW3BB8t4OFiy1WZRSAiHaH6MeHjER6x6w20wkQU8+oPAc3xhCZtoNMSyqxckBz68
 a8ulph5EqA7zhvl15DhGAg+WyU8yMSRVsG2sjX+7xNDUm4+QB6As0y6BbTSbWJhXtlv+
 MQzA==
X-Gm-Message-State: AOAM533uR3RgO1ynDCDItg6Xtir0JylznOauAjKk1IqmqMD9k7unNM92
 YQ30BMW+BXMFG3usbL/0RTW8CoE/dmO9aGre3LhjhRto
X-Google-Smtp-Source: ABdhPJzPz6HfExbER273wD9hpXS+Vyl0X01Ts2GizxfDgVh4iZ7qb/OHbitIij0t/ro9MpmKGpsbyFMpZF0sKHZrcN4=
X-Received: by 2002:a67:e286:: with SMTP id g6mr47738373vsf.42.1609828484323; 
 Mon, 04 Jan 2021 22:34:44 -0800 (PST)
MIME-Version: 1.0
References: <CAJZBg9WtrW=1Th-VfOWZs5r3p++2zGtZioCfuNzz7_v89f_Edw@mail.gmail.com>
In-Reply-To: <CAJZBg9WtrW=1Th-VfOWZs5r3p++2zGtZioCfuNzz7_v89f_Edw@mail.gmail.com>
Date: Tue, 5 Jan 2021 01:34:08 -0500
Message-ID: <CAL7q81vf-G==8JJKmB-dPtpFtzW8gxRYj_7snHn5=BOrjT4YQw@mail.gmail.com>
To: =?UTF-8?B?xJDDrG5oIFR14bqlbiBIb8Ogbmc=?= <tuanmcx58@gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] How to build RFNoC blocks in /lib/rfnoc/blocks
 directory?
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
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============1978640634587692735=="
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

--===============1978640634587692735==
Content-Type: multipart/alternative; boundary="000000000000f52e1205b82166b7"

--000000000000f52e1205b82166b7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tuan,

A few of the in-tree RFNoC blocks do not have GRC support yet. The window
block is one of them. That will come in a future update, although I don't
have an exact timeline.

Jonathon

On Sun, Jan 3, 2021 at 11:24 PM =C4=90=C3=ACnh Tu=E1=BA=A5n Ho=C3=A0ng via =
USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi everyone,
>
> I'm learning RFNoC with UHD 4.0 and GRC 3.8. I have a question about how
> to build RFNoC blocks in /lib/rfnoc/blocks directory?
>
> For example, with window block, by doing the following steps:
> + Using rfnocmodtool to create test module with window block.
> + Copy yml file and fpga files from window lib directory to test director=
y.
> + Run cmake, testbench, make install command.
>
> although the window block has been built successfully, its GRC block
> appeared with only one user_register like gain example block.
> The gr_ettus has been installed but no GRC block for window block or some
> others.
> So how I can build the blocks in the lib directory with full registers an=
d
> parameters?
> I can not find any guiding document about that thing, hope that it will b=
e
> supported in the near future.
>
> Thank you!
> Tuan
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000f52e1205b82166b7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Tuan,<div><br></div><div>A few of the in-tree RFNoC blo=
cks do not have GRC support yet. The window block is one of them. That will=
 come in a future update, although I don&#39;t have an exact timeline.</div=
><div><br></div><div>Jonathon</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Sun, Jan 3, 2021 at 11:24 PM =C4=90=
=C3=ACnh Tu=E1=BA=A5n Ho=C3=A0ng via USRP-users &lt;<a href=3D"mailto:usrp-=
users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi everyo=
ne,<div><br></div><div>I&#39;m learning RFNoC with UHD 4.0 and GRC 3.8. I h=
ave a question about how to build RFNoC blocks in=C2=A0/lib/rfnoc/blocks di=
rectory?=C2=A0</div><div><br></div><div>For=C2=A0example, with window block=
, by doing the following steps:</div><div>+ Using rfnocmodtool to create te=
st module with window block.<br></div><div>+ Copy yml file and fpga files f=
rom window lib directory to test directory.<br></div><div>+ Run cmake, test=
bench, make install command.<br></div><div><br></div><div>although the wind=
ow block has been built successfully, its GRC block appeared with only one =
user_register like gain example block.=C2=A0</div><div>The gr_ettus has bee=
n installed but no GRC block for window block or some others.</div><div>So =
how I can build=C2=A0the blocks in the lib directory with full registers an=
d parameters?</div><div>I can not find any guiding document about that thin=
g, hope that it will be supported in the near future.</div><div><br></div><=
div>Thank you!</div><div>Tuan</div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000f52e1205b82166b7--


--===============1978640634587692735==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1978640634587692735==--

