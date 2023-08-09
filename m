Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 13970775652
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 11:27:34 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id DB208384989
	for <lists+usrp-users@lfdr.de>; Wed,  9 Aug 2023 05:27:32 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691573252; bh=SVdDhnLTGzDUKZKMQXSp6TGvuRSaGbYHIqr9ShMPq8Y=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=cxEGOH+R21BxKl9IKvTRmtA7UqKmqkB5K0OS+iraCUQLYmN12ZKHJANgu8K9p5YXS
	 r1lCBnIqGKH2VE0nqMOpmZe9Y0IJL/CwP+gAiJJhU2zlL7OPIipw70AnX9Q/idM3aq
	 J4rGujRXB/vYLbwfoPihUCU6T4wEDAdPCjWrNhKZrhvaN6x61bq+uKnJesBmrtlrCG
	 eAHUGfVlEBimwc20d7OUFSW+p+5BBT5cIH/tnn32cgdq3xJxJ6QcmKv4GoTzX1RKVy
	 nf7AB5raKHfBCcuruAPk80qE2xhZ9810prx3Pd/q7c+A9ciNeWriRnzTS3q4ZyG+MP
	 bZ+I59ScynECQ==
Received: from sonic308-1.consmr.mail.bf2.yahoo.com (sonic308-1.consmr.mail.bf2.yahoo.com [74.6.130.40])
	by mm2.emwd.com (Postfix) with ESMTPS id E483F383BE5
	for <usrp-users@lists.ettus.com>; Wed,  9 Aug 2023 05:26:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="lbuQ/0Jp";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691573218; bh=R2MSscldsPcA9ddEZW5Pf/5fjbEgfdxlAsFUsIG08wM=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=lbuQ/0Jp0D6eLKSS8mf9O392rVhGt0e43ZY5HxgBPtCEIFSy2dOHIEvh+vDAbidNBo3u+AmfXOAQs5Qhh8QjF1spqRyjyrqoxXULeePMNS41q+tv8pnH4F0pa89MpEwcs7pLsJ4YOSCnC69XrH1+7Ik68kvBvUw9L70VUe+7dIPcccNOtyMhZjXz6jf77eGpN1eFLEkapj5lZeGWQVp8ZWYRuI9gAbSg41VdjENV1r/FC0t0FqZ30Hvpuno9ya6SqcWnCcZBO9YUECbxorj1M/paR5nqRhJfdJLoDOMwSaGy2ssWoVt3pL66Uh4lMa7zybHSaVEYPzDfSZA6jT+1gQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691573218; bh=eBh5YM06rA0Lvv9GaxZtZgAWgitNPf5fKovIPQ1xoDS=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=o9QYrLVDO3iBSSn+qvBFXCqinAfs1uxPs54Mh00LToCMypUzjtttXlU9ZMzQyegKw//5bTRgv2VEi0WEw52RLk/yKPDeDOCfb5tBnLECzjOUcX0elzXzftw8z5UNMjSZp8V2066T7d2KhvWnGPcJcjqTBGh3uLuRIuDRrsUg3z9DOeLWczr6L8fFAizlm9Mwrv9IPU8tvaUrl6T3FcZGNKGM7zm2yox8s4RK5ddsXY5XjlmTl/J+RCrje1Biqpb+DjZpiDxHzg8CGsliG1REVlWwX5tpUhOiZICs1vl80w8wHcGowfxGcPHWQEdRVUYBsA1doCmFT0LVyKsePrC2kw==
X-YMail-OSG: NCyetLsVM1nJsrJgLJeYhNv70fPAaVM_Pr95NC5.s6ssLVLH8RFYHsJi9AHftcU
 EHnoiCKiNGu3ETxIrIXrdaydcNQm38_iNxiUr5zw6f.LsktdGGS3VWye05A3ozHBWH4qysR_HXpf
 o5R.F.hzZjGkK8vWNh2WlrXom24QjJAp_fe7HTuFFnV56pJIxOPkBo.RNLplLXhhlxozrkEwHeZd
 z564w4GVeeHly0mxQnliEQsOWdwhoQ4GbHYp.85ctJytOec.y_nz2EK8xe7QcST3E5X5HCzsoxSC
 7IFowvesAdg87MPP33cuBLgA1sHUGbduehe8xLleikzTTv8kFPE96UHO5m.ZEF_4CpZqBjCTPjnM
 9F_liEGCdZnM59pTnepsBCC0ea7nJD4brvj7rYeaaqcd.EgHWH8_CRZwHRZ8e2hL9TkM5V_Xe8vx
 .z4YKzLBHAvx9dTNMNlsABje5t4z_8q2xow1iwZUcRhHKMuC9XGDWdF3j.0pho.6pjL2KAGhI17L
 4GTHkjBcRrqc5_IhQkSKNXPlBL4Ty3egYx_8ydNfXPmnQ5RYS1qcEjAskbltMg2gnVSgoJ5zy3KK
 2DJIF5PvRE25ZcHZO4mCCMMYSDFuZjDs7RvVomwD4qWnI.npjpztnQU3NGyZGUzXoCa6fWBd85wb
 XDJe3O1vn5j3u4cGVlRXuO_xCpHsycQyVs3.XZ6bbxpVG4fPJR8U_CRN6rhnKOI1HfNMWE9Z0cd7
 Aid.BoPRflthUkLI2a8og34oDEe_zB_g7WBqsIiGYwqVdkUsRDmC0gNiZ0vYHH2Gt2VkwxclF1mo
 m1xuFY3suqwg44LAduhQqedaylcIOo0c5R24zqyytQ50XD5e.FxBpqqdOjLFAC_81SRxc_1cUVF4
 27Zq1gNAlJunOGMeJ8ilpx8GHdskdx2dmAgBUBvezbiXFqgtmQQZTSr378oGoJ87XvaJixvE8NOX
 YBO7amFMlh_ryoHPXmn2EFaR3li3KTstebZGbCRGbuzbgVVvz4ShqVXVt6fp.O5qHScHgk3pNJsd
 eCgm_Yxdlckvgd2SoMp5EUQEPCfM8QRqS3HblafHBzkaIPp04inS.wvKw64ZI4bSdaoijTiVgtT0
 ZXsiwljsU4ghBtXLNlbM02Tb6VT9h.kw99e3rkQuq4nkRS7BR7b_dAcRzT1uw8nnmq3ZfEzhqSi0
 taY3A99vPZPwgf4V6UOyu9Z6WM_UbtRZMcMGcagU.md3cMTidJRQ5J4vNVt6EqK9Xv_pRO..2frb
 RRVF0ERTCyk.HlatMiTTOyACDnK_8IpUYghrZ2v4H7p_IxxmJmqc5.PFLFY_3RKpkquFzfNGgOYX
 lu4TMPUw6gnAK4qmZ4rjwuN6Z4MU2reD_83sAlacd5iNaiVGljdDfbFptWNXvpitQvqmUh8Vqrur
 CUVq0jqRtQKrMXtwW._gGl4701tW6MVTGqbQNA1lEqK0frpOrPRy8Oztx5M1PuPS8FJzpn1_M2X4
 oJiOafoC6D9icQGXjuweMN0DYR3JN0wB9o9N8dG3.UBIdsO4eMSrKbGgRh.krpXcpSuGkkfzlbyO
 7yydaP8aNZEHA7RBS7.3h.mhr99DMYz1IGw2pHq8eGFu8my5dZ8gUjkyR8dhJdefwErXiX.pNXQW
 wzSAMviim._dVrWWZISzA52i5cStBL3mh54.uBJe9zCrbYOI_QRfwm9lFXbEmF366Io_g2NhiEAz
 GdsWB99sitXADoAvGmRtySYfXliv1.HpAmdp9nG0zIu_5OO21IY8pcJcXUB1djp5iKtKlv_mMwBb
 dTC2QuZYK1..1_NlwcU9rwoGbieMkuLxUTcqmKUoQk6UGXg21uWgNGehLtSpyJPy7nYcyZ6nA5FB
 VPP217q2m7XU9epjBtTiczjnYS2sGbjTfKtYSRwhtUfPDBloNCy3qS1kBxm08PBMG_PVhoAO6PT5
 DqD2P_006nsGL08GZnKn7DHmlPzPZuvoWxHuMwxtDa5A2tg_lMrakrVAdl4kWRO08WjiuT0LrjPN
 gQFbKI7n_necWNHeF_VqlJ01.o.0TzDqitbsQhS3RM2d3lXpTI9RCywFXilXUUZDvS_iG43Seft7
 kg2zR0WAk36iJH.gLZNjZ3KSXXBqf_bzAoCilzv0UQfr1nB6t2ovi8VE.8V_V5jQ8CuqxJtAnxlN
 .4QYP1fq8GCUVLly4JLDSfu.lknQYLnKsfrD8ItjWcAcfonnjzuyM5cNqVxNtmYsF8OwVGCGsnQJ
 zJb5Clh5cp.dKNFBQntnoveYCxx7Q
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 2e4eebe6-5454-4fb3-93a9-561160a2cc90
Received: from sonic.gate.mail.ne1.yahoo.com by sonic308.consmr.mail.bf2.yahoo.com with HTTP; Wed, 9 Aug 2023 09:26:58 +0000
Date: Wed, 9 Aug 2023 09:26:26 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1345420608.1045087.1691573186750@mail.yahoo.com>
In-Reply-To: <3ea0a44a-8942-c795-764e-2e967ba1ecb4@gmail.com>
References: <JY69MVrXA1ftfNlnyzeN8KI5JuYFOwHyCm5H1oY83cU@lists.ettus.com> <33990667-b547-dc4b-8e98-649b560df3df@gmail.com> <2081896548.419499.1691397648533@mail.yahoo.com> <100d04b2-9cae-4fe6-e024-b68a99da766f@gmail.com> <612213778.469873.1691415701949@mail.yahoo.com> <3ea0a44a-8942-c795-764e-2e967ba1ecb4@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21695 YMailNorrin
Message-ID-Hash: E4BZ4HQL67UJDNLLT2KASQA2VIHQXH5C
X-Message-ID-Hash: E4BZ4HQL67UJDNLLT2KASQA2VIHQXH5C
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/E4BZ4HQL67UJDNLLT2KASQA2VIHQXH5C/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5042194562279019979=="

--===============5042194562279019979==
Content-Type: multipart/alternative;
	boundary="----=_Part_1045086_674337548.1691573186748"

------=_Part_1045086_674337548.1691573186748
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks Marcus.I find that it is easier to choose target RF at which DSP fr=
eq is zero, then avoid DC in data allocation in baseband.
Anyway, what do "lowest offset" and "corrected " mean in the calibration fi=
le? some example lines as below. I am uinsg step size 1MHz.TX DC: 1020.0000=
00 MHz: lowest offset -92.824059 dB, corrected 35.168568 dBTX DC: 1021.0012=
21 MHz: lowest offset -90.716408 dB, corrected 32.376762 dBTX DC: 1022.0024=
42 MHz: lowest offset -91.902306 dB, corrected 34.561279 dB
Kind regards,Hongwei


    On Monday, 7 August 2023 at 14:46:35 BST, Marcus D. Leech <patchvonbrau=
n@gmail.com> wrote: =20
=20
  On 07/08/2023 09:41, zhou via USRP-users wrote:
 =20
=20
 Thanks for your quick response, Marcus.=20
  On the 2nd question, I mean, when LO is different from the target RF freq=
, DSP will make up the difference. LO leak will become a=C2=A0spurious sign=
al at DSP freq. Can this LO leak be compensated in USRP? if yes, how?=C2=A0=
=20
   If you move the LO leakage out of the passband of your application sampl=
e rate, it won't be bothersome.
=20
=20
=20
  Thanks.=20
  =C2=A0=20
      On Monday, 7 August 2023 at 14:11:08 BST, Marcus D. Leech <patchvonbr=
aun@gmail.com> wrote: =20
     On 07/08/2023 04:40, zhou via USRP-users wrote:
 =20
=20
    Hi,=20
  I have a question regarding USRP calibration. I am using X310 and UHD 4.4=
. To save calibration time, the step size is set to be 5MHz and the freq ra=
nge is [600MHz, 6GHz]. My questions are: 1. will the compensation be made a=
t these discrete frequencies only, or interpolation will be applied to freq=
uencies which are between the steps?  Interpolation is applied.
=20
=20
  2. how to compensate DC offset in case there is DSP freq? =20
 The DC offset compensation is applied based on the *analog* frequency sett=
ing of the RF PLL.=C2=A0 The DSP component
 =C2=A0 is "perfect" from a offset and balance perspective.=20
=20
=20
=20
 =20
  Thanks, Hongwei=20
 =20
  =20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
=20
=20
    _______________________________________________
 USRP-users mailing list -- usrp-users@lists.ettus.com
 To unsubscribe send an email to usrp-users-leave@lists.ettus.com
    =20
  _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_1045086_674337548.1691573186748
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp364c7bb5yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks Marcus.</div><div dir=
=3D"ltr" data-setdir=3D"false">I find that it is easier to choose target RF=
 at which DSP freq is zero, then avoid DC in data allocation in baseband.</=
div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-=
setdir=3D"false">Anyway, what do "<span><span style=3D"color: rgb(0, 0, 0);=
 font-family: Helvetica Neue, Helvetica, Arial, sans-serif;">lowest offset<=
/span></span>" and "<span><span style=3D"color: rgb(0, 0, 0); font-family: =
Helvetica Neue, Helvetica, Arial, sans-serif;">corrected " mean in the cali=
bration file? some example lines as below. I am uinsg step size 1MHz.</span=
></span></div><div dir=3D"ltr" data-setdir=3D"false"><div><div>TX DC: 1020.=
000000 MHz: lowest offset -92.824059 dB, corrected 35.168568 dB</div><div>T=
X DC: 1021.001221 MHz: lowest offset -90.716408 dB, corrected 32.376762 dB<=
/div><div>TX DC: 1022.002442 MHz: lowest offset -91.902306 dB, corrected 34=
.561279 dB</div><div><br></div></div>Kind regards,</div><div dir=3D"ltr" da=
ta-setdir=3D"false">Hongwei</div><div dir=3D"ltr" data-setdir=3D"false"><br=
></div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydp6c76d6a5yahoo_quoted_1606445450" class=3D"ydp6c=
76d6a5yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 7 August 2023 at 14:46:35 BST, Marcus D. Lee=
ch &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp6c76d6a5yiv9951984819"><div>
    <div class=3D"ydp6c76d6a5yiv9951984819moz-cite-prefix">On 07/08/2023 09=
:41, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;" class=3D"ydp6c76d6a5yiv995198481=
9ydp66d139c6yahoo-style-wrap">
        <div dir=3D"ltr">Thanks for your quick
          response, Marcus.</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">On the 2nd question, I mean,
          when LO is different from the target RF freq, DSP will make up
          the difference. LO leak will become a&nbsp;<span><span style=3D"f=
ont-size:11.0pt;font-family:Calibri, sans-serif;">spurious
              signal at DSP freq. Can this LO leak be compensated in
              USRP? if yes, how?&nbsp;</span></span></div>
        <div dir=3D"ltr"><span><span style=3D"font-size:11.0pt;font-family:=
Calibri, sans-serif;"><br clear=3D"none">
            </span></span></div>
      </div>
   =20
    If you move the LO leakage out of the passband of your application
    sample rate, it won't be bothersome.<div id=3D"ydp6c76d6a5yiv9951984819=
yqtfd80726" class=3D"ydp6c76d6a5yiv9951984819yqt0494357912"><br clear=3D"no=
ne">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;font-size:13px;" class=3D"ydp6c76d6a5yiv9951984819ydp66d139c6yahoo-style-=
wrap">
        <div dir=3D"ltr"><span><span style=3D"font-size:11.0pt;font-family:=
Calibri, sans-serif;">Thanks.</span></span></div>
        <div dir=3D"ltr"><span><span style=3D"font-size:11.0pt;font-family:=
Calibri, sans-serif;"><br clear=3D"none">
            </span></span></div>
        <div dir=3D"ltr"><span><span style=3D"font-size:11.0pt;font-family:=
Calibri, sans-serif;">&nbsp;</span></span></div>
        <div><br clear=3D"none">
        </div>
      </div>
      <div id=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyahoo_quoted_2142999335=
" class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-=
serif;font-size:13px;color:#26282a;">
          <div> On Monday, 7 August 2023 at 14:11:08 BST, Marcus D.
            Leech <a shape=3D"rect" href=3D"mailto:patchvonbraun@gmail.com"=
 class=3D"ydp6c76d6a5yiv9951984819moz-txt-link-rfc2396E" rel=3D"nofollow" t=
arget=3D"_blank">&lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br clear=3D"none">
          </div>
          <div>
            <div id=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874">
              <div>
                <div class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047=
874moz-cite-prefix">On
                  07/08/2023 04:40, zhou via USRP-users wrote:<br clear=3D"=
none">
                </div>
                <blockquote type=3D"cite"> </blockquote>
              </div>
              <div>
                <div style=3D"font-family:Helvetica Neue, Helvetica, Arial,=
 sans-serif;font-size:13px;" class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyi=
v1566047874ydpf6d16e8dyahoo-style-wrap">
                  <div dir=3D"ltr">Hi,</div>
                  <div dir=3D"ltr"><br clear=3D"none">
                  </div>
                  <div dir=3D"ltr">I have a question regarding USRP
                    calibration. I am using X310 and UHD 4.4.</div>
                  <div dir=3D"ltr">To save calibration time, the step size
                    is set to be 5MHz and the freq range is [600MHz,
                    6GHz].</div>
                  <div dir=3D"ltr">My questions are:</div>
                  <div dir=3D"ltr">1. will the compensation be made at
                    these discrete frequencies only, or interpolation
                    will be applied to frequencies which are between the
                    steps?</div>
                </div>
                Interpolation is applied.<br clear=3D"none">
                <br clear=3D"none">
                <blockquote type=3D"cite">
                  <div style=3D"font-family:Helvetica Neue, Helvetica, Aria=
l, sans-serif;font-size:13px;" class=3D"ydp6c76d6a5yiv9951984819ydpdb28840f=
yiv1566047874ydpf6d16e8dyahoo-style-wrap">
                    <div dir=3D"ltr">2. how to compensate DC offset in
                      case there is DSP freq?</div>
                  </div>
                </blockquote>
                The DC offset compensation is applied based on the
                *analog* frequency setting of the RF PLL.&nbsp; The DSP
                component<br clear=3D"none">
                &nbsp; is "perfect" from a offset and balance perspective.
                <div id=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874=
yqtfd26387" class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874yqt466=
6739767"><br clear=3D"none">
                  <br clear=3D"none">
                  <br clear=3D"none">
                  <blockquote type=3D"cite">
                    <div style=3D"font-family:Helvetica Neue, Helvetica, Ar=
ial, sans-serif;font-size:13px;" class=3D"ydp6c76d6a5yiv9951984819ydpdb2884=
0fyiv1566047874ydpf6d16e8dyahoo-style-wrap">
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                      <div dir=3D"ltr">Thanks,</div>
                      <div dir=3D"ltr">Hongwei</div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                      <div dir=3D"ltr"><br clear=3D"none">
                      </div>
                    </div>
                    <br clear=3D"none">
                    <fieldset class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fy=
iv1566047874moz-mime-attachment-header"></fieldset>
                    <pre class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv156=
6047874moz-quote-pre">_______________________________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566047874moz-t=
xt-link-abbreviated ydp6c76d6a5yiv9951984819moz-txt-link-freetext" rel=3D"n=
ofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" class=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyiv1566=
047874moz-txt-link-abbreviated ydp6c76d6a5yiv9951984819moz-txt-link-freetex=
t" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.com</a>
</pre>
                  </blockquote>
                  <br clear=3D"none">
                </div>
              </div>
            </div>
            <div id=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyqtfd44997" class=
=3D"ydp6c76d6a5yiv9951984819ydpdb28840fyqt4666739767">_____________________=
__________________________<br clear=3D"none">
              USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:u=
srp-users@lists.ettus.com" class=3D"ydp6c76d6a5yiv9951984819moz-txt-link-fr=
eetext" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a><b=
r clear=3D"none">
              To unsubscribe send an email to <a shape=3D"rect" href=3D"mai=
lto:usrp-users-leave@lists.ettus.com" class=3D"ydp6c76d6a5yiv9951984819moz-=
txt-link-freetext" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@list=
s.ettus.com</a><br clear=3D"none">
            </div>
          </div>
        </div>
      </div>
      <br clear=3D"none">
      <fieldset class=3D"ydp6c76d6a5yiv9951984819moz-mime-attachment-header=
"></fieldset>
      <pre class=3D"ydp6c76d6a5yiv9951984819moz-quote-pre">________________=
_______________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" class=3D"ydp6c76d6a5yiv9951984819moz-txt-link-abbreviated" rel=
=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" class=3D"ydp6c76d6a5yiv9951984819moz-txt-link-abbre=
viated" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.com=
</a>
</pre>
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div class=3D"ydp6c76d6a5yqt0494357912" id=3D"ydp6c76d6=
a5yqtfd44154">_______________________________________________<br clear=3D"n=
one">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users=
@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus=
.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect=
" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></=
div>
            </div>
        </div></body></html>
------=_Part_1045086_674337548.1691573186748--

--===============5042194562279019979==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5042194562279019979==--
