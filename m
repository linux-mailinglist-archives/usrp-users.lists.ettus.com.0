Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id F135713B196
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jan 2020 19:00:37 +0100 (CET)
Received: from [::1] (port=41864 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1irQUW-0000sW-QV; Tue, 14 Jan 2020 13:00:36 -0500
Received: from sonic315-20.consmr.mail.ne1.yahoo.com ([66.163.190.146]:35124)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1irQUT-0000jU-0Z
 for usrp-users@lists.ettus.com; Tue, 14 Jan 2020 13:00:33 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1579024791; bh=OgBqDIe5IrvVQkWpBwhka673yFj3ILiRqrmjClLYTTQ=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=s7ouaZXNosUVz1oX37IY5qdt1dmC/83kE+CdU3a5rfjEUPiMOwjQFq+h/lmIRJed+PwxE/5dgZltfd6z2sVpeOvqt+f71evkuodV1/FSNgL6LBF3gBu/42jQEd4cRd47zTBzcTHca5UYEDQzIIKUkpUi48E2Mw7HZaJP6V3KJxy7mYFZQCHkTygu9iy+8J/3fI+z1hDubgFLWSIOyBYbKSTaut3rD5q9eRgwvtLSXZdW+jBysc/0XH9hogM0kbKowZfniCzALaXjp8AqfkqMB6vPGU7FhgCSfPHewu+hdotHCOQu9AM0d3Y9ng7rmVFzmIoAjVPk6Yyhcw52UB29Ig==
X-YMail-OSG: lUBpsIMVM1nI_MNeqfef.JR47_fThVYawNZG58GJrf9BCCeIpOX5R0Cor57jvBY
 geghFs6klxPRp5F_7ZXNTX0NefK_tq.1PSQOtu0ZZDW6u4cZWsN7ACEJS3jEk4Dq6KC_6HN0oe5K
 xfAeBImYuLZhs82zVmFk0FCFxf4Y1qguFcbLqEhFWM_tdA.4UtusySl3ahPWusWQnYeEWXk8tqre
 RV6TRlW6k.fJw6cOTjpgWAaVqmMfF.J3RACNvg1UYYFrnFUPJMvz4RF.2n.G_qE0aM8xgDUtqU5B
 P4w8UGurbGmKcQcJvMULXAmH4vhXlms6IBmG49mutQkOMd7.uZatuY.jgtnkHQZTkJccYSR4TsD4
 kf_OZ.ilkkKlcRXe8Zj8futtb434hTPkYzH4djE0BFT2omuBQnZ82BpXhR_6cn3EtFDQLEcB8bRf
 lwzrTR9H0t_DRrHw7qc0famSU7.quv0FAa_s92ihKLZXgbFXnYFpJXAoSyhrGs.wb_3RfhYKrxzY
 mcv0gfQJSaN.lb3to2FDF9MTc8Nzn2pZPb3UMVSWGu_7U2urJe2JAILsA3YIHVshMpYklvL3A22.
 DMWi_A2cj.VCLLAmCk.6cI6zjh9e2R0BksTfFxy9SAXg5gQCeTxdov5em8s7YpPERWTDHoWabkNU
 dLfqUZtFA2HH3.1BpYKufnhYyNZTqpLYIpCcWfs9wmmfFnD0l3l5edYZW4QZB_j0ZgjjGRLT25cW
 NKHM8ynUsSHralcglzcBu7Sck6c0bXgJ6q3ltXyM6Nb94Qmo1WUN.p9djXGPHqt7QaKss0nfW2f9
 SeezRYyD9vhzoY_WwLeQ.RfRvfbdYD5ddBu4O4Qd1rrTeLKwVE1KKAmwKuMcMFiZY_.KoWxN4fG6
 GvxzwH0qj6cy7f2UJVZmWoAbNtBRnHkqt.kniet570Qu4NdkwgefWFp5rEAQQf9nm8GkPOt1Vrr2
 n8vhdP2kKIhJ2tfP7aipLI5Vn0tdXrXVPYZhyIy7abU_z7TnM9d3FUudVTQjqL6EMjIKR5NY2iLb
 0WmuV0D95OxfktX0hTKfIeDypce3AVGB1rxML8LxPR8jmj4LZpxtvOh75DhOwmd3QT7eFf9WGrnp
 pX1IDZlTDgv8n6OR.gn4fNabWMoMgfTjbF54zV.hhFOFSSOmQx9dTDdtljPYF39tWT_d1CMaAGIF
 4c8b0oXB17WxcLfFSq425np3s26E39jsOGsWhARF19MOZC.O6_0mNGLUZ0vQxiMWoRQqw0R4A3tB
 aIdJ3DKsWdRl3yV.ve5fSSny3qO85ZpwXJA6NZQOApqTCt25PbPCSbOyl0GmVemoEaMNb5hPGIPC
 wsIF5yLK6dnAMoX6kIr2MtoGaD39PAGdDexA-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic315.consmr.mail.ne1.yahoo.com with HTTP; Tue, 14 Jan 2020 17:59:51 +0000
Date: Tue, 14 Jan 2020 17:59:48 +0000 (UTC)
To: Sam Reiter <sam.reiter@ettus.com>
Message-ID: <1980845248.11385978.1579024788456@mail.yahoo.com>
In-Reply-To: <CANf970at9cyKx9DftHoV+if8=tsW+SUCX_TdYHh-P+ZQ0YEjtw@mail.gmail.com>
References: <1258007910.11247090.1579006378862.ref@mail.yahoo.com>
 <1258007910.11247090.1579006378862@mail.yahoo.com>
 <CANf970at9cyKx9DftHoV+if8=tsW+SUCX_TdYHh-P+ZQ0YEjtw@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117
 Safari/537.36
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
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8558154573376417677=="
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

--===============8558154573376417677==
Content-Type: multipart/alternative; 
	boundary="----=_Part_11385977_872756232.1579024788454"
Content-Length: 6849

------=_Part_11385977_872756232.1579024788454
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Please find my comments inline:
The X310 is capable of 200e6 or 184.32e6 master clock rates. 184.32 / 3 =3D=
=C2=A061.44 which is close, but doesn't sound like it's exactly what you're=
 looking for.
[SV]: Yes I want it to be at 62.5. I presume the answer would be NO?

If that doesn't work for you, then my recommendation would be for you to ov=
ersample with the X310 and then resample your data once it is back on the h=
ost.[SV]: At the moment we are using this technique and it works well
BR,Santosh    On Tuesday, January 14, 2020, 05:49:33 PM GMT, Sam Reiter <sa=
m.reiter@ettus.com> wrote: =20
=20
 The X310 is capable of 200e6 or 184.32e6 master clock rates. 184.32 / 3 =
=3D 61.44 which is close, but doesn't sound like it's exactly what you're l=
ooking for.=20

If that doesn't work for you, then my recommendation would be for you to ov=
ersample with the X310 and then resample your data once it is back on the h=
ost.=20
=20
Sam Reiter=20

On Tue, Jan 14, 2020 at 6:53 AM voonna santosh via USRP-users <usrp-users@l=
ists.ettus.com> wrote:

Hi There,=C2=A0 =C2=A0Good morning. I am trying to transmit a file which is=
 sampled at 62.5MHz, which I couldn't. I know since SDR supports 200MHz, be=
cause of which we can only achieve divisible sampling rate. Is it possible =
to support 62.5MHz?BR,Santosh______________________________________________=
_
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20
------=_Part_11385977_872756232.1579024788454
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpc3eaf52fyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false"><div><div style=3D"font-fami=
ly: Helvetica Neue, Helvetica, Arial, sans-serif;" dir=3D"ltr" data-setdir=
=3D"false">Please find my comments inline:</div><div style=3D"font-family: =
Helvetica Neue, Helvetica, Arial, sans-serif;"><br></div><div style=3D"font=
-family: Helvetica Neue, Helvetica, Arial, sans-serif;">The X310 is capable=
 of 200e6 or 184.32e6 master clock rates. 184.32 / 3 =3D&nbsp;<span class=
=3D"ydp8ed3e8aeyiv7044007071gmail-qv3Wpe" id=3D"ydp8ed3e8aeyiv7044007071gma=
il-cwos">61.44 which is close, but doesn't sound like it's exactly what you=
're looking for.<br clear=3D"none"></span></div><div style=3D"font-family: =
Helvetica Neue, Helvetica, Arial, sans-serif;" dir=3D"ltr" data-setdir=3D"f=
alse"><span class=3D"ydp8ed3e8aeyiv7044007071gmail-qv3Wpe" id=3D"ydp8ed3e8a=
eyiv7044007071gmail-cwos"><b>[SV]: Yes I want it to be at 62.5. I presume t=
he answer would be NO?</b></span></div><div style=3D"font-family: Helvetica=
 Neue, Helvetica, Arial, sans-serif;"><span class=3D"ydp8ed3e8aeyiv70440070=
71gmail-qv3Wpe"><br></span></div><div style=3D"font-family: Helvetica Neue,=
 Helvetica, Arial, sans-serif;"><span class=3D"ydp8ed3e8aeyiv7044007071gmai=
l-qv3Wpe"><br></span></div><div style=3D"font-family: Helvetica Neue, Helve=
tica, Arial, sans-serif;"><span class=3D"ydp8ed3e8aeyiv7044007071gmail-qv3W=
pe" id=3D"ydp8ed3e8aeyiv7044007071gmail-cwos">If that doesn't work for you,=
 then my recommendation would be for you to oversample with the X310 and th=
en resample your data once it is back on the host.</span></div></div><b>[SV=
]: At the moment we are using this technique and it works well</b></div><di=
v><br></div><div dir=3D"ltr" data-setdir=3D"false">BR,</div><div dir=3D"ltr=
" data-setdir=3D"false">Santosh</div>
       =20
        </div><div id=3D"yahoo_quoted_9351716734" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, January 14, 2020, 05:49:33 PM GMT, Sam Reit=
er &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv7044007071"><div><div dir=3D"ltr"><div>T=
he X310 is capable of 200e6 or 184.32e6 master clock rates. 184.32 / 3 =3D =
<span class=3D"yiv7044007071gmail-qv3Wpe" id=3D"yiv7044007071gmail-cwos">61=
.44 which is close, but doesn't sound like it's exactly what you're looking=
 for. <br clear=3D"none"></span></div><div><span class=3D"yiv7044007071gmai=
l-qv3Wpe" id=3D"yiv7044007071gmail-cwos"><br clear=3D"none"></span></div><d=
iv><span class=3D"yiv7044007071gmail-qv3Wpe" id=3D"yiv7044007071gmail-cwos"=
>If that doesn't work for you, then my recommendation would be for you to o=
versample with the X310 and then resample your data once it is back on the =
host. <br clear=3D"none"></span></div> <br clear=3D"none"><div><div><div cl=
ass=3D"yiv7044007071gmail_signature" dir=3D"ltr"><div dir=3D"ltr"><div><div=
 dir=3D"ltr">Sam Reiter </div></div></div></div></div><br clear=3D"none"></=
div></div><br clear=3D"none"><div class=3D"yiv7044007071gmail_quote"><div c=
lass=3D"yiv7044007071yqt8534634954" id=3D"yiv7044007071yqt36475"><div class=
=3D"yiv7044007071gmail_attr" dir=3D"ltr">On Tue, Jan 14, 2020 at 6:53 AM vo=
onna santosh via USRP-users &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=3D"mailto:usr=
p-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=
=3D"none"></div><blockquote class=3D"yiv7044007071gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex;"><div><div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-=
serif;font-size:16px;"><div dir=3D"ltr">Hi There,</div><div dir=3D"ltr">&nb=
sp; &nbsp;Good morning. I am trying to transmit a file which is sampled at =
62.5MHz, which I couldn't. I know since SDR supports 200MHz, because of whi=
ch we can only achieve divisible sampling rate. Is it possible to support 6=
2.5MHz?</div><div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santosh</div></div>=
</div>_______________________________________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-use=
rs@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_11385977_872756232.1579024788454--


--===============8558154573376417677==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8558154573376417677==--

