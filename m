Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2946233D50D
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 14:41:39 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8DD75383918
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 09:41:35 -0400 (EDT)
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	by mm2.emwd.com (Postfix) with ESMTPS id BF3EF3832CA
	for <USRP-users@lists.ettus.com>; Tue, 16 Mar 2021 09:40:40 -0400 (EDT)
Received: by mail-qt1-f178.google.com with SMTP id c6so11602828qtc.1
        for <USRP-users@lists.ettus.com>; Tue, 16 Mar 2021 06:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=yuK5TOKxc0j0nE6M+lfAtBXViSjcgwxCO0QMQkFwDdY=;
        b=Am2i8QIFhjkKr+zL/y2f9TTJjrKed1Q801P95ySXIrYVnEW7pVvoei3u9rPxnRIy6C
         QOlO4EERT7SgpPGfKSVIg5+m2q0ybAr75mmCjjsDGVSHhjb56sH8Gys3pNc4YxHG43ys
         6USPSp6NtlKNuMIKFrI+NpYqYkcTBANESSaRt2fMYvNVNkA1nFtghKTxKfR91C1yopQW
         uqB7e2L9DFwcG/h3s9jVcMYRt9fToc2AaXc6Q0IDUGbpEdB6n/fkGgFWkevSA0scv2+X
         azgX0224A8xc3voc/SmAEBbyOYKgbvG4Aw+xw21jz3Qvpeq6lq5MzOWeF4jUvE48p02w
         AwaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=yuK5TOKxc0j0nE6M+lfAtBXViSjcgwxCO0QMQkFwDdY=;
        b=D5l3xmO66q8aXydUN5eZk4cn01jA+q51XyTK4m1v7knSDzNvk9rIWs4DHca8xs1X8b
         h5CDCUmKT4NLvaM5nKY5kMMvXN0wZthjbJIQgBqGP6ZS1ziucYYx6pp4GOXavH60wHuM
         DD94KNQZmqRgAik1UUQHHu4djnln1aScQB220Vl8KhjMSWBQgUO+fn88o4y7csQ67n5I
         +sODgCRGqw6uTQlKVVsv+wkrMsO5zZEhPrsl9kaIA9eKqHdwKsmjhvHXSTFRbS4kS1s8
         XZGIrUS3EriUFH7Xc6yeIes+h+Fq9znEBhnBaXf7eFLZJah0IsdW5RWofSn14dcNtsZZ
         oGgg==
X-Gm-Message-State: AOAM531lm0FxfI4h4gEcsYi9KbytVA3RKu1Ger2zqBSQhukyPdEVQmqn
	KHkr9LxBvHMPd5ozly74db0=
X-Google-Smtp-Source: ABdhPJzHmch6lDNR686XZtKUpTjQKGfnZkGqubrkaIA6DkneglWgbGvNmZrgHYBs/4w/ptEA10bp7g==
X-Received: by 2002:ac8:7091:: with SMTP id y17mr21338245qto.333.1615902040286;
        Tue, 16 Mar 2021 06:40:40 -0700 (PDT)
Received: from [192.168.2.130] (bras-base-smflon1825w-grc-18-76-67-104-5.dsl.bell.ca. [76.67.104.5])
        by smtp.gmail.com with ESMTPSA id e15sm13487326qti.79.2021.03.16.06.40.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Mar 2021 06:40:40 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 16 Mar 2021 09:40:39 -0400
Message-Id: <7776A858-1652-4F20-9B80-8562B66BD3DA@gmail.com>
References: <CAKLzrV_q4KXYieAJb_7p=jBTCqvRE3-qSj+WvwNH=HivJSfQGg@mail.gmail.com>
In-Reply-To: <CAKLzrV_q4KXYieAJb_7p=jBTCqvRE3-qSj+WvwNH=HivJSfQGg@mail.gmail.com>
To: nikansell00@gmail.com
X-Mailer: iPhone Mail (18D52)
Message-ID-Hash: KPI54JMX6GZ6DVNXZCDSFFM24MZEE7GA
X-Message-ID-Hash: KPI54JMX6GZ6DVNXZCDSFFM24MZEE7GA
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Ettus N300 8-bit sample capture
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/KPI54JMX6GZ6DVNXZCDSFFM24MZEE7GA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7405066646955661581=="


--===============7405066646955661581==
Content-Type: multipart/alternative; boundary=Apple-Mail-ED43E818-4566-4C76-8B65-D7189976FD63
Content-Transfer-Encoding: 7bit


--Apple-Mail-ED43E818-4566-4C76-8B65-D7189976FD63
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

I do t think they implemented SC8 on any of the devices that have 10Gig inte=
rfaces available.=20

Sent from my iPhone

> On Mar 16, 2021, at 8:42 AM, Nik Ansell <nikansell00@gmail.com> wrote:
>=20
> =EF=BB=BF
>=20
> Hello All,
> =20
> I am trying to capture 8-bit samples using an Ettus USRP N300, rather than=
 the default of 16-bit (sc16).
> This is for scenarios where I can sacrifice some dynamic range for higher d=
ata rates and also to run on slightly lower powered hardware.
> =20
> UHD version info: linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0=
-62-g7a3f1516
> The Ettus is connected over a network cable and not USB.
> I am using the HG FPGA firmware,  which is v5.3 according to the output of=
 `uhd_usrp_probe`
> =20
> I have tried two options so far:
> Benchmark_rate from the uhd examples directory:
> GNU Radio
> =20
> This benchmark_rate command below fails with the error message: =E2=80=9CE=
rror: RuntimeError: [RX Streamer] Conflicting OTW types defined: args.otw_fo=
rmat =3D 'sc8' <=3D> stream_sig.item_type =3D 'sc16'=E2=80=9D
> =20
> `/benchmark_rate --args "type=3Dn3xx,mgmt_addr=3Dn.n.n.n,addr=3Dn.n.n.n,ma=
ster_clock_rate=3D122.88e6" --duration 60 --channels "0" --rx_rate 40.96e6 -=
-rx_subdev "A:0" --rx_otw sc8`
> =20
> In GNU Radio, I am using a UHD block and configure the =E2=80=9CWire Forma=
t=E2=80=9D parameter to =E2=80=9CComplex int8=E2=80=9D. This produces exactl=
y the same error:
> =20
> RuntimeError: [RX Streamer] Conflicting OTW types defined: args.otw_format=
 =3D 'sc8' <=3D> stream_sig.item_type =3D 'sc16'
> =20
> The v3.15 UHD documentation does not state the available otw formats: http=
s://files.ettus.com/manual_archive/v3.15.0.0/html/structuhd__stream__args__t=
.html
> =20
> However, the v4 documentation does: https://files.ettus.com/manual/structu=
hd_1_1stream__args__t.html
> =20
> Does anyone know if the N300 does indeed support 8-bit? And if so, how I c=
an implement it?
>=20
> Kind Regards,
> Nik
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-ED43E818-4566-4C76-8B65-D7189976FD63
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">I do t think they implemented SC8 on any of=
 the devices that have 10Gig interfaces available.&nbsp;<br><br><div dir=3D"=
ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite"=
>On Mar 16, 2021, at 8:42 AM, Nik Ansell &lt;nikansell00@gmail.com&gt; wrote=
:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<div dir=3D"ltr"><div><br></div><div><p class=3D"MsoNormal" style=3D"marg=
in:0cm;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">Hello=
 All,</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-fami=
ly:Calibri,sans-serif;color:rgb(0,0,0)">&nbsp;</p><p class=3D"MsoNormal" sty=
le=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0=
,0)">I am trying to capture 8-bit samples using an Ettus USRP N300, rather t=
han the default of 16-bit (sc16).</p><p class=3D"MsoNormal" style=3D"margin:=
0cm;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">This is f=
or scenarios where I can sacrifice some dynamic range&nbsp;for higher data r=
ates and also to run on slightly lower powered hardware.</p><p class=3D"MsoN=
ormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif;col=
or:rgb(0,0,0)">&nbsp;</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-siz=
e:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">UHD version info: li=
nux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0-62-g7a3f1516</p><p cl=
ass=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,san=
s-serif;color:rgb(0,0,0)">The Ettus is connected over a network cable and no=
t USB.</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-fam=
ily:Calibri,sans-serif;color:rgb(0,0,0)">I am using the HG FPGA firmware, &n=
bsp;which is v5.3 according to the output of `uhd_usrp_probe`</p><p class=3D=
"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-seri=
f;color:rgb(0,0,0)">&nbsp;</p><p class=3D"MsoNormal" style=3D"margin:0cm;fon=
t-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">I have tried tw=
o options so far:</p><ol start=3D"1" type=3D"1" style=3D"margin-bottom:0cm;c=
olor:rgb(0,0,0);font-family:-webkit-standard;margin-top:0cm"><li class=3D"gm=
ail-MsoListParagraph" style=3D"margin:0cm;font-size:11pt;font-family:Calibri=
,sans-serif">Benchmark_rate from the uhd examples directory:</li><li class=3D=
"gmail-MsoListParagraph" style=3D"margin:0cm;font-size:11pt;font-family:Cali=
bri,sans-serif">GNU Radio</li></ol><p class=3D"MsoNormal" style=3D"margin:0c=
m;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">&nbsp;</p>=
<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibr=
i,sans-serif;color:rgb(0,0,0)">This benchmark_rate command below fails with t=
he error message: =E2=80=9CError: RuntimeError: [RX Streamer] Conflicting OT=
W types defined: args.otw_format =3D 'sc8' &lt;=3D&gt; stream_sig.item_type =3D=
 'sc16'=E2=80=9D</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11p=
t;font-family:Calibri,sans-serif;color:rgb(0,0,0)">&nbsp;</p><p class=3D"Mso=
Normal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif;co=
lor:rgb(0,0,0)">`/benchmark_rate --args "type=3Dn3xx,mgmt_addr=3Dn.n.n.n,add=
r=3Dn.n.n.n,master_clock_rate=3D122.88e6" --duration 60 --channels "0" --rx_=
rate 40.96e6 --rx_subdev "A:0" --rx_otw sc8`</p><div style=3D"color:rgb(0,0,=
0);font-family:-webkit-standard"><div><p class=3D"MsoNormal" style=3D"margin=
:0cm;font-size:11pt;font-family:Calibri,sans-serif">&nbsp;</p><p class=3D"Ms=
oNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif">=
In GNU Radio, I am using a UHD block and configure the =E2=80=9CWire Format=E2=
=80=9D parameter to =E2=80=9CComplex int8=E2=80=9D. This produces exactly th=
e same error:</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;f=
ont-family:Calibri,sans-serif">&nbsp;</p><p class=3D"MsoNormal" style=3D"mar=
gin:0cm;font-size:11pt;font-family:Calibri,sans-serif">RuntimeError: [RX Str=
eamer] Conflicting OTW types defined: args.otw_format =3D 'sc8' &lt;=3D&gt; s=
tream_sig.item_type =3D 'sc16'</p><p class=3D"MsoNormal" style=3D"margin:0cm=
;font-size:11pt;font-family:Calibri,sans-serif">&nbsp;</p><p class=3D"MsoNor=
mal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif">The v=
3.15 UHD documentation does not state the available otw formats:<span class=3D=
"gmail-Apple-converted-space">&nbsp;</span><a href=3D"https://files.ettus.co=
m/manual_archive/v3.15.0.0/html/structuhd__stream__args__t.html" style=3D"co=
lor:rgb(4,74,145)">https://files.ettus.com/manual_archive/v3.15.0.0/html/str=
uctuhd__stream__args__t.html</a></p><p class=3D"MsoNormal" style=3D"margin:0=
cm;font-size:11pt;font-family:Calibri,sans-serif">&nbsp;</p><p class=3D"MsoN=
ormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif">Ho=
wever, the v4 documentation does:<span class=3D"gmail-Apple-converted-space"=
>&nbsp;</span><a href=3D"https://files.ettus.com/manual/structuhd_1_1stream_=
_args__t.html" title=3D"https://files.ettus.com/manual/structuhd_1_1stream__=
args__t.html" style=3D"color:rgb(4,74,145)">https://files.ettus.com/manual/s=
tructuhd_1_1stream__args__t.html</a></p><p class=3D"MsoNormal" style=3D"marg=
in:0cm;font-size:11pt;font-family:Calibri,sans-serif">&nbsp;</p><p class=3D"=
MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif=
">Does anyone know if the N300 does indeed support 8-bit? And if so, how I c=
an implement it?</p></div></div></div><br clear=3D"all"><div><div dir=3D"ltr=
" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"l=
tr"><div><div dir=3D"ltr">Kind Regards,<br>Nik<br></div></div></div></div></=
div></div>
<span>_______________________________________________</span><br><span>USRP-u=
sers mailing list -- usrp-users@lists.ettus.com</span><br><span>To unsubscri=
be send an email to usrp-users-leave@lists.ettus.com</span><br></div></block=
quote></body></html>=

--Apple-Mail-ED43E818-4566-4C76-8B65-D7189976FD63--

--===============7405066646955661581==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7405066646955661581==--
