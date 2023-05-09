Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA1D6FCBCB
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 18:53:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2C3D7384777
	for <lists+usrp-users@lfdr.de>; Tue,  9 May 2023 12:53:28 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1683651208; bh=QSl2WNjH33gRuZIJImZIGfZaxvDXrKDz/q+4rftSm8c=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=kLrx5NvcSh19/lnB4+FxpDbh7lh9q6EY2Q6sxsf+03OwVxEjVSup5Mb3QUoUGm3Hh
	 JBkIiM8xtkNUDGOEhDnSfJ0nxnyaJA/mlXIwoVgMrU0mKgIndY11n/wyUpZB6iFzAL
	 /aGCej+tcRORL5JhnLGKOtyPW+NWikrt7KNfLHMkfVHQQJ8k76MbjSfVba8ekygVP1
	 KyNwTKYNY0UCPaRXMzU2dSuOWP723rrGdsQf+dcHakTlUR4txXbfmJUoZZInFDyy7A
	 xOoT2ZaybhhLRMSQp3cIyEqZezUSTEcXweBe423NbbtEkVY+PiteKdqAlj00jMkTV8
	 97mxQQCKZtYxQ==
Received: from sonic306-2.consmr.mail.bf2.yahoo.com (sonic306-2.consmr.mail.bf2.yahoo.com [74.6.132.41])
	by mm2.emwd.com (Postfix) with ESMTPS id 0962238455F
	for <usrp-users@lists.ettus.com>; Tue,  9 May 2023 12:53:02 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="igH3np3W";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1683651182; bh=HjmSVhIA8JUN2qLL+1Baog38Ha7GfrZyMNO64j7Zk9U=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=igH3np3WdLd47dcyatkNHHzxuBN/H28rEegU9wG+Dhueq/kzsvqnlEB32JfmKBlCa5ftqAxUjOShl8463CkdqCF5gEnCneXHmbBg0nDTPSdzKttEz128LGRsEQ8avWDMfVybVi4fia6736E14VXMheunKxUK+Fq6g1hH2PcxPM+wxneW6UVwMbDy7uVAzTrIxO4bUmsxF1KIM/s/xzb1oYW7Kt9BIg3fooLqSDHH1bQJOvJs60hwzdW7LtiET7rLxw9RvqtWgtPH3GsnP55PQ2ttR/kQcmKLZp9xc2nAJP9eM1GU/ImGCR81rVw4VCkdIPC7dP8K983+YKqcc1LvBA==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1683651182; bh=LBxshtACZgc6TWRqXxHUvLtRwvwYsDa6lbFJebR4pfN=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=tO62FhTpPwYXmUiMDUWUQQs2bihn3oYnvMqBwFluCRpBber3CrKGrKbq9zDht+G0Ejf0lOFb3OGNAtZufQUb1a8PnjUqd6XN1RJ9XIh/rg/9OrsS1UfVePFpGRNu/w9aV3PVeIK87oatXRA9A/tue+y2Nf+nE3R6MG3GU1YUCxwhgiqPw/1aMOEiPMj0szRN52X1GKNeHWdRaVADXbvBxwPV+ZRDC/18QhLlBvy991mh/NSmGxDOATaXky1rHhpeFq16xxk0mC8K6SUVgwsyb78LTGAYCyz4SkZ5sV3OQmzqje/xsTqr7IGBdiyYeHn4hJr5Ue1GNKZWnVR8lAs3vQ==
X-YMail-OSG: GxaGQCYVM1lWDxAYTAbgFuae8z.bxmiywmnVXjN7hgGoZxvQo_Vckv4N6QA9Sg6
 AAlbyDIcj5x96GTcclCA3KFKwkDImQrvLnc2zUHhQOnB1nv.GMCprd9HL9O2CPtBgYk7Q89zJUc4
 ndZqDsxBTCpM8dDoMLySV0z4PMcUYJnLQcxCFeefuBiQYYMaQkOUelEoj3_3vGOCbIz0T52gH9PI
 9lPSNN1a09Byp8voJ3FTbpiMWVxLM3QMzICskHHeybjdeKe95bFIKp3b4fKJ91YyZxKtMYmn.XEU
 2fJU0eUNL5IeaMf8NYOKT4ySEw0hKRsAGYdJYOkiWtyAU.48NGK9WnIxLiVx7EQakJDunk2ZMu4G
 qA2W3qpql_S2jFcZJioZu394qJFrIYa9q.rc6JbNl.p8Fu5cHeSYJmuLdupxFsElmsDM.rGgsVMf
 G0EVg9.voxpCBsGVPwP_J2QGHxrj7yuIrczp4bPtxGe.Q8cbDv8UiYqmmITeP7RTX5XLT4CU0J4E
 DrjVrlmua5N4ghwMknud5fKvoSpVVzk4pNYFCDjBIlCwGHYdLNcp68j2gcOqn0jAsmTg61oekOq9
 I5qkqh7RPhUi.7WWgN7YtY_spHNIx10UMlVZMd2CZK5puCsao1OVLkn5_BDb9MHiNLeKpLqk1PV8
 m1Ot65G58zbW9qkB3CtU01WIpZr8hW.xCe4vcuKhD0AjKhXLRRnVM5pgMTd_RA_WHsGOjL24GICL
 DEVv.z4FrYaYVaxixYCFEpcIP5N_G3OuOm4JKL33s1cDwjofxVoK.q6bHUASGpuQsgrAyf5BljOv
 ._Ld.iLGIyuJ8Dfadt4ItA5w4rqAqV4vYy441sRH1r9erWXRZLzLqkKQlLxY1DL9TjUhf5SgLECc
 iQJAiWyuhBSrzWMp94MowvkAVQEhd8T6aJkyjsag1RKlYM0lWLL4gbJ8cSSQfLrVkW_19Un5iHH2
 yT5XuTfjj640vj_jXmB9za9_VERdffGZrM4B1AoqP22OgTFyBO7XO8E8c.u_fI6FyYQ9Hqq7gUFT
 sI9IdgPnDPy4WHFWB4J39oPtMs4qC.GzGJImODbQG52CZXcKpVr0U4GOXXnR4QeXo4a1rB3_5Xg5
 rDI_xcw2Pb8AO8wdHFqCUkQwaps7hD5ZvQRDOvzI4PYFyPsl_nE0eFNC3IC7JxizwPSP.msUAddu
 6DrLlgOBg1ovaKgix39pVe_0biW1KemuMiGBPv0fcCLpboWLl0LKVXqeDk4qMCX5WIW2pfbcbmUt
 TPPO3Hb9WJ3YL11C9MnV.ilAbRzGL2L0cVX0krJwpN_ZR6hUwU6yFClySftkdO__MBUfy5NOYCnT
 vw8z2IP14wjIESVkWA9szCaaYGXW6GWjWm_tm5WnC8tZv4rEVcxOfSVoVofZHo53a0Ig4GCFcoKr
 oFyudPUQJwbzSf9pg8mR_dUojHxx4.d8Y8Yvxy6fJ5zV.o1ZjpavMOxh1pikJkCCqZ81myoJZNSZ
 CubMcqyY9ILf7XMw6.g6AxaGwk76XOhpREBjYozc4ZoBVaCu6Is7YjK9Oi7xcGlcwbfhilbP01dm
 BNU405H9XjbaPASs815xIPNqZ0a3M2XwDN8J1YqUBymQ9vvFu5sdF_84Uu2yHdW8s0YUqKZtE2d7
 leJ4jByALxoxOo_pXBFYOJLrR8xZo1.58MtMw6Ll9X_zSNsb81MrZLjgQuzZnVprodsMgMl1zF7Z
 MFdSd8TD4zhVtESOXTCI2BCtyG2Ys6Gt1FZqaZ.ioYpzCnJ4O8ltHU50ppChuWh5.P_7mKoEa7Jn
 TfHlcX38luNNhb_DqTYRDr90aitLTN1SlrCSbEtuOn_H4HMVusE2Cp39mvPjBM17URP.hAh8ExhF
 qHQwPeK1HWvxsvF9LEKU7Bsx1X6OqdOqiPz3Fkn2cxQcaxrKJOkoY8D4FJ8Wto7wRg3ccZUWQmUj
 3jfbyR7TbE5jAvJfT2RYSZd2nUwaoCh4F3Sa6x1xXL8eWcts1.2AzNOzi9m1mq_m0iMkhGfY9D0v
 KR0cLenHRfN1m8dC6.osK5RNFr5iXL12IK8iUHfzGwwUFTnXxd6SEP04DeGPbdrDOMqBIUps4Aw9
 zB5MPCbmQveUVwFdAFzSMfWx1j89G1QNq0uImHwseVSleRDQl6Hs.p4mlf1tFmYDOZd4HjQUqrIN
 ATiwLibIJMywALyNsywGKA7cRVAm9Ge47PhhFkSOzaLpCDLQawE.5I883OKqnxrUURT3l.pojdIi
 QpPkl0GgdAQlDpnt_qUEsN4sCQufwKUHkFdDZ
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: d9390b5a-8f17-4202-ba36-3e92a53ef8e4
Received: from sonic.gate.mail.ne1.yahoo.com by sonic306.consmr.mail.bf2.yahoo.com with HTTP; Tue, 9 May 2023 16:53:02 +0000
Date: Tue, 9 May 2023 16:52:58 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <494641635.3380849.1683651178051@mail.yahoo.com>
In-Reply-To: <c215628a-03a8-fd64-acb0-c16e21f82181@gmail.com>
References: <b6UvUNXfjdwWK8OIBTsMRiSWh8Wx2yYyFeiFpzdd9LI@lists.ettus.com> <1556054227.3356110.1683649305159@mail.yahoo.com> <c215628a-03a8-fd64-acb0-c16e21f82181@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21417 YMailNorrin
Message-ID-Hash: XTPIJEFIMMRFZPQV3D6LFJELXE2THCEP
X-Message-ID-Hash: XTPIJEFIMMRFZPQV3D6LFJELXE2THCEP
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Can't find calibration file for X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XTPIJEFIMMRFZPQV3D6LFJELXE2THCEP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4399081118304513099=="

--===============4399081118304513099==
Content-Type: multipart/alternative;
	boundary="----=_Part_3380848_1996228413.1683651178049"

------=_Part_3380848_1996228413.1683651178049
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks for your quick response Marcus.
My Linux is server version of Ubuntu 22.04.=C2=A0
The calibration commands I used are:sudo uhd_cal_tx_dc_offset=C2=A0 --verbo=
se --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_stop 6.0e9 --pr=
ecision 0.00001 --freq_step 5e6 --subdev=3D"A:0"sudo uhd_cal_tx_dc_offset=
=C2=A0 --verbose --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_s=
top 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"B:0"sudo uhd_cal_=
tx_iq_balance --verbose --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 -=
-freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"A:0"sudo u=
hd_cal_tx_iq_balance --verbose --args=3D"addr=3D192.168.13.2" --freq_start =
0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"B:0=
"sudo uhd_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.13.2" --freq=
_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=
=3D"A:0"sudo uhd_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.13.2"=
 --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 -=
-subdev=3D"B:0"
After running these commands, it showed that calibration was successful:=C2=
=A0The calibration was successful!!! :-)
What other place can the .cal files be saved in?
Thanks again.


    On Tuesday, 9 May 2023 at 17:28:02 BST, Marcus D. Leech <patchvonbraun@=
gmail.com> wrote: =20
=20
  On 09/05/2023 12:21, zhou via USRP-users wrote:
 =20
=20
 Hi,=20
  I installed UHD 4.4 for X310 and calibrated USRPs, but I can't find the e=
xpected .cal file under=C2=A0${HOME}/.local/share/uhd/cal/. Actually, there=
 is no=C2=A0${HOME}/.local/share/uhd/ directory.=20
  What can be wrong?=20
  Thanks for any help, Hongwei=20
  =20
 It could be that your desktop environment stores local config and data fil=
es in another place.
=20
 What commands did you use to create the cal files?
=20
=20
=20
 _______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com
 =20
------=_Part_3380848_1996228413.1683651178049
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp7ebd1e74yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your quick respon=
se Marcus.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">My Linux is server version of Ubuntu 22.04.&=
nbsp;</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr=
" data-setdir=3D"false">The calibration commands I used are:</div><div dir=
=3D"ltr" data-setdir=3D"false"><div><div>sudo uhd_cal_tx_dc_offset&nbsp; --=
verbose --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_stop 6.0e9=
 --precision 0.00001 --freq_step 5e6 --subdev=3D"A:0"</div><div>sudo uhd_ca=
l_tx_dc_offset&nbsp; --verbose --args=3D"addr=3D192.168.13.2" --freq_start =
0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"B:0=
"</div><div>sudo uhd_cal_tx_iq_balance --verbose --args=3D"addr=3D192.168.1=
3.2" --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5=
e6 --subdev=3D"A:0"</div><div>sudo uhd_cal_tx_iq_balance --verbose --args=
=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_stop 6.0e9 --precision 0=
.00001 --freq_step 5e6 --subdev=3D"B:0"</div><div>sudo uhd_cal_rx_iq_balanc=
e --verbose --args=3D"addr=3D192.168.13.2" --freq_start 0.4e9 --freq_stop 6=
.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"A:0"</div><div>sudo uh=
d_cal_rx_iq_balance --verbose --args=3D"addr=3D192.168.13.2" --freq_start 0=
.4e9 --freq_stop 6.0e9 --precision 0.00001 --freq_step 5e6 --subdev=3D"B:0"=
</div></div><div><br></div><div dir=3D"ltr" data-setdir=3D"false">After run=
ning these commands, it showed that calibration was successful:</div><div d=
ir=3D"ltr" data-setdir=3D"false"><div><div>&nbsp;The calibration was succes=
sful!!! :-)</div><div><br></div></div></div></div><div dir=3D"ltr" data-set=
dir=3D"false">What other place can the .cal files be saved in?</div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"f=
alse">Thanks again.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><=
div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydp3676ad2yahoo_quoted_3732052683" class=3D"ydp367=
6ad2yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, 9 May 2023 at 17:28:02 BST, Marcus D. Leech=
 &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp3676ad2yiv3352880938"><div id=3D"ydp3676=
ad2yiv3352880938yqt92039" class=3D"ydp3676ad2yiv3352880938yqt9306525402"><d=
iv>
    <div class=3D"ydp3676ad2yiv3352880938moz-cite-prefix">On 09/05/2023 12:=
21, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;" class=3D"ydp3676ad2yiv3352880938=
ydpf691e441yahoo-style-wrap">
        <div>Hi,</div>
        <div><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I installed UHD 4.4 for X310
          and calibrated USRPs, but I can't find the expected .cal file
          under&nbsp;<span><span style=3D"color:rgb(0, 0, 0);font-family:mo=
nospace;font-size:14px;">${HOME}/.local/share/uhd/cal/.
              Actually, there is no&nbsp;<span><span style=3D"color:rgb(0, =
0,                   0);font-family:monospace;font-size:14px;">${HOME}/.loc=
al/share/uhd/
                  directory.</span></span></span></span></div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:monospace;font-size:14px;"><span><span style=3D"color:rgb(0, 0, 0);font-f=
amily:monospace;font-size:14px;"><br clear=3D"none">
                </span></span></span></span></div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:monospace;font-size:14px;"><span><span style=3D"color:rgb(0, 0, 0);font-f=
amily:monospace;font-size:14px;">What can be wrong?</span></span></span></s=
pan></div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:monospace;font-size:14px;"><span><span style=3D"color:rgb(0, 0, 0);font-f=
amily:monospace;font-size:14px;"><br clear=3D"none">
                </span></span></span></span></div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:monospace;font-size:14px;"><span><span style=3D"color:rgb(0, 0, 0);font-f=
amily:monospace;font-size:14px;">Thanks for any help,</span></span></span><=
/span></div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:monospace;font-size:14px;"><span><span style=3D"color:rgb(0, 0, 0);font-f=
amily:monospace;font-size:14px;">Hongwei</span></span></span></span></div>
        <div dir=3D"ltr"><span><span style=3D"color:rgb(0, 0, 0);font-famil=
y:monospace;font-size:14px;"><span><span style=3D"color:rgb(0, 0, 0);font-f=
amily:monospace;font-size:14px;"><br clear=3D"none">
                </span></span></span></span></div>
      </div>
      <br clear=3D"none">
   =20
    It could be that your desktop environment stores local config and
    data files in another place.<br clear=3D"none">
    <br clear=3D"none">
    What commands did you use to create the cal files?<br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
  </div></div></div><div class=3D"ydp3676ad2yqt9306525402" id=3D"ydp3676ad2=
yqt49813">_______________________________________________<br clear=3D"none"=
>USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@lis=
ts.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com=
</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect" hr=
ef=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=3D"_=
blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></div>
            </div>
        </div></body></html>
------=_Part_3380848_1996228413.1683651178049--

--===============4399081118304513099==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4399081118304513099==--
