Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1605D33D41D
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 13:43:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0D2A538330F
	for <lists+usrp-users@lfdr.de>; Tue, 16 Mar 2021 08:43:07 -0400 (EDT)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	by mm2.emwd.com (Postfix) with ESMTPS id A4F8238323B
	for <USRP-users@lists.ettus.com>; Tue, 16 Mar 2021 08:42:12 -0400 (EDT)
Received: by mail-pf1-f177.google.com with SMTP id a188so8737148pfb.4
        for <USRP-users@lists.ettus.com>; Tue, 16 Mar 2021 05:42:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:reply-to:from:date:message-id:subject:to;
        bh=6zHOP/d/VN8EbDK6Dl+nXAJGBAxcp2sLaibC15NrOvs=;
        b=nhk9E6rc5cENEETATBmBTl8chQqFxlemi4Rs+pi6Ck1mWBi65IqLOIGjWRH829Uqvj
         kle+4ZumwgMVJuBhosvfkfZOv/SPGtio5jSHOy1DNp2d96Ecg5umLdBf+Ux9uqThx+ZQ
         ZiRxF/ATTzfJm5I1MGX8PfK0723IGg+cMmBI0o0jEmG7p0Ujrtxatd0narshwut/oVMM
         loiPTmEChjTKP5Mmz35HbxRGSB81hdXIyO/bSmWr6AGJhrwwcozJdiN1xYXKIjgMaghf
         MKc8UbJ3hAEdEi/nzVUJ3uZcaIBV48xKq/sx4qiB6+V5w/+hsyA3GZCfgMRqNhDMlKJC
         KfDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:reply-to:from:date:message-id
         :subject:to;
        bh=6zHOP/d/VN8EbDK6Dl+nXAJGBAxcp2sLaibC15NrOvs=;
        b=DraDib+A2zo3b2kGXAHsqXzJ5XAdk+B2BQ2cCazsBUn55o+srX19vQ72fI7x/9GSzu
         f16RESsZBCOE75rKM4el9s492/3f5K5O1ptES6JmaKPAhvN+v4EXmZntNxIgsPtA7o5w
         uU21MPLxAbOtphiqwFGih3efJL/rYjnFIxuJz0gLTwKFCVhW0SXShOCuMxceYGpysw2O
         h40tA0musX1u9g25JLZResnwhk6AVAd9AbkOA16nzy4uCEu0K9fjyNfmQb/o9D4zZOTZ
         +nMYXkbkbL1N+q5Ifpqk/qcCQvGA3MOm5TgIlLpBhcFkqhdD3tObUDBhjfpkuzsIwJfP
         v8Pw==
X-Gm-Message-State: AOAM533FHISGERmsqYWaRlvKxkvgRG7obj1j2mRfLlKmpDah/T0ZxcvI
	gd99zRQ7jOtvMX+BTMD/EubX7jBt+QRnmRsSzRFEDkaRcQlTHg==
X-Google-Smtp-Source: ABdhPJw0Rm7857nwDvFlPgZmyIx2CKeTwYmm8flors5kn6nNOmoDktdfMF2DbakvEPJjTCs5z6OhLN3SYoPwmkziiJ8=
X-Received: by 2002:a65:6645:: with SMTP id z5mr3731982pgv.273.1615898531442;
 Tue, 16 Mar 2021 05:42:11 -0700 (PDT)
MIME-Version: 1.0
From: Nik Ansell <nikansell00@gmail.com>
Date: Tue, 16 Mar 2021 12:42:00 +0000
Message-ID: <CAKLzrV_q4KXYieAJb_7p=jBTCqvRE3-qSj+WvwNH=HivJSfQGg@mail.gmail.com>
To: USRP-users@lists.ettus.com
Message-ID-Hash: M5QXBFIC34C5S3QFBNXA3TTLVLITOW6A
X-Message-ID-Hash: M5QXBFIC34C5S3QFBNXA3TTLVLITOW6A
X-MailFrom: nikansell00@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Reply-To: nikansell00@gmail.com
Subject: [USRP-users] Ettus N300 8-bit sample capture
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/M5QXBFIC34C5S3QFBNXA3TTLVLITOW6A/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3535116924030430665=="

--===============3535116924030430665==
Content-Type: multipart/alternative; boundary="000000000000f5b1b605bda6b1c5"

--000000000000f5b1b605bda6b1c5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello All,



I am trying to capture 8-bit samples using an Ettus USRP N300, rather than
the default of 16-bit (sc16).

This is for scenarios where I can sacrifice some dynamic range for higher
data rates and also to run on slightly lower powered hardware.



UHD version info: linux; GNU C++ version 9.3.0; Boost_107100;
UHD_3.15.0.0-62-g7a3f1516

The Ettus is connected over a network cable and not USB.

I am using the HG FPGA firmware,  which is v5.3 according to the output of
`uhd_usrp_probe`



I have tried two options so far:

   1. Benchmark_rate from the uhd examples directory:
   2. GNU Radio



This benchmark_rate command below fails with the error message: =E2=80=9CEr=
ror:
RuntimeError: [RX Streamer] Conflicting OTW types defined: args.otw_format
=3D 'sc8' <=3D> stream_sig.item_type =3D 'sc16'=E2=80=9D



`/benchmark_rate --args
"type=3Dn3xx,mgmt_addr=3Dn.n.n.n,addr=3Dn.n.n.n,master_clock_rate=3D122.88e=
6"
--duration 60 --channels "0" --rx_rate 40.96e6 --rx_subdev "A:0" --rx_otw
sc8`



In GNU Radio, I am using a UHD block and configure the =E2=80=9CWire Format=
=E2=80=9D
parameter to =E2=80=9CComplex int8=E2=80=9D. This produces exactly the same=
 error:



RuntimeError: [RX Streamer] Conflicting OTW types defined: args.otw_format
=3D 'sc8' <=3D> stream_sig.item_type =3D 'sc16'



The v3.15 UHD documentation does not state the available otw formats:
https://files.ettus.com/manual_archive/v3.15.0.0/html/structuhd__stream__ar=
gs__t.html



However, the v4 documentation does:
https://files.ettus.com/manual/structuhd_1_1stream__args__t.html



Does anyone know if the N300 does indeed support 8-bit? And if so, how I
can implement it?

Kind Regards,
Nik

--000000000000f5b1b605bda6b1c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div><p class=3D"MsoNormal" style=3D"margin=
:0cm;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">Hello =
All,</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-fami=
ly:Calibri,sans-serif;color:rgb(0,0,0)">=C2=A0</p><p class=3D"MsoNormal" st=
yle=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0=
,0,0)">I am trying to capture 8-bit samples using an Ettus USRP N300, rathe=
r than the default of 16-bit (sc16).</p><p class=3D"MsoNormal" style=3D"mar=
gin:0cm;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">Thi=
s is for scenarios where I can sacrifice some dynamic range=C2=A0for higher=
 data rates and also to run on slightly lower powered hardware.</p><p class=
=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-=
serif;color:rgb(0,0,0)">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin:0c=
m;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">UHD versi=
on info: linux; GNU C++ version 9.3.0; Boost_107100; UHD_3.15.0.0-62-g7a3f1=
516</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-famil=
y:Calibri,sans-serif;color:rgb(0,0,0)">The Ettus is connected over a networ=
k cable and not USB.</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-siz=
e:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">I am using the HG F=
PGA firmware, =C2=A0which is v5.3 according to the output of `uhd_usrp_prob=
e`</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family=
:Calibri,sans-serif;color:rgb(0,0,0)">=C2=A0</p><p class=3D"MsoNormal" styl=
e=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0=
,0)">I have tried two options so far:</p><ol start=3D"1" type=3D"1" style=
=3D"margin-bottom:0cm;color:rgb(0,0,0);font-family:-webkit-standard;margin-=
top:0cm"><li class=3D"gmail-MsoListParagraph" style=3D"margin:0cm;font-size=
:11pt;font-family:Calibri,sans-serif">Benchmark_rate from the uhd examples =
directory:</li><li class=3D"gmail-MsoListParagraph" style=3D"margin:0cm;fon=
t-size:11pt;font-family:Calibri,sans-serif">GNU Radio</li></ol><p class=3D"=
MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-seri=
f;color:rgb(0,0,0)">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin:0cm;fo=
nt-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">This benchmar=
k_rate command below fails with the error message: =E2=80=9CError: RuntimeE=
rror: [RX Streamer] Conflicting OTW types defined: args.otw_format =3D &#39=
;sc8&#39; &lt;=3D&gt; stream_sig.item_type =3D &#39;sc16&#39;=E2=80=9D</p><=
p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibr=
i,sans-serif;color:rgb(0,0,0)">=C2=A0</p><p class=3D"MsoNormal" style=3D"ma=
rgin:0cm;font-size:11pt;font-family:Calibri,sans-serif;color:rgb(0,0,0)">`/=
benchmark_rate --args &quot;type=3Dn3xx,mgmt_addr=3Dn.n.n.n,addr=3Dn.n.n.n,=
master_clock_rate=3D122.88e6&quot; --duration 60 --channels &quot;0&quot; -=
-rx_rate 40.96e6 --rx_subdev &quot;A:0&quot; --rx_otw sc8`</p><div style=3D=
"color:rgb(0,0,0);font-family:-webkit-standard"><div><p class=3D"MsoNormal"=
 style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif">=C2=A0<=
/p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Ca=
libri,sans-serif">In GNU Radio, I am using a UHD block and configure the =
=E2=80=9CWire Format=E2=80=9D parameter to =E2=80=9CComplex int8=E2=80=9D. =
This produces exactly the same error:</p><p class=3D"MsoNormal" style=3D"ma=
rgin:0cm;font-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p><p class=
=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-=
serif">RuntimeError: [RX Streamer] Conflicting OTW types defined: args.otw_=
format =3D &#39;sc8&#39; &lt;=3D&gt; stream_sig.item_type =3D &#39;sc16&#39=
;</p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:=
Calibri,sans-serif">=C2=A0</p><p class=3D"MsoNormal" style=3D"margin:0cm;fo=
nt-size:11pt;font-family:Calibri,sans-serif">The v3.15 UHD documentation do=
es not state the available otw formats:<span class=3D"gmail-Apple-converted=
-space">=C2=A0</span><a href=3D"https://files.ettus.com/manual_archive/v3.1=
5.0.0/html/structuhd__stream__args__t.html" style=3D"color:rgb(4,74,145)">h=
ttps://files.ettus.com/manual_archive/v3.15.0.0/html/structuhd__stream__arg=
s__t.html</a></p><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;=
font-family:Calibri,sans-serif">=C2=A0</p><p class=3D"MsoNormal" style=3D"m=
argin:0cm;font-size:11pt;font-family:Calibri,sans-serif">However, the v4 do=
cumentation does:<span class=3D"gmail-Apple-converted-space">=C2=A0</span><=
a href=3D"https://files.ettus.com/manual/structuhd_1_1stream__args__t.html"=
 title=3D"https://files.ettus.com/manual/structuhd_1_1stream__args__t.html"=
 style=3D"color:rgb(4,74,145)">https://files.ettus.com/manual/structuhd_1_1=
stream__args__t.html</a></p><p class=3D"MsoNormal" style=3D"margin:0cm;font=
-size:11pt;font-family:Calibri,sans-serif">=C2=A0</p><p class=3D"MsoNormal"=
 style=3D"margin:0cm;font-size:11pt;font-family:Calibri,sans-serif">Does an=
yone know if the N300 does indeed support 8-bit? And if so, how I can imple=
ment it?</p></div></div></div><br clear=3D"all"><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv><div dir=3D"ltr">Kind Regards,<br>Nik<br></div></div></div></div></div><=
/div>

--000000000000f5b1b605bda6b1c5--

--===============3535116924030430665==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3535116924030430665==--
