Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 156272B72FD
	for <lists+usrp-users@lfdr.de>; Wed, 18 Nov 2020 01:23:17 +0100 (CET)
Received: from [::1] (port=50272 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kfBFh-00047q-3M; Tue, 17 Nov 2020 19:23:13 -0500
Received: from mail-yb1-f200.google.com ([209.85.219.200]:41220)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <mikio@dolphinsystem.jp>)
 id 1kfBFb-00040o-Sq
 for usrp-users@lists.ettus.com; Tue, 17 Nov 2020 19:23:07 -0500
Received: by mail-yb1-f200.google.com with SMTP id c9so71368ybs.8
 for <usrp-users@lists.ettus.com>; Tue, 17 Nov 2020 16:22:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dolphinsystem-jp.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ye7SadUmn/euVqgCU5eiiKKuBwpf0iC89bY955EKaik=;
 b=wNgZrW58WKg3ngTpezb8ZgGfbgAP6lFAAF37RITxUtJXhA5suYvxlM5neCZC0Ng5vs
 i6GBArugLZHQujV+M5gw3D/hIeiJFaUwA7GuNJqgdIvM62VBBM1Nw8MJrMpUySP54KQG
 35LJY+CHVK/Lq7lOIMTDsazdUViVuvL8o/lx50sirdZOZDW06duTBsqqJkND/oyue+an
 M7iZPgNykTWVNS2K4IbkNO6nC44aXcXFRGFaVvIigeRQY7ZMP3j7WCiL3FoBDeNqRr6K
 kFSU764rQIez1N/rkUq5PEzkThmnZLeKJTCWInd7/EBg9+lfdLymVuH354I5/1R7pvbb
 R1Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ye7SadUmn/euVqgCU5eiiKKuBwpf0iC89bY955EKaik=;
 b=AOj+k2VaWMir/0qAXefHryHRu3ilFFiufeScFfCSSNmI8+9b6c8tGIFADhfEyN4+N3
 FZFmjQWMWTDFh8p+Fzj2w36QpomF3hWgorJ6kbaZ4cOWxJm4SkmNr4qvDnfPWCcc1KBd
 Lul0MKjCLHuiRs7fm0DzFpktc1Bdje+B6ZpbGxO18efLGzV16n0HgFzNAAh4JNXOngg5
 hEQr8qgOPtbCdGOO+Ftfx7qIi2l2bIA1qfUiV95FyZw7bp8ZlA0UnM0yok+HP3b9QOrg
 t1Z8HDz1Q9GiU7r0AcW1cnjgEeYX2tMhgYFhh55efB+PF2itrdDwTCCFbNNUYgwqniCp
 lHRw==
X-Gm-Message-State: AOAM533nsHXaY/bGzSCKPxGrk2QMkD0+6fGMCFEA14mTdWOnWqvLFP3h
 W3eteeBJw0Cxp/iJSC3jyj+fb5i8mTjwKmAg1Z+M0g==
X-Google-Smtp-Source: ABdhPJwgIcI+Yq5+fKPYnjgfHzBqijmJhtLJ66/MS40lKs5kvEdHD0EUlE7Y1PwZ7EPzaxjG755lRWXmRECD4BZ1lOI=
X-Received: by 2002:a25:db53:: with SMTP id g80mr3158178ybf.85.1605658946919; 
 Tue, 17 Nov 2020 16:22:26 -0800 (PST)
MIME-Version: 1.0
References: <CABfZwcf=W+i1ZO6LO+TrYh386cxy--GtKgggPO3__DQhf8pF0g@mail.gmail.com>
 <CAB__hTRA5KEPj4t6uBRv_Wx=+LwpGadC65rfjvQU24sMFE=5sA@mail.gmail.com>
In-Reply-To: <CAB__hTRA5KEPj4t6uBRv_Wx=+LwpGadC65rfjvQU24sMFE=5sA@mail.gmail.com>
Date: Wed, 18 Nov 2020 09:21:52 +0900
Message-ID: <CABfZwcfOqTbyPU+K2pRZA2Cb4k1EZ1KSHfEkwQfNkk8tCd7fJA@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] How can I get an error by send method?
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
Content-Type: multipart/mixed; boundary="===============8593268441024857406=="
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

--===============8593268441024857406==
Content-Type: multipart/alternative; boundary="00000000000029765e05b4569bcf"

--00000000000029765e05b4569bcf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

SGkgUm9iDQpUaGFuayB5b3UgZm9yIHlvdXIgbWFpbC4NCkkgZm91bmQgaG93IHRvIGRldGVjdCBh
IHR4IGVycm9yIGluIGJlbmNobWFya19yYXRlLmNwcC4NCk1pa2lvIEZ1a3VzaGltYQ0KDQoNCjIw
MjDlubQxMeaciDE45pelKOawtCkgMDoxMSBSb2IgS29zc2xlciA8cmtvc3NsZXJAbmQuZWR1PjoN
Cg0KPiBIaSBNaWtpbywNCj4gTG9vayBhdCB0aGUgYmVuY2htYXJrX3JhdGUuY3BwIGV4YW1wbGUg
YW5kIGluIHBhcnRpY3VsYXINCj4gdGhlIGJlbmNobWFya190eF9yYXRlX2FzeW5jX2hlbHBlcigp
IGZ1bmN0aW9uLg0KPiBSb2INCj4NCj4gT24gVHVlLCBOb3YgMTcsIDIwMjAgYXQgMjoxMiBBTSBN
aWtpbyBGdWt1c2hpbWEgdmlhIFVTUlAtdXNlcnMgPA0KPiB1c3JwLXVzZXJzQGxpc3RzLmV0dHVz
LmNvbT4gd3JvdGU6DQo+DQo+PiBIaS4NCj4+DQo+PiByeF9zdHJlYW0tPnJlY3YgbWV0aG9kIHJl
dHVybnMgYW4gZXJyb3IgY29kZS4gYnV0IHR4X3N0cmVhbS0+c2VuZCBtZXRob2QNCj4+IGRvZXNu
J3QgcmV0dXJuIGFuIGVycm9yIGNvZGUuDQo+PiBJIHdhbnQgdG8gZGV0ZWN0IGFuIHVuZGVyZmxv
dy4gSG93IGNhbiBJIGdldCBhbiBlcnJvciBjb2RlIGJ5IHNlbmQgbWV0aG9kPw0KPj4NCj4+IFJl
Z2FyZHMsDQo+Pg0KPj4gTWlraW8gRnVrdXNoaW1hDQo+Pg0KPj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4+IFVTUlAtdXNlcnMgbWFpbGluZyBsaXN0
DQo+PiBVU1JQLXVzZXJzQGxpc3RzLmV0dHVzLmNvbQ0KPj4gaHR0cDovL2xpc3RzLmV0dHVzLmNv
bS9tYWlsbWFuL2xpc3RpbmZvL3VzcnAtdXNlcnNfbGlzdHMuZXR0dXMuY29tDQo+Pg0KPg0KDQot
LSANCg0KPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT0NCiDnpo/ls7Yg5bm56ZuEIChNaWtpbyBGdWt1c2hpbWEpDQog5qCq5byP5Lya56S+
44OJ44Or44OV44Kj44Oz44K344K544OG44OgIChEb2xwaGluIFN5c3RlbSBDby4sTHRkKQ0KDQrj
gJIxNzEtMDAxNCDmnbHkuqzpg73osYrls7bljLrmsaDooovvvJLvvI3vvJTvvJXvvI3vvJENCuOC
ouODvOOCr+OCt+ODhuOCo+axoOiiiyDvvJbvvJDvvJENCg0KTWFpbDogbWlraW9AZG9scGhpbnN5
c3RlbS5qcA0KVVJMIDogaHR0cDovL3d3dy5kb2xwaGluc3lzdGVtLmpwLw0KVEVML0ZBWCA6IDAz
LTY2NTgtNDk0OQ0KPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT0NCg==
--00000000000029765e05b4569bcf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Rob<br>Thank you for your mail.=C2=A0<br>I found how to=
 detect a tx error in benchmark_rate.cpp.<br>Mikio Fukushima<br><div><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">2020=E5=B9=B411=E6=9C=8818=E6=97=A5(=E6=B0=B4) 0:11 Rob Kossler &lt;<a =
href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&gt;:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi Mikio,<div>Loo=
k at the benchmark_rate.cpp example and in particular the=C2=A0benchmark_tx=
_rate_async_helper() function.</div><div>Rob</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 17, 2020 at 2=
:12 AM Mikio Fukushima via USRP-users &lt;<a href=3D"mailto:usrp-users@list=
s.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><=
div>Hi.</div><div><br></div>rx_stream-&gt;recv method returns an error code=
. but tx_stream-&gt;send method doesn&#39;t return an error code.<br>

I want to detect an underflow.

How can I get an error code by send method?<br><div><br></div><div>Regards,=
</div><div><br></div><div>Mikio Fukushima<br><br></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div dir=
=3D"ltr"><div>=C2=A0<br></div><div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><div>=
=C2=A0=E7=A6=8F=E5=B3=B6 =E5=B9=B9=E9=9B=84 (Mikio Fukushima)</div><div>=C2=
=A0=E6=A0=AA=E5=BC=8F=E4=BC=9A=E7=A4=BE=E3=83=89=E3=83=AB=E3=83=95=E3=82=A3=
=E3=83=B3=E3=82=B7=E3=82=B9=E3=83=86=E3=83=A0 (Dolphin System Co.,Ltd)</div=
><div><br></div><div>=E3=80=92171-0014 =E6=9D=B1=E4=BA=AC=E9=83=BD=E8=B1=8A=
=E5=B3=B6=E5=8C=BA=E6=B1=A0=E8=A2=8B=EF=BC=92=EF=BC=8D=EF=BC=94=EF=BC=95=EF=
=BC=8D=EF=BC=91</div><div>=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=80=80=E3=
=80=80=E3=82=A2=E3=83=BC=E3=82=AF=E3=82=B7=E3=83=86=E3=82=A3=E6=B1=A0=E8=A2=
=8B =EF=BC=96=EF=BC=90=EF=BC=91</div><div><br></div><div>Mail: <a href=3D"m=
ailto:mikio@dolphinsystem.jp" target=3D"_blank">mikio@dolphinsystem.jp</a><=
/div><div>URL : <a href=3D"http://www.dolphinsystem.jp/" target=3D"_blank">=
http://www.dolphinsystem.jp/</a></div><div>TEL/FAX : 03-6658-4949</div><div=
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div></div></div></div></div></div>

--00000000000029765e05b4569bcf--


--===============8593268441024857406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8593268441024857406==--

