Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C881470AB89
	for <lists+usrp-users@lfdr.de>; Sun, 21 May 2023 00:05:24 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 04248380E7B
	for <lists+usrp-users@lfdr.de>; Sat, 20 May 2023 18:05:23 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1684620323; bh=wRMrv6OGZ0smXr//ZBFoqHqljLbdxVk/0ktsnAGlQho=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=sYlMoMwMCv8PautsviVjckPkv9TNqIItF0gYdexaZI9i2ZQlzpQ5YIP6QsKzsY+EP
	 A3wjtCZxGo1tOAS7GF28/9arFaRFC0cC4dn9fk+dGmgX6tlAmo4GBr6gs0sc1ewdUb
	 +eGzs4FBqEzYkEC+ZEF5yzE2UHY6ReMLVwlWm5X2n84zQhr2/T78MDuuW8mC1+9pba
	 AR7895eyK0CPMMV/mCujnJnNM6UmDIHOo026+BUXTIPeG/CsM6aaOIJV9D2mUZA0z/
	 BLAz4QUONa5uEP4FJIJqSci0XUw4bbTdsFWiBeDGnGieT0U3Q7bmquuIf9lrFsk2X6
	 rrb6wXLeJf+4Q==
Received: from sonic301-3.consmr.mail.bf2.yahoo.com (sonic301-3.consmr.mail.bf2.yahoo.com [74.6.129.42])
	by mm2.emwd.com (Postfix) with ESMTPS id A9F0A380D9E
	for <usrp-users@lists.ettus.com>; Sat, 20 May 2023 18:04:25 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="geTXkZhc";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684620264; bh=84n8C2TrQqSSKlAI3L9hFNDbzID0YIOOAD8JFye0hnw=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=geTXkZhcK85LHRNCG16NZwr5hRM4Pimvbu1UrXkdHAYcisS12fWRTIeuOOpmv48LHLz0eO8A8x3mJtEV74hP6R28sRUgQM0M17saZZLLWQI1QlQk6WnhKngiQ/eMkfXQvfoYvitZF81F6KKjgI0iS+wH8pBIG8TJFjjwJ6FDavOWzR++7/H/D0pIWdj+4q+vEaLm/mKE5dnub/GivupVzTNj/pGWYkwy5hd0Kq8e80vODqc74VF2fqlFS8SSC2wwkUPiXtv4uqhDd+KqO+j7SeGLVk8Z4aepLgHElX49w+78TYG2YTt11RMZ5i031NzsU3606mOWRKVf/d+gwO83PA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1684620264; bh=oSBdS1JR6KBy+ioBim6Zm5Gng+uH85mstzwfLq86ZDa=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=t2unGAc/4jo/aTROOj2DfTuyCt+5V9Bsh1J9TIB6qEdABCW5G/BtwXLomiTJXvne7/sZKfgR98vc/pTfvShPtqkF8VI3MjhVgPKe9yZC3zf/bezbCwRNBeOsT7Q4RN4g50qOIRLduEqjhYd/eibRRxedQ5ykPYdbSUjsAQFju1o91kJaZtFPgY6Twrk6lywG9i9+EPDb6RJlV1FvXMtCoQFPj3n0MBUJDzW/Jb6JFGjXFuudisHykU1ZABVyVoINXESqTDc8FA9KnChBqyjxhufFFIkh2QzJ2ZWx8M1eeVJFb80bjYGNsQiFmDENuqEgPqDZ6w9OF6bP/Ttkr7fiVQ==
X-YMail-OSG: f4IZEN8VM1luXgFBSYRr1KYKfgQ7YgKz5890bWT0IjkxEzz3GGvfSdiwji_nI6l
 t1RGTtaykthgEbx1CC2OZ57_yFBYoC_ytmJBRL0gX5GUGDeC5Ro.3uadqr.OZ3cLiIRfz2lUrSIU
 3Awj9nV01UOHWfZ1ELxHMRUr95apmqP7gJf6Y_IFdZ4QgcfUhxipqTUa1gOtqbSkTuL4YJ6OI82U
 NML0sx3Hz9EkiF51_IaR.Gc94Rii45I4WiIpHSjx5YIpydtWIzeMhTZnAZCdHt854zZB7lDkG0eE
 7NbPlA4BG7Xqw4zhDX9D1vjWc3Env2WzMYIPNB6Yi0wuvlMPr93xpJAFAhAH8olnGGitb1PFkfCM
 v.cTD0BRQ7wFBHE5pL1GAkGzOjl2RIOd2fAErY_BJsyd8wlZxsRJKLI82Rlc53tc5puBnj_l5uVx
 HSGQcPpy8gDUjqqZjDGm5tWNHxK_bhgaBeBCqJcIigRguKHefaPCnNRmVamrMJZXf43MBI28w_wA
 JnbdWwZ1dIL7VcQjxegLEILKfuEWWcqdnxIyo1g__lUm98fORkZHzZgkg6iZ5485FJsyXx4I8pW2
 o803f2rQzmVnX_xzZXmMCSFv7x4PUUUQszqHSlc25NRb9qDeHPlt1UR01cq1Xbz08iUoWvjMsEn.
 tburudWV9rZoNjBynyBERmJ9CPAPCr_Zec47goQwl5UKWD70POO5SSui50OuSAja7_etMKlwnl.1
 T3nPr7pU9gB.4bH.xoTxG1obpuhdsXnN7i3orB2BQK5qk8V1PZaMEARd9wD4fjGVXc6QwC.Nc_.v
 k9WOyGfIGxd6tcfY1mJS9Auy4uivXyxeU1sSo33dcmCNVPdvdMfnyMSfIyLi96KzzbXpTsEhD9DO
 dMM8MovnxLm3qw7NRtqd134WY3tFEMlN5iUT2ybQY0ad37dfdRkkWyJY38G4grFfe4FsNgIjK.wP
 UyuOY9xw8ASivb9DHDZtYpdJVaVep.OsSy9AOOyYz2xL34yB_j6_kN2qF9bzb2eBvPO0wiSkQZJY
 LhZKXzGCyd5Xg.nrqPhggzFzrPyEbh7RSlNIVh22englAJAUHkHiamAxxgEaxuGUVr01R3fU5ArL
 wKZLU_2eLcwl659nvBpwqXf11K5P5dWJeOsIPooH0CkGepR_JlyyDybpLMVFuW3uREbSIFYDveqf
 NHQdEEWcj1kuRDzf6nSDlSNCiC4wEbyAVMfLbvwOt_EEGlALslVNpL638uA8rM56nbVFbbh29G7X
 4RwmewW449aMZX.JX49m56Wn3tdTd2Gjw2VAiBWRK30zZjCZZC5PoZ0G3hJy5sWn_tuYfxaJD.c9
 wZasN8SfZAzYzQVXwyQKv6JKhwB0E96Wie5kNHjLvUp1BZZnw9p0zHiW_S4hNPSa9S5ZC.KwFmTl
 Ad34xgF6iOMaKLe2eOpmsR2KYrDkemnln9RjtvRWmarfLU060nw.FOPnMsvW006g9oTo27r6Zv4o
 Ka1bdBuM4knLe45FCYEk1BsYBmCEjnX3wTzpPjs_f3W5MnvWQJeHCwAN0hN.Ru_KVCKGoOW7yhEn
 U.vuZtcifT1MRDgdd6Z8FZgBCHci6nxZy7nVxtlZhj4zSnIIR4sSGuXwyvGKD0xWZ8Pv8swmASam
 nb1voOs073vIQSZeRWuMQ6ZsGdHPqZMHsqqwQbi0_JchkE_Jj3QfAC3wA0T046sI5I0s_QJEaeIT
 1BlWCt3jzl_gOhTHXDLnqESiCODUkeZuchKtXM3bahswVindfvFgy_xOLv_Irr_pQtnEp269sevd
 y7sVuN1JR7fki30E3.a4uJ2WXWMaW1fhvb9_lXtWLeV9y8oiOSg4JshSR56XN._U.VW6HTjTEK.U
 9hEyf.x9Nwq1M4CHozrHL6U41_2EFHGcYmvPW1VCklXGvCQjUeQ_ejhxizXmWHWVT7p9F25eFTTL
 z0n7AeZv7NJzRg3cPVK59PAQZOosskXEgeNcRQNEqzZO8ZJ0.pQC1.UXi6bRx5WVsnbqu_2pTLRG
 wB._ol3lFVv_5XIUo7inZiv2unx9eqP6RgJ43qfLyoWx7x_nUuKrYimx_KJi.EEYDxfvohccDB9Q
 Z2L5hTHSq9RiOVXmzpBN8skCnkMWuU5AdAdHPBp7oq.u9Uq5k5BRo4Rwdiog4HvGBDA.ncYfgTCN
 I5MYNpJUOHAUmSyagoQyOYDF216XLI4PdaeehR16av3uL_ZBuIQYU9rJHwp36fI.BLFEvTkXhhym
 eJz2F6wrmhAypqHCUcSuZ70OEAQ--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: bb2087f3-0c02-41d8-9f95-c1b540fb987e
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.bf2.yahoo.com with HTTP; Sat, 20 May 2023 22:04:24 +0000
Date: Sat, 20 May 2023 22:03:29 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <936520968.215976.1684620209911@mail.yahoo.com>
In-Reply-To: <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM>
References: <MJqNiMd8Ab8YjNoIMk4H4CTTeDd9HlhMRNljp0XBe8@lists.ettus.com> <CAFche=gYq5ctyMW7_GVrCzhr8WxcjQz3ydNkV6geHAUS72K=bQ@mail.gmail.com> <DB4P189MB2440C719A5A6A88A67B4F7608D7C9@DB4P189MB2440.EURP189.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21495 YMailNorrin
Message-ID-Hash: OAYZI2B3EVOL4CBIC57YLPD7GXTZFRKN
X-Message-ID-Hash: OAYZI2B3EVOL4CBIC57YLPD7GXTZFRKN
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Receive with UHD4.4
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OAYZI2B3EVOL4CBIC57YLPD7GXTZFRKN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============0434301528758845647=="

--===============0434301528758845647==
Content-Type: multipart/alternative;
	boundary="----=_Part_215975_1676978963.1684620209910"

------=_Part_215975_1676978963.1684620209910
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi,
I installed UHD 4.4 recently. I use USRP for both transmission and receive.=
 I find that EVM in the tail part of the captured signal is higher, e.g., i=
n a 20-slot capture, in the first 19 slots, EVM~=3D 1.2%, but in slot#20, e=
vm ~=3D2.9%.
UHD 3.10 was fine. I have found this problem in UHD 4.0 and UHD 4.1. Now it=
 still exists in UHD 4.4. My solution is to capture 1ms more than what I ne=
ed.=C2=A0
Is this a bug in FPGA?
Thanks,Hongwei



------=_Part_215975_1676978963.1684620209910
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp7a60654eyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi,</div><div dir=3D"ltr" da=
ta-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">I inst=
alled UHD 4.4 recently. I use USRP for both transmission and receive. I fin=
d that EVM in the tail part of the captured signal is higher, e.g., in a 20=
-slot capture, in the first 19 slots, EVM~=3D 1.2%, but in slot#20, evm ~=
=3D2.9%.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"=
ltr" data-setdir=3D"false">UHD 3.10 was fine. I have found this problem in =
UHD 4.0 and UHD 4.1. Now it still exists in UHD 4.4. My solution is to capt=
ure 1ms more than what I need.&nbsp;</div><div dir=3D"ltr" data-setdir=3D"f=
alse"><br></div><div dir=3D"ltr" data-setdir=3D"false">Is this a bug in FPG=
A?</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false">Thanks,</div><div dir=3D"ltr" data-setdir=3D"false">Ho=
ngwei</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr=
" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><b=
r></div></div></body></html>
------=_Part_215975_1676978963.1684620209910--

--===============0434301528758845647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0434301528758845647==--
