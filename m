Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A7199A4EF
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 15:24:00 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 16B66385C3F
	for <lists+usrp-users@lfdr.de>; Fri, 11 Oct 2024 09:24:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1728653040; bh=g7snSI+dfl7ZkilyfvdVyfkZkmEEirhj1WEgYHl6Elg=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=iIg2mNQuXgaNKG33ZKF1t6m6/Ate4SaAlwTBhvkjHEhVXs67U1d54KOwqqNBymWvf
	 1hsYYWbyxC7m6132Gu7p8x9M+Z+Sed+hpJkh96b3B71ZjLkEI/IDc3bgXpIq6IM5bL
	 +ecWUcwW1wnWXsfcpUlm/21YFuuBy+UMSp2dBAZzlk3kfg1hfLzgXwan/Mf9gjRChm
	 wMfDxhh6R0x/2Igoad/tW5XREG5GysJiDQjHdzaCuwy47ZQYqN8sma1MQ7fHWd61x1
	 R/XzgWfPaVkCkj5sbxVItUBxeHPumrH/Roy+RBcelZSC6CF0NxvSaLch3fLNY6bkW/
	 9sw11unxRT7mQ==
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mm2.emwd.com (Postfix) with ESMTPS id D0B60385B9B
	for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 09:23:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="JVlBLywe";
	dkim-atps=neutral
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-a7aa086b077so285530166b.0
        for <usrp-users@lists.ettus.com>; Fri, 11 Oct 2024 06:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1728652984; x=1729257784; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4KdzVo8DNH+ZWiZj7/T/ji87pr+XwPXk3FN0DXsFaS0=;
        b=JVlBLywesw9FVpgYeFnc3awpUQGZmAgP0KfEugqb7fuxe62Q+n9d/r6Gof/PH3qlvw
         6DbP5yy/H/JPVS+hwlQGJx3kGZu1WZBDsd4sAwEJzdcWySjj1GGB60Y6mRPssUU5GJoK
         y+rjycmzKvRDfjJ7TSevH0A0+P8kzuhXEeiB/peymKZ809eMygARxmTCCp1CgV13WW8E
         CkLpVPQSB90AlBYb3mVfLeRmH+2AkzK61/x2Qenp0lBrsanLyvvoprfZ3P/3crqxLIer
         A6bUCnN/TcHReckFnI2iVMhkX45KIoEfkoX0bjtTWtE0tOA3dxaByGtRbJgaJHnsJW+N
         H3UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728652984; x=1729257784;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4KdzVo8DNH+ZWiZj7/T/ji87pr+XwPXk3FN0DXsFaS0=;
        b=sODN8pzxsIfL/SPyMhs2821GugurBD76kmuZQAl5NrViKhm2fqpubd52yOBRRDMhiq
         fkmBndMP6lOTQtISSPhZj6ni7Vx+CokVOA9LoM68tzOQS+1jmx5Jt4woXFNFr9guP16Q
         B0KJSllEysu5w8nwMC8uFPBAbDXoL14aAp+ktrd2maZtvGW2Im+pGqF7cdBU+mgLJpBE
         K16kAYJ1Vj8Ys595pYjepqFfI3NH/SGVq4L+Yx+JSdjiUgxby/9VsJv0I3QqiU/LgBd0
         BD5s8aJSXNUg8pLo3Ap4aCQiPGC732rHohmKNZTnFzay2B3mSOnkd0WPxyEYLUsaNHLe
         YO1w==
X-Gm-Message-State: AOJu0Yz59no6wzC90+QKDN0aJgAQh5XiPNk7A1Htb6U7Qkw2Hg5NZyJU
	xLcocRFnfFUnp4zKhlW+/F/Nbhoxvkdrsnw3Lmgu/QvFa3zIHc/tEMSwrynd6lx8jWls7DrS7f3
	EzIQjNZAZxQxbo5DSF9qyPR1mN2zUqNWopGAIKAPSBwa4ujzySKM=
X-Google-Smtp-Source: AGHT+IG852NgA5lg2plE52k/F/BSMpLXEiYd4PuLstyvo0+Kg+X/jGb215XjAUIP9y1pXtDTnBUSCvzrbAKYF4o74Tc=
X-Received: by 2002:a17:907:7da5:b0:a99:5110:7a4d with SMTP id
 a640c23a62f3a-a99b95fb3admr176587766b.61.1728652984418; Fri, 11 Oct 2024
 06:23:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAO=xj9XZK5zZhawbPCP5jWknLsD3g4KsaZWO32b3GNNrXSmHnQ@mail.gmail.com>
 <CAO=xj9U-mFNtAHWQkAxQ+sgHp7eDNTVUubjJRM3yrk+vmPsycw@mail.gmail.com>
In-Reply-To: <CAO=xj9U-mFNtAHWQkAxQ+sgHp7eDNTVUubjJRM3yrk+vmPsycw@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Fri, 11 Oct 2024 15:22:53 +0200
Message-ID: <CAFOi1A7RbXqw=Hi-x3te4BhkGfJ-iWP5BEJBDOPwyZ5GWcnh4A@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: G4VCH7LXYQABFNNLD56G7XZWBL5WVNHD
X-Message-ID-Hash: G4VCH7LXYQABFNNLD56G7XZWBL5WVNHD
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: EnvironmentError: IOError: recv error on socket
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/G4VCH7LXYQABFNNLD56G7XZWBL5WVNHD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7906394324663904843=="

--===============7906394324663904843==
Content-Type: multipart/alternative; boundary="00000000000013ab0106243363f9"

--00000000000013ab0106243363f9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Are you trying to reach the N3xx? Because it shouldn't be findable by an
unqualified uhd_find_devices call if it is reachable via DPDK.
uhd_find_devices will only find DPDK-reachable devices if you specify the
full address.

--M

On Thu, Oct 10, 2024 at 3:16=E2=80=AFPM Houshang <houshang.azizi@accelleran=
.com>
wrote:

> Hello
> I hereby want to share more info. Please see attached file.
> Thanks
> Hoshang
>
> On Thu, 10 Oct 2024 at 09:02, Houshang <houshang.azizi@accelleran.com>
> wrote:
>
>> Hello
>> Does anyone know how to deal with the following error?
>> Thanks
>> Houshang
>>
>> ad@bm-super11-intel:/etc/netplan$ uhd_usrp_probe
>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
>> UHD_4.7.0.HEAD-0-ga5ed1872
>> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:
>> mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,serial=3D32000F1,name=
=3Dni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.2.100
>> [INFO] [MPM.PeriphManager] init() called with device args
>> `fpga=3DXG,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=3Dn310=
,clock_source=3Dinternal,time_source=3Dinternal'.
>> [ERROR] [RFNOC::MGMT] EnvironmentError: IOError: recv error on socket:
>> Connection refused
>> [ERROR] [RFNOC::GRAPH] IO Error during GSM initialization.
>> EnvironmentError: IOError: recv error on socket: Connection refused
>> [ERROR] [RFNOC::GRAPH] Caught exception while initializing graph:
>> EnvironmentError: IOError: recv error on socket: Connection refused
>> Error: RuntimeError: Failure to create rfnoc_graph.
>> ad@bm-super11-intel:/etc/netplan$ uhd_find_devices
>> [INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11;
>> UHD_4.7.0.HEAD-0-ga5ed1872
>> --------------------------------------------------
>> -- UHD Device 0
>> --------------------------------------------------
>> Device Address:
>>     serial: 32000F1
>>     addr: 10.10.2.100
>>     claimed: False
>>     fpga: XG
>>     mgmt_addr: 10.10.0.100
>>     mgmt_addr: 10.10.1.100
>>     mgmt_addr: 10.10.2.100
>>     name: ni-n3xx-32000F1
>>     product: n310
>>     type: n3xx
>>
>>
>> ad@bm-super11-intel:/etc/netplan$ ping 10.10.0.100
>> PING 10.10.0.100 (10.10.0.100) 56(84) bytes of data.
>> 64 bytes from 10.10.0.100: icmp_seq=3D1 ttl=3D64 time=3D0.289 ms
>> ^C
>> --- 10.10.0.100 ping statistics ---
>> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
>> rtt min/avg/max/mdev =3D 0.289/0.289/0.289/0.000 ms
>> ad@bm-super11-intel:/etc/netplan$ ping 10.10.1.100
>> PING 10.10.1.100 (10.10.1.100) 56(84) bytes of data.
>> 64 bytes from 10.10.1.100: icmp_seq=3D1 ttl=3D64 time=3D1.16 ms
>> 64 bytes from 10.10.1.100: icmp_seq=3D2 ttl=3D64 time=3D1.11 ms
>> ^C
>> --- 10.10.1.100 ping statistics ---
>> 2 packets transmitted, 2 received, 0% packet loss, time 1001ms
>> rtt min/avg/max/mdev =3D 1.107/1.135/1.163/0.028 ms
>> ad@bm-super11-intel:/etc/netplan$ ping 10.10.2.100
>> PING 10.10.2.100 (10.10.2.100) 56(84) bytes of data.
>> 64 bytes from 10.10.2.100: icmp_seq=3D1 ttl=3D64 time=3D1.02 ms
>> ^C
>> --- 10.10.2.100 ping statistics ---
>> 1 packets transmitted, 1 received, 0% packet loss, time 0ms
>> rtt min/avg/max/mdev =3D 1.019/1.019/1.019/0.000 ms
>> ad@bm-super11-intel:/etc/netplan$
>>
>
>
> --
>
> *Houshang Azizi*
>
> *Test Engineer*
>
> [image: logo] <https://www.accelleran.com/>
>
> *(32) 492195241*
>
> *houshang.azizi@accelleran.com <Email@accelleran.com>*
>
>
>
> *www.accelleran.com* <http://www.accelleran.com/>
>
> [image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [=
image:
> twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
> <https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D=
1>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000013ab0106243363f9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Are you trying to reach the N3xx? Because it shouldn&=
#39;t be findable by an unqualified uhd_find_devices call if it is reachabl=
e via DPDK. uhd_find_devices will only find DPDK-reachable devices if you s=
pecify the full address.</div><div><br></div><div>--M<br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct =
10, 2024 at 3:16=E2=80=AFPM Houshang &lt;<a href=3D"mailto:houshang.azizi@a=
ccelleran.com">houshang.azizi@accelleran.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello</di=
v><div>I hereby want to share more info. Please see attached file.</div><di=
v>Thanks</div><div>Hoshang<br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, 10 Oct 2024 at 09:02, Houshang =
&lt;<a href=3D"mailto:houshang.azizi@accelleran.com" target=3D"_blank">hous=
hang.azizi@accelleran.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex"><div dir=3D"ltr"><div>Hello</div><div>Does anyone =
know how to deal with the following error?</div><div>Thanks</div><div>Housh=
ang</div><div><br></div><div>ad@bm-super11-intel:/etc/netplan$ uhd_usrp_pro=
be <br>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11=
; UHD_4.7.0.HEAD-0-ga5ed1872<br>[INFO] [MPMD] Initializing 1 device(s) in p=
arallel with args: mgmt_addr=3D10.10.0.100,type=3Dn3xx,product=3Dn310,seria=
l=3D32000F1,name=3Dni-n3xx-32000F1,fpga=3DXG,claimed=3DFalse,addr=3D10.10.2=
.100<br>[INFO] [MPM.PeriphManager] init() called with device args `fpga=3DX=
G,mgmt_addr=3D10.10.0.100,name=3Dni-n3xx-32000F1,product=3Dn310,clock_sourc=
e=3Dinternal,time_source=3Dinternal&#39;.<br>[ERROR] [RFNOC::MGMT] Environm=
entError: IOError: recv error on socket: Connection refused<br>[ERROR] [RFN=
OC::GRAPH] IO Error during GSM initialization. EnvironmentError: IOError: r=
ecv error on socket: Connection refused<br>[ERROR] [RFNOC::GRAPH] Caught ex=
ception while initializing graph: EnvironmentError: IOError: recv error on =
socket: Connection refused<br>Error: RuntimeError: Failure to create rfnoc_=
graph.<br>ad@bm-super11-intel:/etc/netplan$ uhd_find_devices<br>[INFO] [UHD=
] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11; UHD_4.7.0.HEAD-0=
-ga5ed1872<br>--------------------------------------------------<br>-- UHD =
Device 0<br>--------------------------------------------------<br>Device Ad=
dress:<br>=C2=A0 =C2=A0 serial: 32000F1<br>=C2=A0 =C2=A0 addr: 10.10.2.100<=
br>=C2=A0 =C2=A0 claimed: False<br>=C2=A0 =C2=A0 fpga: XG<br>=C2=A0 =C2=A0 =
mgmt_addr: 10.10.0.100<br>=C2=A0 =C2=A0 mgmt_addr: 10.10.1.100<br>=C2=A0 =
=C2=A0 mgmt_addr: 10.10.2.100<br>=C2=A0 =C2=A0 name: ni-n3xx-32000F1<br>=C2=
=A0 =C2=A0 product: n310<br>=C2=A0 =C2=A0 type: n3xx<br><br><br>ad@bm-super=
11-intel:/etc/netplan$ ping 10.10.0.100<br>PING 10.10.0.100 (10.10.0.100) 5=
6(84) bytes of data.<br>64 bytes from <a href=3D"http://10.10.0.100" target=
=3D"_blank">10.10.0.100</a>: icmp_seq=3D1 ttl=3D64 time=3D0.289 ms<br>^C<br=
>--- 10.10.0.100 ping statistics ---<br>1 packets transmitted, 1 received, =
0% packet loss, time 0ms<br>rtt min/avg/max/mdev =3D 0.289/0.289/0.289/0.00=
0 ms<br>ad@bm-super11-intel:/etc/netplan$ ping 10.10.1.100<br>PING 10.10.1.=
100 (10.10.1.100) 56(84) bytes of data.<br>64 bytes from <a href=3D"http://=
10.10.1.100" target=3D"_blank">10.10.1.100</a>: icmp_seq=3D1 ttl=3D64 time=
=3D1.16 ms<br>64 bytes from <a href=3D"http://10.10.1.100" target=3D"_blank=
">10.10.1.100</a>: icmp_seq=3D2 ttl=3D64 time=3D1.11 ms<br>^C<br>--- 10.10.=
1.100 ping statistics ---<br>2 packets transmitted, 2 received, 0% packet l=
oss, time 1001ms<br>rtt min/avg/max/mdev =3D 1.107/1.135/1.163/0.028 ms<br>=
ad@bm-super11-intel:/etc/netplan$ ping 10.10.2.100<br>PING 10.10.2.100 (10.=
10.2.100) 56(84) bytes of data.<br>64 bytes from <a href=3D"http://10.10.2.=
100" target=3D"_blank">10.10.2.100</a>: icmp_seq=3D1 ttl=3D64 time=3D1.02 m=
s<br>^C<br>--- 10.10.2.100 ping statistics ---<br>1 packets transmitted, 1 =
received, 0% packet loss, time 0ms<br>rtt min/avg/max/mdev =3D 1.019/1.019/=
1.019/0.000 ms<br>ad@bm-super11-intel:/etc/netplan$ <br></div></div>
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
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000013ab0106243363f9--

--===============7906394324663904843==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7906394324663904843==--
