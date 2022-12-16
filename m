Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4337364ECEC
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 15:34:44 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4B4D0384502
	for <lists+usrp-users@lfdr.de>; Fri, 16 Dec 2022 09:34:43 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1671201283; bh=BhUtVR4xGGnYWYnCJiVUjHtk/Wevtlmwnud5PZucPdk=;
	h=To:Date:References:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From:Reply-To:
	 From;
	b=QuZeXbrNYGgk8RANDMlUoLWyk5zJZr59RscWv0c+V5Lj40Rr5WipUBBpuhsYvEBJm
	 mMlrkcdYjTfhworB7YwGXS5cLszo38+vTVPBJutyCiB+UFyhim0v4S3wdzCrZQJjqR
	 6MCw5gwHQJzHlt4nJ0jm69AVOW7mMJwm6Rhkkpz5vykbpd5VlvHu7MhUR1KeL7ML8G
	 OpwSKJeQU0QhD7LkMOrlhaetBDNNd2/qyUKDpBhQgmtTw2Ac2mJmRwylEmKirx406+
	 tWnKqyxYioW1wSDMXVgUfQS+/i4n/y6y9MY+iPFzLPiJyUxxLNU5s75wrsRFN4pP5b
	 SYxUl4ooLYzhw==
Received: from sonic310-24.consmr.mail.ne1.yahoo.com (sonic310-24.consmr.mail.ne1.yahoo.com [66.163.186.205])
	by mm2.emwd.com (Postfix) with ESMTPS id CA7E138434D
	for <usrp-users@lists.ettus.com>; Fri, 16 Dec 2022 09:33:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=verizon.net header.i=@verizon.net header.b="MhvnLd7z";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1671201198; bh=TNRPo8l9yGghbL7T9Y0JAzWExRycGtYpbYX635kd/u8=; h=From:To:Subject:Date:References:From:Subject:Reply-To; b=MhvnLd7zDiZ8NBI4QgOba756Z/y4HbJMl+qj2Z7kkW788dT6eyT/kW2nqQ843q6dlydANpMqdEuP38zcVjgG0QtjI0kKxjFrPybyXcq6p8LJz/hoMAcT3enNOqeERH37dQGDuKHCkjywlt+4tiQxZm7k/NJEnyTj6NHA7Y38cnvWiYqWY6GZZMjeJozZO150rP1F3WEEhow0t2ae6lTtnMDj1zbj2hNJDfFJrXQdoCnlfxC4z3FpMKkIkKtayFA/WoATHubZrArkWaqQTEwaKGquRi+ej1YeQ0DV9exBHYWfLKJSE+YrYaBk0/oAVjmGVI3hU86IefRP8DtHbzavBw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1671201198; bh=N2rSV+mGb/lP7r/gWqKhSHn2DZbTyOJFHlrCKIN3ej2=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=ZJNFPV9zNcYfrB9JCxyyTCrI6wY4OGoPwTSJAunaGtIDT35ArKKD6GF6kbgviiaGw543ln97iVhOp4S3OuA/JcAr6Dfg5AoqUrh7WFMbZeJqFhi8BkKJln5xPlHHKt0eIETHqCt/HfEWAtHHNgltJswPLroHFxKZNj8EInFTyjB2vY+2OFu3UvZhzd1i/askiUJdSiLTjo45XwZjoSNaCZGIZl9cI/d0wrn3DK9Vx1zmG40+rcsvrlibTHtbWEH67Ei5+8QbRrO5Km/314+qORmwmu3V7YJQrZe9QPZQSu5xb9HN7ftfL7Kmu8EW1fxBINJwVqFNDrsXdWSsrXubyw==
X-YMail-OSG: IOVtUHMVM1nuunwLwjVlBayjkdS.SGK04K21wqxdSGPoXCDJNAH.qKq1ICbFyrM
 kvuEPZiatCKo9l1m5Yk6tX27Jx5NgLrtLEvVoRGGSr1herwW0TbgQHvAbn3TKH6pZKXJiBrQsRBI
 Fv.WyvlbdoYVGAwa1rx0tSSXiPQ.eN2.X29Ja9qPr9VMdnw0K5w20Sda5C_aBSr05OhN4rUjAhOA
 Hk4iu8L.O9EhzpZdWidqczpnyXvpTw3sDL4Pq72LjmPBevW6WBLaK2IO..CfZBHYjYhY0q7ucPyt
 iKlEi0ZWHk8udqL9aS2_E2hyDvh2RH6ZGgB8Zzqgx0BXsWRZif0xdNq4Zx.N3ImZyX54S4i4jqNg
 T0yBMBv3qDa6MIWEH.hbodJYzRiH8Kdz5H6JYMuENhJCCRrzyDiL63gr0IIg68WkX0n_xaLll5eC
 6y3B6u1JFUCbd3Hn52M.HvGsjD9AsKuavrYtptBHUGRr2wQtxRaFlNVQ6Ejc6YhQuAv8dlFuH7cm
 9dGKBUuZ47GOmwEslHiB1xjHF5byDDnqShmxI8pSS.S6YT8nT9t34ZXZkDcZH10azXTH3c9lJCTu
 H2Jael50cZQKcjloztxIAgXcvvr4JcvghyFJ0bQHt_oBBg.9nuNtVbOpScgRrH5K4ULy4fBnHEVh
 cEzmAGRkRsq2EMR7qZm3Xdp.yqiw0NgRL_l_9t9InND7Z.1lzb9dLUyuOOLql0uaIJvCI5R2Q8DS
 mJRtGsqtpskvrbAmr0mXO7B7J.XCH4mjEpRJRGSgehXPt3F8jCEZG6CSfW4hhxHxCX9J8mGP_6pw
 F9A___uiIerwmZM47vQqf6IwuiTTgrZiUjHDM9_gcAf2dGkuQkt4qD1sNDAso.2VrTzNaTk0F2.z
 9PL_.S1KWU9b46B2EqYtNlbT.ppBrB1JPjgGF9h0CK1Mn.s1SXxZAmHut76FCVziJC1Ey7jf.d5y
 a_7H3c.xqhk6Pgg5IOSzMqPVKYV9iC5BCyrdKXvbHN1lctyKubJ8kxZKMDSjwoj2d52JEtj.5UmV
 K7WKPBdanAybbYssLuwz3O2HRfq6h5HtZ_N0rMXU2dH75kuSILzcMmHpCRQ3QRfsTDV2hgV3G8OL
 QJjr94NQ82nXDf_LiZf96zpozy5W8DkjZKFEybdRm2MjBT5VhvVhXeKXnUoLP.D41YC0ciV2kw4P
 ggm.tDnvjvpvCMygu0qUU8MYYDXH5tlF9a5d6LFAvcWLKruGnFAJCHAS7zLGAz7gZ3VHvMubPN4r
 mcggl996afAYwQwTkp_g2dPMnPYrg6AshGgki3IoE_Fhptj6uanZt7nsh8vBUVGZdFDANoMEKOz4
 vFN1vCg_HRNOJ9eW6b_Zgrnv7HaEN1VGJubVt6oYQxRB56Fl.1kNFXtnzQqB.BTuR1pkGKNa2D.E
 uU_zvBxHvhn4XuHQ3FfG8ARDrc4swYsvOM0jSdZ0iQZgzxUqaPRnLbh_g_fB7I5mPVAXRCUCT1bY
 .loAYXMHi_YovMtPX42NYYXUwHOvgMSLx0VlIjHZKkMhM77gdviNA_a805yTPR5nzaN8fDAnRrWN
 6oNQeq2vnH9L5qPbJUtxABteIpeLFMQbjTFbZVb_8xCrWbszXX5TkEmqy4mthKDKOpmh4b6JIOBa
 vdrCfQ8eDcC6BzIkna0R7ioCGZ_dkxfBaxqTwwNnxkIcN_jeGe8Ok8lFEhkCJOMVjjPfNP4wBhiD
 Bk7.lcGPoX7h43yaMNgIiQUEhPcZ3pWekG4.YVDXd9P78rSiHDm91JmhhR_OTCFwrsCN23M4uMFp
 i6yAx1ifagAxxl8iQ6SlMBmMyySvyNPoEC3R4aS96AxhSKxcGxYHvY_MaRkLp3wDN5MKx206532h
 f.fWxqhUo7QB3SYN0XDZko8k_nL0flIrTJ3wv07aheF1.3HFtl87oXfyAXvkRAHtMZbcYpTWp5g2
 HZWXkKZ1XvaGN9iqPfjR7TtTro3dGVktPevY3I0H_48Ec0EH37XY8aaZ9TzE5sS3o1NnafNd0fdG
 MMYdGZKMqC0LluM6pWlAXTO9wpl9CL4JZrsw9YN8C5VNzA2rX6KtlaxVHMaFzKcn4EwA7q9tPEv4
 FvFc.yd5Km81mhrtrO7LqeCDYFt_Gw5O4vg0rOjQaT4_dYzA0ANHT.PtdfzzbeMCLx.0ds0AKhVv
 cJtLHwkMOaRRHSr7I5Tk2ZC5mX3n86sEgOh76meJMygsRWo9As26wmEjw2w1An9tsVq2_L4WDwOQ
 tSPsJcLbz5Fe07Q--
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.ne1.yahoo.com with HTTP; Fri, 16 Dec 2022 14:33:18 +0000
Received: by hermes--production-bf1-5458f64d4-tg4jl (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 6636e7e8dc469bf34c3295f34dbc021d;
          Fri, 16 Dec 2022 14:33:17 +0000 (UTC)
To: <usrp-users@lists.ettus.com>
Date: Fri, 16 Dec 2022 09:33:15 -0500
Message-ID: <00c001d9115b$55bcc130$01364390$@verizon.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdkRWAwsUIMthgiLSUi0JuH6B0DRRw==
Content-Language: en-us
References: <00c001d9115b$55bcc130$01364390$.ref@verizon.net>
Message-ID-Hash: NTREG4ULJ5UAUKWBT3AUKIINDD5ZALJQ
X-Message-ID-Hash: NTREG4ULJ5UAUKWBT3AUKIINDD5ZALJQ
X-MailFrom: mikerd1@verizon.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Did anyone else need to do this?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NTREG4ULJ5UAUKWBT3AUKIINDD5ZALJQ/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============1929861209881469400=="

This is a multipart message in MIME format.

--===============1929861209881469400==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_00C1_01D91131.6CEB7420"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_00C1_01D91131.6CEB7420
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi all,

 

This goes in the category of "Did anyone else need to do this?".

 

I'm running Ubuntu 20.04.5 LTS with GNURadio 3.8 (Maint) and UHD 4.0.  I
recently upgraded UHD to 4.2.  I ran into a gnuradio issue starting a
"RFNoC" flow graph with a syntax error for an unmatched ')':

  Self.rfnoc_graph=ettus_rfnoc_graph_0 =
ettus.rfnoc_graph(uhd.device_addr("addr=xxx,type-n3xx")))

 

I was able to manually edit the generated python code to remove one of the
parentheses and see the code work.

I then upgraded gnuradio to 3.10 which had the same issue.

 

I then compared the "uhd_rfnoc_graph.block.yml" block files between UHD4.0
and 4.2.  It's significantly different as 4.0 uses python .join to build the
argument list and UHD 4.2 uses the python module "ast" to generate the
argument list.  But the final line on the 4.2 version had the syntax error
of the extra ')':

              self.rfnoc_graph = ${id} =
uhd.rfnoc_graph(uhd.device_addr("${graph_args}")))

 

I removed one ')' then reinstalled gnuradio (make install) from the build
directory and everything seemed to work after that.

 

So, it seems like it is a simple syntax error.  But normally something like
this (in my experience) indicates that I might have missed some
configuration step somewhere and have yet to see the other errors.

 

So, has anyone seen something like this?

 

Thanks,

Mike


------=_NextPart_000_00C1_01D91131.6CEB7420
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hi all,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>This goes in =
the category of &#8220;Did anyone else need to do =
this?&#8221;.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I&#8217;m running Ubuntu 20.04.5 LTS with GNURadio 3.8 =
(Maint) and UHD 4.0.&nbsp; I recently upgraded UHD to 4.2.&nbsp; I ran =
into a gnuradio issue starting a &#8220;RFNoC&#8221; flow graph with a =
syntax error for an unmatched &#8216;)&#8217;:<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp; Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =3D =
ettus.rfnoc_graph(uhd.device_addr(&#8220;addr=3Dxxx,type-n3xx&#8221;)))<o=
:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I was able to manually edit the generated python code =
to remove one of the parentheses and see the code work.<o:p></o:p></p><p =
class=3DMsoNormal>I then upgraded gnuradio to 3.10 which had the same =
issue.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>I then compared the =
&#8220;uhd_rfnoc_graph.block.yml&#8221; block files between UHD4.0 and =
4.2.&nbsp; It&#8217;s significantly different as 4.0 uses python .join =
to build the argument list and UHD 4.2 uses the python module =
&#8220;ast&#8221; to generate the argument list.&nbsp; But the final =
line on the 4.2 version had the syntax error of the extra =
&#8216;)&#8217;:<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph =3D ${id} =3D =
uhd.rfnoc_graph(uhd.device_addr(&#8220;${graph_args}&#8221;)))<o:p></o:p>=
</p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I =
removed one &#8216;)&#8217; then reinstalled gnuradio (make install) =
from the build directory and everything seemed to work after =
that.<o:p></o:p></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>So, it seems like it is a simple syntax error.&nbsp; =
But normally something like this (in my experience) indicates that I =
might have missed some configuration step somewhere and have yet to see =
the other errors.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>So, has =
anyone seen something like this?<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>Mike<o:p></o:p></p></div></body></html>
------=_NextPart_000_00C1_01D91131.6CEB7420--

--===============1929861209881469400==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1929861209881469400==--
