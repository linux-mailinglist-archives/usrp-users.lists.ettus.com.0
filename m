Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 053766FCD36
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 20:06:07 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 0C8813846A6
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 14:06:06 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683655566; bh=HJtt4vNOrbNkm0qBZ4JswQiFUC359VbCd2P0kogW/jg=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=IDNReAAm81WJJ+wZcU3W08I409rQK/5N9MoUc7CqMUQiBlkfpS3hRQ7gfn6ptdGr1
	 6Bi00sjwBW9qu2gkESSKqyMtQ29qKBLYWdu1DyatSxiEtczrHRgIX1ODdQGndmU4ZB
	 ZF3tP0rfQ1jZYuc19cQlmIu5/5dSI/6fs3GnKG8PyZSEKG3yHJdVZmnjt7N6J23uCf
	 e32QcHio6edJkObt5Ost+4lVRF5smBXbhntM8/1ME/Hb5ueoOD5pQMpkeE0T3S/Zqo
	 z5umeZrPlWNvnOVvRHvxEm5Djjto8eCxl+wq2EJsZ79K5NRRnNmYGqjY0SYCxEjudb
	 baJbuVjf+hBNw==
Received: from sonic310-14.consmr.mail.bf2.yahoo.com (sonic310-14.consmr.mail.bf2.yahoo.com [74.6.135.124])
	by mm2.emwd.com (Postfix) with ESMTPS id 597523844E2
	for <usrp-users@lists.ettus.com>; Tue,  9 May 2023 14:05:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="Fux6+XP0";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1683655543; bh=bdxjobFTciZdVQON7lmfNk+lIwBLi1iZh/iHJys7Dnc=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=Fux6+XP02Mi2A7GBdDzk0Zjp49YzviPjj4oVawaF2kWz2jpWjFGM9bq92TCXoNJhwfipH5VARunQ1/DhONF7XSU3imjR6eEXCh5Ak1pfy7J5MCAuuAlnCOCsfur8C0JTCvVySG+TynV29sXpEKG90eYCe+uILphNyvgRCG7GlR2t4UpuktOhqhRvCLiLGvof6q/jbvI6AfelMh78VHBYTCF6HD8EAUjuk3xXQxuRzy+xidqTJTULvybc6AM+ei1fe7IravWxT0fKpZ6BH/MnVv1b/3H1ULuP5+Uzcp9NK6dMQj9Re/lXoE2r8u83o1O2lzTmSG5ZEBpqTY1TsbP1kw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1683655543; bh=4KN0AXbuAGMOZFlPle/xROdOSzX3Nm4QpfunR/Zb21l=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=N7p4iGdT/HegDxk7kc+y+L//K5UV5pLsOFcJlS4qaqXNbjDRRGBJM7/eKWXvNhPvlHiowp7IIGSRzD9AvBVHfToqmQ5U/Z4icbssvk1O614PrlFGsaStSoLSicthVd6WRr2SAw7gXAJa/SJBW5NilEUkHabmTdxeIkadHe3BhXMbXOVILqDW8qB7IGzTxwPu+Od+nDCo3340733u/zsNw5iUi1wxe/gp1aJwPE1xrei7YDzGJcGQ+xFzJXNYzoeeXNLJA8ECN1Tuh7+k0bMSTliIOolTOfbXaDDpK+orq3t5WT3yyy32dFwPiuuQ/ppqmGXEYtesuEl7ZPSwE1l/IQ==
X-YMail-OSG: iNrlbUMVM1mS.wDHLTxywXu4IckelCouQgyWXnlPzhXJTkYMAMEhcQyMvS4Cq5i
 sIES0EUEpJDrtMhHPXi4Ot.7eqahC_vxy0ll7Qt4lBGfyrZpDRW0jj8bYWFJ2SXnWnmpcwptjdjH
 xAHntyP_kHCBxOXYd16wsPpKUAD9eTavSg4rHMWZwEME7kbUPpdI2ogVdGciDtzFDmJDs6WuJSFh
 3uejve5.oxdShAfR5Ru_XL9_MsysNHbVJtTTmWa6kgsnE2UOkqbJ1TtdWk4Wm1AS36y0gDwlDJY_
 NXD5lRWzjJfUTQe1_pEWGh4UajqF_j5Kz8.3lIzUuUsuEiCwhftp1wtGy94ezUVN9mpC0UdyY7EY
 vizC4.2Nqcisf4_con9wr7gq2F6_YOZ2.OIHEnXnYX_tWQoFI4yB_DX1DHxLFNRfBUa8qXYg6rXF
 CoPOhDAmcm2P_G9w6SdVTmD26dCBQjfljtdsCzlp15yUXMhsaujiPt.frabrFQ0bRQ6RLQpGOeU2
 EyRRRdni_9ll.D88m4IgDeqcesz2VkKRAVqzuh_EH7fZSKLC00vLkTS0n08lt_P.RHurlDQJi7W.
 zOt9vQIIMaWYMxwrmKLXkyLL.acT9ge09u.b.GcJ8bt5Oep52zHxNlpF9jVM0UTXVDlbawx_L2ky
 g1daTkTxhyF09Bop39_W8KhtBDg_6w.7mQ.cEjoj2meM5anBzKCYbTZPwLg6BvscJ8Z4DIft7eD2
 VvdvFWm1I5WcUwAArYg9SqVoSUkNaLEqBQuNwf.G19mWcWG5qMz6y2z4SnwB04aKC_ILqFA6ZVnZ
 cS.G42TqzOQpFc6z.vVSPI.QzspkHipiEGv8EBdFPJzWjGKpVj7SAVp4A0jWzX8mzikq9SXu3HFE
 8MB0C5Sjb16uNWrf1.LswKtWZkOE9Z2WOJkqpqVrZqPx6n30r8DUT67PHPsEdygf6bAJ5If9wrPP
 V212Hxyyh40d6MAr2L79NxMqm4pitTxlEw0wwNqjxeoyhM7qEr5IhaYfJhytTPaH2DEZIrqbR6OK
 m.4RFkAAipGeQC_fwdnwpXpRgyVu.YSggs2gAHzMAE7a01wtqnm4gabvH2bsNn7uQKB_aQ17v6k4
 o_svXWPhJ.qbWni5CPFYcXWpJcnOSZir53NuW2_kSo8ZBrKLa9M6ZoQBCJ8aWTrPLxZH8iyFsd5F
 5yFSl8r2Ln1oMIdc__ZS4i.wfMZris4HusyGknIPhjLHNMusqob53ASunYCwaWRgkovOzTMACYQS
 EVXyXso7lwAfNrT2LR0Tl4v.PQNZhkfvyukk3IGBvZ0oZwnHkh.mo70IKR0Gc3YP0e3PFyZPMwFo
 cCG0GKf58aCmqkygYMEjoDqtc3dOx3OqKAgSBQaN2gdf1o812LRTFovq3q6Pb67MSlOWFtCX8l86
 T_SiRK_2OCwuHtB848gPtfXJNYf.MCLx6CZPFw6Li4EvcUMjp_zZ3MVS0Z4bB1G4qwkVoMwvw.Xl
 _2nCzUy35DK4mRvmB0VHti7_Cxi5YNUX6eBYLW3Fz_d32FBW5DzfnO_tkZqJteZdPUYCYBROOWcN
 QSFWSQqurGIUXVIWxlW9VLVue3bsm1Wou2Mlmmsz71MiVfElv68cJq._IB8LMXr_R6heAelC.FLL
 CLBYLLYzNKSj2RQneu27t1xMOsLXYeVVpX0924rJjD6lpGU0YP6Sl_kxMeAF7KKSDN6yZhdTnnif
 2AxiWPV_BAXJGihcwO7LcSGY_cSWgLSVeVTB1cZkDs.R7i1w8rhOfv5Xb4CU.c.iRzn6MmYFnukI
 u4k.EqZI.0NdPtfYwiWmSnCBWd3rCI4c4SLMP9Q2cxV3PU019HrtfuhXlFEI91QaJnMaPBwpCBac
 MsXvycHwK4o4FUYCgJNWL7aGrnP66OgttfLL3MAteIoDgn7038cMtxgKVjCNck07TI23kIwXLzjd
 ihMezs9ZExwasPfujLUCFcPNX7IJSpC68WQnevfRn42qEIIVp5N3q8JHdJIcOad3aYaHAHutCYdB
 niYAyS_M5D8IoGo8PNY8T717atxtsFfQ_duR11drsHhmmsq7YVwd_dFXZOSfwRfm6k_ElKR_pj9R
 dgVBW_uH1RQcISMGgh2uAtypn8_3HvttXSiYWXNV_F6RYxoXC9lMSbbp54OCIRTKqgX7VoIG5W2S
 MIBHk5haqMgKJ3cwFMRbEVLha_jatppvcGfdbjLtEEpVoW1ezMszNDmbf68Ksy0hL0riuE4_mAA-
 -
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: ae90b147-6094-42d5-acd3-44e9c9919baf
Received: from sonic.gate.mail.ne1.yahoo.com by sonic310.consmr.mail.bf2.yahoo.com with HTTP; Tue, 9 May 2023 18:05:43 +0000
Date: Tue, 9 May 2023 18:05:41 +0000 (UTC)
To: David Raeman <david@synopticengineering.com>,
	"usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <557748721.3394881.1683655541044@mail.yahoo.com>
In-Reply-To: <fbf2498a-a65f-4f2a-d58b-12481223f9c8@gmail.com>
References: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com> <1556054227.3356110.1683649305159@mail.yahoo.com> <c215628a-03a8-fd64-acb0-c16e21f82181@gmail.com> <494641635.3380849.1683651178051@mail.yahoo.com> <BN2P110MB1747D75E806A3927E9542AE8B7769@BN2P110MB1747.NAMP110.PROD.OUTLOOK.COM> <fbf2498a-a65f-4f2a-d58b-12481223f9c8@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21417 YMailNorrin
Message-ID-Hash: OXZZEHWQFH3HNTXCHT2N5EUH7ADYQRUN
X-Message-ID-Hash: OXZZEHWQFH3HNTXCHT2N5EUH7ADYQRUN
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't find calibration file for X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/OXZZEHWQFH3HNTXCHT2N5EUH7ADYQRUN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============5442730334163664949=="

--===============5442730334163664949==
Content-Type: multipart/alternative;
	boundary="----=_Part_3394880_1036866340.1683655541041"

------=_Part_3394880_1036866340.1683655541041
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi David, Marcus,
I just had a quick try with one command. The result has come out - I find t=
he expected .cal file :)
Thanks a lot!.


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
------=_Part_3394880_1036866340.1683655541041
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpe09fb89yahoo-style-wrap" style=3D=
"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;">=
<div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi David, Marcus,</div><div =
dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D=
"false">I just had a quick try with one command. The result has come out - =
I find the expected .cal file :)</div><div dir=3D"ltr" data-setdir=3D"false=
"><br></div><div dir=3D"ltr" data-setdir=3D"false">Thanks a lot!.</div><div=
 dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=
=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydpb965e34cyahoo_quoted_3722689385" class=3D"ydpb9=
65e34cyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, 9 May 2023 at 18:01:24 BST, Marcus D. Leech=
 &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydpb965e34cyiv5914260451">
 =20
   =20
 =20
  <div>
    <div class=3D"ydpb965e34cyiv5914260451moz-cite-prefix">On 09/05/2023 12=
:58, David Raeman
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
      <div class=3D"ydpb965e34cyiv5914260451WordSection1">
        <p class=3D"ydpb965e34cyiv5914260451MsoNormal">Note that because yo=
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
      <div class=3D"ydpb965e34cyiv5914260451WordSection1">
        <p class=3D"ydpb965e34cyiv5914260451MsoNormal"></p>=20
        <p class=3D"ydpb965e34cyiv5914260451MsoNormal"> &nbsp;</p>=20
        <p class=3D"ydpb965e34cyiv5914260451MsoNormal"> &nbsp;</p>=20
        <div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in =
0in 0in 4.0pt;">
          <div>
            <div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;paddin=
g:3.0pt 0in 0in 0in;">
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><b>From:</b> z=
hou via USRP-users
                <a href=3D"mailto:usrp-users@lists.ettus.com" class=3D"ydpb=
965e34cyiv5914260451moz-txt-link-rfc2396E" rel=3D"nofollow" target=3D"_blan=
k">&lt;usrp-users@lists.ettus.com&gt;</a>
                <br>
                <b>Sent:</b> Tuesday, May 9, 2023 12:53 PM<br>
                <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" cl=
ass=3D"ydpb965e34cyiv5914260451moz-txt-link-abbreviated" rel=3D"nofollow" t=
arget=3D"_blank">usrp-users@lists.ettus.com</a>; Marcus D. Leech
                <a href=3D"mailto:patchvonbraun@gmail.com" class=3D"ydpb965=
e34cyiv5914260451moz-txt-link-rfc2396E" rel=3D"nofollow" target=3D"_blank">=
&lt;patchvonbraun@gmail.com&gt;</a><br>
                <b>Subject:</b> [USRP-users] Re: Can't find calibration
                file for X310</p>=20
            </div>
          </div>
          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"> &nbsp;</p>=20
          <div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">Thanks
                  for your quick response Marcus.</span></p>=20
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">My
                  Linux is server version of Ubuntu 22.04.&nbsp;</span></p>=
=20
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">The
                  calibration commands I used are:</span></p>=20
            </div>
            <div>
              <div>
                <div>
                  <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_tx_dc_offset&nbsp; --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"A:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_tx_dc_offset&nbsp; --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"B:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_tx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"A:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_tx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"B:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_rx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"A:0"</span></p>=20
                </div>
                <div>
                  <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;">sudo
                      uhd_cal_rx_iq_balance --verbose
                      --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9
                      --freq_stop 6.0e9 --precision 0.00001 --freq_step
                      5e6 --subdev=3D"B:0"</span></p>=20
                </div>
              </div>
              <div>
                <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
              </div>
              <div>
                <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;">After
                    running these commands, it showed that calibration
                    was successful:</span></p>=20
              </div>
              <div>
                <div>
                  <div>
                    <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span st=
yle=3D"font-size:10.0pt;font-family:sans-serif;">&nbsp;The
                        calibration was successful!!! :-)</span></p>=20
                  </div>
                  <div>
                    <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span st=
yle=3D"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
                  </div>
                </div>
              </div>
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">What
                  other place can the .cal files be saved in?</span></p>=20
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;">Thanks
                  again.</span></p>=20
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
            <div>
              <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=3D=
"font-size:10.0pt;font-family:sans-serif;"> &nbsp;</span></p>=20
            </div>
          </div>
          <div id=3D"ydpb965e34cyiv5914260451ydp3676ad2yahoo_quoted_3732052=
683">
            <div>
              <div>
                <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">On
                    Tuesday, 9 May 2023 at 17:28:02 BST, Marcus D. Leech
                    &lt;<a href=3D"mailto:patchvonbraun@gmail.com" class=3D=
"ydpb965e34cyiv5914260451moz-txt-link-freetext" rel=3D"nofollow" target=3D"=
_blank">patchvonbraun@gmail.com</a>&gt;
                    wrote:
                    </span></p>=20
              </div>
              <div>
                <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp;</span><=
/p>=20
              </div>
              <div>
                <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span style=
=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp;</span><=
/p>=20
              </div>
              <div>
                <div id=3D"ydpb965e34cyiv5914260451ydp3676ad2yiv3352880938"=
>
                  <div id=3D"ydpb965e34cyiv5914260451ydp3676ad2yiv335288093=
8yqt92039">
                    <div>
                      <div>
                        <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><spa=
n style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">On
                            09/05/2023 12:21, zhou via USRP-users wrote:</s=
pan></p>=20
                      </div>
                    </div>
                    <div>
                      <div>
                        <div>
                          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">Hi,</s=
pan></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp=
;</span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><s=
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
                          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp=
;</span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.5pt;color:black;">What can be wrong?</span><span =
style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"></span></p=
>=20
                        </div>
                        <div>
                          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp=
;</span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.5pt;color:black;">Thanks for any
                              help,</span><span style=3D"font-size:10.0pt;f=
ont-family:sans-serif;color:#26282A;"></span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.5pt;color:black;">Hongwei</span><span style=3D"fo=
nt-size:10.0pt;font-family:sans-serif;color:#26282A;"></span></p>=20
                        </div>
                        <div>
                          <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><s=
pan style=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;"> &nbsp=
;</span></p>=20
                        </div>
                      </div>
                      <p style=3D"margin-bottom:12.0pt;" class=3D"ydpb965e3=
4cyiv5914260451MsoNormal"><span style=3D"font-size:10.0pt;font-family:sans-=
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
                <div id=3D"ydpb965e34cyiv5914260451ydp3676ad2yqt49813">
                  <p class=3D"ydpb965e34cyiv5914260451MsoNormal"><span styl=
e=3D"font-size:10.0pt;font-family:sans-serif;color:#26282A;">______________=
_________________________________<br>
                      USRP-users mailing list -- <a href=3D"mailto:usrp-use=
rs@lists.ettus.com" class=3D"ydpb965e34cyiv5914260451moz-txt-link-freetext"=
 rel=3D"nofollow" target=3D"_blank">
                        usrp-users@lists.ettus.com</a><br>
                      To unsubscribe send an email to <a href=3D"mailto:usr=
p-users-leave@lists.ettus.com" class=3D"ydpb965e34cyiv5914260451moz-txt-lin=
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
------=_Part_3394880_1036866340.1683655541041--

--===============5442730334163664949==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5442730334163664949==--
