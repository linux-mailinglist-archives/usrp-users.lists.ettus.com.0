Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A384813B155
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 18:50:18 +0100 (CET)
Received: from [::1] (port=36272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irQKX-0008Ea-M3; Tue, 14 Jan 2020 12:50:17 -0500
Received: from mail-lj1-f173.google.com ([209.85.208.173]:38020)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <sam.reiter@ettus.com>)
 id 1irQKT-000874-Nd
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 12:50:13 -0500
Received: by mail-lj1-f173.google.com with SMTP id w1so15373406ljh.5
 for <usrp-users@lists.ettus.com>; Tue, 14 Jan 2020 09:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9TNKBLGGv3gkdYzD3LtpSytaF+QReaEtytgF3eG8EEU=;
 b=zODmP/60jnvny/dTKpenyh5DT0FdRuJMXO5eIFolUhLOHUfus1Od//6KDWlpjYYxoI
 Aqh/MXWDxorc4++SlxljJt1nHV62STlqBM1vNqqkqytWcDK+YoHNaDE14rfxALVWkT4S
 vIRJvpM4rrtFEvreAuLSwqGrqNXPhSwjCnscsuhRauZEEEAsLca8dYkoFOVMrHQWd48j
 87aPDPziZBj2UPD+mqxOYOVDYO7rUOUIESI5/631FLZ2ZzRbLQVm27EtqKySttKyzK+J
 +zPkGcAZKVM004Snr7qMGsi0VvISh2vK2nThlMv69Cqi3IMX5jygYeVERKo+wN0+6dJ/
 u/PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9TNKBLGGv3gkdYzD3LtpSytaF+QReaEtytgF3eG8EEU=;
 b=Sq2LljVqFHJxisC3gXd0jGK5iVB9XJ78uwQiJT1WrAydlf9ZPdxy+KfihjNMeyvBPe
 dm/UHw0FouUXtGauJL1nL6NrlB4T9pJ3EB/eNncGD+Y1iJEfHTzCq4QeP26NAKjeh/Ht
 NTohs+YlcQY7jTLDP/Gn5hllI9AqE5hth41tuo15pc5UDgd8nq1kUBsSyTYP2ft1d4FV
 EIluLJ3hAW3da9UOY5qrzGwA22BnCGqYhQHdfN5+B0lmWZ1zZFIIabvTxeVBvGQNMMa8
 KpvWjEw8e3qhpYNuKUevdoiwZJ969aeGv8EOzDBeGT8gDRFDBKeubOkOquMkHDZxQc3W
 i/tA==
X-Gm-Message-State: APjAAAVUI4eBuc9ofZp5yw24OKUQH8Km695vv6PfoyM7UbQ3Ve49bngT
 LlUiyV6duuwikhB1RTILUJKm1LXeFdXeYSjHgLels9gf
X-Google-Smtp-Source: APXvYqypDEIcVklbaFHVs5Vu6r9UKpVE+0KWYY/IoheroZW9SSkSlNbNwddJbuO/u5OJenkPJatLTLN8tNXza6Fw5u4=
X-Received: by 2002:a2e:96c4:: with SMTP id d4mr15308738ljj.225.1579024172527; 
 Tue, 14 Jan 2020 09:49:32 -0800 (PST)
MIME-Version: 1.0
References: <1258007910.11247090.1579006378862.ref@mail.yahoo.com>
 <1258007910.11247090.1579006378862@mail.yahoo.com>
In-Reply-To: <1258007910.11247090.1579006378862@mail.yahoo.com>
Date: Tue, 14 Jan 2020 11:49:21 -0600
Message-ID: <CANf970at9cyKx9DftHoV+if8=tsW+SUCX_TdYHh-P+ZQ0YEjtw@mail.gmail.com>
To: voonna santosh <santu_voonna@yahoo.com>
Subject: Re: [USRP-users] Transmitting at required sampling rate than
 supported
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
Content-Type: multipart/mixed; boundary="===============4720818968594129266=="
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

--===============4720818968594129266==
Content-Type: multipart/alternative; boundary="000000000000e542b0059c1d36ee"

--000000000000e542b0059c1d36ee
Content-Type: text/plain; charset="UTF-8"

The X310 is capable of 200e6 or 184.32e6 master clock rates. 184.32 / 3 = 61.44
which is close, but doesn't sound like it's exactly what you're looking
for.

If that doesn't work for you, then my recommendation would be for you to
oversample with the X310 and then resample your data once it is back on the
host.

Sam Reiter


On Tue, Jan 14, 2020 at 6:53 AM voonna santosh via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi There,
>    Good morning. I am trying to transmit a file which is sampled at
> 62.5MHz, which I couldn't. I know since SDR supports 200MHz, because of
> which we can only achieve divisible sampling rate. Is it possible to
> support 62.5MHz?
> BR,
> Santosh
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e542b0059c1d36ee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The X310 is capable of 200e6 or 184.32e6 master clock=
 rates. 184.32 / 3 =3D <span class=3D"gmail-qv3Wpe" id=3D"gmail-cwos">61.44=
 which is close, but doesn&#39;t sound like it&#39;s exactly what you&#39;r=
e looking for. <br></span></div><div><span class=3D"gmail-qv3Wpe" id=3D"gma=
il-cwos"><br></span></div><div><span class=3D"gmail-qv3Wpe" id=3D"gmail-cwo=
s">If that doesn&#39;t work for you, then my recommendation would be for yo=
u to oversample with the X310 and then resample your data once it is back o=
n the host. <br></span></div> <br><div><div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div><div d=
ir=3D"ltr">Sam Reiter </div></div></div></div></div><br></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 1=
4, 2020 at 6:53 AM voonna santosh via USRP-users &lt;<a href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div><div style=3D"font-f=
amily:Helvetica Neue,Helvetica,Arial,sans-serif;font-size:16px"><div dir=3D=
"ltr">Hi There,</div><div dir=3D"ltr">=C2=A0 =C2=A0Good morning. I am tryin=
g to transmit a file which is sampled at 62.5MHz, which I couldn&#39;t. I k=
now since SDR supports 200MHz, because of which we can only achieve divisib=
le sampling rate. Is it possible to support 62.5MHz?</div><div dir=3D"ltr">=
BR,</div><div dir=3D"ltr">Santosh</div></div></div>________________________=
_______________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e542b0059c1d36ee--


--===============4720818968594129266==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4720818968594129266==--

