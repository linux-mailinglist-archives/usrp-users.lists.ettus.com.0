Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5BFFFE18
	for <lists+usrp-users@lfdr.de>; Mon, 18 Nov 2019 06:41:53 +0100 (CET)
Received: from [::1] (port=50168 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iWZnM-0007IN-8I; Mon, 18 Nov 2019 00:41:52 -0500
Received: from mail-il1-f169.google.com ([209.85.166.169]:43138)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <coxe@close-haul.com>) id 1iWZnI-00072p-1Q
 for USRP-users@lists.ettus.com; Mon, 18 Nov 2019 00:41:48 -0500
Received: by mail-il1-f169.google.com with SMTP id r9so14831999ilq.10
 for <USRP-users@lists.ettus.com>; Sun, 17 Nov 2019 21:41:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=quanttux-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BVUbqx9/IFx5j89KeTpC/zEjjzTgMnOx50cZNDxkhu4=;
 b=bJ/bidogxeG0Tk2ZwkdredzyX9tSZEAuWV2E+SMBh/XlrTQXmBCgyn/2ONebSco6tZ
 seeByt4K8QNB9L+ISXcG1r9J09uf6fsDTHqLumePwrWPuEEVyV9DaVy9iaLj94jMhHOX
 UYiQ7OxRB/4d6yfd7InITBEr47ofg0l7y3DFhOoTFG7r9mgxvZhB1kxhsM9SJ9Limeap
 K3ARWDhdZzIbfG/fqNJ6cLvbjVE6U57fZ/KOJJi255vGBHOEWzNlO4Kab+Y/qOyOJEBF
 0iqrl54WrNKZqwbs5KecGVqjDePMFdD4ZnSY6N+c8lvIehUQ2j2FYhaSsFqMMVABb+oL
 vlzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=BVUbqx9/IFx5j89KeTpC/zEjjzTgMnOx50cZNDxkhu4=;
 b=DHC2fr+HuHUGaGW9TkS8U+ouUIqaZ5H0QCP9MGObj9fwjDi+lPrsjK4DCEtbToxVjQ
 z2qgrRwvvFuFvIjIneQNbmbZQb/Lo+Er7nAvVCsd1NuG9p/ycIz1UeAHysRLpb174u9O
 QS0+LNTQARqXGTccVCqcnLnrvpQyvwyrJ63P/4ftIXDtznhuFIwPzwJgbUx+mumK3WxO
 uKYF37SYAWjCgxKIxAHuvBPqSWeGIANWJxr5gWN06B6AumPpOmgYDHUZVWZQOPdTSUIv
 uo/dHctdCSexT4Tm67uKu14/PfQqGDJR9av8wKjCPL8jc5VkSdsVT5xWd4mpgRJk3hbN
 QKvw==
X-Gm-Message-State: APjAAAWyaApjHfE/CHhCaUCFP415vGw+z/TpZn1tmKPxVIiJBbqQsmZi
 rbm/1U1ffgdsnP4muELgOcD2ZW0R+WmiDayAhUHc2g==
X-Google-Smtp-Source: APXvYqxvIGJY39DCfJnoKFyq94VwWoiQIBU7sM6v/DiB5Vu/1rzgGOR56VLyaoQTNTF/GLJrCJZXYSuuaZ3CSDu6QgU=
X-Received: by 2002:a92:4804:: with SMTP id v4mr14099733ila.201.1574055667223; 
 Sun, 17 Nov 2019 21:41:07 -0800 (PST)
MIME-Version: 1.0
References: <HK0PR03MB5091427A23E5530B6A978CCF9D4D0@HK0PR03MB5091.apcprd03.prod.outlook.com>
 <7BAFE73A-6429-4070-B312-839D557B6C3B@gmail.com>
In-Reply-To: <7BAFE73A-6429-4070-B312-839D557B6C3B@gmail.com>
Date: Sun, 17 Nov 2019 21:40:56 -0800
Message-ID: <CAKJyDkJiABmoJDXUHxH0=-=SshPp6SHSSJ31n0boE2TNwtWTZg@mail.gmail.com>
To: Marcus D Leech <patchvonbraun@gmail.com>
Subject: Re: [USRP-users] N310 schematic don't show all part
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
From: Robin Coxe via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robin Coxe <coxe@quanttux.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4563844882497684239=="
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

--===============4563844882497684239==
Content-Type: multipart/alternative; boundary="000000000000e6e85605979864dc"

--000000000000e6e85605979864dc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The N310 motherboard does not have a PCIe interface, proprietary or
otherwise.  Schematic p. 20 was a PoE controller on earlier, unreleased
versions of the N310, but it was omitted because it could not source enough
current to the device when both RF daughtercards were enabled.   The PoE
components were not populated on earlier module revisions and have been
eliminated entirely from recent revisions of the motherboard PCB.

Marcus is correct that several pages of the X310 schematic featuring the NI
PCIe ASIC were redacted because NI never authorized them for public release=
.




On Sun, Nov 17, 2019 at 9:28 PM Marcus D Leech via USRP-users <
usrp-users@lists.ettus.com> wrote:

> That is, AFAIR, the properietary PCIE interface that NI don=E2=80=99t pub=
lish
> schematics for.
>
> Sent from my iPhone
>
> On Nov 18, 2019, at 12:12 AM, Thomas james via USRP-users <
> usrp-users@lists.ettus.com> wrote:
>
> =EF=BB=BF
> Hi,
> i read N310 mother board schematic find that there should be a sheet 20
> but not in the pdf schematic. what is this part for?
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000e6e85605979864dc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The N310 motherboard does not have a PCIe interface, propr=
ietary or otherwise.=C2=A0 Schematic p. 20 was a PoE controller on earlier,=
 unreleased versions of the N310, but it was omitted because it could not s=
ource enough current to the device when both RF daughtercards=C2=A0were ena=
bled.=C2=A0 =C2=A0The PoE components were not populated on earlier module r=
evisions and have been eliminated entirely from recent revisions of the mot=
herboard PCB.<div><div><br><div>Marcus is correct that several pages of the=
 X310 schematic featuring the NI PCIe ASIC were redacted because NI never a=
uthorized them for public release.</div><div><br></div><div><br></div><div>=
<br></div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Sun, Nov 17, 2019 at 9:28 PM Marcus D Leech via US=
RP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists=
.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"auto">That is, AFAIR, the properietary PCIE interfac=
e that NI don=E2=80=99t publish schematics for.=C2=A0<br><br><div dir=3D"lt=
r">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">=
On Nov 18, 2019, at 12:12 AM, Thomas james via USRP-users &lt;<a href=3D"ma=
ilto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.c=
om</a>&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div =
dir=3D"ltr">=EF=BB=BF





<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0)">
i read N310 mother board schematic find that there should be a sheet 20 but=
 not in the pdf schematic. what is this part for?</div>


<span>_______________________________________________</span><br><span>USRP-=
users mailing list</span><br><span><a href=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank">USRP-users@lists.ettus.com</a></span><br><span><a h=
ref=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" =
target=3D"_blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.=
ettus.com</a></span><br></div></blockquote></div>__________________________=
_____________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000e6e85605979864dc--


--===============4563844882497684239==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4563844882497684239==--

