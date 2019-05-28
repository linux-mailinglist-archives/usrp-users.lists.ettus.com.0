Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2712CED4
	for <lists+usrp-users@lfdr.de>; Tue, 28 May 2019 20:43:38 +0200 (CEST)
Received: from [::1] (port=57720 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hVh4Q-0004zg-Vj; Tue, 28 May 2019 14:43:34 -0400
Received: from mail-it1-f178.google.com ([209.85.166.178]:53485)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <serge.malo@skydelsolutions.com>)
 id 1hVh3t-0004qM-BQ
 for usrp-users@lists.ettus.com; Tue, 28 May 2019 14:43:31 -0400
Received: by mail-it1-f178.google.com with SMTP id m141so6058120ita.3
 for <usrp-users@lists.ettus.com>; Tue, 28 May 2019 11:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=skydelsolutions-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=D8wFIgRyk37G6vyFEo4gfb13yGCdx6NHmWfer+nTvGw=;
 b=fMGttNJlQtEg0DtjCZEIQ5M5gN53qgRbzwlIfp1PKEq/9evabg5vQdrCDn0c1BBbvV
 h1Xa0t3Cna0q7q3qJZrERZQOnEWhJ0qd595zYdiBIck5rcdemfd8MWov+d7XegmRocE7
 nY9I5XQ2NJjtu6RTht003Nopy2pjucAG1UBGdfxWosmYkBZD/knTYL1gPkVp/6ig4+AC
 w0CFAxJltDggsL6rmcF9c8CMLfArbL2IU48NeRtNlMHAK8ndPKePmAAdaiCovNMl+U1f
 XTg8FFv+Sm+3VF5+ZTN10EvzZvP7jgYOE8NGxuwkpcK4S7jYzX2tAwoJQqYTf2t8xLQU
 2tUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=D8wFIgRyk37G6vyFEo4gfb13yGCdx6NHmWfer+nTvGw=;
 b=sfsmsYqbIt4H+o4gX4mrvUXmRRbT9FBJJpvURy5gI+3BM2oZclI6yzSGHkqa+6fnj9
 P7tqV085mnOsJvCPZCzHbTXyRi269WZoZUyDIAmts/VCJgd7EehWHnXfsK8iLuLZ9MGh
 j0ay4XZxHeP6330qZxJZ134bXtD+LJDjP5+dpWbKWMWjtVL4EQRlGA5MUjGzFRBQ5vW9
 RgsLVLygKac6Cx62XEC83Swc3bNQIyCEXtXxMvVE5cx7Ra5d4PVk2OrsjC57FfBYFC4R
 JFCh4Zmr/jYEdeNl9JEy+V8j/I5NlMJ7oQIunyTMOX9vOzrIGCajt+8n2Yoy4NQfJv74
 HV+w==
X-Gm-Message-State: APjAAAV1Bi07aYxO97CHJYBxfEMOkn1NcSg/QZwcs8Ik8wusTfF5qgU+
 gtwT43tJF+fhHumfBaPzlLqd3mbaqirRM9EC9JAO4zPkrU4=
X-Google-Smtp-Source: APXvYqwTqfNfAK5NuHJtJfZbQHHBI9EftpC6gFYtQQ/iyVzAwxMIiZQsJ1+kVGBK8lZ8XdKlJJ7JOXH4LYMWTvRmn8s=
X-Received: by 2002:a24:6212:: with SMTP id d18mr4116725itc.2.1559068939800;
 Tue, 28 May 2019 11:42:19 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 28 May 2019 14:42:08 -0400
Message-ID: <CAOhu+FPvR-MMm=-3xomUCd+rzThqmy-k7se=PZCos8HvsnwLaQ@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: [USRP-users] N310 TX gain: jump of +2dB
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Serge Malo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Serge Malo <serge.malo@skydelsolutions.com>
Content-Type: multipart/mixed; boundary="===============6352171825513000515=="
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

--===============6352171825513000515==
Content-Type: multipart/alternative; boundary="000000000000566f010589f706f3"

--000000000000566f010589f706f3
Content-Type: text/plain; charset="UTF-8"

Hi all,

We are measuring the output power of the N310 when streaming a CW signal
(with the example tx_waveforms), with different values of "gain". The exact
command we use is:

./tx_waveforms --args=addr=192.168.20.2,master_clock_rate=153.6e6
--rate=25600000 --freq=1575420000 --ref=external --pps=external
--channels=0 --ampl=0.296 --gain=XXX

We are under Ubuntu 18.04, and using UHD 3.13.1.0

The output power is pretty linear for gain values between 0 and 52, which
is expected.
However, there is a +3dB jump between gain values of 34 and 35, instead
of +1dB.
(So, between 0 and 52, there is actually 54dB difference instead of 52)

Q: Is this "expected", or can this be explained?
Q: Will this "jump" be present for all revision of N310 devices, or UHD
versions?

Thanks!
Serge

--000000000000566f010589f706f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>We are measuring the=C2=A0outpu=
t power of the N310 when=C2=A0streaming a CW signal (with the example tx_wa=
veforms), with different values of &quot;gain&quot;. The exact command we u=
se is:</div><div><br></div><div>./tx_waveforms --args=3Daddr=3D192.168.20.2=
,master_clock_rate=3D153.6e6 --rate=3D25600000 --freq=3D1575420000 --ref=3D=
external --pps=3Dexternal --channels=3D0 --ampl=3D0.296 --gain=3DXXX<br></d=
iv><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_=
signature"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"l=
tr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=
=3D"ltr"><div style=3D"color:rgb(0,0,0)"><div style=3D"color:rgb(34,34,34);=
font-family:LucidaGrande;font-size:12.8px"><br></div><div style=3D"color:rg=
b(34,34,34);font-family:LucidaGrande;font-size:12.8px"><span style=3D"font-=
family:Arial,Helvetica,sans-serif;font-size:small">We are under Ubuntu 18.0=
4, and using UHD 3.13.1.0</span><br></div><div style=3D"color:rgb(34,34,34)=
;font-family:LucidaGrande;font-size:12.8px"><span style=3D"font-family:Aria=
l,Helvetica,sans-serif;font-size:small"><br></span></div><div style=3D"colo=
r:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px"><span style=3D"f=
ont-family:Arial,Helvetica,sans-serif;font-size:small">The output power is =
pretty linear for gain values between 0 and 52, which is expected.</span></=
div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12=
.8px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small=
">However, there is a=C2=A0+3dB jump between gain values of 34 and 35, inst=
ead of=C2=A0+1dB.</span></div><div style=3D"color:rgb(34,34,34);font-family=
:LucidaGrande;font-size:12.8px"><span style=3D"font-family:Arial,Helvetica,=
sans-serif;font-size:small">(So, between 0 and 52, there is actually 54dB d=
ifference instead of 52)</span></div><div style=3D"color:rgb(34,34,34);font=
-family:LucidaGrande;font-size:12.8px"><span style=3D"font-family:Arial,Hel=
vetica,sans-serif;font-size:small"><br></span></div><div style=3D"color:rgb=
(34,34,34);font-family:LucidaGrande;font-size:12.8px"><span style=3D"font-f=
amily:Arial,Helvetica,sans-serif;font-size:small">Q: Is this &quot;expected=
&quot;, or can this be explained?</span></div><div style=3D"color:rgb(34,34=
,34);font-family:LucidaGrande;font-size:12.8px"><span style=3D"font-family:=
Arial,Helvetica,sans-serif;font-size:small">Q: Will this &quot;jump&quot; b=
e present for all revision of N310 devices, or UHD versions?</span></div><d=
iv style=3D"color:rgb(34,34,34);font-family:LucidaGrande;font-size:12.8px">=
<span style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small"><br>=
</span></div><div style=3D"color:rgb(34,34,34);font-family:LucidaGrande;fon=
t-size:12.8px"><span style=3D"font-family:Arial,Helvetica,sans-serif;font-s=
ize:small">Thanks!</span></div><div style=3D"color:rgb(34,34,34);font-famil=
y:LucidaGrande;font-size:12.8px"><span style=3D"font-family:Arial,Helvetica=
,sans-serif;font-size:small">Serge</span></div></div></div></div></div></di=
v></div></div></div></div></div></div></div></div></div></div></div></div>

--000000000000566f010589f706f3--


--===============6352171825513000515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6352171825513000515==--

