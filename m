Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 168EB2C6C22
	for <lists+usrp-users@lfdr.de>; Fri, 27 Nov 2020 20:49:40 +0100 (CET)
Received: from [::1] (port=35208 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kijkI-0008GN-6N; Fri, 27 Nov 2020 14:49:30 -0500
Received: from sonic317-32.consmr.mail.ne1.yahoo.com ([66.163.184.43]:44330)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ampselectronics@yahoo.com>)
 id 1kijkE-000805-0l
 for usrp-users@lists.ettus.com; Fri, 27 Nov 2020 14:49:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1606506524; bh=WJ07tRqerHCAVqzFmqLlnojFwMrUCjWzQeKtuQjhDAU=;
 h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=Tdlo9ZI2IyhfeK5Le7oSIG6lJcfgo/7Df4LwNyyBLKSM43A/rm7UfkcS2ki/kNDOW/D5KWzb2N0CCf0xnkGNdTtaRZD7jJOqplpLLtb1cE5FAyH+UtAPA5ZzbnOIeQg+0Vx/cU/GUGMTt1dqH0yI02+ZPG/gYUfJD34jGLlBS17De/JAgfsWQgw/xUp9HFFMbK8j8MjSxI/ho0LJPVpujmMCGzkywmWZUspfMKxZ/l/uFoWzaj7EG4jMamQ72L7U8AtlloAY1L9tHpVOsC3YSw+VzYZ5ckSn3ht/1LNATUlL6Fo2LtoGyIB73odTccwLnwuuBb3NfQW0RilLW5fYJQ==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1606506524; bh=loVOWU16ZiGQBzyjzBsrDvH6Qo9DRGnWKqhofMDFlcC=;
 h=Date:From:To:Subject:From:Subject;
 b=LQHnHD8gpgVKI1aGLOY8PHHi+2ddIHs+tmSEe89o9KP/dlQ3+mpQk/xZubfz0HYHmtK7MYNki/ZQ/aKAZDI3UDAbSn/mAQlHisgMiBKkBMctSXEcIgf8H4ol42eymA3CGISgOss37SZ2MAec0Lw2ga9tMo41J+2FvOnLpLMtVuoRudkvLjPjYlNogMEBbC0FTDWHh5/P9m5z9qTeaHRWCmQyOsbWkfJlTwHeuiwemGlpoQB3lAOV+bUOjlfkcq4pLpeqmn0Y+IqKTnMEm29YUFmIiSbfyYnAXqu/QULNAtPeqiLgHY/Qt3peDflISMi3SOWBzWxkBUHS7JgscmOu5g==
X-YMail-OSG: DB._IGQVM1kpgh8rmOTGr2XeOirUIpWzVPypAaMIEt3DgV4unjp5wlgXvC3zRoP
 zbyf8at4jbi_menUZfUWicDVKNY0L6eO7NGtKa._BHd5mwl4SDW5ruetkCqRW1kKn8SFvwfxi0Gm
 jfNumaCsXbH5caEnwIDV3LFjVGU3fwii.3ItlnE6gBGP1qQZUiDru64HaYdXmM_XY3N8vJhwQNne
 O7OurH8cYbZB1cuuyiEEjX1XU1_kTP6.NPuBtaMTjYbEkZXGGMFVvg7nkYo1zms64TLJTsZ85Sfx
 0t9f_AISNj8SMmkUPA4ocvvNLPtJfe8QP9MaaA32LBys8dIamvzTc.6x0PNdT.RwKDEpnRps4RxB
 HsZ13H4jQ2uJS0qlGRf5uUbQSjI_fbNcSD1FHjBZScYub_kU.1FTIbrNDhEJIa71p2tfR5FoyV3W
 9fvMoDp7hsWb8V4OyCKuuxbpDQlum91oPnNN6XdVg5zRizP4x1y9K6HLfcWSovdbiVFBghpAZ4aG
 _U1g21ElwanVib8XktD_K4YEPCYDc.R7WzA_4Wdjf6_mNFSeMZWEKITipN8uYGvSs6KzhOjd9O.q
 tQ6l4pE0ncGCNQx9tZofAFhz1fn_WxSJLcsINUDp9jkzqxVZZsgc5K4G_bHqa6BT3E134OjLTQ5Q
 CGh0ihry.OssQicdu0B35tcb7KNomaqZAtcm45dVQPfAsYb3sdUnn35w2Wu2JFRXJ83W4NIBOGhZ
 CBhNkG5HAkLwujvAKRMfTIq4WM0LmqQyZiHXn6OdkZ71K29otiFXa03RhrjheXTiUvbXBDfXyJwv
 sONeRLfnWz5G1eYYqZFcVx5YHdEx4qvV1WRouXELumEmnCR6qEq.SW.zC43bUeJoms_s2uqBhI0s
 EFlRtIuFHsejSDEIy4Ac4CGl1L9rib1lIFcaWTSh.Bt9RACok0iuXWWGIS0WFn5tU3T9OsTZOTdr
 J0GevDY_iGc_tDMDPJ.aRTCXtN4JhzGhcu1pj9pQugYVIm03hxy6hNIhyb4EmhDjNSMsa.RG1Wmm
 xNKtLnlZapJlj0fUJwYfTJtfQel4WCN89wfONhP5RfR_TayQKCNrohkJSHaajeqxw8JT5xulMzwA
 xoxdQNAe0JwkXV7RkvIKTsxAyThBoHjgI7Y.54yMSZkRvvgES9Q4xn9sBi83wdcds0ZhkuLmItgX
 TsJP.QYaBxs_BnQbTaJ7.5zFEhs1Gx.52Q.j14YTOKm7KxtR68mvbQLfbMxQ8P_UyNUjgw9sXGmW
 khLBj.0s4jFr9YNEoOYDvRA2PUbSh168iywawcONMO3cf46yP2yLz9agzF4WIzIjECfI0O93vej1
 hCcjPsXGCsWMKT4hWBYRhYap1Emk.ZuVhk3SsraF7l2lyFZnkYOYoLt6E4P28Mf0xe26pQaFWMsM
 no.toYK6NOQ6B4Tfor_UA7eVo6PTq1FxdcQQ_T6LsQm02KiOxURDL.8YnWOxrepOIXN0HPg7HtBh
 VvgorvIlzkBJh.vr1VVef73lDalzmzL9yTm5GrTQUh1.IjgJRppWeRch5l4EqgbS4hSPI3qVy1nL
 0yPe9a6x6io896TPj21k17usFZHbI5AMdU.2RutScK3FQeEoAO_1G3hYoU3n2X.fxzSdm54RzYSG
 0l3vxSPROtttpoorTtsjz3rubChkACFaOF7ZnTgKFegtxD0zs0hNkYshPvcbGnGO9P9ay1gZFoRl
 4FnHrCR5YkdQs_WY6Y6V0qEioQZifmeL2aFLuPXEqHDhHcoxVBGoJ_AkAcHRoFlYZYsfI0h2du8r
 taPAW2CWrzz1VAqALsF3A1YkF8BGhM4iMlSOSBTbuExdsNM4V.AQlaj0ZK9rYIhqJcAhnSEZYj1w
 Ncr82IXKURWFxebS9GtU1jMt1mTUOZhxartYNzuQKplylLg5Z9WO8YL9c..9yGuo8lLTnsBQ70u2
 fY5.hePZETX3DkqINPPelAyUu40IalIGNLyoZA17WKJgHcmrgrT7oNNL5AmKv7J1hNh04ELQ0npE
 zSVOEQJ1jNuU96lgSuZgJV.TRsU7GA2odd_N_FB3RF6EnJrnVxe7AxqEy0Jl6rmeMc7L2ZzDgFOe
 wx0BuaUXgjkoNvuTH_BkjijjCt.vUnm89ztjm0Sd0wLNQiztqSY1QwzcYL7ZY0bXHTxOLxiQyI9t
 rN8Ee3TJRCNBGk0Q3gWQPNOLt3ivoCLdAAT5RL.4w_vf4zaFul6o7nNFO1QFJLPH5PFtJRMx9WvK
 gC4APuaryGZCdV8HvCRvzJGLyu.cdvkFwspIXJY0O.NLqCTE6bRHc8pCJVpczjOkcHNEqANw8Qrm
 m9VGz7jukHykq690rzJfuRKMvzwkeqLZlN6yp3D9mLNbdPyEb.oxM_l7IXbtNGmTtQ.79UKWMwDZ
 .HXIj2EUwh.E5qIS_3YyDo6WNUtD4JRIMhq2kkucF1pd0FBOkZOHg4sMSb8lDSB4u5NHO0ijXji0
 yCnUwhRzIkI1BGNwUzOY3lgn1uZKkt2rxsNLVIzBfckjxO9GAbvb5YsKIuAzAjtmlvRUQZquDyNA
 Kl42Gyho2gkjUiKLP2HzOw3DkAOBnpVETuZkBvW7d.AlUin04pYIW.xhsAzEBqOb0k1hjUjl5SNj
 nZULQqFeMK3ok1mFFA.AEgQeDjZpYmAZTV88pTNlQImsqLgaTx6tDoOxSBrEgvwCifSe.d8g5lr2
 ZEavt1rmackBS0HTY4JMrU3UhqHpc4Ru2VtLcv__csDiczErG6tbkfAre8sQgamaqitowbHQc_9q
 g9OB8MTxKwc2Vb1tIQMSlbXrVal5hQckIcN.im85E.hJIn8R2gGUBsLJltXRtaXuV2g7Lauie7TM
 8uj.PXnXVWfNgkIoygATAkr.uvVOFaWn6_0ZCY38TfwLuB6hcoE64EMgVjieCzpKVnhOS_1kEM6e
 vNvSEQm5638o-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic317.consmr.mail.ne1.yahoo.com with HTTP; Fri, 27 Nov 2020 19:48:44 +0000
Date: Fri, 27 Nov 2020 19:48:39 +0000 (UTC)
To: wandrewp@gmail.com, Andrew Payne <wandrewp@gmail.com>, 
 Philip Balister <philip@balister.org>
Message-ID: <646134518.2156972.1606506519987@mail.yahoo.com>
In-Reply-To: <CAB50+dRrvDhpqH3+jD+WRMx6=G8Dg91P4Z+xt7_39kVSakZ9UA@mail.gmail.com>
References: <CAB50+dSat-OFqtA38AxNiftepxCP4d=LuxrVjbLMKOtu6q+krg@mail.gmail.com>
 <82C8BA12-2EC5-45E9-9446-1890860A8F30@gmail.com>
 <CAB50+dT2ah526Vw7gp7q0UYNw5iWA8zt0Gyx0hOhhSF5F1Lxag@mail.gmail.com>
 <CAB50+dSFc_DDhR=-dyN85vGG_utfRwhc1Dvjciv_q3K6U3_GcA@mail.gmail.com>
 <CAB50+dTqG7GiBOn=3vBMu=n5MNS-XvpJqsw_QryGkjeP=OWQkA@mail.gmail.com>
 <1129435812.2163671.1606502063242@mail.yahoo.com>
 <9771b8e7-c78f-d270-7bc0-a811ad19ff3e@balister.org>
 <CAB50+dRrvDhpqH3+jD+WRMx6=G8Dg91P4Z+xt7_39kVSakZ9UA@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.17111 YahooMailAndroidMobile YMobile/1.0
 (com.yahoo.mobile.client.android.mail/6.15.1; Android/11; RP1A.201105.002;
 flame; Google; Pixel 4; 5.4; 2148x1080; )
Subject: Re: [USRP-users] Fwd: E310: Change MAC Address?
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: aneesh patel via USRP-users <usrp-users@lists.ettus.com>
Reply-To: aneesh patel <ampselectronics@yahoo.com>
Cc: Andrew Payne via USRP-users <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3018315798266794013=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============3018315798266794013==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2156971_685465924.1606506519985"
Content-Length: 8174

------=_Part_2156971_685465924.1606506519985
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

No worries! In lieu of an eeprom burning solution which is the right answer=
 as Phillip stated, one can just provision it in the dtb pre-production (ur=
 uboot enc method) for an interim fix (i would assume) before SD cards are =
passed around with some scripting. Of course testing required :).
someone had this problem before too. yikes. best of luck and seems solvable=
 multiple ways!
https://www.xilinx.com/support/answers/53476.html
Sent from Yahoo Mail on Android=20
=20
  On Fri, Nov 27, 2020 at 2:20 PM, Andrew Payne<wandrewp@gmail.com> wrote: =
  Thanks Aneesh but the decompiled dts file has no mention=C2=A0of the exac=
t MAC address for eth0, but just to read from the eeprom from what I can ga=
ther. Plus an md5sum of the dtb file on the sdimg from Ettus is the same ch=
ecksum as an e310 that has booted.
On Fri, Nov 27, 2020 at 1:40 PM Philip Balister <philip@balister.org> wrote=
:

On 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:
> Hi Andrew,
> The MAC may be in the devicetree blobs in the boot area of the SD image.
> You will need dtcedit to decompile, edit, and recompile as needed.

I don't think so, since the first time the card boots it does read from
the i2c eeprom.

I'm guessing u-boot sets the ethaddr env var and saves it in the
environment, but I forget where that might be saved. Need to review the
u-boot configuration for setting about the u-boot env (maybe getting
saved to the sd card).

Anyone from Ettus paying attention? This is a pretty serious problem for
people copying cards and using them in different units. The correct
behavior is follow the MAC address programmed into the i2c eeprom.

Philip

> Amp
>=20
> Sent from Yahoo Mail on Android=20
>=C2=A0=20
>=C2=A0 =C2=A0On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-users<=
usrp-users@lists.ettus.com> wrote:=C2=A0 =C2=A0____________________________=
___________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>=C2=A0 =C2=A0
>=20
>=20
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>=20

 =20

------=_Part_2156971_685465924.1606506519985
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div id=3D"yiv8857542041"><div><div id=3D"yiv8857542041"><div id=3D"yiv8857=
542041yMail_cursorElementTracker_1606506298361">No worries! In lieu of an e=
eprom burning solution which is the right answer as Phillip stated, one can=
 just provision it in the dtb pre-production (ur uboot enc method) for an i=
nterim fix (i would assume) before SD cards are passed around with some scr=
ipting. Of course testing required :).<div id=3D"yiv8857542041yMail_cursorE=
lementTracker_1606506110660"><br clear=3D"none"></div><div id=3D"yiv8857542=
041yMail_cursorElementTracker_1606506110776">someone had this problem befor=
e too. yikes. best of luck and seems solvable multiple ways!</div><div id=
=3D"yiv8857542041yMail_cursorElementTracker_1606506147274"><br clear=3D"non=
e"></div><div id=3D"yiv8857542041yMail_cursorElementTracker_1606506147744">=
https://www.xilinx.com/support/answers/53476.html</div><div id=3D"yiv885754=
2041yMail_cursorElementTracker_1606506129574"><br clear=3D"none"><div id=3D=
"yiv8857542041ymail_android_signature"><a rel=3D"nofollow" shape=3D"rect" i=
d=3D"yiv8857542041ymail_android_signature_link" target=3D"_blank" href=3D"h=
ttps://go.onelink.me/107872968?pid=3DInProduct&amp;c=3DGlobal_Internal_YGro=
wth_AndroidEmailSig__AndroidUsers&amp;af_wl=3Dym&amp;af_sub1=3DInternal&amp=
;af_sub2=3DGlobal_YGrowth&amp;af_sub3=3DEmailSignature">Sent from Yahoo Mai=
l on Android</a></div> <br clear=3D"none"> <div class=3D"yiv8857542041yqt56=
13087058" id=3D"yiv8857542041yqt55218"><div class=3D"yiv8857542041yqt377154=
5699" id=3D"yiv8857542041yqt96550"><blockquote style=3D"margin:0 0 20px 0;"=
> <div style=3D"font-family:Roboto, sans-serif;color:#6D00F6;"> <div>On Fri=
, Nov 27, 2020 at 2:20 PM, Andrew Payne</div><div>&lt;wandrewp@gmail.com&gt=
; wrote:</div> </div> <div style=3D"padding:10px 0 0 20px;margin:10px 0 0 0=
;border-left:1px solid #6D00F6;"> <div id=3D"yiv8857542041"><div><div dir=
=3D"ltr">Thanks Aneesh but the decompiled dts file has no mention&nbsp;of t=
he exact MAC address for eth0, but just to read from the eeprom from what I=
 can gather. Plus an md5sum of the dtb file on the sdimg from Ettus is the =
same checksum as an e310 that has booted.</div><br clear=3D"none"><div clas=
s=3D"yiv8857542041yqt5953000118" id=3D"yiv8857542041yqt07803"><div class=3D=
"yiv8857542041gmail_quote"><div class=3D"yiv8857542041gmail_attr" dir=3D"lt=
r">On Fri, Nov 27, 2020 at 1:40 PM Philip Balister &lt;<a rel=3D"nofollow" =
shape=3D"rect" ymailto=3D"mailto:philip@balister.org" target=3D"_blank" hre=
f=3D"mailto:philip@balister.org">philip@balister.org</a>&gt; wrote:<br clea=
r=3D"none"></div><blockquote class=3D"yiv8857542041gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex;">On 11/27/20 1:34 PM, aneesh patel via USRP-users wrote:<br clear=3D"n=
one">
&gt; Hi Andrew,<br clear=3D"none">
&gt; The MAC may be in the devicetree blobs in the boot area of the SD imag=
e.<br clear=3D"none">
&gt; You will need dtcedit to decompile, edit, and recompile as needed.<br =
clear=3D"none">
<br clear=3D"none">
I don't think so, since the first time the card boots it does read from<br =
clear=3D"none">
the i2c eeprom.<br clear=3D"none">
<br clear=3D"none">
I'm guessing u-boot sets the ethaddr env var and saves it in the<br clear=
=3D"none">
environment, but I forget where that might be saved. Need to review the<br =
clear=3D"none">
u-boot configuration for setting about the u-boot env (maybe getting<br cle=
ar=3D"none">
saved to the sd card).<br clear=3D"none">
<br clear=3D"none">
Anyone from Ettus paying attention? This is a pretty serious problem for<br=
 clear=3D"none">
people copying cards and using them in different units. The correct<br clea=
r=3D"none">
behavior is follow the MAC address programmed into the i2c eeprom.<br clear=
=3D"none">
<br clear=3D"none">
Philip<br clear=3D"none">
<br clear=3D"none">
&gt; Amp<br clear=3D"none">
&gt; <br clear=3D"none">
&gt; Sent from Yahoo Mail on Android <br clear=3D"none">
&gt;&nbsp; <br clear=3D"none">
&gt;&nbsp; &nbsp;On Fri, Nov 27, 2020 at 1:23 PM, Andrew Payne via USRP-use=
rs&lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.com">us=
rp-users@lists.ettus.com</a>&gt; wrote:&nbsp; &nbsp;_______________________=
________________________<br clear=3D"none">
&gt; USRP-users mailing list<br clear=3D"none">
&gt; <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.=
ettus.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USR=
P-users@lists.ettus.com</a><br clear=3D"none">
&gt; <a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://li=
sts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
&gt;&nbsp; &nbsp;<br clear=3D"none">
&gt; <br clear=3D"none">
&gt; <br clear=3D"none">
&gt; _______________________________________________<br clear=3D"none">
&gt; USRP-users mailing list<br clear=3D"none">
&gt; <a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.=
ettus.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USR=
P-users@lists.ettus.com</a><br clear=3D"none">
&gt; <a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://li=
sts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
&gt; <br clear=3D"none">
</blockquote></div></div></div></div> </div> </blockquote></div></div></div=
></div></div></div></div>
------=_Part_2156971_685465924.1606506519985--


--===============3018315798266794013==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3018315798266794013==--

