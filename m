Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4C423DB77
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 17:54:32 +0200 (CEST)
Received: from [::1] (port=52082 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3iDu-0007Kr-V9; Thu, 06 Aug 2020 11:54:30 -0400
Received: from mail-qv1-f41.google.com ([209.85.219.41]:37233)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1k3iDr-0007DM-IR
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 11:54:27 -0400
Received: by mail-qv1-f41.google.com with SMTP id y11so19652071qvl.4
 for <usrp-users@lists.ettus.com>; Thu, 06 Aug 2020 08:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=9zkMRJt+eQ/ztDL1U+U5ZZimg4wBTpX5GOD7tNGRTXE=;
 b=eSH61lJSGUkafNLMdqXkFv85EcXo+WYyrX106ZK6bbo1zPL8ssprKBKEeFlbBV8jxF
 cWR2/9M2UNb9HEsUlNVzIm6hLVy74B/xHtE5370qf9wZKmQF/UgVLIjD+WSu7m+O8iHl
 aj8GiUa8SjkVNN4LNO+bf+GsoS8iDTSyBuOyNL98DGqVzBprGdg3W6gY1fp4Sxkg3pmz
 CyWQjLuNIsiBdQnwTWAkCDmAsShgFqvN1mRjwtgOD7/xoc2wTVuWeBFUWH+UgRRAba2j
 iGJg7oRVT5q/F0/NcaESyDwjbj8ITZI/IG+DWjnQQG6Q/kRSvhTzE0eP2Nwxho4YD9iE
 EqtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=9zkMRJt+eQ/ztDL1U+U5ZZimg4wBTpX5GOD7tNGRTXE=;
 b=Ahrl6G0IzTW4dLjBfFh3dsTpQIYoNVg2ShqKUo8z/Ys1V04VhdbAqngBdmomibLAc/
 MaT2rVa4P0ubIMIGUi/yme59JnhZiociAgB8Gtbyeebt+QFZVi2c8OC0d1nOOEDAe2t7
 Zd3FK4conNFCKcB91iN7qmzDyVxBNZe69aaiji/dKzSANB13NwcksI68PY9M0chDZr4G
 VwT0fHgCRhqk8b8hYfZyR7h6vxm8mviVU1QsyfuUbivxPfQVljp7DsHQvo7ncSALnTCO
 P9/N7AH6DcsLvr9QIRdlWKj3gtRJw4GYKmRFut059rMif6dfNplvfiKyiEOysiX4c9HN
 VS/w==
X-Gm-Message-State: AOAM532AjHE1Xb+VcCikLpsyIVoW7D5z0iyH3Gv3RgMqkvavW4sFY98s
 ZKD5ZzzcBbDDdQTGi7UbtWvlAqU/vEo=
X-Google-Smtp-Source: ABdhPJzZQlE9jiudpgL1M3j0G5NgARsSyfage8BRHBGEP1qfLAcrchdqKKiRqlYcNGbXSf08ucYOFA==
X-Received: by 2002:a05:6214:724:: with SMTP id
 c4mr10016520qvz.0.1596729226810; 
 Thu, 06 Aug 2020 08:53:46 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id t69sm4274265qka.73.2020.08.06.08.53.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 06 Aug 2020 08:53:46 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Thu, 6 Aug 2020 11:53:45 -0400
Message-Id: <838FBFE1-52F7-445B-B841-E05F0B7FEA31@gmail.com>
References: <PN1PR0101MB18888E07850F604DE16381328B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
In-Reply-To: <PN1PR0101MB18888E07850F604DE16381328B480@PN1PR0101MB1888.INDPRD01.PROD.OUTLOOK.COM>
To: "Sourin Mondal (Vehere)" <sourin.mondal@vehere.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] USRP not receiving data from two antennas using
 PCI card
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Content-Type: multipart/mixed; boundary="===============1162083840061088970=="
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


--===============1162083840061088970==
Content-Type: multipart/alternative; boundary=Apple-Mail-1D079AF5-0ECE-412C-81DA-869A6261A962
Content-Transfer-Encoding: 7bit


--Apple-Mail-1D079AF5-0ECE-412C-81DA-869A6261A962
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

What version of UHD?

Could you share the flow graph you=E2=80=99re using?



Sent from my iPhone

> On Aug 6, 2020, at 11:47 AM, Sourin Mondal (Vehere) via USRP-users <usrp-u=
sers@lists.ettus.com> wrote:
>=20
> =EF=BB=BF
> Hi,
>=20
> I am using USRP 2955 and want to receive two channels at 100 MSPS each sim=
ultaneously. I have connected usrp with PCIe. I am running my code but only o=
ne channel is getting received. Other channel is sending zeros only. I am us=
ing Ubuntu 18.04. Previously one year back I faced the same problem using US=
RP 2955 along with PCIe and running gnu radio. Only one channel popped up in=
 the frequency sink graph and second graph was static with no signal. Howeve=
r, 2954 was giving both channels. Where is the problem? How can I correct th=
at to stream two channels simultaneously using usrp 2955 and PCIe? Please he=
lp.
>=20
> Regards,
> Sourin
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-1D079AF5-0ECE-412C-81DA-869A6261A962
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">What version of UHD?<div><br></div><div>Cou=
ld you share the flow graph you=E2=80=99re using?</div><div><br></div><div><=
br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><block=
quote type=3D"cite">On Aug 6, 2020, at 11:47 AM, Sourin Mondal (Vehere) via U=
SRP-users &lt;usrp-users@lists.ettus.com&gt; wrote:<br><br></blockquote></di=
v><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF

<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-1=
">



<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
Hi,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size:=
 12pt; color: rgb(0, 0, 0);">
<div dir=3D"ltr" style=3D"margin: 0px; font-size: 15px; font-family: &quot;S=
egoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot=
;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sa=
ns-serif; background-color: rgb(255, 255, 255)">
I am using USRP 2955 and want to receive two channels at 100 MSPS each simul=
taneously. I have connected usrp with PCIe. I am running my code but only on=
e channel is getting received. Other channel is sending zeros only. I am usi=
ng Ubuntu 18.04. Previously one
 year back I faced the same problem using USRP 2955 along with PCIe and runn=
ing gnu radio. Only one channel popped up in the frequency sink graph and se=
cond graph was static with no signal. However, 2954 was giving both channels=
. Where is the problem? How can
 I correct that to stream two channels simultaneously using usrp 2955 and PC=
Ie? Please help.</div>
<div dir=3D"ltr" style=3D"margin: 0px; font-size: 15px; font-family: &quot;S=
egoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot=
;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sa=
ns-serif; background-color: rgb(255, 255, 255)">
<br>
</div>
<div dir=3D"ltr" style=3D"margin: 0px; font-size: 15px; font-family: &quot;S=
egoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot=
;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sa=
ns-serif; background-color: rgb(255, 255, 255)">
Regards,</div>
<div dir=3D"ltr" style=3D"margin: 0px; font-size: 15px; font-family: &quot;S=
egoe UI&quot;, &quot;Segoe UI Web (West European)&quot;, &quot;Segoe UI&quot=
;, -apple-system, BlinkMacSystemFont, Roboto, &quot;Helvetica Neue&quot;, sa=
ns-serif; background-color: rgb(255, 255, 255)">
Sourin</div>
</div>


<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list</span><br><span>USRP-users@lists.ettus.com</span><br><span=
>http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</span><b=
r></div></blockquote></div></body></html>=

--Apple-Mail-1D079AF5-0ECE-412C-81DA-869A6261A962--


--===============1162083840061088970==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============1162083840061088970==--

