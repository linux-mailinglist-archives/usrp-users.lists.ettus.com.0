Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DC65267CB31
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 13:47:31 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7B22338425A
	for <lists+usrp-users@lfdr.de>; Thu, 26 Jan 2023 07:47:30 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1674737250; bh=cb5dKhLVRl/yvn5D9ZqSjg0f35Uufmc94gV966IU5Lg=;
	h=To:References:In-Reply-To:Date:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=YNGaM+e5osMWzw7SjIdSRKI9wNlUEVI3qECe8JrK9DQM2mWocMnHs2hXyKJKRYdON
	 tdVhdaHZUbgoQdQA76iBwTJiIGdL+oOLpKY+8QOAhmm/IhQGt0tvTW4PZKvUqHtTsm
	 yLxg5FwNXYLB98iHd05XmgKHphnZONDTwpvtc34OX3hkZHCn5YE0uEO06AMDe9ItbH
	 r0oBD6tmAwWmxPKYrvHcASMLhy0hesiqrndmH2rVq/DT0wrSaNegLC8pqLZ2w2W+Vy
	 mpVCFVenkzzymHYQcUWlYVw8WtQFYQxLhCEsUJLUA8fgNLXaMqMS8aYcmSaE5LsLyc
	 pVQpzn/1mV90Q==
Received: from sonic305-21.consmr.mail.ne1.yahoo.com (sonic305-21.consmr.mail.ne1.yahoo.com [66.163.185.147])
	by mm2.emwd.com (Postfix) with ESMTPS id AAEF438422E
	for <usrp-users@lists.ettus.com>; Thu, 26 Jan 2023 07:47:22 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=verizon.net header.i=@verizon.net header.b="a3/vz7Aj";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verizon.net; s=a2048; t=1674737241; bh=F4CAEVoQLRcOwQ6C+/wqBmXbX8jP+8FzFphKpjrTSuo=; h=From:To:References:In-Reply-To:Subject:Date:From:Subject:Reply-To; b=a3/vz7AjvpOJyUcdGtU27B/hHofVXU4GbL6y+djXxmGKHdTw+Lc0r/6fGJjyqMLR+y6fwDAtdVpMM3woZuHwg77e91gjm3vVGQgXW3DfEG6mLt6RApfZ4q/r9GHZFClDlCaAsdYn1DZ8HOqoJSE1JBv36wDiDABFZ/4D5S2tFfyGpj000s39FXUTPCu76jivvIyk35DlnC16myYAbK4uOPT0M8OKeg2M87s6WGS5Kc2DnMoK05adGXRczQUW8W3ULmw1LzFRE3wPxkK/Bcj/Fs1wLncXChvoalKj0n7jkK+0qPvuHqQY1+Y84kPPeUOsGcg2/69pwfWKq+Y76iEIng==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1674737241; bh=78CFudpPJZmbVyJGnL+HeCmaWnbVhdG0hR1IHZS4NvM=; h=X-Sonic-MF:From:To:Subject:Date:From:Subject; b=NTPvkpS/1ZI5Hov6vz/C2+aAXfBeHj9pU9mMIQu1NPB4ATjIk+g/xxlOjZSb7st9Ghftu7M/32HNUD0GsbQvH6q/XF06UHx4oUeVpG313UYqMZShKsf9p58Zd4qni/bs365gdUqzispRMko8sRCbSUba3AksZb+X2h6/p2wtxU1P1hKu6VmFgFDUJ8C9zIrHkErJqp41QHsY4s2b2ggxXCbjN+jAnZ9ieQEPf0c7BjmHe+gavMkskAjCSbFy0kITqa8sODoafQDNQaWfBYw6Xu5/pms22v6NaA25qDWddNoLawqBO7cxOPGpEJ0ylpmCgCT8IXeud5KF/UY6QDJzjQ==
X-YMail-OSG: ecLQBVYVM1mh8sSK4BzL7RVgXK3vZwyrq3F29QWcAVOgy52a3xWmuHsTgmaPBKk
 cOPjgCtr8khDf_wEO7gYd_t8ZJVpT_qI3BFciZGDyIxZx6kRYt1O5B7z5YuQ61DD0f8GHH_aXZzH
 MDFD9dkhWIbZosdIPlQCdDCuOycAtJ0rR_oovE4Cp4zK3g6XIw_sny_MmfiQMLL.pLT2r2eUKx1x
 epHiYoC3O0pydNnwUfdIqrYECI1XjoSqIOA7FJ1lICBHvm4qSj79GzKKgqBLjc_ntZZDqfzqZ0kC
 8n65azLEy6bOJDjBobNjuSeL9gTgx.Z2enMkiVhUAHumIkffXBMChynRfVlVoQlxaP_zvTIjC5tx
 p5jQc3zcENwcJ4aTP3eBqpIXW0RUhX_npAhYkclwh6V6mauNin98mXstV14FUdldKGWR6.68LuFf
 oAMcijCQHQm_tZ9q0TTSQfHz7iOqO0U47lZobsQFzFMy76Iv.n7p4CE55WZlfNKsBgoX_nRLxlsk
 aj7wh7N53v9Kc98ZQh8WCjjZ0Y1tur1hh9BWLi9n8lrJJztDmEXWfwsNQB4Rwnzlgx4RYx1Z5Ne0
 sPOc3SFJS2T6irO8tJkLNxs4LlxnbWTxLBnO6eXRjpGRFZQVYvRj7NTUckSkyo9W3_3UhRI5kGfM
 21BUineVapWhGQ8_139eYScmj5PSS8_MbDjNm7tYGna6cMLuthPGatovMlljdM6ugxy_p3Uq1lDR
 M_RlZNOv5MepJfheR2ww48M5BSIuq2K9P0pVC_6Fh1qpAZm05xbJiBM7L8G3FvztQvQUw5kbZgbM
 zAGErZL3xfLuLgKNxgB.80ChScohF2ovtasS3IsAPujUV49QXeiN0x5pDkwHpNngtPhDw4TwfGjl
 uav_p6ad7LtX8TfQ9gBNd5fK1ROOsKTbVZ2_kUjpdw1T48TNHMC5IgFJyMfF2OzAJbvn93Mi49qb
 4nJSMofnAGPjEENc2f_WAk5GbMoUlyA0O1bGSMg59Eh_HJSPUy0X2aY1O5rjQNuQNSlv_PF11zKo
 3MyH0KjRvJYeD9Bq0G_yO5DFi4fhPGuFdoq0I2X.elK7kRhpVdFEMdHQMMtxfkZNK.9tCx0vDYwc
 4FmXPFb8aFEFLBA_tteLGAMdoXYe6HWIC3XZB5gHc3JDQrhjLH0DlU4l1XqSgmrtoV0vQUOpPyKJ
 Q0JRsAKIHzI6Gm47BLXx5i0gYGTY7BqzZmhRToDj4bXzuLKRC2O_1UTHPfcv9Je.o6R78QpMY9Z9
 brgQVx0NMesxllbpXEw7fpUJQ5MpYdhLMV6qP_7LhQAPlRcdkPiM0GEaZmn09MqTvUCQ80OQdbeN
 Zpb_Tk6BND_Fbe57fZmZDCOW2FaKT4Cjchifflje7O50AhudcAzmW6.1yAaMafmz3ztwbcuRgEBX
 M1XFzlyhl7IrKiVb4I_IqNMrskU.GXTkBJSw0NstmTEHlRF7OjOeDD7CJrh2D9YGo2jjML0GT9nN
 jxeCsffEFlGZRSO0QaxA4rfALlGw1pLz0NCSwZAZ7yPXqJfJDc7fGY7ysghwBzr6ISeiauVAOhzW
 W3mdG2SdvrJgqyUwAI5n2xzcSfg3ksUiBHq_ym1cQnu_STOoOMUjS0qPOMdbNXyDn5Dv0jL6O_b0
 pxxQVd8LfL.mtACKTF5Yrjra4HMJYuHYCktjDG2FvZEWMqDaKwn6ICm51TbAfiDrBeJ98YBTs66j
 NQIX3UCJOOYiJHI3LhVajXmLq7Kk1OrHCx7g_7zggdtJ5tQRnZLcf1DrnUVVfMq0JD.CVFuf7Jfs
 8ep.y3kLC3uRIe2UiuIRDRGoTtk6JVUCSFImj_QIpHqDMq.os.wmBZkJwwsygoOvWBXv8_o4i_uy
 tPV7ZQ7Kj_MlCHXg4UDNjv.7hTL3IR1hp3bG3MSROrlASarjUqUoZVfv0kRNZSQ5o8MbeJPSOIjg
 xdDuB1n5AdhArGk56JW3bo9C6bPJqbin5sZEzQWTqzbB_5FfxxU7BkGTP5zqijQs9.I99jjUnE7K
 OS77fvAf_SHy8WzEEYnBCFATnimaGSIFJYOSEPrPhneL4cAckza17mbYjhFULm4eiL3cVVcWTKto
 FFeWVV9aO9Qab7WgkPOxbucyMiKdm9cDzj4inW25vHKYQrWlGBt.gyS8S2ZDEp.MtWOG7oYtthj.
 RBL2t4EwM3ZWBNecdfxxNp4YdT6JKUqFPyJqBOgtwQOZwCklLQoUClJN5qROL11joC4dtJzGrOAT
 v3zo7O3hgCeDLATmIhLIyjHJxp_tFhyGROsE-
X-Sonic-MF: <mikerd1@verizon.net>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic305.consmr.mail.ne1.yahoo.com with HTTP; Thu, 26 Jan 2023 12:47:21 +0000
Received: by hermes--production-bf1-57c96c66f6-jdmts (Yahoo Inc. Hermes SMTP Server) with ESMTPA ID 07bfa1bc77a5038f520715e86bc4c335;
          Thu, 26 Jan 2023 12:47:19 +0000 (UTC)
To: "'Marcus D. Leech'" <patchvonbraun@gmail.com>,
	<usrp-users@lists.ettus.com>
References: <00c001d9115b$55bcc130$01364390$.ref@verizon.net> <00c001d9115b$55bcc130$01364390$@verizon.net> <MN2PR12MB3312452F84CCF60E39794535B8E69@MN2PR12MB3312.namprd12.prod.outlook.com> <MN2PR12MB3312A4D66FE8688652AC9774B8E69@MN2PR12MB3312.namprd12.prod.outlook.com> <050601d93135$e6c3ce40$b44b6ac0$@verizon.net> <c6e2fb04-61d1-e6fc-704d-00c32cadf0e8@gmail.com>
In-Reply-To: <c6e2fb04-61d1-e6fc-704d-00c32cadf0e8@gmail.com>
Date: Thu, 26 Jan 2023 07:47:17 -0500
Message-ID: <003401d93184$53bdebe0$fb39c3a0$@verizon.net>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQHrQSIkEz8FGhps96We5qE3ABy7qAGf7IL+AqmqsMIBvjFvhwEtEYOAAg9xv4yuQmD1IA==
Message-ID-Hash: V6GGHQFWKCUWJH6ZVXFGPUQQBDVDX64Z
X-Message-ID-Hash: V6GGHQFWKCUWJH6ZVXFGPUQQBDVDX64Z
X-MailFrom: mikerd1@verizon.net
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Did anyone else need to do this?
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/V6GGHQFWKCUWJH6ZVXFGPUQQBDVDX64Z/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Mike via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Mike <mikerd1@verizon.net>
Content-Type: multipart/mixed; boundary="===============5966517868465053820=="

This is a multipart message in MIME format.

--===============5966517868465053820==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0035_01D9315A.6AEF0FD0"
Content-Language: en-us

This is a multipart message in MIME format.

------=_NextPart_000_0035_01D9315A.6AEF0FD0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks, Marcus for the info link.  I=E2=80=99ve reviewed that =
information and understand how RF0 is A:0 and RF1 is B:0 for the N320.  =
I=E2=80=99ve reviewed the utility benchmark_rate.py to see how the =
arguments are used to change the channel.  I guess what I=E2=80=99m =
missing is how GRC initializes the USRP.  The python code generated from =
GRC is pretty different from benchmark_rate.py.  I don=E2=80=99t know =
where to put the =E2=80=9Csubdev=3DB:0=E2=80=9D command within the GRC =
flowgraph.  I was trying to do it in the =E2=80=9CDevice Args=E2=80=9D =
of =E2=80=9CRFNoC Graph (Device)=E2=80=9D block.  I also tried to do it =
in the =E2=80=9CRFNoC RX Radio=E2=80=9D.  But not having any luck.

=20

I think that most people with complicated configurations don=E2=80=99t =
use GRC and so I didn=E2=80=99t know if GRC simply did not support the =
capability to send subdev commands to UHD.

=20

Anyway, I appreciate the help,

Mike

=20

From: Marcus D. Leech <patchvonbraun@gmail.com>=20
Sent: Wednesday, January 25, 2023 10:29 PM
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Re: Did anyone else need to do this?

=20

On 25/01/2023 22:25, Mike via USRP-users wrote:

All,

=20

This is an update from a previous thread.  I also found another error in =
the yaml file, ettus_rfnoc_graph.block.yml.  I=E2=80=99m running GNU =
Radio 3.8 and UHD 4.2.  The file is located in:

=E2=80=9Cgr-ettus/grc/ettus_rfnoc_graph.block.yml=E2=80=9D.  I found =
this because the commands in the =E2=80=9CDevice Args=E2=80=9D parameter =
were not being processed correctly.

=20

The line is associated with the following =E2=80=9Cif=E2=80=9D statement =
(line 19):

  If dev_args_s:

     graph_args +=3D f=E2=80=9D,{clock_source_s}=E2=80=9D

=20

The =E2=80=9Cclock_source_s=E2=80=9D should be =
=E2=80=9Cdev_args_s=E2=80=9D.

=20

I found this because I=E2=80=99m trying to send specific initialization =
commands to my N320.  As a side note, can anyone explain how to =
configure =E2=80=9Csubdev=E2=80=9D from a GRC flow graph so that I can =
enable the RF1 side of the N320?

https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Guide#Subde=
vice_Specification_Mapping





=20

Thanks,

Mike

=20

From: Mike  <mailto:mikerd1@verizon.net> <mikerd1@verizon.net>=20
Sent: Friday, December 16, 2022 10:54 AM
To: 'Jim Palladino'  <mailto:jim@gardettoengineering.com> =
<jim@gardettoengineering.com>; 'usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com> '  =
<mailto:usrp-users@lists.ettus.com> <usrp-users@lists.ettus.com>
Subject: RE: [USRP-users] Re: Did anyone else need to do this?

=20

Jim,

=20

Thanks for taking care of this.  I=E2=80=99ll just fix it on my end and =
wait for the eventual updates in the repository.

=20

Thanks,

Mike

=20

From: Jim Palladino <jim@gardettoengineering.com =
<mailto:jim@gardettoengineering.com> >=20
Sent: Friday, December 16, 2022 10:04 AM
To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> ; =
Mike <mikerd1@verizon.net <mailto:mikerd1@verizon.net> >
Subject: Re: [USRP-users] Re: Did anyone else need to do this?

=20

Mike,

My last comment was related to gr-ettus (ettus_rfnoc_graph.block.yml), =
which I installed with gnuradio 3.8 / uhd 4.1. But I do see that =
gnuradio 3.10 has the exact same issue (as you found) in =
uhd_rfnoc_graph.block.yml:

https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfnoc=
_graph.block.yml


 =
<https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfno=
c_graph.block.yml>=20

 =
<https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/uhd_rfno=
c_graph.block.yml> gnuradio/uhd_rfnoc_graph.block.yml at maint-3.10 =
=C2=B7 gnuradio/gnuradio

GNU Radio =E2=80=93 the Free and Open Software Radio Ecosystem - =
gnuradio/uhd_rfnoc_graph.block.yml at maint-3.10 =C2=B7 =
gnuradio/gnuradio

github.com

So, it looks like we've run into the same issue in different =
implementations. I can post and issue on the gnuradio github page as =
well.

Jim

=20

  _____ =20

From: Jim Palladino <jim@gardettoengineering.com =
<mailto:jim@gardettoengineering.com> >
Sent: Friday, December 16, 2022 9:38 AM
To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>  =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> >; Mike =
<mikerd1@verizon.net <mailto:mikerd1@verizon.net> >
Subject: [USRP-users] Re: Did anyone else need to do this?=20

=20

Hi Mike,

=20

Yes, I've run into that. I posted an issue last week here:
https://github.com/EttusResearch/gr-ettus/issues/69 =
<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusR=
esearch_gr-2Dettus_issues_69&d=3DDwMF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v=
5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8R8d8A=
ptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArRlI=
Au8Sx0l3QxaM&e=3D>=20


 =
<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusR=
esearch_gr-2Dettus_issues_69&d=3DDwMF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v=
5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8R8d8A=
ptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArRlI=
Au8Sx0l3QxaM&e=3D>=20

 =
<https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com_EttusR=
esearch_gr-2Dettus_issues_69&d=3DDwMF-g&c=3DeuGZstcaTDllvimEN8b7jXrwqOf-v=
5A_CdpgnVfiiMM&r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkfwDnwpYx0&m=3D8R8d8A=
ptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&s=3DxyYFrqtOxluB0Ad4jIxBJj7J_5ArRlI=
Au8Sx0l3QxaM&e=3D> syntax error in ettus_rfnoc_graph.block.yml =C2=B7 =
Issue #69 =C2=B7 EttusResearch/gr-ettus

Line 25 of ettus_rfnoc_graph.block.yml in the maint-3.8-uhd4.0 branch =
(and possibly others) looks like: self.rfnoc_graph =3D ${id} =3D =
ettus.rfnoc_graph(uhd.device_addr(&quot;${graph_args}&quot;))) You...

github.com

I ended up just modifying the yml file in source and then reinstalling =
gr-ettus.

=20

Jim

=20

  _____ =20

From: Mike via USRP-users <usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com> >
Sent: Friday, December 16, 2022 9:33 AM
To: usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com>  =
<usrp-users@lists.ettus.com <mailto:usrp-users@lists.ettus.com> >
Subject: [USRP-users] Did anyone else need to do this?=20

=20

Hi all,

=20

This goes in the category of =E2=80=9CDid anyone else need to do =
this?=E2=80=9D.

=20

I=E2=80=99m running Ubuntu 20.04.5 LTS with GNURadio 3.8 (Maint) and UHD =
4.0.  I recently upgraded UHD to 4.2.  I ran into a gnuradio issue =
starting a =E2=80=9CRFNoC=E2=80=9D flow graph with a syntax error for an =
unmatched =E2=80=98)=E2=80=99:

  Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =3D =
ettus.rfnoc_graph(uhd.device_addr(=E2=80=9Caddr=3Dxxx,type-n3xx=E2=80=9D)=
))

=20

I was able to manually edit the generated python code to remove one of =
the parentheses and see the code work.

I then upgraded gnuradio to 3.10 which had the same issue.

=20

I then compared the =E2=80=9Cuhd_rfnoc_graph.block.yml=E2=80=9D block =
files between UHD4.0 and 4.2.  It=E2=80=99s significantly different as =
4.0 uses python .join to build the argument list and UHD 4.2 uses the =
python module =E2=80=9Cast=E2=80=9D to generate the argument list.  But =
the final line on the 4.2 version had the syntax error of the extra =
=E2=80=98)=E2=80=99:

              self.rfnoc_graph =3D ${id} =3D =
uhd.rfnoc_graph(uhd.device_addr(=E2=80=9C${graph_args}=E2=80=9D)))

=20

I removed one =E2=80=98)=E2=80=99 then reinstalled gnuradio (make =
install) from the build directory and everything seemed to work after =
that.

=20

So, it seems like it is a simple syntax error.  But normally something =
like this (in my experience) indicates that I might have missed some =
configuration step somewhere and have yet to see the other errors.

=20

So, has anyone seen something like this?

=20

Thanks,

Mike





_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com =
<mailto:usrp-users@lists.ettus.com>=20
To unsubscribe send an email to usrp-users-leave@lists.ettus.com =
<mailto:usrp-users-leave@lists.ettus.com>=20

=20


------=_NextPart_000_0035_01D9315A.6AEF0FD0
Content-Type: text/html;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><!--[if =
!mso]><style>v\:* {behavior:url(#default#VML);}
o\:* {behavior:url(#default#VML);}
w\:* {behavior:url(#default#VML);}
.shape {behavior:url(#default#VML);}
</style><![endif]--><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI Light \,sans-serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.xxmsonormal, li.xxmsonormal, div.xxmsonormal
	{mso-style-name:x_x_msonormal;
	margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.contentpasted0
	{mso-style-name:contentpasted0;}
span.xelementtoproof
	{mso-style-name:x_elementtoproof;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle24
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
class=3DWordSection1><p class=3DMsoNormal>Thanks, Marcus for the info =
link.=C2=A0 I=E2=80=99ve reviewed that information and understand how =
RF0 is A:0 and RF1 is B:0 for the N320.=C2=A0 I=E2=80=99ve reviewed the =
utility benchmark_rate.py to see how the arguments are used to change =
the channel.=C2=A0 I guess what I=E2=80=99m missing is how GRC =
initializes the USRP.=C2=A0 The python code generated from GRC is pretty =
different from benchmark_rate.py.=C2=A0 I don=E2=80=99t know where to =
put the =E2=80=9Csubdev=3DB:0=E2=80=9D command within the GRC =
flowgraph.=C2=A0 I was trying to do it in the =E2=80=9CDevice =
Args=E2=80=9D of =E2=80=9CRFNoC Graph (Device)=E2=80=9D block.=C2=A0 I =
also tried to do it in the =E2=80=9CRFNoC RX Radio=E2=80=9D.=C2=A0 But =
not having any luck.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I think that =
most people with complicated configurations don=E2=80=99t use GRC and so =
I didn=E2=80=99t know if GRC simply did not support the capability to =
send subdev commands to UHD.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>Anyway, I =
appreciate the help,<o:p></o:p></p><p =
class=3DMsoNormal>Mike<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Marcus D. Leech =
&lt;patchvonbraun@gmail.com&gt; <br><b>Sent:</b> Wednesday, January 25, =
2023 10:29 PM<br><b>To:</b> =
usrp-users@lists.ettus.com<br><b>Subject:</b> [USRP-users] Re: Did =
anyone else need to do this?<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p class=3DMsoNormal>On =
25/01/2023 22:25, Mike via USRP-users =
wrote:<o:p></o:p></p></div><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>All,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>This is an =
update from a previous thread.&nbsp; I also found another error in the =
yaml file, ettus_rfnoc_graph.block.yml.&nbsp; I=E2=80=99m running GNU =
Radio 3.8 and UHD 4.2.&nbsp; The file is located in:<o:p></o:p></p><p =
class=3DMsoNormal>=E2=80=9Cgr-ettus/grc/ettus_rfnoc_graph.block.yml=E2=80=
=9D.&nbsp; I found this because the commands in the =E2=80=9CDevice =
Args=E2=80=9D parameter were not being processed =
correctly.<o:p></o:p></p><p class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>The line is associated with the following =
=E2=80=9Cif=E2=80=9D statement (line 19):<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp; If dev_args_s:<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp; graph_args +=3D =
f=E2=80=9D,{clock_source_s}=E2=80=9D<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>The =
=E2=80=9Cclock_source_s=E2=80=9D should be =
=E2=80=9Cdev_args_s=E2=80=9D.<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>I found this =
because I=E2=80=99m trying to send specific initialization commands to =
my N320.&nbsp; As a side note, can anyone explain how to configure =
=E2=80=9Csubdev=E2=80=9D from a GRC flow graph so that I can enable the =
RF1 side of the N320?<o:p></o:p></p></blockquote><p class=3DMsoNormal><a =
href=3D"https://kb.ettus.com/USRP_N300/N310/N320/N321_Getting_Started_Gui=
de#Subdevice_Specification_Mapping">https://kb.ettus.com/USRP_N300/N310/N=
320/N321_Getting_Started_Guide#Subdevice_Specification_Mapping</a><br><br=
><br><br><o:p></o:p></p><blockquote =
style=3D'margin-top:5.0pt;margin-bottom:5.0pt'><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>Mike<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Mike <a =
href=3D"mailto:mikerd1@verizon.net">&lt;mikerd1@verizon.net&gt;</a> =
<br><b>Sent:</b> Friday, December 16, 2022 10:54 AM<br><b>To:</b> 'Jim =
Palladino' <a =
href=3D"mailto:jim@gardettoengineering.com">&lt;jim@gardettoengineering.c=
om&gt;</a>; '<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
' <a =
href=3D"mailto:usrp-users@lists.ettus.com">&lt;usrp-users@lists.ettus.com=
&gt;</a><br><b>Subject:</b> RE: [USRP-users] Re: Did anyone else need to =
do this?<o:p></o:p></p></div></div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Jim,<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p class=3DMsoNormal>Thanks for =
taking care of this.&nbsp; I=E2=80=99ll just fix it on my end and wait =
for the eventual updates in the repository.<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>Mike<o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Jim Palladino &lt;<a =
href=3D"mailto:jim@gardettoengineering.com">jim@gardettoengineering.com</=
a>&gt; <br><b>Sent:</b> Friday, December 16, 2022 10:04 AM<br><b>To:</b> =
<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
; Mike &lt;<a =
href=3D"mailto:mikerd1@verizon.net">mikerd1@verizon.net</a>&gt;<br><b>Sub=
ject:</b> Re: [USRP-users] Re: Did anyone else need to do =
this?<o:p></o:p></p></div></div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p><div><p class=3DMsoNormal><span =
style=3D'font-size:12.0pt;color:black;background:white'>Mike,</span><o:p>=
</o:p></p></div><div><p class=3DMsoNormal><span =
class=3Dcontentpasted0><span =
style=3D'font-size:12.0pt;color:black;background:white'>My last comment =
was related to gr-ettus (ettus_rfnoc_graph.block.yml), which I installed =
with gnuradio 3.8 / uhd 4.1. But I do see that gnuradio 3.10 has the =
exact same issue (as you found) in =
uhd_rfnoc_graph.block.yml:</span></span><o:p></o:p></p></div><div><p =
class=3DMsoNormal><span class=3Dcontentpasted0><span =
style=3D'font-size:12.0pt;color:black;background:white'><a =
href=3D"https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/u=
hd_rfnoc_graph.block.yml">https://github.com/gnuradio/gnuradio/blob/maint=
-3.10/gr-uhd/grc/uhd_rfnoc_graph.block.yml</a></span></span><o:p></o:p></=
p></div><div><div><div =
style=3D'margin-top:12.0pt;margin-bottom:12.0pt;min-width:
              424px' =
id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL2dudXJhZGlvL2dudXJhZGlvL2Jsb2Iv=
bWFpbnQtMy4xMC9nci11aGQvZ3JjL3VoZF9yZm5vY19ncmFwaC5ibG9jay55bWw."><table =
class=3DMsoNormalTable border=3D1 cellspacing=3D4 cellpadding=3D0 =
width=3D"100%" style=3D'width:100.0%;border:solid #C8C8C8 1.0pt'><tr><td =
valign=3Dtop style=3D'border:none;padding:9.0pt 27.0pt 9.0pt 9.0pt'><div =
style=3D'margin-right:9.0pt;overflow:hidden' =
id=3DLPImageContainer926969><p class=3DMsoNormal><a =
href=3D"https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/u=
hd_rfnoc_graph.block.yml" target=3D"_blank"><span =
style=3D'text-decoration:none'><img border=3D0 width=3D240 height=3D120 =
style=3D'width:2.5in;height:1.25in' id=3D"_x0000_i1030" =
src=3D"https://repository-images.githubusercontent.com/3030065/919b3680-5=
0c1-11ea-8e39-e96d4449c2cd"></span></a><o:p></o:p></p></div></td><td =
width=3D"100%" valign=3Dtop =
style=3D'width:100.0%;border:none;padding:9.0pt 27.0pt 9.0pt 9.0pt'><div =
style=3D'margin-right:6.0pt;margin-bottom:9.0pt' id=3DLPTitle926969><p =
class=3DMsoNormal><span style=3D'font-size:16.0pt;font-family:"Segoe UI =
Light ,sans-serif",serif'><a =
href=3D"https://github.com/gnuradio/gnuradio/blob/maint-3.10/gr-uhd/grc/u=
hd_rfnoc_graph.block.yml" target=3D"_blank"><span =
style=3D'text-decoration:none'>gnuradio/uhd_rfnoc_graph.block.yml at =
maint-3.10 =C2=B7 =
gnuradio/gnuradio</span></a></span><o:p></o:p></p></div><div =
style=3D'margin-right:6.0pt;margin-bottom:9.0pt;max-height:
                        100px;overflow:hidden' =
id=3DLPDescription926969><p class=3DMsoNormal><span =
style=3D'font-size:10.5pt'>GNU Radio =E2=80=93 the Free and Open =
Software Radio Ecosystem - gnuradio/uhd_rfnoc_graph.block.yml at =
maint-3.10 =C2=B7 gnuradio/gnuradio</span><o:p></o:p></p></div><div =
id=3DLPMetadata926969><p class=3DMsoNormal><span =
style=3D'font-size:10.5pt'>github.com</span><o:p></o:p></p></div></td></t=
r></table></div></div><p class=3DMsoNormal><span =
class=3Dcontentpasted0><span =
style=3D'font-size:12.0pt;color:black;background:white'>So, it looks =
like we've run into the same issue in different implementations. I can =
post and issue on the gnuradio github page as =
well.</span></span><o:p></o:p></p></div><div><p class=3DMsoNormal><span =
class=3Dcontentpasted0><span =
style=3D'font-size:12.0pt;color:black;background:white'>Jim</span></span>=
<o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><hr size=3D1 width=3D"98%" =
align=3Dcenter></div><div id=3DdivRplyFwdMsg><p =
class=3DMsoNormal><b><span style=3D'color:black'>From:</span></b><span =
style=3D'color:black'> Jim Palladino &lt;<a =
href=3D"mailto:jim@gardettoengineering.com">jim@gardettoengineering.com</=
a>&gt;<br><b>Sent:</b> Friday, December 16, 2022 9:38 AM<br><b>To:</b> =
<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
 &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt;; Mike &lt;<a =
href=3D"mailto:mikerd1@verizon.net">mikerd1@verizon.net</a>&gt;<br><b>Sub=
ject:</b> [USRP-users] Re: Did anyone else need to do this?</span> =
<o:p></o:p></p><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div></div><div><div><p =
class=3DMsoNormal><span class=3Dxelementtoproof><span =
style=3D'font-size:12.0pt;color:black;background:white'>Hi =
Mike,</span></span><o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div><p class=3DMsoNormal =
style=3D'margin-bottom:12.0pt'><span class=3Dxelementtoproof><span =
style=3D'font-size:12.0pt;color:black;background:white'>Yes, I've run =
into that. I posted an issue last week here:</span></span><span =
style=3D'font-size:12.0pt;color:black;background:white'><br><span =
class=3Dxelementtoproof><a =
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYF=
rqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D">https://github.com/Ettu=
sResearch/gr-ettus/issues/69</a></span></span><o:p></o:p></p><div><div =
style=3D'margin-top:12.0pt;margin-bottom:12.0pt;min-width:424px' =
id=3D"LPBorder_GTaHR0cHM6Ly9naXRodWIuY29tL0V0dHVzUmVzZWFyY2gvZ3ItZXR0dXMv=
aXNzdWVzLzY5"><table class=3DMsoNormalTable border=3D1 cellspacing=3D4 =
cellpadding=3D0 width=3D"100%" style=3D'width:100.0%;border:solid =
#C8C8C8 1.0pt'><tr><td valign=3Dtop style=3D'border:none;padding:9.0pt =
27.0pt 9.0pt 9.0pt'><div style=3D'margin-right:9.0pt;overflow:hidden' =
id=3DLPImageContainer455494><p class=3DMsoNormal><a =
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYF=
rqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D" =
target=3D"_blank"><span style=3D'text-decoration:none'><img border=3D0 =
width=3D240 height=3D120 style=3D'width:2.5in;height:1.25in' =
id=3D"_x0000_i1029" =
src=3D"https://opengraph.githubassets.com/5b58487cd101d233e77dea3debf24f9=
7c1326803f405d696532fef76e41550f5/EttusResearch/gr-ettus/issues/69"></spa=
n></a><o:p></o:p></p></div></td><td width=3D"100%" valign=3Dtop =
style=3D'width:100.0%;border:none;padding:9.0pt 27.0pt 9.0pt 9.0pt'><div =
style=3D'margin-right:6.0pt;margin-bottom:9.0pt' id=3DLPTitle455494><p =
class=3DMsoNormal><span style=3D'font-size:16.0pt;font-family:"Segoe UI =
Light ,sans-serif",serif'><a =
href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__github.com=
_EttusResearch_gr-2Dettus_issues_69&amp;d=3DDwMF-g&amp;c=3DeuGZstcaTDllvi=
mEN8b7jXrwqOf-v5A_CdpgnVfiiMM&amp;r=3DXUEEtUEfpaAEGxRI-WGuqHauOvsPdD2NZkf=
wDnwpYx0&amp;m=3D8R8d8AptGNR6pvwu09qYQOqR4yaqR90_EK56v2z-xLM&amp;s=3DxyYF=
rqtOxluB0Ad4jIxBJj7J_5ArRlIAu8Sx0l3QxaM&amp;e=3D" =
target=3D"_blank"><span style=3D'text-decoration:none'>syntax error in =
ettus_rfnoc_graph.block.yml =C2=B7 Issue #69 =C2=B7 =
EttusResearch/gr-ettus</span></a></span><o:p></o:p></p></div><div =
style=3D'margin-right:6.0pt;margin-bottom:9.0pt;max-height:100px;overflow=
:hidden' id=3DLPDescription455494><p class=3DMsoNormal><span =
style=3D'font-size:10.5pt'>Line 25 of ettus_rfnoc_graph.block.yml in the =
maint-3.8-uhd4.0 branch (and possibly others) looks like: =
self.rfnoc_graph =3D ${id} =3D =
ettus.rfnoc_graph(uhd.device_addr(&amp;quot;${graph_args}&amp;quot;))) =
You...</span><o:p></o:p></p></div><div id=3DLPMetadata455494><p =
class=3DMsoNormal><span =
style=3D'font-size:10.5pt'>github.com</span><o:p></o:p></p></div></td></t=
r></table></div></div><p class=3DMsoNormal><span =
class=3Dxelementtoproof><span =
style=3D'font-size:12.0pt;color:black;background:white'>I ended up just =
modifying the yml file in source and then reinstalling =
gr-ettus.</span></span><o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div><p =
class=3DMsoNormal><span class=3Dxelementtoproof><span =
style=3D'font-size:12.0pt;color:black;background:white'>Jim</span></span>=
<o:p></o:p></p></div><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div><div class=3DMsoNormal =
align=3Dcenter style=3D'text-align:center'><hr size=3D1 width=3D"98%" =
align=3Dcenter></div><div id=3D"x_divRplyFwdMsg"><p =
class=3DMsoNormal><b><span style=3D'color:black'>From:</span></b><span =
style=3D'color:black'> Mike via USRP-users &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt;<br><b>Sent:</b> Friday, December 16, 2022 9:33 AM<br><b>To:</b> <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
 &lt;<a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
&gt;<br><b>Subject:</b> [USRP-users] Did anyone else need to do =
this?</span> <o:p></o:p></p><div><p =
class=3DMsoNormal>&nbsp;<o:p></o:p></p></div></div><div><div><p =
class=3Dxxmsonormal>Hi all,<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p class=3Dxxmsonormal>This =
goes in the category of =E2=80=9CDid anyone else need to do =
this?=E2=80=9D.<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p =
class=3Dxxmsonormal>I=E2=80=99m running Ubuntu 20.04.5 LTS with GNURadio =
3.8 (Maint) and UHD 4.0.&nbsp; I recently upgraded UHD to 4.2.&nbsp; I =
ran into a gnuradio issue starting a =E2=80=9CRFNoC=E2=80=9D flow graph =
with a syntax error for an unmatched =
=E2=80=98)=E2=80=99:<o:p></o:p></p><p class=3Dxxmsonormal>&nbsp; =
Self.rfnoc_graph=3Dettus_rfnoc_graph_0 =3D =
ettus.rfnoc_graph(uhd.device_addr(=E2=80=9Caddr=3Dxxx,type-n3xx=E2=80=9D)=
))<o:p></o:p></p><p class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p =
class=3Dxxmsonormal>I was able to manually edit the generated python =
code to remove one of the parentheses and see the code =
work.<o:p></o:p></p><p class=3Dxxmsonormal>I then upgraded gnuradio to =
3.10 which had the same issue.<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p class=3Dxxmsonormal>I then =
compared the =E2=80=9Cuhd_rfnoc_graph.block.yml=E2=80=9D block files =
between UHD4.0 and 4.2.&nbsp; It=E2=80=99s significantly different as =
4.0 uses python .join to build the argument list and UHD 4.2 uses the =
python module =E2=80=9Cast=E2=80=9D to generate the argument list.&nbsp; =
But the final line on the 4.2 version had the syntax error of the extra =
=E2=80=98)=E2=80=99:<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp; self.rfnoc_graph =3D ${id} =3D =
uhd.rfnoc_graph(uhd.device_addr(=E2=80=9C${graph_args}=E2=80=9D)))<o:p></=
o:p></p><p class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p =
class=3Dxxmsonormal>I removed one =E2=80=98)=E2=80=99 then reinstalled =
gnuradio (make install) from the build directory and everything seemed =
to work after that.<o:p></o:p></p><p =
class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p class=3Dxxmsonormal>So, it =
seems like it is a simple syntax error.&nbsp; But normally something =
like this (in my experience) indicates that I might have missed some =
configuration step somewhere and have yet to see the other =
errors.<o:p></o:p></p><p class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p =
class=3Dxxmsonormal>So, has anyone seen something like =
this?<o:p></o:p></p><p class=3Dxxmsonormal>&nbsp;<o:p></o:p></p><p =
class=3Dxxmsonormal>Thanks,<o:p></o:p></p><p =
class=3Dxxmsonormal>Mike<o:p></o:p></p></div></div></div><p =
class=3DMsoNormal><br><br><o:p></o:p></p><pre>___________________________=
____________________<o:p></o:p></pre><pre>USRP-users mailing list -- <a =
href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>=
<o:p></o:p></pre><pre>To unsubscribe send an email to <a =
href=3D"mailto:usrp-users-leave@lists.ettus.com">usrp-users-leave@lists.e=
ttus.com</a><o:p></o:p></pre></blockquote><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_0035_01D9315A.6AEF0FD0--

--===============5966517868465053820==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5966517868465053820==--
