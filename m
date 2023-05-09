Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6D56FCC53
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 19:07:08 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 1273E3846E4
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 13:07:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683652028; bh=bPG+kuYVFM7aAjn8lRZ4QSUdU3j506xzWyuacKBVWzE=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Bp75cnMxplRzn6N47CLXuomvjqPKkBbTvSBUU1RG+7//o56DXMG1+uK2SaS5HwZh3
	 URNrh0PvmFRcANIKF5Wah44D9TM2j/XswhvN6vMgajYEZafamhfuYDRXRFJeB7OI+K
	 n5AD8OufI7Pfghqu9CvQNPkLxNESruIVloSDR44HpkijCsmj44AQGBSvBLUHUIkFWZ
	 FhXcOuc/nTSottLzR/mgXzoMb3aOfQckM1T7Kl0uS1gDieRvBt/SVEQXbn34Qok5Lm
	 vgYny0VE34JgEptXixIkjM4I2y+dPi1w5PIYfXpYkH3FOza8m/jyzL6UbGjKcDevUy
	 wrkgC25QsGaig==
Received: from sonic304-9.consmr.mail.bf2.yahoo.com (sonic304-9.consmr.mail.bf2.yahoo.com [74.6.128.32])
	by mm2.emwd.com (Postfix) with ESMTPS id 8399F383F60
	for <usrp-users@lists.ettus.com>; Tue,  9 May 2023 13:06:32 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="g6/7lIKV";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1683651991; bh=4Tm9EbI+n2lT1JilZ95x2ctApTzuqVxx27KJDjsI0Fg=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=g6/7lIKVAGbD4UcpokAEYW4x6Bj/wgN1XHF0iJjVuTPFwpMdDGGV9xrdsq2bXJahiQSvGMk7EzRr0fXMUyb+EDYiUBYquOWoXAO3QEeg5t1R1RhhNGNMtHCBmw1ANe2uG5rcYydD7LfnSpIvP3IVhADm9u1bA3K+GiYZNU/Svx0Rq/1x+5yyByVidLwwcZSfgIN46i8KJOHDeRc6AyIiSMBmpYZFjYkzXtqr/o1KULh2BqFM2EFW8khx9R0deyS+1BgrHyhypM8yzUyatpXY9agjdiCT+1Bt9mLHmYXhWuZ3KGQHKZUHh5kKzxmScDC04zZByhL98ZpZjE6tg9MM4g==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1683651991; bh=R4YSyjZ6HL+tqYIuo0Ib6ArUZmLT+d2R1yz2T5uKSqn=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=ZBBcWa79XJyxg/2cnXeGHDtEVHvFbnlFJQ1tYZiK/L77C3xqAEyFG83BSuey0SFGlhYK5yHY4w+LUK6H2d5Iqc01428SAq+U2kLRuWVDsOWXIJFIDRX5A8umd8FeHlGdLKFZuRtGTDUzzTIwtpWBK/8Ud735lkEWzI+NTWz8mnY7mHxzdVcikPAmAiO7psB5IpR/jzLslNqhauqUSGIogsaYeKT4z9jLfyGWq1VUENV0pv9ne+6WybiIJNooFq5yNKCW8alEt+C+GJUKw+XNbo0maIte3LxmSk/6Qu3Smz2Z9UfJNdVi3J9u1w9vQrr2tMJ+zff5FFVwy3HQza469Q==
X-YMail-OSG: _FYikicVM1lmPZDwJhEnQ_Jw3C.JcVgVjvLouAOD4GQyfrY4qsqFflg_t7loJ4U
 ClN2uqA4DpuEzPccFYjLAHPbkUEtkWijaZAFudg26JP0.wx96_LHnj.34e4D7dlZ0csaNzRY856X
 _eCXnDWhHLh1vcAbl4F9A79dRTiUgwvxM.CgKHi2UtINhhWTJsPvrabkLGlblaDa0tIz95wBWG7w
 evZeA0CRDL8R3VZDhPyEeoCOeI08PP3BMuWCXPJuD4UoONmDt2OQUPChHbZN.5snMNun7ZTjKoBQ
 zhL.kU1RCswOnpyL16pqFxvXDZNt9AuhpYznSJ_yGqTvogTAVc.iqaf8zlKPUP14H2FhrxSFwL4o
 LWgb_0OegmDtlgyfQq9g_xklcvGvJIneHjhC5Q.hHNTFu2A6t3guYynht.hT0Q1VmXzosW3.pu7w
 Fdez0y1i4UKAHEHNceBw.jee4PAe8g1X05rD2LAQOHFhL3751K0yEyua5nDLsr3nDXw6Ko.S_K6z
 xBXJesb4khKtwrJ4DjxditOMB3dRJZ7J3u5h3enJLzsmxuVJkDGcPihhTwAZRMB4._fz1XxURLeK
 .cMZoKSwoW31L8c0nQH6oBVodeoZmvFL24Wx.sQQK4Jimw4QU5dj2JJfCVbWH1cJdH3TQcUSEqku
 JdRxkHZLsfocoDmBh3WDSRayTT.cCUwWxxdaS_9b6MnVWWjHi6Z2kyZJbshKCnb.SkBBkwv6VBRY
 0ZjC0WqvzV9Zg3bFLbnPDQVXCHLEjBoQimz1VQJoh5_tzetMNYDXfYSzBCmOSi6UUQ5ZQ3xhkF3W
 r0.Z32kbsl34cu13aCWeSpRY2vkVT5W0VYLe0M1uxFKmpTAC3_bQWlw_k4hzAOMV7uFmxvxYZCBX
 Qldt7_DDoIJD9luD7pUdnB4VHgKU7poRhrQm3Ng2FZRTOv_g5.5qg2HL6GYrqtuXOgZjXxWWxNj2
 4PG8OGG.vEPVJuGDkUjcFXOZdwEcQ71HqaZRlDjZtgtBPpOW21C1u4k8OBX1zbsNvm6J1OuE7kl2
 ro9Nb3lkJsDGh6jf9kQVxF8MJyKaOOzIRyIKaEVhfX2Qr1Dnl6r8a8Ao7FlsxjdZ36JQdFwW3YZY
 JoQgF5wCjm9LyYcr69gxjbt.RAp3LQo4uOe0u6ew979I0Pa_ZuYidlmPe_lAQxq0_hH4k1nphgl8
 hi0TMfpheoE7Gx9EpYzrX.wkq1SNu.mrG5s2hZKc8I9hMrjBaXTgMeSouU.N2.hHv0Bq.a.4hJO7
 Br.Xi8XXQS240f6ei6GDarLAm6gmJEp9IIsxcA1CtdFjQB3GY30UHJIFMM0hQsk7swuBH9tQPImJ
 Xzc5cRVAk33qM8bJBh0uQ1_H5SCnvJtQ4yI3QZ.UwlE4cvuBrPOn3CrxWzrlDIvVqOPOrkkQdl0X
 .JubFsjo9F7Uqb25If99fIyslde3UBcokQDxHJ5pPWsKhjmgRh.Cv0EQE6HuZ8z.Q7JUC30EM_.R
 QUxxpyJw5n9ZGNJaGbzmN2nxnw5V4zRIOQz80w.eAB1xQHVlDgo_CSIkMCkYIbU8PfccHqyctpWX
 4YhJyHcs_ILOeHFH9F5MC7D2Jz4L5iHAV1IOawVPLeTqfSSKflVK6_I.OpWoeybYWryBdP4.97Fl
 S4Q.yvtnVEPRr9BgUBT5.BM.re512BWCsbl56.ovL2H40dmKOlw9l1YIItvl7PBiF7DAVs0rDZLH
 6uhRONV81Zh7X_9lfTyNwET3dFzjj93KLjGKWMBRtp0Sn63PaMVSE9VVm34ZC5ZDZHdplzijkXsl
 RKPyyUX0Z0SDoLzJBwpA4cWkE_DqpuQUfzOEBcEKcAmsuAYhyunV6uai6nBy2U4Lm00IC8bvj..P
 lVmaScbRu26EeTzDx2PF4E7bRwHfxSDX6kfd4z9GPFnw7M3a29RViTW_Q047cETlsLXO.P_6GSI5
 MLPjdGfddweHv1f_7i8BxtKNLDyJj7X5WIYK8enKPHA15BEF5.BNJTfidzgRDlkmW5qeLEJmVkNp
 iwLQH6v8yuPY8UMdfnva2JuIKQDMhdMVfD3h.SUmtqbGtqgEpfRJ5Dp7mLU.EM626CB4IF.UG1kF
 F03il8RUSpUvWtxxkKFzYFaV6TRQY06NXitMq7_fkj0OKr3ZQWBj0orDzxCiiuIh3Oo38dyrfVi3
 ydcePnZ2f19ylMwDB5O59scf41dUX8z2APksaWI.bWYOOdGfn6tRxYw4yHOcHkXUq0lvaUn_o7tX
 IvA--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 36b6892e-b1e3-49c4-b6b4-036296dc96c1
Received: from sonic.gate.mail.ne1.yahoo.com by sonic304.consmr.mail.bf2.yahoo.com with HTTP; Tue, 9 May 2023 17:06:31 +0000
Date: Tue, 9 May 2023 17:06:30 +0000 (UTC)
To: David Raeman <david@synopticengineering.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <1071816177.3368365.1683651990105@mail.yahoo.com>
In-Reply-To: <fbf2498a-a65f-4f2a-d58b-12481223f9c8@gmail.com>
References: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com> <1556054227.3356110.1683649305159@mail.yahoo.com> <c215628a-03a8-fd64-acb0-c16e21f82181@gmail.com> <494641635.3380849.1683651178051@mail.yahoo.com> <BN2P110MB1747D75E806A3927E9542AE8B7769@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM> <fbf2498a-a65f-4f2a-d58b-12481223f9c8@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21417 YMailNorrin
Message-ID-Hash: ONFCJMM5F2NNZR7YX2BHHRBWLTHPZJYD
X-Message-ID-Hash: ONFCJMM5F2NNZR7YX2BHHRBWLTHPZJYD
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't find calibration file for X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ONFCJMM5F2NNZR7YX2BHHRBWLTHPZJYD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4334749258139030136=="

--===============4334749258139030136==
Content-Type: multipart/alternative;
	boundary="----=_Part_3368364_1456496282.1683651990102"

------=_Part_3368364_1456496282.1683651990102
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks David and Marcus.I will run calibration again without sudo. Will up=
date the outcome.Cheers.


    On Tuesday, 9 May 2023 at 18:01:24 BST, Marcus D. Leech <patchvonbraun@=
gmail.com> wrote: =20
=20
   On 09/05/2023 12:58, David Raeman wrote:
 =20
 =20
Note that because you are running these commands via sudo, the results may =
be in root=E2=80=99s home directory.
 =20
 Thanks for picking up on that!=C2=A0=C2=A0=C2=A0 Yeah, there's ZERO reason=
 to run as root for this stuff.
=20
=20
=20
 =20

=20
 =C2=A0
=20
 =C2=A0
   =20
From: zhou via USRP-users <usrp-users@lists.ettus.com>=20
 Sent: Tuesday, May 9, 2023 12:53 PM
 To: usrp-users@lists.ettus.com; Marcus D. Leech <patchvonbraun@gmail.com>
 Subject: [USRP-users] Re: Can't find calibration file for X310
  =20
 =C2=A0
  =20
Thanks for your quick response Marcus.
  =20
 =C2=A0
  =20
My Linux is server version of Ubuntu 22.04.=C2=A0
  =20
 =C2=A0
  =20
The calibration commands I used are:
    =20
sudo uhd_cal_tx_dc_offset=C2=A0 --verbose --args=3D"addr=3D192.168.13.2" --=
freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --su=
bdev=3D"A:0"
  =20
sudo uhd_cal_tx_dc_offset=C2=A0 --verbose --args=3D"addr=3D192.168.13.2" --=
freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --su=
bdev=3D"B:0"
  =20
sudo uhd_cal_tx_iq_balance --verbose --args=3D"addr=3D192.168.13.2" --freq_=
start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=
=3D"A:0"
  =20
sudo uhd_cal_tx_iq_balance --verbose --args=3D"addr=3D192.168.13.2" --freq_=
start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=
=3D"B:0"
  =20
sudo uhd_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.13.2" --freq_=
start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=
=3D"A:0"
  =20
sudo uhd_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.13.2" --freq_=
start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=
=3D"B:0"
   =20
 =C2=A0
  =20
After running these commands, it showed that calibration was successful:
    =20
=C2=A0The calibration was successful!!! :-)
  =20
 =C2=A0
     =20
What other place can the .cal files be saved in?
  =20
 =C2=A0
  =20
Thanks again.
  =20
 =C2=A0
  =20
 =C2=A0
  =20
 =C2=A0
     =20
On Tuesday, 9 May 2023 at 17:28:02 BST, Marcus D. Leech <patchvonbraun@gmai=
l.com> wrote:=20
  =20
 =C2=A0
  =20
 =C2=A0
      =20
On 09/05/2023 12:21, zhou via USRP-users wrote:
     =20
Hi,
  =20
 =C2=A0
  =20
I installed UHD 4.4 for X310 and calibrated USRPs, but I can't find the exp=
ected .cal file under=C2=A0${HOME}/.local/share/uhd/cal/. Actually, there i=
s no=C2=A0${HOME}/.local/share/uhd/ directory.
  =20
 =C2=A0
  =20
What can be wrong?
  =20
 =C2=A0
  =20
Thanks for any help,
  =20
Hongwei
  =20
 =C2=A0
  =20

 It could be that your desktop environment stores local config and data fil=
es in another place.
=20
 What commands did you use to create the cal files?
=20
=20
=20
    =20
_______________________________________________
 USRP-users mailing list --  usrp-users@lists.ettus.com
 To unsubscribe send an email to  usrp-users-leave@lists.ettus.com
      =20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_3368364_1456496282.1683651990102
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp6c8c9ee7yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks David and Marcus.</di=
v><div dir=3D"ltr" data-setdir=3D"false">I will run calibration again witho=
ut sudo. Will update the outcome.</div><div dir=3D"ltr" data-setdir=3D"fals=
e">Cheers.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpccde241eyahoo_quoted_4336090491" class=3D"ydpcc=
de241eyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, 9 May 2023 at 18:01:24 BST, Marcus D. Leech=
 &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpccde241eyiv5914260451">
 =20
   =20
 =20
  <div>
    <div class=3D"ydpccde241eyiv5914260451moz-cite-prefix">On 09/05/2023 12=
:58, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div class=3D"ydpccde241eyiv5914260451WordSection1">
        <p class=3D"ydpccde241eyiv5914260451MsoNormal">Note that because yo=
u are running these
          commands via sudo, the results may be in root=E2=80=99s home
          directory.</p>
      </div>
    </blockquote>
    Thanks for picking up on that!&nbsp;&nbsp;&nbsp; Yeah, there's ZERO rea=
son to run
    as root for this stuff.<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div class=3D"ydpccde241eyiv5914260451WordSection1">
        <p class=3D"ydpccde241eyiv5914260451MsoNormal"></p>=20
        <p class=3D"ydpccde241eyiv5914260451MsoNormal"> &nbsp;</p>=20
        <p class=3D"ydpccde241eyiv5914260451MsoNormal"> &nbsp;</p>=20
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in =
0in 0in 4.0pt;">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;paddin=
g:3.0pt 0in 0in 0in;">
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><b>From:</b> z=
hou via USRP-users
                <a href=3D"mailto:usrp-users@lists.ettus.com" class=3D"ydpc=
cde241eyiv5914260451moz-txt-link-rfc2396E" rel=3D"nofollow" target=3D"_blan=
k">&lt;usrp-users@lists.ettus.com&gt;</a>
                <br>
                <b>Sent:</b> Tuesday, May 9, 2023 12:53 PM<br>
                <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" cl=
ass=3D"ydpccde241eyiv5914260451moz-txt-link-abbreviated" rel=3D"nofollow" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>; Marcus D. Leech
                <a href=3D"mailto:patchvonbraun@gmail.com" class=3D"ydpccde=
241eyiv5914260451moz-txt-link-rfc2396E" rel=3D"nofollow" target=3D"_blank">=
&lt;patchvonbraun@gmail.com&gt;</a><br>
                <b>Subject:</b> [USRP-users] Re: Can't find calibration
                file for X310</p>=20
            </div>
          </div>
          <p class=3D"ydpccde241eyiv5914260451MsoNormal"> &nbsp;</p>=20
          <div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">Thanks
                  for your quick response Marcus.</span></p>=20
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">My
                  Linux is server version of Ubuntu 22.04.&nbsp;</span></p>=
=20
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">The
                  calibration commands I used are:</span></p>=20
            </div>
            <div>
              <div>
                <div>
                  <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_tx_dc_offset&nbsp; --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"A:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_tx_dc_offset&nbsp; --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"B:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_tx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"A:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_tx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"B:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_rx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"A:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_rx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"B:0"</span></p>=20
                </div>
              </div>
              <div>
                <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
              </div>
              <div>
                <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;">After
                    running these commands, it showed that calibration
                    was successful:</span></p>=20
              </div>
              <div>
                <div>
                  <div>
                    <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span st=
yle=3D"font-size:10.0pt;font-family:sans-serif;">&nbsp;The
                        calibration was successful!!! :-)</span></p>=20
                  </div>
                  <div>
                    <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span st=
yle=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
                  </div>
                </div>
              </div>
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">What
                  other place can the .cal files be saved in?</span></p>=20
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">Thanks
                  again.</span></p>=20
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
          </div>
          <div id=3D"ydpccde241eyiv5914260451ydp3676ad2yahoo_quoted_3732052=
683">
            <div>
              <div>
                <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">On
                    Tuesday, 9 May 2023 at 17:28:02 BST, Marcus D. Leech
                    &lt;<a href=3D"mailto:patchvonbraun@gmail.com" class=3D=
"ydpccde241eyiv5914260451moz-txt-link-freetext" rel=3D"nofollow" target=3D"=
_blank">patchvonbraun@gmail.com</a>&gt;
                    wrote:
                    </span></p>=20
              </div>
              <div>
                <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp;</span><=
/p>=20
              </div>
              <div>
                <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp;</span><=
/p>=20
              </div>
              <div>
                <div id=3D"ydpccde241eyiv5914260451ydp3676ad2yiv3352880938"=
>
                  <div id=3D"ydpccde241eyiv5914260451ydp3676ad2yiv335288093=
8yqt92039">
                    <div>
                      <div>
                        <p class=3D"ydpccde241eyiv5914260451MsoNormal"><spa=
n style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">On
                            09/05/2023 12:21, zhou via USRP-users wrote:</s=
pan></p>=20
                      </div>
                    </div>
                    <div>
                      <div>
                        <div>
                          <p class=3D"ydpccde241eyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">Hi,</s=
pan></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpccde241eyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp=
;</span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpccde241eyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">I
                              installed UHD 4.4 for X310 and calibrated
                              USRPs, but I can't find the expected .cal
                              file under&nbsp;</span><span style=3D"font-si=
ze:10.5pt;color:black;">${HOME}/.local/share/uhd/cal/.
                              Actually, there is
                              no&nbsp;${HOME}/.local/share/uhd/ directory.<=
/span><span style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;=
"></span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpccde241eyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp=
;</span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpccde241eyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.5pt;color:black;">What can be wrong?</span><span =
style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"></span></p=
>=20
                        </div>
                        <div>
                          <p class=3D"ydpccde241eyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp=
;</span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpccde241eyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.5pt;color:black;">Thanks for any
                              help,</span><span style=3D"font-size:10.0pt;f=
ont-family:sans-serif;color:#26282A;"></span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpccde241eyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.5pt;color:black;">Hongwei</span><span style=3D"fo=
nt-size:10.0pt;font-family:sans-serif;color:#26282A;"></span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpccde241eyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp=
;</span></p>=20
                        </div>
                      </div>
                      <p style=3D"margin-bottom:12.0pt;" class=3D"ydpccde24=
1eyiv5914260451MsoNormal"><span style=3D"font-size:10.0pt;font-family:sans-=
serif;color:#26282A;"><br>
                          It could be that your desktop environment
                          stores local config and data files in another
                          place.<br>
                          <br>
                          What commands did you use to create the cal
                          files?<br>
                          <br>
                          <br>
                          </span></p>=20
                    </div>
                  </div>
                </div>
                <div id=3D"ydpccde241eyiv5914260451ydp3676ad2yqt49813">
                  <p class=3D"ydpccde241eyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">______________=
_________________________________<br>
                      USRP-users mailing list -- <a href=3D"mailto:usrp-use=
rs@lists.ettus.com" class=3D"ydpccde241eyiv5914260451moz-txt-link-freetext"=
 rel=3D"nofollow" target=3D"_blank">
                        usrp-users@lists.ettus.com</a><br>
                      To unsubscribe send an email to <a href=3D"mailto:usr=
p-users-leave@lists.ettus.com" class=3D"ydpccde241eyiv5914260451moz-txt-lin=
k-freetext" rel=3D"nofollow" target=3D"_blank">
                        usrp-users-leave@lists.ettus.com</a></span></p>=20
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</div>_______________________________________________<br>USRP-users mailing=
 list -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an ema=
il to <a href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" =
target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></body></html>
------=_Part_3368364_1456496282.1683651990102--

--===============4334749258139030136==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4334749258139030136==--
