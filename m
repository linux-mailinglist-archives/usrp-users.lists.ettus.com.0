Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8D39E1F0B
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 15:25:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5F9A8385843
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 09:25:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733235919; bh=tE/3nDYNRXrqhAtNAXt1yvUwhsixiCKmZm8KmI38dMI=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=RKEtOsvGoe3YcdWD49mJMpBTz40wP7Pan7HYyiykY88G2NVsUduhq9BNrw4AMILnN
	 4/wm/5E1p74pDWKEwC0bP34Yg02r5p5z9uYiLG+l+bIXGkO4ACr8n1ZCKmkyTp4i8z
	 6lF7HiI2+Z1CM4+ltGSjCzqB2chd93Y7eTZBz1Mqhy+8SOYVK0JA1Ub3M8/D65DCr9
	 ACzqYf9s6JPQwmdwEqQu1kj8C1TXGKmyC4cvkRxaxGsaLGecLqMMKOLpN3EMAU4N5Y
	 LFBKblqXBKBh9EBL06D0Tv29tI7p1rySV3cnn48wkYGbtgl66lUDW1keMjqxq2q5Sg
	 Bzhij9GVt9CJg==
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	by mm2.emwd.com (Postfix) with ESMTPS id 451F03855F9
	for <usrp-users@lists.ettus.com>; Tue,  3 Dec 2024 09:24:44 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=accelleran-com.20230601.gappssmtp.com header.i=@accelleran-com.20230601.gappssmtp.com header.b="SRfUzbNc";
	dkim-atps=neutral
Received: by mail-io1-f44.google.com with SMTP id ca18e2360f4ac-84198252db1so157582639f.0
        for <usrp-users@lists.ettus.com>; Tue, 03 Dec 2024 06:24:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=accelleran-com.20230601.gappssmtp.com; s=20230601; t=1733235883; x=1733840683; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=D2Mi5h2PtCdwYVTxv+aToJzA6X/E3OT6zZ5D4z1frPc=;
        b=SRfUzbNcveWoNcW9sbYu/gEkNeJVSiC7/1Ty8gygt9GZL9yC+CwNNStUaO0eTTLyhw
         tUPct8egKCvExdodTucaNVpeAD1C879StIg7W5FYB6uZfy/+lYwXqkp8f3y/LR6m4btx
         Oxdb/QeMc+fDBSwdPnJ9uqucjhvnPJyBAGTs1ZqKAuFj1VNxDY9JLhpz5ImwbbIEcDGm
         wLPj5aWAINBTW7d6zmP6i7U8gXtDpEhl8ALkQp0JMUGFGAC/b/0K2mW4VrlaueV7YVUS
         1iYT93lHEYDjN+pmaZ+kI1khquYrbaMpqdpvJvEkUeSXYIjeslK2+cPnfSV8gTXHDM3z
         lT+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733235883; x=1733840683;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D2Mi5h2PtCdwYVTxv+aToJzA6X/E3OT6zZ5D4z1frPc=;
        b=OBCF5S0feA3JjZ9z9oow3dsKPwpz1A9hjtwWQ1/6HctCuFpLv/0SPPRPiPpD3gizJ6
         bjc/1XUt6Oo/p733+N9LVA5Fcy48SsWcLislxJKFdg5Uy8v1UJOVbWNMuuBPvzxhzgUQ
         05HfrwNSNFsdyYry7EKCHx8G2nzn6TjEkN9BYWLfdP4he7Rvo797gH+1JQ6Dah/IXFR+
         rFdFCSYb86DsyNrqtRc/1q1sC3Z0ZEf7IF2xAF60JVUZKgxaD12E6g/yRC2lSRvSLzCV
         dhipXspUvjJC8yuXzzHQTGXNrpIOaGM1ocCa+Awm3r9Ep/T9vQvwrz+czPAsFdXKHW5r
         vI+g==
X-Gm-Message-State: AOJu0YxPtM3/+zp4vaMh/7J/t+qmEO29VT+IDCfiT6wmwHhelI3eODbJ
	H9uMHc2JlOzvuxADraZw2JE8pjWW05t/ro6MqrRtdbYY4C8gj3MzxpYkUUa9xmV5vNY4ICF4u8Y
	NKQ9X0Idc260BB2Jjj10pV/YHXIjxU0BOtCbuHqRhUAbjqDMuu7HyGhOy
X-Gm-Gg: ASbGncsZeqpmWYSQckPr/JJII1IdCPnFruZoz2TlAbZ6VIvmDUNtcKRNOVXUlEQ9et5
	uAlkpiqUkbZ81sezxw14n2tAQfz9RBmMV
X-Google-Smtp-Source: AGHT+IHFPNRWMBlGvR1QCek6kJE42p3mqwhvC4jUonJQknbNSSfcucGOUFefikvz3StDxM9hOCqKp5mI2h2cwbGNuS4=
X-Received: by 2002:a05:6602:29c2:b0:841:8345:5eed with SMTP id
 ca18e2360f4ac-8445bb97a87mr243685539f.0.1733235882654; Tue, 03 Dec 2024
 06:24:42 -0800 (PST)
MIME-Version: 1.0
References: <EvkgoKJFslRqwoEfZWlkpFFprnbsUkyeaIKDKZSnE4@lists.ettus.com>
In-Reply-To: <EvkgoKJFslRqwoEfZWlkpFFprnbsUkyeaIKDKZSnE4@lists.ettus.com>
From: Houshang <houshang.azizi@accelleran.com>
Date: Tue, 3 Dec 2024 15:24:31 +0100
Message-ID: <CAO=xj9XtwCASGKbfrJs6DYm90yjpK5JaLQp1DFGtfi2Qs8K+vA@mail.gmail.com>
To: joerg.hofrichter@emerson.com
Message-ID-Hash: TQPSH6YDSDLDRD2CBMBFPAWIIAZSTALQ
X-Message-ID-Hash: TQPSH6YDSDLDRD2CBMBFPAWIIAZSTALQ
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD, DPDK compatibility question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TQPSH6YDSDLDRD2CBMBFPAWIIAZSTALQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1233543409466603386=="

--===============1233543409466603386==
Content-Type: multipart/alternative; boundary="00000000000019280306285e6d72"

--00000000000019280306285e6d72
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Jeorg! Would you mind sharing the commands to check if DPDK is
really working/operational? I am asking because it is not working with my
SRSRAN and I want to check it individually so that I make sure it is SRSRAN
or its config related and not the DPDK. Here is what I have:

ad@bm-super11-intel:~/accelleran$ dpdk-testpmd -v
EAL: Detected CPU lcores: 64
EAL: Detected NUMA nodes: 1
EAL: RTE Version: 'DPDK 21.11.6'
EAL: Detected shared linkage of DPDK
EAL: Multi-process socket /run/user/1000/dpdk/rte/mp_socket
EAL: Physical addresses are unavailable, selecting IOVA as VA mode.
EAL: Selected IOVA mode 'VA'
EAL: No available 2048 kB hugepages reported
EAL: No free 1048576 kB hugepages reported on node 0
EAL: No available 1048576 kB hugepages reported
EAL: FATAL: Cannot get hugepage information.
EAL: Cannot get hugepage information.
EAL: Error - exiting with code: 1
  Cause: Cannot init EAL: Permission denied
ad@bm-super11-intel:~/accelleran$
ad@bm-super11-intel:~/accelleran$ sudo dpdk-testpmd -v
EAL: Detected CPU lcores: 64
EAL: Detected NUMA nodes: 1
EAL: RTE Version: 'DPDK 21.11.6'
EAL: Detected shared linkage of DPDK
EAL: Cannot create lock on '/var/run/dpdk/rte/config'. Is another primary
process running?
EAL: FATAL: Cannot init config
EAL: Cannot init config
EAL: Error - exiting with code: 1
  Cause: Cannot init EAL: Success
ad@bm-super11-intel:~/accelleran$ uhd_config_info --version
UHD 4.7.0.0-0ubuntu1~jammy1
ad@bm-super11-intel:~/accelleran$ sudo dpdk-devbind.py --status

Network devices using DPDK-compatible driver
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
0000:43:00.1 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio-pci
unused=3Di40e
0000:43:00.2 'Ethernet Controller X710 for 10GbE SFP+ 1572' drv=3Dvfio-pci
unused=3Di40e

On Tue, 3 Dec 2024 at 15:04, joerg.hofrichter--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Houshang,
>
> UHD 4.7.0.0 is only compatible up until DPDK 21.11.x. Later DPDK versions
> *might* work, but for certain network cards you will run into issues as
> reported in https://github.com/EttusResearch/uhd/issues/754 and
> https://github.com/EttusResearch/uhd/issues/795
>
> UHD on latest master was successfully tested with DPDK 23.11.x. We did no=
t
> check for later DPDK versions yet.
>
> Kind regards,
> J=C3=B6rg
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20

*Houshang Azizi*

*Test Engineer*

[image: logo] <https://www.accelleran.com/>

*(32) 492195241*

*houshang.azizi@accelleran.com <Email@accelleran.com>*



*www.accelleran.com* <http://www.accelleran.com/>

[image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [im=
age:
twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
<https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D1>

--00000000000019280306285e6d72
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Jeorg! Would you mind sharing the commands to =
check if DPDK is really working/operational? I am asking because it is not =
working with my SRSRAN and I want to check it individually so that I make s=
ure it is SRSRAN or its config related and not the DPDK. Here is what I hav=
e:</div><div><br></div><div><span style=3D"font-family:monospace">ad@bm-sup=
er11-intel:~/accelleran$ dpdk-testpmd -v<br>EAL: Detected CPU lcores: 64<br=
>EAL: Detected NUMA nodes: 1<br>EAL: RTE Version: &#39;DPDK 21.11.6&#39;<br=
>EAL: Detected shared linkage of DPDK<br>EAL: Multi-process socket /run/use=
r/1000/dpdk/rte/mp_socket<br>EAL: Physical addresses are unavailable, selec=
ting IOVA as VA mode.<br>EAL: Selected IOVA mode &#39;VA&#39;<br>EAL: No av=
ailable 2048 kB hugepages reported<br>EAL: No free 1048576 kB hugepages rep=
orted on node 0<br>EAL: No available 1048576 kB hugepages reported<br>EAL: =
FATAL: Cannot get hugepage information.<br>EAL: Cannot get hugepage informa=
tion.<br>EAL: Error - exiting with code: 1<br>=C2=A0 Cause: Cannot init EAL=
: Permission denied<br>ad@bm-super11-intel:~/accelleran$ <br>ad@bm-super11-=
intel:~/accelleran$ sudo dpdk-testpmd -v<br>EAL: Detected CPU lcores: 64<br=
>EAL: Detected NUMA nodes: 1<br>EAL: RTE Version: &#39;DPDK 21.11.6&#39;<br=
>EAL: Detected shared linkage of DPDK<br>EAL: Cannot create lock on &#39;/v=
ar/run/dpdk/rte/config&#39;. Is another primary process running?<br>EAL: FA=
TAL: Cannot init config<br>EAL: Cannot init config<br>EAL: Error - exiting =
with code: 1<br>=C2=A0 Cause: Cannot init EAL: Success<br>ad@bm-super11-int=
el:~/accelleran$ uhd_config_info --version<br>UHD 4.7.0.0-0ubuntu1~jammy1<b=
r>ad@bm-super11-intel:~/accelleran$ sudo dpdk-devbind.py --status<br><br>Ne=
twork devices using DPDK-compatible driver<br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>0000:43:00.1 &#39;Ethernet Controller X71=
0 for 10GbE SFP+ 1572&#39; drv=3Dvfio-pci unused=3Di40e<br>0000:43:00.2 &#3=
9;Ethernet Controller X710 for 10GbE SFP+ 1572&#39; drv=3Dvfio-pci unused=
=3Di40e</span><br></div></div><br><div class=3D"gmail_quote gmail_quote_con=
tainer"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 3 Dec 2024 at 15:04, =
joerg.hofrichter--- via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.e=
ttus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><p>Hi Houshang,</p><p>UHD 4.7.0.0 is on=
ly compatible up until DPDK 21.11.x. Later DPDK versions <em>might</em> wor=
k, but for certain network cards you will run into issues as reported in <a=
 href=3D"https://github.com/EttusResearch/uhd/issues/754" target=3D"_blank"=
>https://github.com/EttusResearch/uhd/issues/754</a> and <a href=3D"https:/=
/github.com/EttusResearch/uhd/issues/795" target=3D"_blank">https://github.=
com/EttusResearch/uhd/issues/795</a></p><p>UHD on latest master was success=
fully tested with DPDK 23.11.x. We did not check for later DPDK versions ye=
t.</p><p>Kind regards,<br>J=C3=B6rg</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=
=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-ser=
if"><b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb=
(0,173,238)">Houshang Azizi</span></b><span style=3D"font-size:11pt;font-fa=
mily:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0c=
m;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)"=
>Test Engineer</span></b></p></div><p></p><a href=3D"https://www.accelleran=
.com/" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color:tra=
nsparent" target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo"=
 width=3D"143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Acc=
elleran_NewLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middl=
e; width: 143px; height: auto;"></font></a><div style=3D"text-align:left"><=
p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt=
;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family=
:Arial,sans-serif;color:black">(32) 492195241</span></b><span style=3D"font=
-size:10pt;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" =
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,san=
s-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><sp=
an style=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"=
_blank">houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"=
MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-famil=
y:Aptos,sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-se=
rif">=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com=
/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color=
:rgb(246,146,30)">www.accelleran.com</span></b></a></span></p></div><p styl=
e=3D"text-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/c=
ompany/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);backgrou=
nd-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=
=3D"linkedin icon" src=3D"https://www.mail-signatures.com/signature-generat=
or/img/templates/simple-and-light/ln.png" style=3D"border: 0px; vertical-al=
ign: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a hre=
f=3D"https://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51=
,122,183);background-color:transparent" target=3D"_blank"><img border=3D"0"=
 width=3D"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/s=
ignature-generator/img/templates/simple-and-light/tt.png" style=3D"border: =
0px; vertical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=
=C2=A0=C2=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVI=
Ex2g?themeRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);back=
ground-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" =
alt=3D"youtube icon" src=3D"https://www.mail-signatures.com/signature-gener=
ator/img/templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-=
align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p><=
/div></div>

--00000000000019280306285e6d72--

--===============1233543409466603386==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1233543409466603386==--
