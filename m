Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C0922A597
	for <lists+usrp-users@lfdr.de>; Thu, 23 Jul 2020 05:07:23 +0200 (CEST)
Received: from [::1] (port=56964 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jyRZn-0004tA-Cb; Wed, 22 Jul 2020 23:07:19 -0400
Received: from mail-yb1-f200.google.com ([209.85.219.200]:44796)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikio@dolphinsystem.jp>)
 id 1jyRZj-0004oF-0e
 for usrp-users@lists.ettus.com; Wed, 22 Jul 2020 23:07:15 -0400
Received: by mail-yb1-f200.google.com with SMTP id k127so4882072ybk.11
 for <usrp-users@lists.ettus.com>; Wed, 22 Jul 2020 20:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4DnD5pGSodE+Jv+Qjpv+cF8d6f/vigSUkIwajoc3BhM=;
 b=hLvEPFV7M0JonQP8yrMk+ArYJdociFv1alSoZ6/2jfGx3KodHgTW1lFL1sT+jP3tqN
 DFodaf62P16KbBM2I3FaAfhwP73i900zipu/KLO9nrUUoG3tfPXbKwpSO4mReF+OHOZV
 vEQEgl6JVu8oSAzuXgescfZMFcpfOud7udgVJnk0GxqeMe+KKxyTWuIJPH4xCwG3tnf7
 oZIl1uEsQYjAjloZwQpL71lea5QBjzXclMBwmYl6KtRwH5yoo9Q7//eh3Bgy9rLXel07
 69x6ZiSDkloSJ/OZL7NgB1p6epUzFfzH15SYT44V5MlUhedvy8l/FVYIwwLbBSLTF/8q
 4BKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4DnD5pGSodE+Jv+Qjpv+cF8d6f/vigSUkIwajoc3BhM=;
 b=Jq4ylgAG8FAN3Waw1F+TsaCd+JjE4TNh8hTmLEnKfkaMW+EagVdx7kT8lE0YkC/ny8
 zaEOOv4jVyX3KsoNlePB8CpjxOlvFwg03RxEF+0lkPjIyKqSmwg7JQSXrE8uC42dcDXJ
 IAHpPKZu01FhwvKL1WCyqxfrPu9QSG5I5fuvwS3n9rIuk8ORdGLhhg7iyqhzdK1rctBV
 33dcuDymuH9Tycch7TPhyFN0ki/S6kUtxe3YjL2Ia0LNVw+dqj4KiK2jrK16INdmtyRP
 CtCxKRAMN/n2LUDP89WC4F69yNFAnfgzKpr8W5YNzikmUDdbpQ9hycxrwLKK5cscs/Sa
 3DqQ==
X-Gm-Message-State: AOAM5334HZtOjBw9AyaMt1MYv7YDc7FudnEZOqjcDjfr6p35+K0kGVyS
 nhhPDsHkcBt824jS9ZJ82skcxhFDkFblMfdLECmGiGL2
X-Google-Smtp-Source: ABdhPJxVLj/q21W5h/Ld6d1bSzkkVqqX4O8xjbxNi1blL3fXkXlsoFwavECkPkScuQCLDBgmapw03DurZK0NXVpWHU0=
X-Received: by 2002:a25:4cf:: with SMTP id 198mr3832795ybe.365.1595473593973; 
 Wed, 22 Jul 2020 20:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <CABfZwcfbOcm6LckJRg71KOO_LkD2U7HJoCsQvokJcTUuWFsyaA@mail.gmail.com>
 <CAO5ZCFaexZROVgx7gd+a=HV6Zk8Ui7K4GBDjf5iv91hsmW5_fA@mail.gmail.com>
In-Reply-To: <CAO5ZCFaexZROVgx7gd+a=HV6Zk8Ui7K4GBDjf5iv91hsmW5_fA@mail.gmail.com>
Date: Thu, 23 Jul 2020 12:05:57 +0900
Message-ID: <CABfZwcdeVtt8ROBX+pjVP41pLiBEbLv-v=PKqXS26ax5ziwzMw@mail.gmail.com>
To: Xavier Arteaga <xavier.arteaga@softwareradiosystems.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] How to suppress the overflow indicator "O"
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
From: Mikio Fukushima via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mikio Fukushima <mikio@dolphinsystem.jp>
Content-Type: multipart/mixed; boundary="===============3535066928971117353=="
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

--===============3535066928971117353==
Content-Type: multipart/alternative; boundary="000000000000d155f805ab132427"

--000000000000d155f805ab132427
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

SGkgWGF2aWVyLA0KVGhhbmsgeW91IGZvciB5b3VyIGFkdmljZS4NCkkgd2lsbCB0cnkgaXQgbmV4
dCBNb25kYXkgYW5kIGxldCB5b3Uga25vdy4NCg0KUmVnYXJkcywNCk1pa2lvDQoNCjIwMjDlubQ3
5pyIMjLml6Uo5rC0KSAxNTo1MSBYYXZpZXIgQXJ0ZWFnYSA8eGF2aWVyLmFydGVhZ2FAc29mdHdh
cmVyYWRpb3N5c3RlbXMuY29tDQo+Og0KDQo+IEhpIE1pa2lvLA0KPiBZb3UgY2FuIGRpc2FibGUg
dGhlIGZhc3RwYXRoIGxvZ2dpbmcgaW4gcnVudGltZSBieSBzZXR0aW5nIHRoZSBlbnZpcm9ubWVu
dA0KPiB2YXJpYWJsZSBVSERfTE9HX0ZBU1RQQVRIX0RJU0FCTEUgdG8gMToNCj4NCj4gRXhhbXBs
ZSBpbiBDOg0KPiAgIHNldGVudigiVUhEX0xPR19GQVNUUEFUSF9ESVNBQkxFIiwgIjEiLCAwKTsN
Cj4NCj4gUmVnYXJkcywNCj4gWGF2aWVyDQo+DQo+IE9uIFdlZCwgMjIgSnVsIDIwMjAgYXQgMDU6
MzgsIE1pa2lvIEZ1a3VzaGltYSB2aWEgVVNSUC11c2VycyA8DQo+IHVzcnAtdXNlcnNAbGlzdHMu
ZXR0dXMuY29tPiB3cm90ZToNCj4NCj4+IEhpLA0KPj4gVUhEIGRldmljZSBkcml2ZXIgcHJpbnRz
IHRoZSBpbmRpY2F0b3IgIk8iIHdoaWxlIG92ZXJmbG93IHRvIHN0ZG91dC4NCj4+IEhvdyB0byBz
dXByZXNzIHRoaXMgcHJpbnRpbmcgb2YgdGhlIGluZGljYXRvcj8NCj4+DQo+PiBNaWtpbyBGdWt1
c2hpbWENCj4+DQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPj4gVVNSUC11c2VycyBtYWlsaW5nIGxpc3QNCj4+IFVTUlAtdXNlcnNAbGlzdHMuZXR0
dXMuY29tDQo+PiBodHRwOi8vbGlzdHMuZXR0dXMuY29tL21haWxtYW4vbGlzdGluZm8vdXNycC11
c2Vyc19saXN0cy5ldHR1cy5jb20NCj4+DQo+DQoNCi0tIA0KDQo9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KIOemj+WztiDlubnpm4Qg
KE1pa2lvIEZ1a3VzaGltYSkNCiDmoKrlvI/kvJrnpL7jg4njg6vjg5XjgqPjg7Pjgrfjgrnjg4bj
g6AgKERvbHBoaW4gU3lzdGVtIENvLixMdGQpDQoNCuOAkjE3MS0wMDE0IOadseS6rOmDveixiuWz
tuWMuuaxoOiii++8ku+8je+8lO+8le+8je+8kQ0K44Ki44O844Kv44K344OG44Kj5rGg6KKLIO+8
lu+8kO+8kQ0KDQpNYWlsOiBtaWtpb0Bkb2xwaGluc3lzdGVtLmpwDQpVUkwgOiBodHRwOi8vd3d3
LmRvbHBoaW5zeXN0ZW0uanAvDQpURUwvRkFYIDogMDMtNjY1OC00OTQ5DQo9PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0K
--000000000000d155f805ab132427
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Xavier,<div>Thank you for your advice.</div><div>I will=
 try it next Monday and let you know.</div><div><br></div><div>Regards,</di=
v><div>Mikio</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"=
gmail_attr">2020=E5=B9=B47=E6=9C=8822=E6=97=A5(=E6=B0=B4) 15:51 Xavier Arte=
aga &lt;<a href=3D"mailto:xavier.arteaga@softwareradiosystems.com" target=
=3D"_blank">xavier.arteaga@softwareradiosystems.com</a>&gt;:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Mikio,<div=
>You can disable the fastpath logging in runtime by setting the environment=
 variable=C2=A0<font face=3D"monospace">UHD_LOG_FASTPATH_DISABLE</font> to =
1:</div><div><br></div><div>Example in C:</div><div><font face=3D"monospace=
">=C2=A0 setenv(&quot;UHD_LOG_FASTPATH_DISABLE&quot;, &quot;1&quot;, 0);<br=
></font></div><div><br></div><div>Regards,</div><div>Xavier</div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 22=
 Jul 2020 at 05:38, Mikio Fukushima via USRP-users &lt;<a href=3D"mailto:us=
rp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div>Hi,</div><div>UHD device driver prints the indicator &quot=
;O&quot; while overflow to stdout.<br>How to supress this printing of the i=
ndicator?<br></div><div dir=3D"ltr"><div dir=3D"ltr"><div><div dir=3D"ltr">=
<div dir=3D"ltr"><div><br></div><div>Mikio Fukushima</div><div><br></div></=
div></div></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=3D"ltr"><div>=C2=A0<br></d=
iv><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>=C2=A0=E7=A6=8F=E5=B3=B6 =E5=
=B9=B9=E9=9B=84 (Mikio Fukushima)</div><div>=C2=A0=E6=A0=AA=E5=BC=8F=E4=BC=
=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=E3=83=B3=E3=82=B7=E3=82=B9=
=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)</div><div><br></div><div>=E3=80=
=92171-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=E5=B3=B6=E5=8C=BA=E6=B1=A0=
=E8=A2=8B=EF=BC=92=EF=BC=8D=EF=BC=94=EF=BC=95=EF=BC=8D=EF=BC=91</div><div>=
=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=82=A2=E3=83=BC=E3=
=82=AF=E3=82=B7=E3=83=86=E3=82=A3=E6=B1=A0=E8=A2=8B =EF=BC=96=EF=BC=90=EF=
=BC=91</div><div><br></div><div>Mail: <a href=3D"mailto:mikio@dolphinsystem=
.jp" target=3D"_blank">mikio@dolphinsystem.jp</a></div><div>URL : <a href=
=3D"http://www.dolphinsystem.jp/" target=3D"_blank">http://www.dolphinsyste=
m.jp/</a></div><div>TEL/FAX : 03-6658-4949</div><div>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D</div></div></div></div></div></div></div>

--000000000000d155f805ab132427--


--===============3535066928971117353==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3535066928971117353==--

