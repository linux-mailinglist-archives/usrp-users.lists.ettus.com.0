Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C2E3B76A22B
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jul 2023 22:50:14 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 47912384B40
	for <lists+usrp-users@lfdr.de>; Mon, 31 Jul 2023 16:50:13 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1690836613; bh=Ch6XZ7BcA267uCMNHRvtRW2b/3+6Rg/n2mhTtRWvH8Y=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=LjV+zmlbqfsKG2RY+C+LOHZ1/CwwbuSxQOJVpE+EFtbMFYUhD4PHXYiYHNDllHjk3
	 vk7LWY2zkwNDOomwenCVV+yktiumvuHZkyOgGhuIVkK998qmBN1CEEtdQP+CfwwsEL
	 c+8jtypL50qGSbTUJ52wk3p8ZH5aPxOwaGw3aWXkV6Mu4nE1b6a3H7gvAo3PNgZ4u2
	 RAqDjUiEIf8C+Y67hBocxpYf3m3f/lmaBC8VGQNJol7CTLjhd7xKpMSJ/tpa/zQEnL
	 jGbT1Mcs9TLzc0nIXuIlOorK0mPE7iY1GtB2VcSynU7WEI/uLD0/5HufM3kZluvPnj
	 TU+QxkPierWxA==
Received: from sonic319-26.consmr.mail.bf2.yahoo.com (sonic319-26.consmr.mail.bf2.yahoo.com [74.6.131.81])
	by mm2.emwd.com (Postfix) with ESMTPS id 87ADC383E2F
	for <usrp-users@lists.ettus.com>; Mon, 31 Jul 2023 16:49:37 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="icH+LTJr";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1690836576; bh=IfIP24oPauUMm3PyPorLp3meCuT99ZufL28Q6IIB6s8=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=icH+LTJrEriD+obJUcY4Po3vNK7+l7IWG2jsxjkrPz0xfQsPqeMMJZMyBEST4CYlt66UgNSFBKUk1RqIAVomWayEc5zgtvbthPHThH0S2hDgBxhQwtAcBFTeo9bMff6jVTSxPddY8tabtYLpObYvrjMHiKTGXsWOVM8gRRR3Xm1RM7PwTO7BHPRmZJNOTzP1ZB3UvDuzPZZr2rlTczgVpEh/oFsVsuevmT7m5BVNmEHOQYXMePfviUM9QptVKjw9uuSHLKQIktA2zueNhiXnanYDY9FuLVgQniDJ2tYf9wQ0UmSncVMJmHVjsLenSBaiZeE2/FJ1RKikQzvkA1Bfbw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1690836576; bh=hLQnFVFbDLgsNJFJGlne9TneZHOQ1YpX5Zsed23imN7=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=Wqa0gZOvR6X3u62LSpb1g9yIwFCdmaIHB4QF4T9slizAeHhf8ZM4GR7rClGrTgu0KCsSFKySQeqHfgTZik2Y4Faw0LNpOar1ZfulbgisH0ZHAabSEWhMRnYt9RUknXj8bO+8bXEHc/IA9so12dEuMlFuHm+EPBBEd2H2DnK9R5cBmbL/bGAjzC7Q7CKD659wf+m2knM0KZoqb/mTER2AhOhgHhNUg/pnMqVMPl+7tkEkEGUqcIpMsKXgdoc1vzo4HtLstpUOgY9Z9kmQURU2C812ACJY1LKxl6qFN2f5a5K02/Wib83ipLJcoaTLUZYONmM3rJ5kzLRF/20VPmnNzA==
X-YMail-OSG: tcyqOeAVM1ndSCjyqKmHSVbCguI7NX9vXv4EKUbWpSPFAKw.f56J1EGfz50foaO
 8raMvTI52Xlu7NJtXt0m3Y9g8oRL3kOMr7MBzDWeExzsEB_bOpbSnpFY92z7FlZm90.QcAekr0T0
 nTcC7.7IGRfgWj5o5E1lOvR.5B82nGd7IgvWncYh0yXwgD1VFJcZUs0Ir91f.05Rxrvdq8RyW1wK
 PLI24tAm.DZoSrHNyjI.AQ7rLS_IoI6Ddb6yOTqjX901jomPelb4naZuuVjs5EHRuNYaQMSQJ.X9
 EI3fKdrOt0vAd44tBqWuYLPt1ISja8qKqa83RoN8EtHFKT9aTXRoB6YHIStlw.Zu5bwywENsp4Ii
 lkcH2asrqvLqQA8E5j9pMUyLwLl2dw2gK.jPOo4nMk0WZWyOOpHqEy4.VLNrKBrv2_QMSN0BmE0p
 lw0MLCZ1GROldiIoPdySv4M6nydsIgariZPfD8sykNV50AD0rxlVbQ2TcWA7Q5msDHM6RM38oWsd
 ZkkayTvGqXE89.u13mT15RUXWCRf.b8y6q8zpzLpvirQvyatmQeGY13XacE1B8J2DrOmsw7sV7n8
 fhPTOR8BSsLBhbcnuXYs3ICaDXJdHCun2ht2uQNAFWfoFyna32g.fiSy42L1npJGEnxsTX3BbdHf
 zFcTBWOR.rwwRTUaaGPVwq5m1PyxxySxSWe._Ey2t.Rl_ybcC_14tlTXbWO6HlJYoWziDitS8Zb2
 8rDzUGzOjIXR.L5nLEs7A0EEa.niK1YssB1XGahSRdqFZVoU6HoBn0dBKwnB_0.EtW7zE6.JwQ5_
 32yvgXCy.hLjdFE60xFwHTUBJroHJGD83L6kEP7i2tz26o1F54rk3JNSqDaET0KD3sD3xFccMaz.
 apgqzl9UMlFDCQi.jDIBXYnlPZNuKV.8il8crGF4HbYKljdJXvpPN8.o6hUAV3xIw2Sji4LDmV7c
 GRal_2fTawn8vVJxJQd7suhKEZHHLO6TzK7DObDmjHzdJEoI2xYEYVuvQDcS5CpJmUG479jlYbJs
 MoBSK.VE83iFBKcyyvl3n9SKhYrrCi7uVeM5HIFf_jtDJ73yrR_BLu..7kx98LQ7GJHZP0xSvPnY
 Ap.l1Is_dyCKmjz7w7zCaHwugSC3R012Sl_YvTbcKE5KWb4scKSLbay1xAqdLwA6yboDfW6uZIiq
 Zvha54nvn1d_p.CodZXq8p2ZrnuEHDClnvVckMSRzXYlXBnsNyiZJmnrhJgkd1Gpf.7nKoTiVqTW
 X_DboTCtqLoBWBSG5cRHI6OyxVhvRQHMBeGfMpAJGqNqn.mJWJO1AdDwPFdvZ9s0hXEJBALiI2Rh
 nwxV_pH8PjfnHzp3A5au2HFMhDPL_nAqyz0O33UYssCcrTpawNm2xR4NADMb_gqXhCdYh3KvBwbn
 rUDkD7fIK5mMSsGV8U6og9RQDRzr1hGu0vFy8GLp96hUWLtPfKdojV9Ddkl7BXao94v5ciOYF.Ze
 uALpNXZvnuFDcodl60ZM2c_e8Z.QwNrCLwnJU4eGpNpc7PERoytB.RLNTw_jnqfhi7YReCBjGDPY
 9Bi4K3Qeunrtfz.zflzUmt4NLyxc9P7sWTbqb7NSUc24I9G4kO4U00_xd3v5ajTWNUjuIv5vfAIW
 rySLgMUr2BxL0Q.xKo4mHEx6y96sZPx2CNEDv_2PB7XGeGx0NadG7_LjH8F_uJefgrY_JkVnS9hk
 R0W4MFdWWa7OkFy0xH8xADlkQ.kApA5FnIt7lvLH778NrczDUNwJ8CDVPUraFjNwFVpuqNLgHJxE
 j5PDvT9v_aIMRZ0A_WJ8wNNxWZOgtxoGesHCp8nsEiovv3.rGiFckLJv31TE7ckUgLtJRGTrM31Y
 2p98BfMoZJVLvkznz_RPPf1CtGGC1Z7UPkUw8hCnwsB2IPAd4h2.Wv4MFwotnEFDeKPmmzq_yUNc
 arh_VkW3Z10CRbpg7dwxaXD0q36Dyxq.Y4dZimVbGMUa1fXZ43SnvMhAreXYUop.2RYS8aW_4RDZ
 JzS5yZIEQHQ_BsAM5SpodyEvOvNriC6dwEiEHKtbX3NM5oJxERndoJSIv5g0WrsZoUjhHXjn4sk_
 662Dyr4njwPZGuPPGh7H_40ZNNLdpMcQksh5GkQ3WNwK1ZPrFoOl1USzyQVyvJeDm_EfzTJ_HCvU
 F5eJLmYJsxnuGw.G19.bR6dmVVjzNoFEQrwtIxHRvAR24spBmiwcb35cqsz4HYeQYzfmqCJit_OM
 SblmV8uIp_USP5niX4b5LlUi0
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: d327f384-3a7a-41e2-a23f-a68227c86d78
Received: from sonic.gate.mail.ne1.yahoo.com by sonic319.consmr.mail.bf2.yahoo.com with HTTP; Mon, 31 Jul 2023 20:49:36 +0000
Date: Mon, 31 Jul 2023 20:49:33 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>,
	"Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <838483527.76056.1690836573630@mail.yahoo.com>
In-Reply-To: <69bd12cb-cf7e-5807-aadb-36bcf46dc8d5@gmail.com>
References: <AM0PR06MB6179F4337F84319EA0A8D76CD407A@AM0PR06MB6179.eurprd06.prod.outlook.com> <69bd12cb-cf7e-5807-aadb-36bcf46dc8d5@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21685 YMailNorrin
Message-ID-Hash: XYVS7KYFOSWGNTY5GCW6PNBTJXKP74ML
X-Message-ID-Hash: XYVS7KYFOSWGNTY5GCW6PNBTJXKP74ML
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Sign in freq tune
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XYVS7KYFOSWGNTY5GCW6PNBTJXKP74ML/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============4458279857160267526=="

--===============4458279857160267526==
Content-Type: multipart/alternative;
	boundary="----=_Part_76055_1985816869.1690836573628"

------=_Part_76055_1985816869.1690836573628
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Marcus,
I am doing freq tuning in X310 USPR and find the description about sign may=
 not be correct in the following page:
https://files.ettus.com/manual/structuhd_1_1tune__request__t.html

Note that the meaning of the DSP frequency's sign differs between TX and RX=
 operations. The target frequency is the result of=C2=A0target_freq =3D rf_=
freq + sign * dsp_freq. For TX,=C2=A0sign=C2=A0is negative, and for RX,=C2=
=A0sign=C2=A0is positive. Example: If both RF and DSP tuning policies are s=
et to manual, and=C2=A0rf_freq=C2=A0is set to 1 GHz, and=C2=A0dsp_freq=C2=
=A0is set to 10 MHz, the actual target frequency is 990 MHz for a TX tune r=
equest, and 1010 MHz for an RX tune request.

My results are as below (fs=3D200MHz):
Tx Tune Result:
=C2=A0 =C2=A0 Target RF=C2=A0 Freq: 2080.000000 (MHz)=C2=A0 =C2=A0 Actual R=
F=C2=A0 Freq: 2100.000000 (MHz)=C2=A0 =C2=A0 Target DSP Freq: -20.000000 (M=
Hz)=C2=A0 =C2=A0 Actual DSP Freq: -20.000005 (MHz)Actual RF=C2=A0 Freq +=C2=
=A0Actual DSP Freq =3D=C2=A0Target RF=C2=A0 Freq


Rx Tune Result:=C2=A0 =C2=A0 Target RF=C2=A0 Freq: 2120.000000 (MHz)=C2=A0 =
=C2=A0 Actual RF=C2=A0 Freq: 2100.000000 (MHz)=C2=A0 =C2=A0 Target DSP Freq=
: -20.000000 (MHz)=C2=A0 =C2=A0 Actual DSP Freq: -20.000005 (MHz)Actual RF=
=C2=A0 Freq=C2=A0-=C2=A0Actual DSP Freq =3D=C2=A0Target RF=C2=A0 Freq

Kind regards,Hongwei


------=_Part_76055_1985816869.1690836573628
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp60abc925yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div style=3D"font-size: 13px;"></div>
        <div dir=3D"ltr" data-setdir=3D"false" style=3D"font-size: 13px;">H=
i Marcus,</div><div dir=3D"ltr" data-setdir=3D"false" style=3D"font-size: 1=
3px;"><br></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"font-size: =
13px;">I am doing freq tuning in X310 USPR and find the description about s=
ign may not be correct in the following page:</div><div dir=3D"ltr" data-se=
tdir=3D"false" style=3D"font-size: 13px;"><br></div><div dir=3D"ltr" data-s=
etdir=3D"false" style=3D"font-size: 13px;"><a href=3D"https://files.ettus.c=
om/manual/structuhd_1_1tune__request__t.html" rel=3D"nofollow" target=3D"_b=
lank" class=3D"">https://files.ettus.com/manual/structuhd_1_1tune__request_=
_t.html</a><br></div><div style=3D"font-size: 13px;"><br></div><div style=
=3D"font-size: 13px;"><span style=3D"font-family: Roboto, sans-serif; font-=
size: 14px;">Note that the meaning of the DSP frequency's sign differs betw=
een TX and RX operations. The target frequency is the result of&nbsp;</span=
><code style=3D"font-size: 14px;">target_freq =3D rf_freq + sign * dsp_freq=
</code><span style=3D"font-family: Roboto, sans-serif; font-size: 14px;">. =
<b>For TX,&nbsp;</b></span><b><code style=3D"font-size: 14px;">sign</code><=
span style=3D"font-family: Roboto, sans-serif; font-size: 14px;">&nbsp;is n=
egative, and for RX,&nbsp;</span><code style=3D"font-size: 14px;">sign</cod=
e></b><span style=3D"font-family: Roboto, sans-serif; font-size: 14px;"><b>=
&nbsp;is positive</b>. Example: If both RF and DSP tuning policies are set =
to manual, and&nbsp;</span><code style=3D"font-size: 14px;">rf_freq</code><=
span style=3D"font-family: Roboto, sans-serif; font-size: 14px;">&nbsp;is s=
et to 1 GHz, and&nbsp;</span><code style=3D"font-size: 14px;">dsp_freq</cod=
e><span style=3D"font-family: Roboto, sans-serif; font-size: 14px;">&nbsp;i=
s set to 10 MHz, the actual target frequency is 990 MHz for a TX tune reque=
st, and 1010 MHz for an RX tune request.</span><br></div><div style=3D"font=
-size: 13px;"><span style=3D"font-family: Roboto, sans-serif; font-size: 14=
px;"><br></span></div><div dir=3D"ltr" data-setdir=3D"false" style=3D"font-=
size: 13px;"><span style=3D"font-family: Roboto, sans-serif; font-size: 14p=
x;">My results are as below (fs=3D200MHz):</span></div><div dir=3D"ltr" dat=
a-setdir=3D"false" style=3D"font-size: 13px;"><span style=3D"font-family: R=
oboto, sans-serif; font-size: 14px;"><br></span></div><div dir=3D"ltr" data=
-setdir=3D"false" style=3D""><div style=3D"font-size: 13px; margin-bottom: =
0cm;" dir=3D"ltr" data-setdir=3D"false">Tx Tune Result:<br></div><div style=
=3D"font-size: 13px; margin-bottom: 0cm;" dir=3D"ltr" data-setdir=3D"false"=
><div>&nbsp; &nbsp; Target RF&nbsp; Freq: 2080.000000 (MHz)</div><div>&nbsp=
; &nbsp; Actual RF&nbsp; Freq: 2100.000000 (MHz)</div><div>&nbsp; &nbsp; Ta=
rget DSP Freq: -20.000000 (MHz)</div><div>&nbsp; &nbsp; Actual DSP Freq: -2=
0.000005 (MHz)</div></div><div style=3D"font-size: 13px; margin-bottom: 0cm=
;">Actual RF&nbsp; Freq <b><font size=3D"3">+&nbsp;</font></b>Actual DSP Fr=
eq =3D&nbsp;Target RF&nbsp; Freq<br></div><div style=3D"font-size: 13px; ma=
rgin-bottom: 0cm;" dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"c=
olor: rgb(0, 0, 0); font-family: Helvetica Neue, Helvetica, Arial, sans-ser=
if;"><br></span></span></div><div style=3D"font-size: 13px; margin-bottom: =
0cm;"><br></div><div style=3D"font-size: 13px; margin-bottom: 0cm;" dir=3D"=
ltr" data-setdir=3D"false">Rx Tune Result:</div><div style=3D"font-size: 13=
px; margin-bottom: 0cm;" dir=3D"ltr" data-setdir=3D"false"><div><div>&nbsp;=
 &nbsp; Target RF&nbsp; Freq: 2120.000000 (MHz)</div><div>&nbsp; &nbsp; Act=
ual RF&nbsp; Freq: 2100.000000 (MHz)</div><div>&nbsp; &nbsp; Target DSP Fre=
q: -20.000000 (MHz)</div><div>&nbsp; &nbsp; Actual DSP Freq: -20.000005 (MH=
z)</div></div></div></div><div dir=3D"ltr" data-setdir=3D"false" style=3D""=
><div style=3D""><div style=3D"font-size: 13px;">Actual RF&nbsp; Freq&nbsp;=
<b><font size=3D"5">-</font>&nbsp;</b>Actual DSP Freq =3D&nbsp;Target RF&nb=
sp; Freq<br></div><div style=3D"font-size: 13px;"><br></div><div style=3D"f=
ont-size: 13px;" dir=3D"ltr" data-setdir=3D"false">Kind regards,</div><div =
style=3D"font-size: 13px;" dir=3D"ltr" data-setdir=3D"false">Hongwei</div><=
div style=3D"font-size: 13px;"><br></div></div></div><div style=3D"font-siz=
e: 13px;"><br></div></div></body></html>
------=_Part_76055_1985816869.1690836573628--

--===============4458279857160267526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4458279857160267526==--
