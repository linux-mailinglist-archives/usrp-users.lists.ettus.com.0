Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5644E99878F
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 15:24:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9631C3857DC
	for <lists+usrp-users@lfdr.de>; Thu, 10 Oct 2024 09:24:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728566671; bh=uCiVBZJUKtG3uwTmqhM3cOVUeuv1tpzQ1pNSmqflOFw=;
	h=Date:References:In-Reply-To:From:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=bNTlyaThdQzaWDDTqLWhCFth4Fo9Mwg7mMW5RKLq8S/IAxfrW6mo/SoGu+tN7OUUD
	 SkY1Q9iARIap3W8qft+u+QXb66eceqQqVEpxAJ8w1sF31LHtkB40m3bJYzjU+vU5D3
	 +m7BGWuMoNrV9HyLYqMV0VFJPzXsnRPSK5tp9YTaj+9cEx+uehic93MDjNPas9UALY
	 88oB+XImlGvPJ7aQVnc1e6JK933xemmWdMmUffCq+c0VRTOSkP+dDff4yTyud8aha4
	 R0/5JoypQPAjfAp+tdQR7sI/H+++TA7bLRbi1/tVLXTl2go7yU5wo2P5wrigMhUm6H
	 ZIT+WQy7B9TUA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mm2.emwd.com (Postfix) with ESMTPS id D0B47385659
	for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 09:23:37 -0400 (EDT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-50abe7744d5so259816e0c.0
        for <usrp-users@lists.ettus.com>; Thu, 10 Oct 2024 06:23:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728566617; x=1729171417;
        h=to:from:subject:message-id:in-reply-to:references:date:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TBNofzufBQWbUZY7J6V4pXumPEDfJM56IPkBr9JZeIE=;
        b=JvTGHx0ozsrcDBF/7Q9wyru7h7PPvk3dW7uXSNpv0BrOJvx95kcZnfLc9xSOeeV4rK
         dA9tKuFkscT8p2NuoQUm1+ca7SdNvEuDEpHHeUF/TVFh2fethAIa1RYaEz3ybCDLILQs
         U2YzM53TRCYvOePE0jJbfvwlTQ8gM+pzqwGdtaUcuqid8kfnPz2kqOK0IqO9d0ZZ4ns1
         Eq2LKbVzlHnq5xRnJWS6KEf5q/gkW8igQr6gGUTc+m3UJvBF3VIkqoviSOo7oMUrTRC6
         u5Sgs1Rv7AXD+pcvgHhahfIqgdn5udQfPhgai0+Be5DnxXTiepuo3bk1D+oOGQLRLc0z
         BYMg==
X-Gm-Message-State: AOJu0YyZ7yBLtmjc5TkrB1p0ZlHwuUMcek/qNY02ALoYdwXClBgFyL1M
	nMGgeDUDjP2mRknd3gB96s7T9KzQb0LuhKqcM0r5sw4NPillqbfryQOmuy/Zjhq98owXRoxGRIW
	7SWdtlxU1ACUNGpQju64llMLCGLkSMC6TJ8YqWIjnutY8mXOQWYyaYJd8nsl+3PzCgCdavg==
X-Google-Smtp-Source: AGHT+IErxyJdFPUd6RQadln8kxq4wuzApuBNOjRhPNUHwCLUl+swQn6+IcoNA2Ba0GhJX+CPP7wThrKm7e9c0V++l/zlkehn391iag==
X-Received: by 2002:a05:6122:1d93:b0:4ec:f7d0:e71c with SMTP id 71dfb90a1353d-50cf09b0e3bmr6103154e0c.4.1728566617085;
        Thu, 10 Oct 2024 06:23:37 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 10 Oct 2024 15:15:57 +0200
References: <CAO=xj9XZK5zZhawbPCP5jWknLsD3g4KsaZWO32b3GNNrXSmHnQ@mail.gmail.com>
In-Reply-To: <CAO=xj9XZK5zZhawbPCP5jWknLsD3g4KsaZWO32b3GNNrXSmHnQ@mail.gmail.com>
Message-ID: <CAO=xj9U-mFNtAHWQkAxQ+sgHp7eDNTVUubjJRM3yrk+vmPsycw@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
To: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="000000000000ca839906241f2bcb"
Message-ID-Hash: UXHIRLUDBMCNM3ZCSK5N6ZY5D4RAF25G
X-Message-ID-Hash: UXHIRLUDBMCNM3ZCSK5N6ZY5D4RAF25G
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: EnvironmentError: IOError: recv error on socket
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/UXHIRLUDBMCNM3ZCSK5N6ZY5D4RAF25G/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000ca839906241f2bcb
Content-Type: multipart/alternative; boundary="000000000000ca839606241f2bc9"

--000000000000ca839606241f2bc9
Content-Type: text/plain; charset="UTF-8"

Hello
I hereby want to share more info. Please see attached file.
Thanks
Hoshang

On Thu, 10 Oct 2024 at 09:02, Houshang <houshang.azizi@accelleran.com>
wrote:

> Hello
> Does anyone know how to deal with the following error?
> Thanks
> Houshang
>
> ad@bm-super11-intel:/etc/netplan$ uhd_usrp_probe
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
> UHD_4.7.0.HEAD-0-ga5ed1872
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
> mgmt_addr=10.10.0.100,type=n3xx,product=n310,serial=32000F1,name=ni-n3xx-32000F1,fpga=XG,claimed=False,addr=10.10.2.100
> [INFO] [MPM.PeriphManager] init() called with device args
> `fpga=XG,mgmt_addr=10.10.0.100,name=ni-n3xx-32000F1,product=n310,clock_source=internal,time_source=internal'.
> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:
> Connection refused
> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
> EnvironmentError: IOError: recv error on socket: Connection refused
> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
> EnvironmentError: IOError: recv error on socket: Connection refused
> Error: RuntimeError: Failure to create rfnoc_graph.
> ad@bm-super11-intel:/etc/netplan$ uhd_find_devices
> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
> UHD_4.7.0.HEAD-0-ga5ed1872
> --------------------------------------------------
> -- UHD Device 0
> --------------------------------------------------
> Device Address:
>     serial: 32000F1
>     addr: 10.10.2.100
>     claimed: False
>     fpga: XG
>     mgmt_addr: 10.10.0.100
>     mgmt_addr: 10.10.1.100
>     mgmt_addr: 10.10.2.100
>     name: ni-n3xx-32000F1
>     product: n310
>     type: n3xx
>
>
> ad@bm-super11-intel:/etc/netplan$ ping 10.10.0.100
> PING 10.10.0.100 (10.10.0.100) 56(84) bytes of data.
> 64 bytes from 10.10.0.100: icmp_seq=1 ttl=64 time=0.289 ms
> ^C
> --- 10.10.0.100 ping statistics ---
> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
> rtt min/avg/max/mdev = 0.289/0.289/0.289/0.000 ms
> ad@bm-super11-intel:/etc/netplan$ ping 10.10.1.100
> PING 10.10.1.100 (10.10.1.100) 56(84) bytes of data.
> 64 bytes from 10.10.1.100: icmp_seq=1 ttl=64 time=1.16 ms
> 64 bytes from 10.10.1.100: icmp_seq=2 ttl=64 time=1.11 ms
> ^C
> --- 10.10.1.100 ping statistics ---
> 2 packets transmitted, 2 received, 0% packet loss, time 1001ms
> rtt min/avg/max/mdev = 1.107/1.135/1.163/0.028 ms
> ad@bm-super11-intel:/etc/netplan$ ping 10.10.2.100
> PING 10.10.2.100 (10.10.2.100) 56(84) bytes of data.
> 64 bytes from 10.10.2.100: icmp_seq=1 ttl=64 time=1.02 ms
> ^C
> --- 10.10.2.100 ping statistics ---
> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
> rtt min/avg/max/mdev = 1.019/1.019/1.019/0.000 ms
> ad@bm-super11-intel:/etc/netplan$
>


-- 

*Houshang Azizi*

*Test Engineer*

[image: logo] <https://www.accelleran.com/>

*(32) 492195241*

*houshang.azizi@accelleran.com <Email@accelleran.com>*



*www.accelleran.com* <http://www.accelleran.com/>

[image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [image:
twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
<https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=1>

--000000000000ca839606241f2bc9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello</div><div>I hereby want to share more info. Ple=
ase see attached file.</div><div>Thanks</div><div>Hoshang<br></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, =
10 Oct 2024 at 09:02, Houshang &lt;<a href=3D"mailto:houshang.azizi@accelle=
ran.com">houshang.azizi@accelleran.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello</div><div=
>Does anyone know how to deal with the following error?</div><div>Thanks</d=
iv><div>Houshang</div><div><br></div><div>ad@bm-super11-intel:/etc/netplan$=
 uhd_usrp_probe <br>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_10740=
0; DPDK_21.11; UHD_4.7.0.HEAD-0-ga5ed1872<br>[INFO] [MPMD] Initializing 1 d=
evice(s) in parallel with args: mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=
=3Dn310,serial=3D32000F1,name=3Dni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,a=
ddr=3D10.10.2.100<br>[INFO] [MPM.PeriphManager] init() called with device a=
rgs `fpga=3DXG,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=3Dn31=
0,clock_source=3Dinternal,time_source=3Dinternal&#39;.<br>[ERROR] [RFNOC::M=
GMT] EnvironmentError: IOError: recv error on socket: Connection refused<br=
>[ERROR] [RFNOC::GRAPH] IO Error during GSM initialization. EnvironmentErro=
r: IOError: recv error on socket: Connection refused<br>[ERROR] [RFNOC::GRA=
PH] Caught exception while initializing graph: EnvironmentError: IOError: r=
ecv error on socket: Connection refused<br>Error: RuntimeError: Failure to =
create rfnoc_graph.<br>ad@bm-super11-intel:/etc/netplan$ uhd_find_devices<b=
r>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD=
_4.7.0.HEAD-0-ga5ed1872<br>------------------------------------------------=
--<br>-- UHD Device 0<br>--------------------------------------------------=
<br>Device Address:<br>=C2=A0 =C2=A0 serial: 32000F1<br>=C2=A0 =C2=A0 addr:=
 10.10.2.100<br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 fpga: XG<br>=
=C2=A0 =C2=A0 mgmt_addr: 10.10.0.100<br>=C2=A0 =C2=A0 mgmt_addr: 10.10.1.10=
0<br>=C2=A0 =C2=A0 mgmt_addr: 10.10.2.100<br>=C2=A0 =C2=A0 name: ni-n3xx-32=
000F1<br>=C2=A0 =C2=A0 product: n310<br>=C2=A0 =C2=A0 type: n3xx<br><br><br=
>ad@bm-super11-intel:/etc/netplan$ ping 10.10.0.100<br>PING 10.10.0.100 (10=
.10.0.100) 56(84) bytes of data.<br>64 bytes from <a href=3D"http://10.10.0=
.100" target=3D"_blank">10.10.0.100</a>: icmp_seq=3D1 ttl=3D64 time=3D0.289=
 ms<br>^C<br>--- 10.10.0.100 ping statistics ---<br>1 packets transmitted, =
1 received, 0% packet loss, time 0ms<br>rtt min/avg/max/mdev =3D 0.289/0.28=
9/0.289/0.000 ms<br>ad@bm-super11-intel:/etc/netplan$ ping 10.10.1.100<br>P=
ING 10.10.1.100 (10.10.1.100) 56(84) bytes of data.<br>64 bytes from <a hre=
f=3D"http://10.10.1.100" target=3D"_blank">10.10.1.100</a>: icmp_seq=3D1 tt=
l=3D64 time=3D1.16 ms<br>64 bytes from <a href=3D"http://10.10.1.100" targe=
t=3D"_blank">10.10.1.100</a>: icmp_seq=3D2 ttl=3D64 time=3D1.11 ms<br>^C<br=
>--- 10.10.1.100 ping statistics ---<br>2 packets transmitted, 2 received, =
0% packet loss, time 1001ms<br>rtt min/avg/max/mdev =3D 1.107/1.135/1.163/0=
.028 ms<br>ad@bm-super11-intel:/etc/netplan$ ping 10.10.2.100<br>PING 10.10=
.2.100 (10.10.2.100) 56(84) bytes of data.<br>64 bytes from <a href=3D"http=
://10.10.2.100" target=3D"_blank">10.10.2.100</a>: icmp_seq=3D1 ttl=3D64 ti=
me=3D1.02 ms<br>^C<br>--- 10.10.2.100 ping statistics ---<br>1 packets tran=
smitted, 1 received, 0% packet loss, time 0ms<br>rtt min/avg/max/mdev =3D 1=
.019/1.019/1.019/0.000 ms<br>ad@bm-super11-intel:/etc/netplan$ <br></div></=
div>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=3D"margin:0=
cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span=
 style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(0,173,238)"=
>Houshang Azizi</span></b><span style=3D"font-size:11pt;font-family:Arial,s=
ans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span style=3D"fon=
t-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)">Test Engine=
er</span></b></p></div><p></p><a href=3D"https://www.accelleran.com/" rel=
=3D"noopener" style=3D"color:rgb(51,122,183);background-color:transparent" =
target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo" width=3D"=
143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Accelleran_Ne=
wLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middle; width: =
143px; height: auto;"></font></a><div style=3D"text-align:left"><p class=3D=
"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-fami=
ly:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family:Arial,san=
s-serif;color:black">(32) 492195241</span></b><span style=3D"font-size:10pt=
;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"m=
argin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><=
span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><span style=
=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"_blank">=
houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"MsoNorma=
l" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,=
sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif">=C2=
=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal=
;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-size:10pt=
;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com/" style=
=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color:rgb(246=
,146,30)">www.accelleran.com</span></b></a></span></p></div><p style=3D"tex=
t-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/company/a=
ccelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color=
:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=3D"linke=
din icon" src=3D"https://www.mail-signatures.com/signature-generator/img/te=
mplates/simple-and-light/ln.png" style=3D"border: 0px; vertical-align: midd=
le; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a href=3D"http=
s://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183)=
;background-color:transparent" target=3D"_blank"><img border=3D"0" width=3D=
"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/signature-=
generator/img/templates/simple-and-light/tt.png" style=3D"border: 0px; vert=
ical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=
=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?them=
eRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-co=
lor:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=3D"yo=
utube icon" src=3D"https://www.mail-signatures.com/signature-generator/img/=
templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-align: mi=
ddle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p></div></di=
v>

--000000000000ca839606241f2bc9--

--000000000000ca839906241f2bcb
Content-Type: text/plain; charset="US-ASCII"; name="more_data.txt"
Content-Disposition: attachment; filename="more_data.txt"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_m23bnpb60
Content-ID: <f_m23bnpb60>

YWRAYm0tc3VwZXIxMS1pbnRlbDovdXNyL2xvY2FsL2xpYi91aGQvZXhhbXBsZXMkIHN1ZG8gZHBk
ay1kZXZiaW5kLnB5IC0tc3RhdHVzCgpOZXR3b3JrIGRldmljZXMgdXNpbmcgRFBESy1jb21wYXRp
YmxlIGRyaXZlcgo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQow
MDAwOjQzOjAwLjEgJ0V0aGVybmV0IENvbnRyb2xsZXIgWDcxMCBmb3IgMTBHYkUgU0ZQKyAxNTcy
JyBkcnY9dmZpby1wY2kgdW51c2VkPWk0MGUKMDAwMDo0MzowMC4yICdFdGhlcm5ldCBDb250cm9s
bGVyIFg3MTAgZm9yIDEwR2JFIFNGUCsgMTU3MicgZHJ2PXZmaW8tcGNpIHVudXNlZD1pNDBlCgpO
ZXR3b3JrIGRldmljZXMgdXNpbmcga2VybmVsIGRyaXZlcgo9PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQowMDAwOjA0OjAwLjAgJ0V0aGVybmV0IENvbnRyb2xsZXIgMTBHIFg1NTBU
IDE1NjMnIGlmPWVubzEgZHJ2PWl4Z2JlIHVudXNlZD12ZmlvLXBjaSAqQWN0aXZlKgowMDAwOjA0
OjAwLjEgJ0V0aGVybmV0IENvbnRyb2xsZXIgMTBHIFg1NTBUIDE1NjMnIGlmPWVubzIgZHJ2PWl4
Z2JlIHVudXNlZD12ZmlvLXBjaSAKMDAwMDo0MzowMC4wICdFdGhlcm5ldCBDb250cm9sbGVyIFg3
MTAgZm9yIDEwR2JFIFNGUCsgMTU3MicgaWY9ZW5zMWYwIGRydj1pNDBlIHVudXNlZD12ZmlvLXBj
aSAKMDAwMDo0MzowMC4zICdFdGhlcm5ldCBDb250cm9sbGVyIFg3MTAgZm9yIDEwR2JFIFNGUCsg
MTU3MicgaWY9ZW5zMWYzIGRydj1pNDBlIHVudXNlZD12ZmlvLXBjaSAqQWN0aXZlKgowMDAwOjcw
OjAwLjAgJ0V0aGVybmV0IENvbnRyb2xsZXIgWDcxMCBmb3IgMTBHYkUgU0ZQKyAxNTcyJyBpZj1l
bnMyZjAgZHJ2PWk0MGUgdW51c2VkPXZmaW8tcGNpIAowMDAwOjcwOjAwLjEgJ0V0aGVybmV0IENv
bnRyb2xsZXIgWDcxMCBmb3IgMTBHYkUgU0ZQKyAxNTcyJyBpZj1lbnMyZjEgZHJ2PWk0MGUgdW51
c2VkPXZmaW8tcGNpIAoKT3RoZXIgQmFzZWJhbmQgZGV2aWNlcwo9PT09PT09PT09PT09PT09PT09
PT09CjAwMDA6Zjc6MDAuMCAnRGV2aWNlIDU3YzAnIHVudXNlZD12ZmlvLXBjaQoKTm8gJ0NyeXB0
bycgZGV2aWNlcyBkZXRlY3RlZAo9PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpETUEgZGV2
aWNlcyB1c2luZyBrZXJuZWwgZHJpdmVyCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0K
MDAwMDpmNjowMS4wICdEZXZpY2UgMGIyNScgZHJ2PWlkeGQgdW51c2VkPXZmaW8tcGNpIAoKTm8g
J0V2ZW50ZGV2JyBkZXZpY2VzIGRldGVjdGVkCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PQoKTm8gJ01lbXBvb2wnIGRldmljZXMgZGV0ZWN0ZWQKPT09PT09PT09PT09PT09PT09PT09PT09
PT09PT0KCk5vICdDb21wcmVzcycgZGV2aWNlcyBkZXRlY3RlZAo9PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT0KCk5vICdNaXNjIChyYXdkZXYpJyBkZXZpY2VzIGRldGVjdGVkCj09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09CgpObyAnUmVnZXgnIGRldmljZXMgZGV0ZWN0ZWQK
PT09PT09PT09PT09PT09PT09PT09PT09PT09CmFkQGJtLXN1cGVyMTEtaW50ZWw6L3Vzci9sb2Nh
bC9saWIvdWhkL2V4YW1wbGVzJCBzdWRvIGNhdCAvcm9vdC8uY29uZmlnL3VoZC5jb25mClt1c2Vf
ZHBkaz0xXQpkcGRrX210dT05MDAwCmRwZGtfZHJpdmVyPS91c3IvbGliL3g4Nl82NC1saW51eC1n
bnUvZHBkay9wbWRzLTIyLjAKZHBka19jb3JlbGlzdD0yLDMsNApkcGRrX251bV9tYnVmcz00MDk1
CmRwZGtfbWJ1Zl9jYWNoZV9zaXplPTY0CgpbZHBka19tYWM9M2M6ZWM6ZWY6YWY6N2I6OGRdCmRw
ZGtfbGNvcmUgPSAzCmRwZGtfaXB2NCA9IDEwLjEwLjEuMS8yNApkcGRrX251bV9kZXNjID0gNDA5
NgoKW2RwZGtfbWFjPTNjOmVjOmVmOmFmOjdiOjhlXQpkcGRrX2xjb3JlID0gNApkcGRrX2lwdjQg
PSAxMC4xMC4yLjEvMjQKZHBka19udW1fZGVzYyA9IDQwOTYKYWRAYm0tc3VwZXIxMS1pbnRlbDov
dXNyL2xvY2FsL2xpYi91aGQvZXhhbXBsZXMkIHN1ZG8gdWhkX2ZpbmRfZGV2aWNlcwpbSU5GT10g
W1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS40LjA7IEJvb3N0XzEwNzQwMDsgRFBES18y
MS4xMTsgVUhEXzQuNy4wLkhFQUQtMC1nYTVlZDE4NzIKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KLS0gVUhEIERldmljZSAwCi0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkRldmljZSBBZGRyZXNzOgogICAg
c2VyaWFsOiAzMjAwMEYxCiAgICBhZGRyOiAxMC4xMC4wLjEwMAogICAgY2xhaW1lZDogRmFsc2UK
ICAgIGZwZ2E6IFhHCiAgICBtZ210X2FkZHI6IDEwLjEwLjAuMTAwCiAgICBuYW1lOiBuaS1uM3h4
LTMyMDAwRjEKICAgIHByb2R1Y3Q6IG4zMTAKICAgIHR5cGU6IG4zeHgKCgphZEBibS1zdXBlcjEx
LWludGVsOi91c3IvbG9jYWwvbGliL3VoZC9leGFtcGxlcyQgc3VkbyAuL2JlbmNobWFya19yYXRl
IC0tcnhfcmF0ZSAxMjVlNiAtLXJ4X3N1YmRldiAiQTowIEI6MCIgLS1yeF9jaGFubmVscyAwLDEg
LS10eF9yYXRlIDEyNWU2IC0tdHhfc3ViZGV2ICJBOjAgQjowIiAtLXR4X2NoYW5uZWxzIDAsMSAt
LWFyZ3MgImFkZHI9MTAuMTAuMS4xMDAsc2Vjb25kX2FkZHI9MTAuMTAuMi4xMDAsbWdtdF9hZGRy
PTEwLjEwLjAuMTAwLG1hc3Rlcl9jbG9ja19yYXRlPTEyNWU2LHVzZV9kcGRrPTEiCgpbSU5GT10g
W1VIRF0gbGludXg7IEdOVSBDKysgdmVyc2lvbiAxMS40LjA7IEJvb3N0XzEwNzQwMDsgRFBES18y
MS4xMTsgVUhEXzQuNy4wLkhFQUQtMC1nYTVlZDE4NzIKRUFMOiBEZXRlY3RlZCBDUFUgbGNvcmVz
OiA2NApFQUw6IERldGVjdGVkIE5VTUEgbm9kZXM6IDEKRUFMOiBEZXRlY3RlZCBzaGFyZWQgbGlu
a2FnZSBvZiBEUERLCkVBTDogTXVsdGktcHJvY2VzcyBzb2NrZXQgL3Zhci9ydW4vZHBkay9ydGUv
bXBfc29ja2V0CkVBTDogU2VsZWN0ZWQgSU9WQSBtb2RlICdWQScKRUFMOiBObyBhdmFpbGFibGUg
MjA0OCBrQiBodWdlcGFnZXMgcmVwb3J0ZWQKRUFMOiBObyBmcmVlIDEwNDg1NzYga0IgaHVnZXBh
Z2VzIHJlcG9ydGVkIG9uIG5vZGUgMApFQUw6IE5vIGF2YWlsYWJsZSAxMDQ4NTc2IGtCIGh1Z2Vw
YWdlcyByZXBvcnRlZApFQUw6IEZBVEFMOiBDYW5ub3QgZ2V0IGh1Z2VwYWdlIGluZm9ybWF0aW9u
LgpFQUw6IENhbm5vdCBnZXQgaHVnZXBhZ2UgaW5mb3JtYXRpb24uCltFUlJPUl0gW0RQREtdIEVy
cm9yIHdpdGggRUFMIGluaXRpYWxpemF0aW9uCltFUlJPUl0gW1VIRF0gRGV2aWNlIGRpc2NvdmVy
eSBlcnJvcjogUnVudGltZUVycm9yOiBFcnJvciB3aXRoIEVBTCBpbml0aWFsaXphdGlvbgpFQUw6
IERldGVjdGVkIENQVSBsY29yZXM6IDY0CkVBTDogRGV0ZWN0ZWQgTlVNQSBub2RlczogMQpFQUw6
IE9wdGlvbiAtbCBpcyBpZ25vcmVkLCBiZWNhdXNlICgtbCkgaXMgc2V0IQoKVXNhZ2U6IHVoZDo6
dHJhbnNwb3J0OjpkcGRrIFtvcHRpb25zXQoKRUFMIGNvbW1vbiBvcHRpb25zOgogIC1jIENPUkVN
QVNLICAgICAgICAgSGV4YWRlY2ltYWwgYml0bWFzayBvZiBjb3JlcyB0byBydW4gb24KICAtbCBD
T1JFTElTVCAgICAgICAgIExpc3Qgb2YgY29yZXMgdG8gcnVuIG9uCiAgICAgICAgICAgICAgICAg
ICAgICBUaGUgYXJndW1lbnQgZm9ybWF0IGlzIDxjMT5bLWMyXVssYzNbLWM0XSwuLi5dCiAgICAg
ICAgICAgICAgICAgICAgICB3aGVyZSBjMSwgYzIsIGV0YyBhcmUgY29yZSBpbmRleGVzIGJldHdl
ZW4gMCBhbmQgMTI4CiAgLS1sY29yZXMgQ09SRU1BUCAgICBNYXAgbGNvcmUgc2V0IHRvIHBoeXNp
Y2FsIGNwdSBzZXQKICAgICAgICAgICAgICAgICAgICAgIFRoZSBhcmd1bWVudCBmb3JtYXQgaXMK
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICc8bGNvcmVzW0BjcHVzXT5bPCxsY29yZXNbQGNw
dXNdPi4uLl0nCiAgICAgICAgICAgICAgICAgICAgICBsY29yZXMgYW5kIGNwdXMgbGlzdCBhcmUg
Z3JvdXBlZCBieSAnKCcgYW5kICcpJwogICAgICAgICAgICAgICAgICAgICAgV2l0aGluIHRoZSBn
cm91cCwgJy0nIGlzIHVzZWQgZm9yIHJhbmdlIHNlcGFyYXRvciwKICAgICAgICAgICAgICAgICAg
ICAgICcsJyBpcyB1c2VkIGZvciBzaW5nbGUgbnVtYmVyIHNlcGFyYXRvci4KICAgICAgICAgICAg
ICAgICAgICAgICcoICknIGNhbiBiZSBvbWl0dGVkIGZvciBzaW5nbGUgZWxlbWVudCBncm91cCwK
ICAgICAgICAgICAgICAgICAgICAgICdAJyBjYW4gYmUgb21pdHRlZCBpZiBjcHVzIGFuZCBsY29y
ZXMgaGF2ZSB0aGUgc2FtZSB2YWx1ZQogIC1zIFNFUlZJQ0UgQ09SRU1BU0sgSGV4YWRlY2ltYWwg
Yml0bWFzayBvZiBjb3JlcyB0byBiZSB1c2VkIGFzIHNlcnZpY2UgY29yZXMKICAtLW1haW4tbGNv
cmUgSUQgICAgIENvcmUgSUQgdGhhdCBpcyB1c2VkIGFzIG1haW4KICAtLW1idWYtcG9vbC1vcHMt
bmFtZSBQb29sIG9wcyBuYW1lIGZvciBtYnVmIHRvIHVzZQogIC1uIENIQU5ORUxTICAgICAgICAg
TnVtYmVyIG9mIG1lbW9yeSBjaGFubmVscwogIC1tIE1CICAgICAgICAgICAgICAgTWVtb3J5IHRv
IGFsbG9jYXRlIChzZWUgYWxzbyAtLXNvY2tldC1tZW0pCiAgLXIgUkFOS1MgICAgICAgICAgICBG
b3JjZSBudW1iZXIgb2YgbWVtb3J5IHJhbmtzIChkb24ndCBkZXRlY3QpCiAgLWIsIC0tYmxvY2sg
ICAgICAgICBBZGQgYSBkZXZpY2UgdG8gdGhlIGJsb2NrZWQgbGlzdC4KICAgICAgICAgICAgICAg
ICAgICAgIFByZXZlbnQgRUFMIGZyb20gdXNpbmcgdGhpcyBkZXZpY2UuIFRoZSBhcmd1bWVudAog
ICAgICAgICAgICAgICAgICAgICAgZm9ybWF0IGZvciBQQ0kgZGV2aWNlcyBpcyA8ZG9tYWluOmJ1
czpkZXZpZC5mdW5jPi4KICAtYSwgLS1hbGxvdyAgICAgICAgIEFkZCBhIGRldmljZSB0byB0aGUg
YWxsb3cgbGlzdC4KICAgICAgICAgICAgICAgICAgICAgIE9ubHkgdXNlIHRoZSBzcGVjaWZpZWQg
ZGV2aWNlcy4gVGhlIGFyZ3VtZW50IGZvcm1hdAogICAgICAgICAgICAgICAgICAgICAgZm9yIFBD
SSBkZXZpY2VzIGlzIDxbZG9tYWluOl1idXM6ZGV2aWQuZnVuYz4uCiAgICAgICAgICAgICAgICAg
ICAgICBUaGlzIG9wdGlvbiBjYW4gYmUgcHJlc2VudCBzZXZlcmFsIHRpbWVzLgogICAgICAgICAg
ICAgICAgICAgICAgW05PVEU6IGFsbG93IGNhbm5vdCBiZSB1c2VkIHdpdGggYmxvY2sgb3B0aW9u
XQogIC0tdmRldiAgICAgICAgICAgICAgQWRkIGEgdmlydHVhbCBkZXZpY2UuCiAgICAgICAgICAg
ICAgICAgICAgICBUaGUgYXJndW1lbnQgZm9ybWF0IGlzIDxkcml2ZXI+PGlkPlssa2V5PXZhbCwu
Li5dCiAgICAgICAgICAgICAgICAgICAgICAoZXg6IC0tdmRldj1uZXRfcGNhcDAsaWZhY2U9ZXRo
MikuCiAgLS1pb3ZhLW1vZGUgICBTZXQgSU9WQSBtb2RlLiAncGEnIGZvciBJT1ZBX1BBCiAgICAg
ICAgICAgICAgICAgICAgICAndmEnIGZvciBJT1ZBX1ZBCiAgLWQgTElCLnNvfERJUiAgICAgICBB
ZGQgYSBkcml2ZXIgb3IgZHJpdmVyIGRpcmVjdG9yeQogICAgICAgICAgICAgICAgICAgICAgKGNh
biBiZSB1c2VkIG11bHRpcGxlIHRpbWVzKQogIC0tdm13YXJlLXRzYy1tYXAgICAgVXNlIFZNd2Fy
ZSBUU0MgbWFwIGluc3RlYWQgb2YgbmF0aXZlIFJEVFNDCiAgLS1wcm9jLXR5cGUgICAgICAgICBU
eXBlIG9mIHRoaXMgcHJvY2VzcyAocHJpbWFyeXxzZWNvbmRhcnl8YXV0bykKICAtLXN5c2xvZyAg
ICAgICAgICAgIFNldCBzeXNsb2cgZmFjaWxpdHkKICAtLWxvZy1sZXZlbD08bGV2ZWw+IFNldCBn
bG9iYWwgbG9nIGxldmVsCiAgLS1sb2ctbGV2ZWw9PHR5cGUtbWF0Y2g+OjxsZXZlbD4KICAgICAg
ICAgICAgICAgICAgICAgIFNldCBzcGVjaWZpYyBsb2cgbGV2ZWwKICAtLWxvZy1sZXZlbD1oZWxw
ICAgIFNob3cgbG9nIHR5cGVzIGFuZCBsZXZlbHMKICAtLXRyYWNlPTxyZWdleC1tYXRjaD4KICAg
ICAgICAgICAgICAgICAgICAgIEVuYWJsZSB0cmFjZSBiYXNlZCBvbiByZWd1bGFyIGV4cHJlc3Np
b24gdHJhY2UgbmFtZS4KICAgICAgICAgICAgICAgICAgICAgIEJ5IGRlZmF1bHQsIHRoZSB0cmFj
ZSBpcyBkaXNhYmxlZC4KCQkgICAgICBVc2VyIG11c3Qgc3BlY2lmeSB0aGlzIG9wdGlvbiB0byBl
bmFibGUgdHJhY2UuCiAgLS10cmFjZS1kaXI9PGRpcmVjdG9yeSBwYXRoPgogICAgICAgICAgICAg
ICAgICAgICAgU3BlY2lmeSB0cmFjZSBkaXJlY3RvcnkgZm9yIHRyYWNlIG91dHB1dC4KICAgICAg
ICAgICAgICAgICAgICAgIEJ5IGRlZmF1bHQsIHRyYWNlIG91dHB1dCB3aWxsIGNyZWF0ZWQgYXQK
ICAgICAgICAgICAgICAgICAgICAgICRIT01FIGRpcmVjdG9yeSBhbmQgcGFyYW1ldGVyIG11c3Qg
YmUKICAgICAgICAgICAgICAgICAgICAgIHNwZWNpZmllZCBvbmNlIG9ubHkuCiAgLS10cmFjZS1i
dWZzej08aW50PgogICAgICAgICAgICAgICAgICAgICAgU3BlY2lmeSBtYXhpbXVtIHNpemUgb2Yg
YWxsb2NhdGVkIG1lbW9yeQogICAgICAgICAgICAgICAgICAgICAgZm9yIHRyYWNlIG91dHB1dCBm
b3IgZWFjaCB0aHJlYWQuIFZhbGlkCiAgICAgICAgICAgICAgICAgICAgICB1bml0IGNhbiBiZSBl
aXRoZXIgJ0J8S3xNJyBmb3IgJ0J5dGVzJywKICAgICAgICAgICAgICAgICAgICAgICdLQnl0ZXMn
IGFuZCAnTUJ5dGVzJyByZXNwZWN0aXZlbHkuCiAgICAgICAgICAgICAgICAgICAgICBEZWZhdWx0
IGlzIDFNQiBhbmQgcGFyYW1ldGVyIG11c3QgYmUKICAgICAgICAgICAgICAgICAgICAgIHNwZWNp
ZmllZCBvbmNlIG9ubHkuCiAgLS10cmFjZS1tb2RlPTxvW3ZlcndyaXRlXSB8IGRbaXNjYXJkXT4K
ICAgICAgICAgICAgICAgICAgICAgIFNwZWNpZnkgdGhlIG1vZGUgb2YgdXBkYXRlIG9mIHRyYWNl
CiAgICAgICAgICAgICAgICAgICAgICBvdXRwdXQgZmlsZS4gRWl0aGVyIHVwZGF0ZSBvbiBhIGZp
bGUgY2FuCiAgICAgICAgICAgICAgICAgICAgICBiZSB3cmFwcGVkIG9yIGRpc2NhcmRlZCB3aGVu
IGZpbGUgc2l6ZQogICAgICAgICAgICAgICAgICAgICAgcmVhY2hlcyBpdHMgbWF4aW11bSBsaW1p
dC4KICAgICAgICAgICAgICAgICAgICAgIERlZmF1bHQgbW9kZSBpcyAnb3ZlcndyaXRlJyBhbmQg
cGFyYW1ldGVyCiAgICAgICAgICAgICAgICAgICAgICBtdXN0IGJlIHNwZWNpZmllZCBvbmNlIG9u
bHkuCiAgLXYgICAgICAgICAgICAgICAgICBEaXNwbGF5IHZlcnNpb24gaW5mb3JtYXRpb24gb24g
c3RhcnR1cAogIC1oLCAtLWhlbHAgICAgICAgICAgVGhpcyBoZWxwCiAgLS1pbi1tZW1vcnkgICBP
cGVyYXRlIGVudGlyZWx5IGluIG1lbW9yeS4gVGhpcyB3aWxsCiAgICAgICAgICAgICAgICAgICAg
ICBkaXNhYmxlIHNlY29uZGFyeSBwcm9jZXNzIHN1cHBvcnQKICAtLWJhc2UtdmlydGFkZHIgICAg
IEJhc2UgdmlydHVhbCBhZGRyZXNzCiAgLS10ZWxlbWV0cnkgICBFbmFibGUgdGVsZW1ldHJ5IHN1
cHBvcnQgKG9uIGJ5IGRlZmF1bHQpCiAgLS1uby10ZWxlbWV0cnkgICBEaXNhYmxlIHRlbGVtZXRy
eSBzdXBwb3J0CiAgLS1mb3JjZS1tYXgtc2ltZC1iaXR3aWR0aCBGb3JjZSB0aGUgbWF4IFNJTUQg
Yml0d2lkdGgKCkVBTCBvcHRpb25zIGZvciBERUJVRyB1c2Ugb25seToKICAtLWh1Z2UtdW5saW5r
ICAgICAgIFVubGluayBodWdlcGFnZSBmaWxlcyBhZnRlciBpbml0CiAgLS1uby1odWdlICAgICAg
ICAgICBVc2UgbWFsbG9jIGluc3RlYWQgb2YgaHVnZXRsYmZzCiAgLS1uby1wY2kgICAgICAgICAg
ICBEaXNhYmxlIFBDSQogIC0tbm8taHBldCAgICAgICAgICAgRGlzYWJsZSBIUEVUCiAgLS1uby1z
aGNvbmYgICAgICAgICBObyBzaGFyZWQgY29uZmlnIChtbWFwJ2QgZmlsZXMpCgpFQUwgTGludXgg
b3B0aW9uczoKICAtLXNvY2tldC1tZW0gICAgICAgIE1lbW9yeSB0byBhbGxvY2F0ZSBvbiBzb2Nr
ZXRzIChjb21tYSBzZXBhcmF0ZWQgdmFsdWVzKQogIC0tc29ja2V0LWxpbWl0ICAgICAgTGltaXQg
bWVtb3J5IGFsbG9jYXRpb24gb24gc29ja2V0cyAoY29tbWEgc2VwYXJhdGVkIHZhbHVlcykKICAt
LWh1Z2UtZGlyICAgICAgICAgIERpcmVjdG9yeSB3aGVyZSBodWdldGxiZnMgaXMgbW91bnRlZAog
IC0tZmlsZS1wcmVmaXggICAgICAgUHJlZml4IGZvciBodWdlcGFnZSBmaWxlbmFtZXMKICAtLWNy
ZWF0ZS11aW8tZGV2ICAgIENyZWF0ZSAvZGV2L3Vpb1ggKHVzdWFsbHkgZG9uZSBieSBob3RwbHVn
KQogIC0tdmZpby1pbnRyICAgICAgICAgSW50ZXJydXB0IG1vZGUgZm9yIFZGSU8gKGxlZ2FjeXxt
c2l8bXNpeCkKICAtLXZmaW8tdmYtdG9rZW4gICAgIFZGIHRva2VuIChVVUlEKSBzaGFyZWQgYmV0
d2VlbiBTUi1JT1YgUEYgYW5kIFZGcwogIC0tbGVnYWN5LW1lbSAgICAgICAgTGVnYWN5IG1lbW9y
eSBtb2RlIChubyBkeW5hbWljIGFsbG9jYXRpb24sIGNvbnRpZ3VvdXMgc2VnbWVudHMpCiAgLS1z
aW5nbGUtZmlsZS1zZWdtZW50cyBQdXQgYWxsIGh1Z2VwYWdlIG1lbW9yeSBpbiBzaW5nbGUgZmls
ZXMKICAtLW1hdGNoLWFsbG9jYXRpb25zIEZyZWUgaHVnZXBhZ2VzIGV4YWN0bHkgYXMgYWxsb2Nh
dGVkCgpFQUw6IEZBVEFMOiBJbnZhbGlkICdjb21tYW5kIGxpbmUnIGFyZ3VtZW50cy4KRUFMOiBJ
bnZhbGlkICdjb21tYW5kIGxpbmUnIGFyZ3VtZW50cy4KW0VSUk9SXSBbRFBES10gRXJyb3Igd2l0
aCBFQUwgaW5pdGlhbGl6YXRpb24KW0VSUk9SXSBbWDMwMF0gWDMwMCBOZXR3b3JrIGRpc2NvdmVy
eSBlcnJvciBSdW50aW1lRXJyb3I6IEVycm9yIHdpdGggRUFMIGluaXRpYWxpemF0aW9uClswMDow
MDowMC4wMDAxMzZdIENyZWF0aW5nIHRoZSB1c3JwIGRldmljZSB3aXRoOiBhZGRyPTEwLjEwLjEu
MTAwLHNlY29uZF9hZGRyPTEwLjEwLjIuMTAwLG1nbXRfYWRkcj0xMC4xMC4wLjEwMCxtYXN0ZXJf
Y2xvY2tfcmF0ZT0xMjVlNix1c2VfZHBkaz0xLi4uCkVBTDogRGV0ZWN0ZWQgQ1BVIGxjb3Jlczog
NjQKRUFMOiBEZXRlY3RlZCBOVU1BIG5vZGVzOiAxCkVBTDogT3B0aW9uIC1sIGlzIGlnbm9yZWQs
IGJlY2F1c2UgKC1sKSBpcyBzZXQhCgpVc2FnZTogdWhkOjp0cmFuc3BvcnQ6OmRwZGsgW29wdGlv
bnNdCgpFQUwgY29tbW9uIG9wdGlvbnM6CiAgLWMgQ09SRU1BU0sgICAgICAgICBIZXhhZGVjaW1h
bCBiaXRtYXNrIG9mIGNvcmVzIHRvIHJ1biBvbgogIC1sIENPUkVMSVNUICAgICAgICAgTGlzdCBv
ZiBjb3JlcyB0byBydW4gb24KICAgICAgICAgICAgICAgICAgICAgIFRoZSBhcmd1bWVudCBmb3Jt
YXQgaXMgPGMxPlstYzJdWyxjM1stYzRdLC4uLl0KICAgICAgICAgICAgICAgICAgICAgIHdoZXJl
IGMxLCBjMiwgZXRjIGFyZSBjb3JlIGluZGV4ZXMgYmV0d2VlbiAwIGFuZCAxMjgKICAtLWxjb3Jl
cyBDT1JFTUFQICAgIE1hcCBsY29yZSBzZXQgdG8gcGh5c2ljYWwgY3B1IHNldAogICAgICAgICAg
ICAgICAgICAgICAgVGhlIGFyZ3VtZW50IGZvcm1hdCBpcwogICAgICAgICAgICAgICAgICAgICAg
ICAgICAgJzxsY29yZXNbQGNwdXNdPls8LGxjb3Jlc1tAY3B1c10+Li4uXScKICAgICAgICAgICAg
ICAgICAgICAgIGxjb3JlcyBhbmQgY3B1cyBsaXN0IGFyZSBncm91cGVkIGJ5ICcoJyBhbmQgJykn
CiAgICAgICAgICAgICAgICAgICAgICBXaXRoaW4gdGhlIGdyb3VwLCAnLScgaXMgdXNlZCBmb3Ig
cmFuZ2Ugc2VwYXJhdG9yLAogICAgICAgICAgICAgICAgICAgICAgJywnIGlzIHVzZWQgZm9yIHNp
bmdsZSBudW1iZXIgc2VwYXJhdG9yLgogICAgICAgICAgICAgICAgICAgICAgJyggKScgY2FuIGJl
IG9taXR0ZWQgZm9yIHNpbmdsZSBlbGVtZW50IGdyb3VwLAogICAgICAgICAgICAgICAgICAgICAg
J0AnIGNhbiBiZSBvbWl0dGVkIGlmIGNwdXMgYW5kIGxjb3JlcyBoYXZlIHRoZSBzYW1lIHZhbHVl
CiAgLXMgU0VSVklDRSBDT1JFTUFTSyBIZXhhZGVjaW1hbCBiaXRtYXNrIG9mIGNvcmVzIHRvIGJl
IHVzZWQgYXMgc2VydmljZSBjb3JlcwogIC0tbWFpbi1sY29yZSBJRCAgICAgQ29yZSBJRCB0aGF0
IGlzIHVzZWQgYXMgbWFpbgogIC0tbWJ1Zi1wb29sLW9wcy1uYW1lIFBvb2wgb3BzIG5hbWUgZm9y
IG1idWYgdG8gdXNlCiAgLW4gQ0hBTk5FTFMgICAgICAgICBOdW1iZXIgb2YgbWVtb3J5IGNoYW5u
ZWxzCiAgLW0gTUIgICAgICAgICAgICAgICBNZW1vcnkgdG8gYWxsb2NhdGUgKHNlZSBhbHNvIC0t
c29ja2V0LW1lbSkKICAtciBSQU5LUyAgICAgICAgICAgIEZvcmNlIG51bWJlciBvZiBtZW1vcnkg
cmFua3MgKGRvbid0IGRldGVjdCkKICAtYiwgLS1ibG9jayAgICAgICAgIEFkZCBhIGRldmljZSB0
byB0aGUgYmxvY2tlZCBsaXN0LgogICAgICAgICAgICAgICAgICAgICAgUHJldmVudCBFQUwgZnJv
bSB1c2luZyB0aGlzIGRldmljZS4gVGhlIGFyZ3VtZW50CiAgICAgICAgICAgICAgICAgICAgICBm
b3JtYXQgZm9yIFBDSSBkZXZpY2VzIGlzIDxkb21haW46YnVzOmRldmlkLmZ1bmM+LgogIC1hLCAt
LWFsbG93ICAgICAgICAgQWRkIGEgZGV2aWNlIHRvIHRoZSBhbGxvdyBsaXN0LgogICAgICAgICAg
ICAgICAgICAgICAgT25seSB1c2UgdGhlIHNwZWNpZmllZCBkZXZpY2VzLiBUaGUgYXJndW1lbnQg
Zm9ybWF0CiAgICAgICAgICAgICAgICAgICAgICBmb3IgUENJIGRldmljZXMgaXMgPFtkb21haW46
XWJ1czpkZXZpZC5mdW5jPi4KICAgICAgICAgICAgICAgICAgICAgIFRoaXMgb3B0aW9uIGNhbiBi
ZSBwcmVzZW50IHNldmVyYWwgdGltZXMuCiAgICAgICAgICAgICAgICAgICAgICBbTk9URTogYWxs
b3cgY2Fubm90IGJlIHVzZWQgd2l0aCBibG9jayBvcHRpb25dCiAgLS12ZGV2ICAgICAgICAgICAg
ICBBZGQgYSB2aXJ0dWFsIGRldmljZS4KICAgICAgICAgICAgICAgICAgICAgIFRoZSBhcmd1bWVu
dCBmb3JtYXQgaXMgPGRyaXZlcj48aWQ+WyxrZXk9dmFsLC4uLl0KICAgICAgICAgICAgICAgICAg
ICAgIChleDogLS12ZGV2PW5ldF9wY2FwMCxpZmFjZT1ldGgyKS4KICAtLWlvdmEtbW9kZSAgIFNl
dCBJT1ZBIG1vZGUuICdwYScgZm9yIElPVkFfUEEKICAgICAgICAgICAgICAgICAgICAgICd2YScg
Zm9yIElPVkFfVkEKICAtZCBMSUIuc298RElSICAgICAgIEFkZCBhIGRyaXZlciBvciBkcml2ZXIg
ZGlyZWN0b3J5CiAgICAgICAgICAgICAgICAgICAgICAoY2FuIGJlIHVzZWQgbXVsdGlwbGUgdGlt
ZXMpCiAgLS12bXdhcmUtdHNjLW1hcCAgICBVc2UgVk13YXJlIFRTQyBtYXAgaW5zdGVhZCBvZiBu
YXRpdmUgUkRUU0MKICAtLXByb2MtdHlwZSAgICAgICAgIFR5cGUgb2YgdGhpcyBwcm9jZXNzIChw
cmltYXJ5fHNlY29uZGFyeXxhdXRvKQogIC0tc3lzbG9nICAgICAgICAgICAgU2V0IHN5c2xvZyBm
YWNpbGl0eQogIC0tbG9nLWxldmVsPTxsZXZlbD4gU2V0IGdsb2JhbCBsb2cgbGV2ZWwKICAtLWxv
Zy1sZXZlbD08dHlwZS1tYXRjaD46PGxldmVsPgogICAgICAgICAgICAgICAgICAgICAgU2V0IHNw
ZWNpZmljIGxvZyBsZXZlbAogIC0tbG9nLWxldmVsPWhlbHAgICAgU2hvdyBsb2cgdHlwZXMgYW5k
IGxldmVscwogIC0tdHJhY2U9PHJlZ2V4LW1hdGNoPgogICAgICAgICAgICAgICAgICAgICAgRW5h
YmxlIHRyYWNlIGJhc2VkIG9uIHJlZ3VsYXIgZXhwcmVzc2lvbiB0cmFjZSBuYW1lLgogICAgICAg
ICAgICAgICAgICAgICAgQnkgZGVmYXVsdCwgdGhlIHRyYWNlIGlzIGRpc2FibGVkLgoJCSAgICAg
IFVzZXIgbXVzdCBzcGVjaWZ5IHRoaXMgb3B0aW9uIHRvIGVuYWJsZSB0cmFjZS4KICAtLXRyYWNl
LWRpcj08ZGlyZWN0b3J5IHBhdGg+CiAgICAgICAgICAgICAgICAgICAgICBTcGVjaWZ5IHRyYWNl
IGRpcmVjdG9yeSBmb3IgdHJhY2Ugb3V0cHV0LgogICAgICAgICAgICAgICAgICAgICAgQnkgZGVm
YXVsdCwgdHJhY2Ugb3V0cHV0IHdpbGwgY3JlYXRlZCBhdAogICAgICAgICAgICAgICAgICAgICAg
JEhPTUUgZGlyZWN0b3J5IGFuZCBwYXJhbWV0ZXIgbXVzdCBiZQogICAgICAgICAgICAgICAgICAg
ICAgc3BlY2lmaWVkIG9uY2Ugb25seS4KICAtLXRyYWNlLWJ1ZnN6PTxpbnQ+CiAgICAgICAgICAg
ICAgICAgICAgICBTcGVjaWZ5IG1heGltdW0gc2l6ZSBvZiBhbGxvY2F0ZWQgbWVtb3J5CiAgICAg
ICAgICAgICAgICAgICAgICBmb3IgdHJhY2Ugb3V0cHV0IGZvciBlYWNoIHRocmVhZC4gVmFsaWQK
ICAgICAgICAgICAgICAgICAgICAgIHVuaXQgY2FuIGJlIGVpdGhlciAnQnxLfE0nIGZvciAnQnl0
ZXMnLAogICAgICAgICAgICAgICAgICAgICAgJ0tCeXRlcycgYW5kICdNQnl0ZXMnIHJlc3BlY3Rp
dmVseS4KICAgICAgICAgICAgICAgICAgICAgIERlZmF1bHQgaXMgMU1CIGFuZCBwYXJhbWV0ZXIg
bXVzdCBiZQogICAgICAgICAgICAgICAgICAgICAgc3BlY2lmaWVkIG9uY2Ugb25seS4KICAtLXRy
YWNlLW1vZGU9PG9bdmVyd3JpdGVdIHwgZFtpc2NhcmRdPgogICAgICAgICAgICAgICAgICAgICAg
U3BlY2lmeSB0aGUgbW9kZSBvZiB1cGRhdGUgb2YgdHJhY2UKICAgICAgICAgICAgICAgICAgICAg
IG91dHB1dCBmaWxlLiBFaXRoZXIgdXBkYXRlIG9uIGEgZmlsZSBjYW4KICAgICAgICAgICAgICAg
ICAgICAgIGJlIHdyYXBwZWQgb3IgZGlzY2FyZGVkIHdoZW4gZmlsZSBzaXplCiAgICAgICAgICAg
ICAgICAgICAgICByZWFjaGVzIGl0cyBtYXhpbXVtIGxpbWl0LgogICAgICAgICAgICAgICAgICAg
ICAgRGVmYXVsdCBtb2RlIGlzICdvdmVyd3JpdGUnIGFuZCBwYXJhbWV0ZXIKICAgICAgICAgICAg
ICAgICAgICAgIG11c3QgYmUgc3BlY2lmaWVkIG9uY2Ugb25seS4KICAtdiAgICAgICAgICAgICAg
ICAgIERpc3BsYXkgdmVyc2lvbiBpbmZvcm1hdGlvbiBvbiBzdGFydHVwCiAgLWgsIC0taGVscCAg
ICAgICAgICBUaGlzIGhlbHAKICAtLWluLW1lbW9yeSAgIE9wZXJhdGUgZW50aXJlbHkgaW4gbWVt
b3J5LiBUaGlzIHdpbGwKICAgICAgICAgICAgICAgICAgICAgIGRpc2FibGUgc2Vjb25kYXJ5IHBy
b2Nlc3Mgc3VwcG9ydAogIC0tYmFzZS12aXJ0YWRkciAgICAgQmFzZSB2aXJ0dWFsIGFkZHJlc3MK
ICAtLXRlbGVtZXRyeSAgIEVuYWJsZSB0ZWxlbWV0cnkgc3VwcG9ydCAob24gYnkgZGVmYXVsdCkK
ICAtLW5vLXRlbGVtZXRyeSAgIERpc2FibGUgdGVsZW1ldHJ5IHN1cHBvcnQKICAtLWZvcmNlLW1h
eC1zaW1kLWJpdHdpZHRoIEZvcmNlIHRoZSBtYXggU0lNRCBiaXR3aWR0aAoKRUFMIG9wdGlvbnMg
Zm9yIERFQlVHIHVzZSBvbmx5OgogIC0taHVnZS11bmxpbmsgICAgICAgVW5saW5rIGh1Z2VwYWdl
IGZpbGVzIGFmdGVyIGluaXQKICAtLW5vLWh1Z2UgICAgICAgICAgIFVzZSBtYWxsb2MgaW5zdGVh
ZCBvZiBodWdldGxiZnMKICAtLW5vLXBjaSAgICAgICAgICAgIERpc2FibGUgUENJCiAgLS1uby1o
cGV0ICAgICAgICAgICBEaXNhYmxlIEhQRVQKICAtLW5vLXNoY29uZiAgICAgICAgIE5vIHNoYXJl
ZCBjb25maWcgKG1tYXAnZCBmaWxlcykKCkVBTCBMaW51eCBvcHRpb25zOgogIC0tc29ja2V0LW1l
bSAgICAgICAgTWVtb3J5IHRvIGFsbG9jYXRlIG9uIHNvY2tldHMgKGNvbW1hIHNlcGFyYXRlZCB2
YWx1ZXMpCiAgLS1zb2NrZXQtbGltaXQgICAgICBMaW1pdCBtZW1vcnkgYWxsb2NhdGlvbiBvbiBz
b2NrZXRzIChjb21tYSBzZXBhcmF0ZWQgdmFsdWVzKQogIC0taHVnZS1kaXIgICAgICAgICAgRGly
ZWN0b3J5IHdoZXJlIGh1Z2V0bGJmcyBpcyBtb3VudGVkCiAgLS1maWxlLXByZWZpeCAgICAgICBQ
cmVmaXggZm9yIGh1Z2VwYWdlIGZpbGVuYW1lcwogIC0tY3JlYXRlLXVpby1kZXYgICAgQ3JlYXRl
IC9kZXYvdWlvWCAodXN1YWxseSBkb25lIGJ5IGhvdHBsdWcpCiAgLS12ZmlvLWludHIgICAgICAg
ICBJbnRlcnJ1cHQgbW9kZSBmb3IgVkZJTyAobGVnYWN5fG1zaXxtc2l4KQogIC0tdmZpby12Zi10
b2tlbiAgICAgVkYgdG9rZW4gKFVVSUQpIHNoYXJlZCBiZXR3ZWVuIFNSLUlPViBQRiBhbmQgVkZz
CiAgLS1sZWdhY3ktbWVtICAgICAgICBMZWdhY3kgbWVtb3J5IG1vZGUgKG5vIGR5bmFtaWMgYWxs
b2NhdGlvbiwgY29udGlndW91cyBzZWdtZW50cykKICAtLXNpbmdsZS1maWxlLXNlZ21lbnRzIFB1
dCBhbGwgaHVnZXBhZ2UgbWVtb3J5IGluIHNpbmdsZSBmaWxlcwogIC0tbWF0Y2gtYWxsb2NhdGlv
bnMgRnJlZSBodWdlcGFnZXMgZXhhY3RseSBhcyBhbGxvY2F0ZWQKCkVBTDogRkFUQUw6IEludmFs
aWQgJ2NvbW1hbmQgbGluZScgYXJndW1lbnRzLgpFQUw6IEludmFsaWQgJ2NvbW1hbmQgbGluZScg
YXJndW1lbnRzLgpbRVJST1JdIFtEUERLXSBFcnJvciB3aXRoIEVBTCBpbml0aWFsaXphdGlvbgpb
RVJST1JdIFtVSERdIERldmljZSBkaXNjb3ZlcnkgZXJyb3I6IFJ1bnRpbWVFcnJvcjogRXJyb3Ig
d2l0aCBFQUwgaW5pdGlhbGl6YXRpb24KRUFMOiBEZXRlY3RlZCBDUFUgbGNvcmVzOiA2NApFQUw6
IERldGVjdGVkIE5VTUEgbm9kZXM6IDEKRUFMOiBPcHRpb24gLWwgaXMgaWdub3JlZCwgYmVjYXVz
ZSAoLWwpIGlzIHNldCEKClVzYWdlOiB1aGQ6OnRyYW5zcG9ydDo6ZHBkayBbb3B0aW9uc10KCkVB
TCBjb21tb24gb3B0aW9uczoKICAtYyBDT1JFTUFTSyAgICAgICAgIEhleGFkZWNpbWFsIGJpdG1h
c2sgb2YgY29yZXMgdG8gcnVuIG9uCiAgLWwgQ09SRUxJU1QgICAgICAgICBMaXN0IG9mIGNvcmVz
IHRvIHJ1biBvbgogICAgICAgICAgICAgICAgICAgICAgVGhlIGFyZ3VtZW50IGZvcm1hdCBpcyA8
YzE+Wy1jMl1bLGMzWy1jNF0sLi4uXQogICAgICAgICAgICAgICAgICAgICAgd2hlcmUgYzEsIGMy
LCBldGMgYXJlIGNvcmUgaW5kZXhlcyBiZXR3ZWVuIDAgYW5kIDEyOAogIC0tbGNvcmVzIENPUkVN
QVAgICAgTWFwIGxjb3JlIHNldCB0byBwaHlzaWNhbCBjcHUgc2V0CiAgICAgICAgICAgICAgICAg
ICAgICBUaGUgYXJndW1lbnQgZm9ybWF0IGlzCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAn
PGxjb3Jlc1tAY3B1c10+WzwsbGNvcmVzW0BjcHVzXT4uLi5dJwogICAgICAgICAgICAgICAgICAg
ICAgbGNvcmVzIGFuZCBjcHVzIGxpc3QgYXJlIGdyb3VwZWQgYnkgJygnIGFuZCAnKScKICAgICAg
ICAgICAgICAgICAgICAgIFdpdGhpbiB0aGUgZ3JvdXAsICctJyBpcyB1c2VkIGZvciByYW5nZSBz
ZXBhcmF0b3IsCiAgICAgICAgICAgICAgICAgICAgICAnLCcgaXMgdXNlZCBmb3Igc2luZ2xlIG51
bWJlciBzZXBhcmF0b3IuCiAgICAgICAgICAgICAgICAgICAgICAnKCApJyBjYW4gYmUgb21pdHRl
ZCBmb3Igc2luZ2xlIGVsZW1lbnQgZ3JvdXAsCiAgICAgICAgICAgICAgICAgICAgICAnQCcgY2Fu
IGJlIG9taXR0ZWQgaWYgY3B1cyBhbmQgbGNvcmVzIGhhdmUgdGhlIHNhbWUgdmFsdWUKICAtcyBT
RVJWSUNFIENPUkVNQVNLIEhleGFkZWNpbWFsIGJpdG1hc2sgb2YgY29yZXMgdG8gYmUgdXNlZCBh
cyBzZXJ2aWNlIGNvcmVzCiAgLS1tYWluLWxjb3JlIElEICAgICBDb3JlIElEIHRoYXQgaXMgdXNl
ZCBhcyBtYWluCiAgLS1tYnVmLXBvb2wtb3BzLW5hbWUgUG9vbCBvcHMgbmFtZSBmb3IgbWJ1ZiB0
byB1c2UKICAtbiBDSEFOTkVMUyAgICAgICAgIE51bWJlciBvZiBtZW1vcnkgY2hhbm5lbHMKICAt
bSBNQiAgICAgICAgICAgICAgIE1lbW9yeSB0byBhbGxvY2F0ZSAoc2VlIGFsc28gLS1zb2NrZXQt
bWVtKQogIC1yIFJBTktTICAgICAgICAgICAgRm9yY2UgbnVtYmVyIG9mIG1lbW9yeSByYW5rcyAo
ZG9uJ3QgZGV0ZWN0KQogIC1iLCAtLWJsb2NrICAgICAgICAgQWRkIGEgZGV2aWNlIHRvIHRoZSBi
bG9ja2VkIGxpc3QuCiAgICAgICAgICAgICAgICAgICAgICBQcmV2ZW50IEVBTCBmcm9tIHVzaW5n
IHRoaXMgZGV2aWNlLiBUaGUgYXJndW1lbnQKICAgICAgICAgICAgICAgICAgICAgIGZvcm1hdCBm
b3IgUENJIGRldmljZXMgaXMgPGRvbWFpbjpidXM6ZGV2aWQuZnVuYz4uCiAgLWEsIC0tYWxsb3cg
ICAgICAgICBBZGQgYSBkZXZpY2UgdG8gdGhlIGFsbG93IGxpc3QuCiAgICAgICAgICAgICAgICAg
ICAgICBPbmx5IHVzZSB0aGUgc3BlY2lmaWVkIGRldmljZXMuIFRoZSBhcmd1bWVudCBmb3JtYXQK
ICAgICAgICAgICAgICAgICAgICAgIGZvciBQQ0kgZGV2aWNlcyBpcyA8W2RvbWFpbjpdYnVzOmRl
dmlkLmZ1bmM+LgogICAgICAgICAgICAgICAgICAgICAgVGhpcyBvcHRpb24gY2FuIGJlIHByZXNl
bnQgc2V2ZXJhbCB0aW1lcy4KICAgICAgICAgICAgICAgICAgICAgIFtOT1RFOiBhbGxvdyBjYW5u
b3QgYmUgdXNlZCB3aXRoIGJsb2NrIG9wdGlvbl0KICAtLXZkZXYgICAgICAgICAgICAgIEFkZCBh
IHZpcnR1YWwgZGV2aWNlLgogICAgICAgICAgICAgICAgICAgICAgVGhlIGFyZ3VtZW50IGZvcm1h
dCBpcyA8ZHJpdmVyPjxpZD5bLGtleT12YWwsLi4uXQogICAgICAgICAgICAgICAgICAgICAgKGV4
OiAtLXZkZXY9bmV0X3BjYXAwLGlmYWNlPWV0aDIpLgogIC0taW92YS1tb2RlICAgU2V0IElPVkEg
bW9kZS4gJ3BhJyBmb3IgSU9WQV9QQQogICAgICAgICAgICAgICAgICAgICAgJ3ZhJyBmb3IgSU9W
QV9WQQogIC1kIExJQi5zb3xESVIgICAgICAgQWRkIGEgZHJpdmVyIG9yIGRyaXZlciBkaXJlY3Rv
cnkKICAgICAgICAgICAgICAgICAgICAgIChjYW4gYmUgdXNlZCBtdWx0aXBsZSB0aW1lcykKICAt
LXZtd2FyZS10c2MtbWFwICAgIFVzZSBWTXdhcmUgVFNDIG1hcCBpbnN0ZWFkIG9mIG5hdGl2ZSBS
RFRTQwogIC0tcHJvYy10eXBlICAgICAgICAgVHlwZSBvZiB0aGlzIHByb2Nlc3MgKHByaW1hcnl8
c2Vjb25kYXJ5fGF1dG8pCiAgLS1zeXNsb2cgICAgICAgICAgICBTZXQgc3lzbG9nIGZhY2lsaXR5
CiAgLS1sb2ctbGV2ZWw9PGxldmVsPiBTZXQgZ2xvYmFsIGxvZyBsZXZlbAogIC0tbG9nLWxldmVs
PTx0eXBlLW1hdGNoPjo8bGV2ZWw+CiAgICAgICAgICAgICAgICAgICAgICBTZXQgc3BlY2lmaWMg
bG9nIGxldmVsCiAgLS1sb2ctbGV2ZWw9aGVscCAgICBTaG93IGxvZyB0eXBlcyBhbmQgbGV2ZWxz
CiAgLS10cmFjZT08cmVnZXgtbWF0Y2g+CiAgICAgICAgICAgICAgICAgICAgICBFbmFibGUgdHJh
Y2UgYmFzZWQgb24gcmVndWxhciBleHByZXNzaW9uIHRyYWNlIG5hbWUuCiAgICAgICAgICAgICAg
ICAgICAgICBCeSBkZWZhdWx0LCB0aGUgdHJhY2UgaXMgZGlzYWJsZWQuCgkJICAgICAgVXNlciBt
dXN0IHNwZWNpZnkgdGhpcyBvcHRpb24gdG8gZW5hYmxlIHRyYWNlLgogIC0tdHJhY2UtZGlyPTxk
aXJlY3RvcnkgcGF0aD4KICAgICAgICAgICAgICAgICAgICAgIFNwZWNpZnkgdHJhY2UgZGlyZWN0
b3J5IGZvciB0cmFjZSBvdXRwdXQuCiAgICAgICAgICAgICAgICAgICAgICBCeSBkZWZhdWx0LCB0
cmFjZSBvdXRwdXQgd2lsbCBjcmVhdGVkIGF0CiAgICAgICAgICAgICAgICAgICAgICAkSE9NRSBk
aXJlY3RvcnkgYW5kIHBhcmFtZXRlciBtdXN0IGJlCiAgICAgICAgICAgICAgICAgICAgICBzcGVj
aWZpZWQgb25jZSBvbmx5LgogIC0tdHJhY2UtYnVmc3o9PGludD4KICAgICAgICAgICAgICAgICAg
ICAgIFNwZWNpZnkgbWF4aW11bSBzaXplIG9mIGFsbG9jYXRlZCBtZW1vcnkKICAgICAgICAgICAg
ICAgICAgICAgIGZvciB0cmFjZSBvdXRwdXQgZm9yIGVhY2ggdGhyZWFkLiBWYWxpZAogICAgICAg
ICAgICAgICAgICAgICAgdW5pdCBjYW4gYmUgZWl0aGVyICdCfEt8TScgZm9yICdCeXRlcycsCiAg
ICAgICAgICAgICAgICAgICAgICAnS0J5dGVzJyBhbmQgJ01CeXRlcycgcmVzcGVjdGl2ZWx5Lgog
ICAgICAgICAgICAgICAgICAgICAgRGVmYXVsdCBpcyAxTUIgYW5kIHBhcmFtZXRlciBtdXN0IGJl
CiAgICAgICAgICAgICAgICAgICAgICBzcGVjaWZpZWQgb25jZSBvbmx5LgogIC0tdHJhY2UtbW9k
ZT08b1t2ZXJ3cml0ZV0gfCBkW2lzY2FyZF0+CiAgICAgICAgICAgICAgICAgICAgICBTcGVjaWZ5
IHRoZSBtb2RlIG9mIHVwZGF0ZSBvZiB0cmFjZQogICAgICAgICAgICAgICAgICAgICAgb3V0cHV0
IGZpbGUuIEVpdGhlciB1cGRhdGUgb24gYSBmaWxlIGNhbgogICAgICAgICAgICAgICAgICAgICAg
YmUgd3JhcHBlZCBvciBkaXNjYXJkZWQgd2hlbiBmaWxlIHNpemUKICAgICAgICAgICAgICAgICAg
ICAgIHJlYWNoZXMgaXRzIG1heGltdW0gbGltaXQuCiAgICAgICAgICAgICAgICAgICAgICBEZWZh
dWx0IG1vZGUgaXMgJ292ZXJ3cml0ZScgYW5kIHBhcmFtZXRlcgogICAgICAgICAgICAgICAgICAg
ICAgbXVzdCBiZSBzcGVjaWZpZWQgb25jZSBvbmx5LgogIC12ICAgICAgICAgICAgICAgICAgRGlz
cGxheSB2ZXJzaW9uIGluZm9ybWF0aW9uIG9uIHN0YXJ0dXAKICAtaCwgLS1oZWxwICAgICAgICAg
IFRoaXMgaGVscAogIC0taW4tbWVtb3J5ICAgT3BlcmF0ZSBlbnRpcmVseSBpbiBtZW1vcnkuIFRo
aXMgd2lsbAogICAgICAgICAgICAgICAgICAgICAgZGlzYWJsZSBzZWNvbmRhcnkgcHJvY2VzcyBz
dXBwb3J0CiAgLS1iYXNlLXZpcnRhZGRyICAgICBCYXNlIHZpcnR1YWwgYWRkcmVzcwogIC0tdGVs
ZW1ldHJ5ICAgRW5hYmxlIHRlbGVtZXRyeSBzdXBwb3J0IChvbiBieSBkZWZhdWx0KQogIC0tbm8t
dGVsZW1ldHJ5ICAgRGlzYWJsZSB0ZWxlbWV0cnkgc3VwcG9ydAogIC0tZm9yY2UtbWF4LXNpbWQt
Yml0d2lkdGggRm9yY2UgdGhlIG1heCBTSU1EIGJpdHdpZHRoCgpFQUwgb3B0aW9ucyBmb3IgREVC
VUcgdXNlIG9ubHk6CiAgLS1odWdlLXVubGluayAgICAgICBVbmxpbmsgaHVnZXBhZ2UgZmlsZXMg
YWZ0ZXIgaW5pdAogIC0tbm8taHVnZSAgICAgICAgICAgVXNlIG1hbGxvYyBpbnN0ZWFkIG9mIGh1
Z2V0bGJmcwogIC0tbm8tcGNpICAgICAgICAgICAgRGlzYWJsZSBQQ0kKICAtLW5vLWhwZXQgICAg
ICAgICAgIERpc2FibGUgSFBFVAogIC0tbm8tc2hjb25mICAgICAgICAgTm8gc2hhcmVkIGNvbmZp
ZyAobW1hcCdkIGZpbGVzKQoKRUFMIExpbnV4IG9wdGlvbnM6CiAgLS1zb2NrZXQtbWVtICAgICAg
ICBNZW1vcnkgdG8gYWxsb2NhdGUgb24gc29ja2V0cyAoY29tbWEgc2VwYXJhdGVkIHZhbHVlcykK
ICAtLXNvY2tldC1saW1pdCAgICAgIExpbWl0IG1lbW9yeSBhbGxvY2F0aW9uIG9uIHNvY2tldHMg
KGNvbW1hIHNlcGFyYXRlZCB2YWx1ZXMpCiAgLS1odWdlLWRpciAgICAgICAgICBEaXJlY3Rvcnkg
d2hlcmUgaHVnZXRsYmZzIGlzIG1vdW50ZWQKICAtLWZpbGUtcHJlZml4ICAgICAgIFByZWZpeCBm
b3IgaHVnZXBhZ2UgZmlsZW5hbWVzCiAgLS1jcmVhdGUtdWlvLWRldiAgICBDcmVhdGUgL2Rldi91
aW9YICh1c3VhbGx5IGRvbmUgYnkgaG90cGx1ZykKICAtLXZmaW8taW50ciAgICAgICAgIEludGVy
cnVwdCBtb2RlIGZvciBWRklPIChsZWdhY3l8bXNpfG1zaXgpCiAgLS12ZmlvLXZmLXRva2VuICAg
ICBWRiB0b2tlbiAoVVVJRCkgc2hhcmVkIGJldHdlZW4gU1ItSU9WIFBGIGFuZCBWRnMKICAtLWxl
Z2FjeS1tZW0gICAgICAgIExlZ2FjeSBtZW1vcnkgbW9kZSAobm8gZHluYW1pYyBhbGxvY2F0aW9u
LCBjb250aWd1b3VzIHNlZ21lbnRzKQogIC0tc2luZ2xlLWZpbGUtc2VnbWVudHMgUHV0IGFsbCBo
dWdlcGFnZSBtZW1vcnkgaW4gc2luZ2xlIGZpbGVzCiAgLS1tYXRjaC1hbGxvY2F0aW9ucyBGcmVl
IGh1Z2VwYWdlcyBleGFjdGx5IGFzIGFsbG9jYXRlZAoKRUFMOiBGQVRBTDogSW52YWxpZCAnY29t
bWFuZCBsaW5lJyBhcmd1bWVudHMuCkVBTDogSW52YWxpZCAnY29tbWFuZCBsaW5lJyBhcmd1bWVu
dHMuCltFUlJPUl0gW0RQREtdIEVycm9yIHdpdGggRUFMIGluaXRpYWxpemF0aW9uCltFUlJPUl0g
W1gzMDBdIFgzMDAgTmV0d29yayBkaXNjb3ZlcnkgZXJyb3IgUnVudGltZUVycm9yOiBFcnJvciB3
aXRoIEVBTCBpbml0aWFsaXphdGlvbgpFcnJvcjogTG9va3VwRXJyb3I6IEtleUVycm9yOiBObyBk
ZXZpY2VzIGZvdW5kIGZvciAtLS0tLT4KRGV2aWNlIEFkZHJlc3M6CiAgICBhZGRyOiAxMC4xMC4x
LjEwMAogICAgc2Vjb25kX2FkZHI6IDEwLjEwLjIuMTAwCiAgICBtZ210X2FkZHI6IDEwLjEwLjAu
MTAwCiAgICBtYXN0ZXJfY2xvY2tfcmF0ZTogMTI1ZTYKICAgIHVzZV9kcGRrOiAxCgphZEBibS1z
dXBlcjExLWludGVsOi91c3IvbG9jYWwvbGliL3VoZC9leGFtcGxlcyQgCg==
--000000000000ca839906241f2bcb
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000ca839906241f2bcb--
