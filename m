Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 87D078FCCF2
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 14:33:20 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5B5C13841A0
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jun 2024 08:33:19 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1717590799; bh=1vNbAz2WRXPFc/wFhO0hZJ/Bq1MmkbIgEsL6QrK2pvo=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=EJr6CZ9J8A4lafbbbjXXmPk0qVWcojFc368PzBRbvz172z2ZwCQgNCyJjyWS9vd7p
	 AEDPQ1lmI9FInwFKy0NRhtOBU3BT4+CkfoxFJChb8wQzzwVdLhaBRVe+yoHCOhBeF8
	 svWcIZgkHcoL69RdVyXUOwaiTbnL1yqqsE/GgoA1nTxk48Dz8fJWGfPHHRnHhzafay
	 Pm5nhhElgoYKQr7szROXZoS8TwGICye+NmpU//duSR538xASeSORfSHR/rDJFa7vEE
	 c1+PEYk5rIvuC8o6Lgff/JyVJJo5fGys9X5VjywiJItdogaSNL/FArRPa88VwA3AU8
	 X5rJXTu4I0iPw==
Received: from sonic305-2.consmr.mail.bf2.yahoo.com (sonic305-2.consmr.mail.bf2.yahoo.com [74.6.133.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 346003845CF
	for <usrp-users@lists.ettus.com>; Wed,  5 Jun 2024 08:32:28 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="OdA6cuHI";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1717590746; bh=I1KVk2DK1MnPFQvduLf8aufd8/i0a1jFBRNBBDrbCgw=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=OdA6cuHIbEP0UFmwT3xu5R+ufYD7DDaAImCHjvswbziTOF/JirSW1KxdFOGRVi7x5UxlchghBeZD8HUN+GdRMZtgOQ9axWMIoWkRE0L14ceUXm9Mvc4rWiQCkRhccKOc5blqzRqDEJ27oJoZ7aAle76+kLPEYxTgp/q7AMoY6QaWRI31Ca2j/wINv1wjunh7GQp0zwGo5qH5Fuf4zh6kDaGGtQtb2sGWE3qA4M8lDR08AAdOLjnuRjjFEZV+KxrJMg1fNty1/if2dZc3Pr/FIH25rcw8ENu3UIWXzIKkJr1mjevuX+CufU7rfRJ35+Dy34M+TQTvKeMrDrKIRld3Vw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1717590746; bh=5PzSV8La+Eh2dnoicJ2AbNEUJ1TPTdQnZ+zd0Ya/TuZ=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Cib7lqtr31GP1J0EK9LRPxX5PguPbIT+zxH2E/GaD3TeYX+gcIUPjG7iVa6EQL+sFb4HbZeYgQ7cSUgvf8FUycl1G/3A4noKNHiXVp/cF+3PfVwxa6omXDfNbUoir0TXFJ+ZiNEwb1kk5mtRyWtERkG+hskDKlVU3J7y0VM/+9uU/OFUaTR64XvM4YKHsH9IYNirIitO27UHGNkUR2sHqHHC7Po3fSwwSBHD+wzGBp66XXFVMYu5KikRB0i5P02xt+Jcwfq+UbQs54XxQ9HqJ/W2T5qG+WjDu7f52lJOJyOGWawI/7XLfEJFnMPx0Z7rFpL3AD/cMIKevF9E1UqmZg==
X-YMail-OSG: zI4Jr6cVM1m6vanxO70kRctT4sGkG.hRq5cx4p5zl3mk2vYDljoY_5_8z06XLTn
 wiYFK1wIEe8HJozzop8uUHwzT3NwRGdReGxVAqF3mBj9KscgVeFyWPR_96e_3lbYByueFjiVyimR
 .5jJ9kofoSMTbR_Uk4p7zoI6lRj1pk.c7KuniwFrsPmAeL8_4JajB.6sg.blsGfDKQ4wPEuVbMcA
 vpE1wW4d7M6YKBrFEaAqsEwkMGD_WvBvy.6OlhkQ8GqfcZDs2_o8Zbfg24E9k5VYbMVTjClF.M4a
 ZrYOUOKjvcl8WMPZiR3Yh4k9rhpNFycJ_eRjMx7VzztWpqYl1zw4DmL5H.xtku3Re3bqlxB58UYN
 2DbKFyegPJhfX5BAdRyxddHJP.sMJ6Y3.IWFAbJq26NWtxDWbKnwXHvERGRO4wypNgQNv0GwZ.e1
 JbKNvlXdg4rgFItt9zhrB3Fe0MfhfvvxppdM_7q3LRx40.FdiaeT74cB.Rf.oR7XBk0U5fHBSujA
 14Ag.w7mCC9AoYst0RYOnU5CVOU1PpitXp8dTgy5A_rJW2pu9W_JPupzQyT0xjnhOC9rwD2cpgtq
 _iU3tnaHrgjgbnPbHMuECPXVscZEL.IWvkPry9WfColREbh6Jt8Rws7IwplmCeqK9EjWJjZ92XXF
 mkTS4vxxyPPLfTNJVF8379xNm40cisovAiqmWmgoKy0QU.SqmZ5QYSbINrsCNGjX_WH.IA127qXR
 3RLzw._jaX_5YIaGtbaiAx6pJcu.JqeFcnE9LTD7dM8m6pbgOwSD5CJVKv13EeniUs5gEAu4hu.o
 9Q4h4yvdlQ1A9DlH9RgivTIwtPpDiYSJHmv321LII21sXC41UF4i6eOE0YZpSxCNnnS5tGbXilEm
 0oI7_Gq2yhlZ4O2kYJcAlzJ.1Aj5MnNTmx52Ty9ULygdJd35TFYY6TK4S8Mv7Fn69woKufy5yg1D
 ln3G_tz9B1q7cDym51g7rJydKzf8HqawnHC3C2DJJZZqaRI1G.UeDgrU9PRtWYZdMiRFTi472Ojk
 pZDIeT7wHMwvHeZ5dIfCXP0lTKoJvVxlrJyh43w190sKVMxLH1TILYpPHyDe992rTSlVbA3BrYPg
 5Wc3Plw5wc2duspQg1z8fsX.xaEaeiEu3fcBn6X3PRUwN.IJvSDzk94y_s.OGsHk9ZnmR9M3ZuaD
 K7tkvmDSsjbPdsYlfFf_.zIhY.FHw6aGBjFKnE71tb0hw_Pt.A7.vuTD0Og5FSXFSkqEX8dddiLh
 y5kJuTXFzLIuMHi_vJ.TyJ8YJWMNqCutpnt2fZW2gDk1wOMhJ0BDTHwcSPaypWPpAd7ToDoCV76j
 iMvvjyWpJPRPAvu9BiyTYFyuRIG1dsHQE_2UaXNVfVfoPt9bKHNESUl68Dh4nxg6R0uvz1j7GOjc
 HxT_R5ioy5cg_4B8AwTRGjRPOrouFE2eanjVt_4D8ere7f4u6N25fDM8BLUv1DSrss3Nk1YWreol
 v_Q5wrtcrtZUN8.gEtrsNFtjVcSiuS7S8t3oOmTALnWcl95omdKXPoR9IchpC2IDAfzfiWrNZ1R1
 5ozrYVy6_91O25FrF8KhIfxg6oHT.Vmk9TiNh0hbl3M5K3e8FftU6Mom5uQffLsU94GOYJ0LaL.F
 kgD1PfJO3LJTUmywtjEkH5saSwc3MxqD4xpXlJyUOy0jcCrWbM_t98upQSw1qeBSNdwqApnxdGxb
 KP9C07O5BmGiRd3MhYl3XSk1ZaE4iu02Jkx9mOXhM8LZDlDzUTmT9ZWvyRlIP2w7V8RtA2W5hXhN
 oJlu.o1tQZfFwMGAIN9Gp0Cy8e0Wix8lXCpiNGGpweEiMXAaK9OKKAnUwEENMqkndsSH55l6a324
 i0GNBkzLN0CAmHu.Xunepoi1LWU_zK_56ZLow51Jjnuj0xXWBj.AEn.BgDtYdDeGXLYBDzF4og45
 pec.WIJtnlkqax9O.NNkS5..H5rBlr7sXyoBOUakUlIeoq_TxrmoB277MD.YgvPncjlc6rcHOmZI
 V39ERAlFZAJ5RdB5YviiD_vLngeBnMKk5_ksw0SYneDz2TIO9QDVmCR8lCQ.lBmj1kK5XPjv9gNx
 3G8OuDqkODjQE4W6yIDY5x53HSTvZCaCY9pPn_C14UiiaVCv_8E18hFcQEV3qItI0NPrvCRfVxNZ
 LDmVSvPaq1s00I8XIIOfPnZhmydMA9Qx_QjROT1LSebcaxSeRJ1WqgFMqH.IbrCpSBvonB0q2kej
 gHxZK_6Asca3Z1F6EB.TOMgvyXDT4qaxTJg--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 102abce3-43f8-42e5-ab75-063f82d88e1b
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.bf2.yahoo.com with HTTP; Wed, 5 Jun 2024 12:32:26 +0000
Date: Wed, 5 Jun 2024 12:32:23 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <1776937472.1162106.1717590743172@mail.yahoo.com>
In-Reply-To: <7464804b-a2da-453a-9a0b-9ce91d0c294b@gmail.com>
References: <AS8P194MB189394551E5E2FF60681279DFCF82@AS8P194MB1893.EURP194.PROD.OUTLOOK.COM> <7464804b-a2da-453a-9a0b-9ce91d0c294b@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.22407 YMailNorrin
Message-ID-Hash: FDQM5EHT4VMLTXKVQ7RP4JXDECD5CZL2
X-Message-ID-Hash: FDQM5EHT4VMLTXKVQ7RP4JXDECD5CZL2
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Big network Latency on 100G port in X410
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/FDQM5EHT4VMLTXKVQ7RP4JXDECD5CZL2/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4812554675741838510=="

--===============4812554675741838510==
Content-Type: multipart/alternative;
	boundary="----=_Part_1162105_2064533486.1717590743171"

------=_Part_1162105_2064533486.1717590743171
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi All,
I am using MCX516A-CCAT for X410 USRP. It has three network ports, two for =
100Gb QSFP and one for 1Gb ethernet. They are directly connected to host. S=
urprisingly, I find much bigger latency on the 100Gb link than the 1Gb link=
 when ping them. I didn't notice this before.
Then I checked X310. Its latency is also pretty big compared to the 1Gb por=
t:=C2=A0rtt min/avg/max/mdev =3D 0.341/0.539/0.793/0.187 ms
Why is the latency in 100Gb bigger than 1Gb port?
~$ uhd_find_devices[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400=
; DPDK_21.11; UHD_4.5.0.0-0-g471af98f--------------------------------------=
-------------- UHD Device 0------------------------------------------------=
--Device Address:=C2=A0 =C2=A0 serial: 3289B23=C2=A0 =C2=A0 addr: 192.168.2=
0.2=C2=A0 =C2=A0 claimed: False=C2=A0 =C2=A0 fpga: CG_400=C2=A0 =C2=A0 mgmt=
_addr: 192.168.10.2=C2=A0 =C2=A0 mgmt_addr: 192.168.20.2=C2=A0 =C2=A0 mgmt_=
addr: 192.168.6.66=C2=A0 =C2=A0 name: ni-x4xx-3289B23=C2=A0 =C2=A0 product:=
 x410=C2=A0 =C2=A0 type: x4xx
~$ ping 192.168.10.2PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.6=
4 bytes from 192.168.10.2: icmp_seq=3D1 ttl=3D64 time=3D0.998 ms64 bytes fr=
om 192.168.10.2: icmp_seq=3D2 ttl=3D64 time=3D0.888 ms64 bytes from 192.168=
.10.2: icmp_seq=3D3 ttl=3D64 time=3D0.886 ms64 bytes from 192.168.10.2: icm=
p_seq=3D4 ttl=3D64 time=3D0.894 ms^C--- 192.168.10.2 ping statistics ---4 p=
ackets transmitted, 4 received, 0% packet loss, time 3036msrtt min/avg/max/=
mdev =3D 0.886/0.916/0.998/0.047 ms~$ ping 192.168.6.66PING 192.168.6.66 (1=
92.168.6.66) 56(84) bytes of data.64 bytes from 192.168.6.66: icmp_seq=3D1 =
ttl=3D64 time=3D0.180 ms64 bytes from 192.168.6.66: icmp_seq=3D2 ttl=3D64 t=
ime=3D0.143 ms64 bytes from 192.168.6.66: icmp_seq=3D3 ttl=3D64 time=3D0.11=
5 ms64 bytes from 192.168.6.66: icmp_seq=3D4 ttl=3D64 time=3D0.119 ms^C--- =
192.168.6.66 ping statistics ---4 packets transmitted, 4 received, 0% packe=
t loss, time 3080msrtt min/avg/max/mdev =3D 0.115/0.139/0.180/0.025 ms

Thanks,H.


------=_Part_1162105_2064533486.1717590743171
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp63709d82yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi All,</div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I =
am using MCX516A-CCAT for X410 USRP. It has three network ports, two for 10=
0Gb QSFP and one for 1Gb ethernet. They are directly connected to host. Sur=
prisingly, I find much bigger latency on the 100Gb link than the 1Gb link w=
hen ping them. I didn't notice this before.</div><div dir=3D"ltr" data-setd=
ir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">Then I checke=
d X310. Its latency is also pretty big compared to the 1Gb port:&nbsp;<span=
>rtt min/avg/max/mdev =3D 0.341/0.539/0.793/0.187 ms</span></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">Why is the latency in 100Gb bigger than 1Gb port?</div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><d=
iv><div dir=3D"ltr" data-setdir=3D"false"><div><div>~$ uhd_find_devices</di=
v><div>[INFO] [UHD] linux; GNU C++ version 11.4.0; Boost_107400; DPDK_21.11=
; UHD_4.5.0.0-0-g471af98f</div><div>---------------------------------------=
-----------</div><div>-- UHD Device 0</div><div>---------------------------=
-----------------------</div><div>Device Address:</div><div>&nbsp; &nbsp; s=
erial: 3289B23</div><div>&nbsp; &nbsp; addr: 192.168.20.2</div><div>&nbsp; =
&nbsp; claimed: False</div><div>&nbsp; &nbsp; fpga: CG_400</div><div>&nbsp;=
 &nbsp; mgmt_addr: 192.168.10.2</div><div>&nbsp; &nbsp; mgmt_addr: 192.168.=
20.2</div><div>&nbsp; &nbsp; mgmt_addr: 192.168.6.66</div><div>&nbsp; &nbsp=
; name: ni-x4xx-3289B23</div><div>&nbsp; &nbsp; product: x410</div><div>&nb=
sp; &nbsp; type: x4xx</div><div><br></div><div>~$ ping 192.168.10.2</div><d=
iv>PING 192.168.10.2 (192.168.10.2) 56(84) bytes of data.</div><div>64 byte=
s from 192.168.10.2: icmp_seq=3D1 ttl=3D64 time=3D0.998 ms</div><div>64 byt=
es from 192.168.10.2: icmp_seq=3D2 ttl=3D64 time=3D0.888 ms</div><div>64 by=
tes from 192.168.10.2: icmp_seq=3D3 ttl=3D64 time=3D0.886 ms</div><div>64 b=
ytes from 192.168.10.2: icmp_seq=3D4 ttl=3D64 time=3D0.894 ms</div><div>^C<=
/div><div>--- 192.168.10.2 ping statistics ---</div><div>4 packets transmit=
ted, 4 received, 0% packet loss, time 3036ms</div><div>rtt min/avg/max/mdev=
 =3D 0.886/0.916/0.998/0.047 ms</div><div>~$ ping 192.168.6.66</div><div>PI=
NG 192.168.6.66 (192.168.6.66) 56(84) bytes of data.</div><div>64 bytes fro=
m 192.168.6.66: icmp_seq=3D1 ttl=3D64 time=3D0.180 ms</div><div>64 bytes fr=
om 192.168.6.66: icmp_seq=3D2 ttl=3D64 time=3D0.143 ms</div><div>64 bytes f=
rom 192.168.6.66: icmp_seq=3D3 ttl=3D64 time=3D0.115 ms</div><div>64 bytes =
from 192.168.6.66: icmp_seq=3D4 ttl=3D64 time=3D0.119 ms</div><div>^C</div>=
<div>--- 192.168.6.66 ping statistics ---</div><div>4 packets transmitted, =
4 received, 0% packet loss, time 3080ms</div><div>rtt min/avg/max/mdev =3D =
0.115/0.139/0.180/0.025 ms</div><div><br></div></div><br></div><div dir=3D"=
ltr" data-setdir=3D"false">Thanks,</div><div dir=3D"ltr" data-setdir=3D"fal=
se">H.</div><div><br></div></div><br></div></div></body></html>
------=_Part_1162105_2064533486.1717590743171--

--===============4812554675741838510==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4812554675741838510==--
