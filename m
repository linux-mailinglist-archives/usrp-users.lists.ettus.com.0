Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CCDEF407106
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 20:40:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7CA7384737
	for <lists+usrp-users@lfdr.de>; Fri, 10 Sep 2021 14:40:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="V2lqYQj/";
	dkim-atps=neutral
Received: from sonic304-9.consmr.mail.bf2.yahoo.com (sonic304-9.consmr.mail.bf2.yahoo.com [74.6.128.32])
	by mm2.emwd.com (Postfix) with ESMTPS id 1825338431D
	for <usrp-users@lists.ettus.com>; Fri, 10 Sep 2021 14:39:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631299170; bh=reMXIH0RJglhkGNg9Hqm88tns4ShI8WPb7ho2uLKszE=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=V2lqYQj/2QJoTkK/7QwSAueFCmGxCem+r1d+hawDWshcQfbwBiXFlf8X6GM6vsZb4D1k6uCfjdM5hAtlQIeBoPbwlWyQfOAoTz3hiX+XAS83J5xOgPm3XcYrXAQBdw8M9wYOdOa55gaQlotLKWEVSTynEPEpKE3mz5zOz0oiI3MnwsKprm0muvQ/m4/jR4IOHRHsqNJKqZFqqNygGzrR0qXNTpKEK9m2S6VKW0fdFU26mkyZevmvvNdi/+unzibEB0otUCtD34PkkfTdmTm0iTCtyzDkakl/+OkDP41FpSZkwtpnE5omFNnRXkGVYXYYup9rKP3plpOzfrrEcJpwUQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1631299170; bh=HlOMKUmrADXfc+QuJuSKjpfmQl/dUoV09wLAsZI+eal=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ASjStFTmk5gdevuoGRoSCsbwfwFVvURG1STSAifGJwMB4C1FAYTvn8TRVmK4gnnmb8KSeRR/au+rxCknl21fq6nTV2bLyw2qb6ERiDsdrEoJ1Hw8pW3Ta1oSoA6tbJ9rG87kGNvVD+R4fXUjWzXMReeECjQNCUNgxxXVGXdq7qpJatTl9LMOXPmMDyJ83V+RKyWi30syZcBYC+B13gu4xdOPWvOsawjaX5+198/aQYjpQIG0TA2gGeOI0YlnCD7gwtD9i5l4XLYr1x0Jrq3iq1FrKOy7Vwt1PUZQDW9iFtqvYcfcwdLycWD1oh+Ylr+yEHE5ntlD6JZm5t9uJwM5Ug==
X-YMail-OSG: nf9CgKMVM1lAIYgXdMoAKH1jN6WUf1Yp3CippRRnCTXfAfcUe86gPj7HltPo5jd
 Ls2i_8cpCEnP.DxK3iNNnWyt174Ejq_z8OYSTVerR2u8QwUpFohnbpeVw2nHPHddiG4cGXvJyhJz
 P4s4nuJusbsUkGMZOM2tKa7XhtIxUwiDcXRqiWlN3rFvh1H70TAwYZM.j.MpMHqHJYFDCk1BSn5S
 2uGWxuai5naq9SX5xL67DRf2wKIuwCRx6BugzPErOg.wt5vXyRT3fBrbm6CCR2iYfUAjJ4ZYwv8V
 a1KvQ7shdny_iDfU2xze2ydI94AMmXldo2crvCCW2H0OFklBMyPpuoduYatc7TGar.SdFq9ZGv82
 jFJbM04kFsPHIjflyN.kYJxHUj6GdF7HAMRQfPl1zUkIR0NZdHYl0WjNNgzHGOHxjqP.ZXEhrPSN
 bST9Td8s9ZoebE4yRh5B9cFgpn1MhcInJbTqP8kwuwbj_QapKEMslaWDQTGbSGZF.bf8i1DsX8.m
 v40YiA_pgpb24Qj_aw3N5.EYHtz5eYCPjVSMGKB0mwSDUhrQGGOmVhIk_SnN5Vdq06kTWyWt8y2b
 mLPNxMgmhIrCZnqCBUhfIxUCAFBHVs8rkcoIGOa_cUZGNsyh9wwJj8mDa_2sFkGp1gChkAxpTZvr
 gNPqdPEGu7y2ouj2yJmqTQcArmAEZ1uv_SwYbQBg72Mqq3c0S20erBZMSy3K3i1w6qhk8gZDjup1
 vLPrLm3ZOAdZJhDy47x9QueI66LJPBgF_qFJuN2yuGErWaXGMr7rFlSRe8W5eTtl8QQGNHuUPU5f
 NZzLs1wtvdrd_4ymMgNDz2l1bELSz029Pcx1lbKctYshA1OT1VRnacTnTAFgyQACf_YbKwI0mnxr
 GYqp8qHn379pIPjDTtR9gJ_F2gBmqAh56r6G7E6G8oJcXgiBqetVE8S37lfoBARczfF5tNzCbTGE
 tCfo6RDrm7.u.vvvA0MHHJ4pXHn3pPf84i3GyZtzlKP8TxVxPc1f5zdeKgCx8kxT8sIKTOThkRUu
 nZWWbdAHwoZ2vGRQa4Umiw7zG7yb4sWX_KTN6gTimrvIYHUpModK7VdS2bmjw4RVM7yIxixmbOly
 fTgRSAj2mv5cE.dYjEJHSM2hJ.XC9SjuqCKeuNTUWK2rL2SSBFYhzw9tae.uERCO3E9FihXm789O
 MwIGnfaJe1LDg3eK3Gaged4cse9EkbmntkuMxnVtDTk4w7gfIPmtDwlGhpOQB7sfWM1Z3xg1KL.v
 0Q6KddSlPZasdEVVVQTbl_3.mDCRhhbLaXF2fjnJUtYp03GPDStMxFU9acRjeHaMpJRNzei87o9K
 PJR1ubEL_9iZlSMyFYCnaKb4PQs3Hr9DuYPHg08BcidinB48rXAejCdyLCd66QYOd8WH.isrzWbx
 Kv14AYK.M1B1If8IQiS8AWVTHnioSwCllbarQAdeS3VDNkyNfP5XGH_iLM1eZxH.SkXFbQBmwxQo
 UhvWZlgxpsHQHsOiaEGQOvTNm4FAQiH.L7CuylU1Ez8EIxM5yyv6iElv30ZHUDTuaFfq.LpB4Gay
 7A35doo0VfPCTqCINc.FC1lFUTP0LiNePySlS9U68J_wQubyR9OJpIzwIkum0QrEFjxQvIi6ONRK
 r9yK7YVhEFNtSGj1MiEZ__MqvlgDsn41lHDiL.gFBHd0tGU2fJ6kvhcQUU8FJ_uXWepDHijs7UD7
 Chp3z3MRIksw3wKu0dUCeWEYVQPSegpR_tX51cho1ZOaq6R1P9GPM56lW6PqoPEIRX7B53GISVsY
 ahFDWGoak5jJfOgAXbTq5N1J5Qg0xp7wQcNgu_A7FwOR4kKogyVM8T6VGHDNFixYwUfHblxJ.Aya
 TJrEi6KGAvrG1ZGwQrdnHnnEDasYYmRdnvxslNvWHICtoItq8arlKVWN9h3FNZoqn3c5NEneiP4y
 k3FS_CZ6Cwc0nOVVFAr0iqDR.Y_tWMmIZkXOeZc8KiV.mvThHOkQwaSAtzUCKM02dFNpm1YNBg.o
 2RzFbUKxTQWkZqpmaMT3x33pZSD9LkJa3xak5LpLxyn.A4GTXKrx0JyINy.O9xWUimOyWoejHdUF
 btpHlxeR6mn5S1weq29lR9MjS8h73PwQtgBjuy3gbZCMrrKTbvgFZhhsg9HIRX8FCtHWe.Q9y4ad
 p7A__GWDDlG_xFvwF5myfHZiVIgG29tbY8cwY9EBiv5E03AcTxTqRXkoA0Yv50i9j3ds3DYXhHUt
 EeDVbGFuZFVCG0FoIn8BxRrfxMH14JWLxMlADhr8.aF2Fpe1_LGeo3t39YglRxQV9Qt8c6Q8pCtz
 BDcIE.1JPoly_
X-Sonic-MF: <hwzhou@yahoo.com>
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.bf2.yahoo.com with HTTP; Fri, 10 Sep 2021 18:39:30 +0000
Date: Fri, 10 Sep 2021 18:39:29 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <804336125.2658048.1631299169124@mail.yahoo.com>
In-Reply-To: <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
References: <b24ff5bf-8432-8b63-d75c-82631e45fd9f@cttc.es> <CAL7q81tPjxNWaUbf-2v3dEtsxYgh6QGjV-+LmwCjwG50xgRZTw@mail.gmail.com> <CAFOi1A4JzCrx1NVi9YdwJ3LC3qu0+9VSKVSBWXekk7J=75qHtQ@mail.gmail.com> <0fbeadc5-adf2-8315-f7cd-e95a8ab00703@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.18924 YMailNorrin
Message-ID-Hash: DMQWYJZRTQDOO4QNCOJY5ZM6TAUIHV3F
X-Message-ID-Hash: DMQWYJZRTQDOO4QNCOJY5ZM6TAUIHV3F
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Configure send_buff_size in N321 USRP
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DMQWYJZRTQDOO4QNCOJY5ZM6TAUIHV3F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4431358854557278472=="

--===============4431358854557278472==
Content-Type: multipart/alternative;
	boundary="----=_Part_2658047_382957386.1631299169123"

------=_Part_2658047_382957386.1631299169123
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
I am trying to increase the buffer size in tx.
According to=C2=A0https://files.ettus.com/manual/page_transport.html,=C2=A0
=C2=A0it seems that we can change the default=C2=A0send_buff_size by specif=
ying value in device arguments. I tried the following configuration: uhd::u=
srp::multi_usrp::make('addr=3D192.168.12.2, second_addr=3D192.168.13.2, mgm=
t_addr=3D192.168.10.16, master_clock_rate=3D245.76e6, type=3Dn3xx,=C2=A0sen=
d_buff_size=3D33554432')

But this didn't have any impact. I measured that the actual buffer is alway=
s about ~1MB.
Then in UHD library, I find the following limit:
static const size_t MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; // 1Mib
=C2=A0 =C2=A0 if (link_params.send_buff_size > MAX_BUFF_SIZE_ETH_MACOS) {=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 link_params.send_buff_size =3D MAX_BUFF_SIZE_ET=
H_MACOS;=C2=A0 =C2=A0 }
33554432 > 1048576 (1Mib), so this may be why the above config didn't work.=
 Then I tried the following configuration:
uhd::usrp::multi_usrp::make('addr=3D192.168.12.2,second_addr=3D192.168.13.2=
,mgmt_addr=3D192.168.10.16,master_clock_rate=3D245.76e6,type=3Dn3xx,send_bu=
ff_size=3D524288')

This one didn't have any impact either.So, am I wrong in configuring=C2=A0s=
end_buff_size in this way? what is the correct way?
1M buffer size is too small for my application. I am using sampling rate 24=
5.76MHz. This buffer can only save data up to 0.5ms. I want to allocate a b=
igger buffer to achieve better reliability.
Thanks for any comment.




------=_Part_2658047_382957386.1631299169123
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpa2579362yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false"><span>Hi,</span></div><div d=
ir=3D"ltr" data-setdir=3D"false"><span><br></span></div><div dir=3D"ltr" da=
ta-setdir=3D"false"><span>I am trying to increase the buffer size in tx.</s=
pan></div><div dir=3D"ltr" data-setdir=3D"false"><span><br></span></div><di=
v dir=3D"ltr" data-setdir=3D"false"><span>According to&nbsp;</span><a href=
=3D"https://files.ettus.com/manual/page_transport.html" rel=3D"nofollow" ta=
rget=3D"_blank" class=3D"">https://files.ettus.com/manual/page_transport.ht=
ml</a>,&nbsp;</div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">&n=
bsp;it seems that we can change the default&nbsp;<span><span style=3D"color=
: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"=
><b>send_buff_size </b>by specifying value in device arguments. I tried the=
 following configuration:</span></span></div><div dir=3D"ltr" data-setdir=
=3D"false"> <span>uhd::usrp::multi_usrp::make(</span>'addr=3D192.168.12.2, =
second_addr=3D192.168.13.2, mgmt_addr=3D192.168.10.16, master_clock_rate=3D=
245.76e6, type=3Dn3xx,&nbsp;<b>send_buff_size</b>=3D33554432')<br></div><di=
v dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false"><span><span><span style=3D"color: rgb(0, 0, 0); font-family: Hel=
vetica Neue, Helvetica, Arial, sans-serif;">But this didn't have any impact=
. I measured that the actual buffer is always about ~1MB.</span></span></sp=
an></div><div dir=3D"ltr" data-setdir=3D"false"><span><span><span style=3D"=
color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-se=
rif;"><br></span></span></span></div><div dir=3D"ltr" data-setdir=3D"false"=
>Then in UHD library, I find the following limit:<br></div><div dir=3D"ltr"=
 data-setdir=3D"false"><span><div><div dir=3D"ltr" data-setdir=3D"false"><d=
iv><div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0, 0, 0); fon=
t-family: Helvetica Neue, Helvetica, Arial, sans-serif;">static const size_=
t MAX_BUFF_SIZE_ETH_MACOS =3D 0x100000; // 1Mib</div><div><br></div></div>&=
nbsp; &nbsp; if (link_params.send_buff_size &gt; MAX_BUFF_SIZE_ETH_MACOS) {=
</div><div>&nbsp; &nbsp; &nbsp; &nbsp; link_params.send_buff_size =3D MAX_B=
UFF_SIZE_ETH_MACOS;</div><div>&nbsp; &nbsp; }</div><div dir=3D"ltr" data-se=
tdir=3D"false"><br></div></div><div dir=3D"ltr" data-setdir=3D"false"><span=
><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica=
, Arial, sans-serif;">33554432 &gt; <span>1048576 (</span>1Mib), so this ma=
y be why the above config didn't work. Then I tried the following configura=
tion:</span></span><br></div><div dir=3D"ltr" data-setdir=3D"false"><div><d=
iv dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0, 0, 0); font-fam=
ily: Helvetica Neue, Helvetica, Arial, sans-serif;">uhd::usrp::multi_usrp::=
make('addr=3D192.168.12.2,second_addr=3D192.168.13.2,mgmt_addr=3D192.168.10=
.16,master_clock_rate=3D245.76e6,type=3Dn3xx,<b>send_buff_size</b>=3D524288=
')<br></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0, 0=
, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><br></div=
><div dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0, 0, 0); font-=
family: Helvetica Neue, Helvetica, Arial, sans-serif;">This one didn't have=
 any impact either.</div><div dir=3D"ltr" data-setdir=3D"false" style=3D"co=
lor: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-seri=
f;">So, am I wrong in configuring&nbsp;<span><span style=3D"color: rgb(0, 0=
, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><b>send_b=
uff_size </b>in this way? what is the correct way?</span></span></div><div =
dir=3D"ltr" data-setdir=3D"false" style=3D"color: rgb(0, 0, 0); font-family=
: Helvetica Neue, Helvetica, Arial, sans-serif;"><span><span style=3D"color=
: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"=
><br></span></span></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"co=
lor: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-seri=
f;"><span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, =
Helvetica, Arial, sans-serif;">1M buffer size is too small for my applicati=
on. I am using sampling rate 245.76MHz. This buffer can only save data up t=
o 0.5ms. I want to allocate a bigger buffer to achieve better reliability.<=
/span></span></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"color: r=
gb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;"><s=
pan><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Helvet=
ica, Arial, sans-serif;"><br></span></span></div><div dir=3D"ltr" data-setd=
ir=3D"false" style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, Hel=
vetica, Arial, sans-serif;"><span><span style=3D"color: rgb(0, 0, 0); font-=
family: Helvetica Neue, Helvetica, Arial, sans-serif;">Thanks for any comme=
nt.</span></span></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"colo=
r: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-serif;=
"><span><span style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue, He=
lvetica, Arial, sans-serif;"><br></span></span></div><div dir=3D"ltr" data-=
setdir=3D"false" style=3D"color: rgb(0, 0, 0); font-family: Helvetica Neue,=
 Helvetica, Arial, sans-serif;"><br></div><div><br></div></div><br></div></=
span></div></div></body></html>
------=_Part_2658047_382957386.1631299169123--

--===============4431358854557278472==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4431358854557278472==--
