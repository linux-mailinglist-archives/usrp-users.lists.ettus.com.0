Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 31660772630
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 15:42:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 42F4C383C88
	for <lists+usrp-users@lfdr.de>; Mon,  7 Aug 2023 09:42:00 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1691415720; bh=ZcLWpeAc3iuT7C2YY268dYm07bUyrh0+9tluXGlLbzY=;
	h=Date:To:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=xDEjqi0kE6gURYpOCtuct8IgBOjJGALN9cu3LZ9HI0MSO+r4aEdyZbsRrCw9qsnYJ
	 d/YQTqrXWTsT/OjhqcL21otUx2JrUO5/Q801cqfNY4hHfV76QIN/NMS5A44c06OUU1
	 Y+we0L8xd64QgC3UGhjDWzK7puuzGr014e0f7q2G90N4pXhOt5WtLVNjpk/ys1D/+B
	 6VI1h4Ytg2N9fbecH/Qc4lJoKfCXNNwxOF1xPK0PWicyGXdkEJIwl7kKiZobOuy4aL
	 wNOcZ6x/vLzBkpswKKZHRmMw+7X17oErzjGr52VoZnU042zW8j4mTMg0YkP6cCcSc5
	 yCZ7rOwi+jbcA==
Received: from sonic320-23.consmr.mail.bf2.yahoo.com (sonic320-23.consmr.mail.bf2.yahoo.com [74.6.128.204])
	by mm2.emwd.com (Postfix) with ESMTPS id 63BAD380F07
	for <usrp-users@lists.ettus.com>; Mon,  7 Aug 2023 09:41:44 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=yahoo.com header.i=@yahoo.com header.b="E2jD8n2U";
	dkim-atps=neutral
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691415703; bh=WtslU8DK+OfkNPNZjkj+iI5PJ50ZyhgEax8GQJ71VyU=; h=Date:From:To:In-Reply-To:References:Subject:From:Subject:Reply-To; b=E2jD8n2UyfuRvkWLUhQhmNP4PNS3W1T+F5xwxLnKf3e8RXjv/B7zGfWDfr6ocn3EoDQbD0GFTrxEbzzBd2NtJakeUR9wBEcxN+l7c/AZ6mIBGPuIxyx1AKxl9bCU2qJ/aWSIXUCUqh4Rpie+pWaVd+206xt+5ePD7T4NM8NeTY2vbci3E03722/6x+3xYd6+x8G4zJ0xz7KLK/rRS2u8JDt3pSCSX1kk+5FGW1XplFOC9+U7RrMrkAH9nFqNyScdPSzwfIogqTE3XXa0J2zdROkvfJbBjQynot10vkX3ytXtjvAhPXf6mwf0TnRiJaAu9QIdC9OQim5N0hBFDe+MQg==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1691415703; bh=P1U80sHof9Gc5m1V+Geio336gJ2lTiK9YrqzkGu6zNX=; h=X-Sonic-MF:Date:From:To:Subject:From:Subject; b=AdSE4p7TAYazKT2Gdd7wPqFHrz62Z1qxuwP5TmZXabVgZv6/5rFJxbKlG4r/HhxVRZO+yy6B/+V1yxLXCqWoCzLJ6y6kRi0WrU6O5yawMpl7teFjWqBgco0L7krUeNGoWpfN7MqB27Ingih+AhNKhM7d2p5cDBly1QCdk9LV8JnvLgRifAA40lQcY9eafg+0kz6LD5Pk7+MDWciBDS1I3HwxlNxVVufHXZCmURqbE4wVbP/rMGqEx9erqf3WcG/5ot+T7LfITAJBb33SJyaPV/10p+9sNzx/P21ou2DxYn5bA6Xu2aKN42cIEtpCAxUKn+rZq7GFn45lAeBCvxH43A==
X-YMail-OSG: chaFJYMVM1kt4bezfX1i4Kx2iv2UrSrar11dQi.T0DgTcKEpm6miIn3KwFxxxW2
 Ons53fXmZu1NL89h5PTQZsupmnQhA7op3qQYDtsbMPjgun6A_RS1K3XbupLsVT5Gq0M9DOplpsNS
 1TyWdNf8O8Ms1yoVb6F723WDZ2G10xskA9I8YO3nKUGO2M9y4iV2fb3KT5mmyef.i9d_B57fyuPU
 0aqvw06OjeR5tB8W7Q6eCfUaP4l2.avu3RK8KLlFAzcJkyIOAiu8CYu1o3DtD_ZbBn1sYhEM_aO3
 FYj.aPz72paIK2Z2Jb36pRU6Dm5FZPKSyGw5_FXd0.klEUZaSgAVFwmB_FqXTn.UNSLfS2ACfZND
 Q7PpLzoJRPyy1CanzjsE8Sz3LheeIEwAa17xlouBIC.9Swr0SRJMuJ2OO2f5ZFda7yilFMD_ZOdw
 jQ0MCMkE6KmfMjwRTK0tfr5mjHQ2m72p8TnkzltXzwwNKeT.fH4HmKdHn_H_WpUbStMm5jmh97I2
 NWeUROYwrSpaOY3y7xJcB_MSLtI3jzLEq24gpntNeHw3FQClD6VgEt27ZM_IYjDVul_waBEyUqOg
 wgW97Rij.8YtVZx7T0yGOosd6moudISuf5SY7mPZ02YHyh_pwRT.gOrVR8Bj8CGnUhSQNN.K3yBx
 k2VbY_RtxnE1rkGm4K2xtJBRw_GCcdxqh15K3PhTPzP1hUFTQGPljmpl3hHe9tHMqlufrs6taRKC
 KmWMRaSXuv1hXIGI9V_CkYQazkVN9ksmrFUMZ.5CDiFs3G8JZHyPHaGUa3_W6jmU1Zhfc4y0VjyO
 KiEJ4wgGOFd1XdlQsGkcxMt61KTu2So9.hFA9FCbGOp2xlp_OebU_i06slVkb_WLyelV.1.IFwdi
 W.8qBBbOf5W4Geaxl1BWSvrSGrZXtHR5Z0yI4ujRwapr8uYUapIvP95qPBWz1wqGYn0MVY998S.1
 5UsIvn656fbrShs9RKbMrSJxkup5pDGbkDSJbScDm4.QLawHb4f_Dq_meCuv89sn3..3mGkAXCma
 5iUIkdLD5MYW8ESVo5So2pd1VmffMf1gpmeEYDQPTkrp8L52pJKi2xZ9lwdVPQ8ywLxL9S7WeHPP
 NvD_TvhfhcNn02pdmboUqO_1IDcF3laJfk8jDiiikYF1mBwwkY04xNWQ4qiXrxaeUmHwF0gAfyEh
 mB9uJFWFpyOheIISwCkzfRmSIuYVG4S2uiASEJ9prfhHADcGyAExs82xrbW7qYJtk2lqx0vz58EC
 CwvyTU4ZuYOQdas9f9AiaZJvAGum7XGeEERTZrtUm.GbM4gFwEb0Tv1qIqckpzep9GCBorDSiF0M
 gVaHnMR0xgDGPpJcbNgeHvGXFeVxclw64jw9WEtm9C3wRJp1_G8GfIE9.AnCkwPX4JB2NcwwmE82
 ccniVd9tFQeAuHqJuZkaZYsCA3ZQkv7hsh4yie8IllExBz9lOvoey9EUocCRYhwcW_toymiAb5Qt
 7ykz_5hzPFSG1rheDv4iv6fCRXxXcysZm2V1PZdwRArd4cqTHGB8gZZRivCKAcLUpHQ7Ixwd_MMd
 njV0KU4u.zUIJADRhq3ZruAlPWn_Bs4vQEWTIWF7SaJGWwcfbHtUbqWBdbgZkjG5Mzkcxhdyksnu
 IycApQzIk.GPA2wDSsq0HYsdv4JKdCdsHVJVrSAZMcJF2PrbIt.LPnAKLN.buT.8LZcF3eOQPh9.
 8vhLA.N0K37ecEJJsyvLG6ydjeoYv3DYXvnf.47kWm69PbaJNgkF6pZhmkHW4euoy_NQfN3VRgxz
 NXnHJSSq5u1qqOLhNSJspLYkNil.JGwz.TJDpHsmsBigpha0RzhyvS0RjEN6cIZt_wPHVRciN6QN
 iMT8.2TiD1aP9MXnt3wlXSIq.f4xcFL8oTMnzIVMbtlQ7BLMsEpTQWkbD2gzCG.vYQ77U1eKvC._
 5bd9daQX01kJX6mcM49KST26ORELnJZveDdccEgNsKeIqUHRKPxL7A.7mvjn7vMPIY0bct09fPcC
 LTGDtqt17hK9YO4cd0Cuu6GeIQPCz5WcLt6MlEexDQgkdvQgK2x8Ut8REUEv_LT9jKqSWcVBoLr8
 VUOLRZtE3_TqOlxPyNQLXgxVS1bGMFr7Mffz9TKfdTkTm4fgXvxc16A2vYQ4FuVi.9uQim7FmI7D
 YKipGkLDWnpOYmyJCV.UsjMoEZJ7IhTrIuodlmZijhGRh4nEDMPZIXmJ_O.Iw8ZtnrDNPZZcux7t
 wq68I4911j4EsETVwIuvDZQ--
X-Sonic-MF: <hwzhou@yahoo.com>
X-Sonic-ID: 2bfcb7f0-f77b-4b0b-a816-551f58b304f4
Received: from sonic.gate.mail.ne1.yahoo.com by sonic320.consmr.mail.bf2.yahoo.com with HTTP; Mon, 7 Aug 2023 13:41:43 +0000
Date: Mon, 7 Aug 2023 13:41:41 +0000 (UTC)
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Message-ID: <612213778.469873.1691415701949@mail.yahoo.com>
In-Reply-To: <100d04b2-9cae-4fe6-e024-b68a99da766f@gmail.com>
References: <JY69MVrXA1ftfNlnyzeN8KI5JuYFOwHyCm5H1oY83cU@lists.ettus.com> <33990667-b547-dc4b-8e98-649b560df3df@gmail.com> <2081896548.419499.1691397648533@mail.yahoo.com> <100d04b2-9cae-4fe6-e024-b68a99da766f@gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.21695 YMailNorrin
Message-ID-Hash: LXT5CYUI3UFMUX27XNG23QACNLVJKA23
X-Message-ID-Hash: LXT5CYUI3UFMUX27XNG23QACNLVJKA23
X-MailFrom: hwzhou@yahoo.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Calibration
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/LXT5CYUI3UFMUX27XNG23QACNLVJKA23/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: zhou via USRP-users <usrp-users@lists.ettus.com>
Reply-To: zhou <hwzhou@yahoo.com>
Content-Type: multipart/mixed; boundary="===============8595740985778511293=="

--===============8595740985778511293==
Content-Type: multipart/alternative;
	boundary="----=_Part_469872_169682750.1691415701948"

------=_Part_469872_169682750.1691415701948
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Thanks for your quick response, Marcus.
On the 2nd question, I mean, when LO is different from the target RF freq, =
DSP will make up the difference. LO leak will become a=C2=A0spurious signal=
 at DSP freq. Can this LO leak be compensated in USRP? if yes, how?=C2=A0
Thanks.
=C2=A0
    On Monday, 7 August 2023 at 14:11:08 BST, Marcus D. Leech <patchvonbrau=
n@gmail.com> wrote: =20
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
 =C2=A0 is "perfect" from a offset and balance perspective.
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
------=_Part_469872_169682750.1691415701948
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp66d139c6yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Thanks for your quick respon=
se, Marcus.</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div dir=
=3D"ltr" data-setdir=3D"false">On the 2nd question, I mean, when LO is diff=
erent from the target RF freq, DSP will make up the difference. LO leak wil=
l become a&nbsp;<span><span style=3D"font-size:11.0pt;font-family:Calibri,s=
ans-serif;mso-fareast-font-family:=E7=AD=89=E7=BA=BF;mso-fareast-theme-font=
:minor-fareast;mso-ligatures:standardcontextual;mso-ansi-language:EN-GB;mso=
-fareast-language:EN-US;mso-bidi-language:AR-SA">spurious signal at DSP fre=
q. Can this LO leak be compensated in USRP? if yes, how?&nbsp;</span></span=
></div><div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"font-siz=
e:11.0pt;font-family:Calibri,sans-serif;mso-fareast-font-family:=E7=AD=89=
=E7=BA=BF;mso-fareast-theme-font:minor-fareast;mso-ligatures:standardcontex=
tual;mso-ansi-language:EN-GB;mso-fareast-language:EN-US;mso-bidi-language:A=
R-SA"><br></span></span></div><div dir=3D"ltr" data-setdir=3D"false"><span>=
<span style=3D"font-size:11.0pt;font-family:Calibri,sans-serif;mso-fareast-=
font-family:=E7=AD=89=E7=BA=BF;mso-fareast-theme-font:minor-fareast;mso-lig=
atures:standardcontextual;mso-ansi-language:EN-GB;mso-fareast-language:EN-U=
S;mso-bidi-language:AR-SA">Thanks.</span></span></div><div dir=3D"ltr" data=
-setdir=3D"false"><span><span style=3D"font-size:11.0pt;font-family:Calibri=
,sans-serif;mso-fareast-font-family:=E7=AD=89=E7=BA=BF;mso-fareast-theme-fo=
nt:minor-fareast;mso-ligatures:standardcontextual;mso-ansi-language:EN-GB;m=
so-fareast-language:EN-US;mso-bidi-language:AR-SA"><br></span></span></div>=
<div dir=3D"ltr" data-setdir=3D"false"><span><span style=3D"font-size:11.0p=
t;font-family:Calibri,sans-serif;mso-fareast-font-family:=E7=AD=89=E7=BA=BF=
;mso-fareast-theme-font:minor-fareast;mso-ligatures:standardcontextual;mso-=
ansi-language:EN-GB;mso-fareast-language:EN-US;mso-bidi-language:AR-SA">&nb=
sp;</span></span></div><div><br></div>
       =20
        </div><div id=3D"ydpdb28840fyahoo_quoted_2142999335" class=3D"ydpdb=
28840fyahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Monday, 7 August 2023 at 14:11:08 BST, Marcus D. Lee=
ch &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><div id=3D"ydpdb28840fyiv1566047874"><div>
    <div class=3D"ydpdb28840fyiv1566047874moz-cite-prefix">On 07/08/2023 04=
:40, zhou via
      USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      </blockquote></div><div><div style=3D"font-family:Helvetica Neue, Hel=
vetica, Arial, sans-serif;font-size:13px;" class=3D"ydpdb28840fyiv156604787=
4ydpf6d16e8dyahoo-style-wrap">
        <div dir=3D"ltr">Hi,</div>
        <div dir=3D"ltr"><br clear=3D"none">
        </div>
        <div dir=3D"ltr">I have a question regarding
          USRP calibration. I am using X310 and UHD 4.4.</div>
        <div dir=3D"ltr">To save calibration time, the
          step size is set to be 5MHz and the freq range is [600MHz,
          6GHz].</div>
        <div dir=3D"ltr">My questions are:</div>
        <div dir=3D"ltr">1. will the compensation be
          made at these discrete frequencies only, or interpolation will
          be applied to frequencies which are between the steps?</div>
      </div>
   =20
    Interpolation is applied.<br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;font-size:13px;" class=3D"ydpdb28840fyiv1566047874ydpf6d16e8dyahoo-style-=
wrap">
        <div dir=3D"ltr">2. how to compensate DC
          offset in case there is DSP freq?</div>
      </div>
    </blockquote>
    The DC offset compensation is applied based on the *analog*
    frequency setting of the RF PLL.&nbsp; The DSP component<br clear=3D"no=
ne">
    &nbsp; is "perfect" from a offset and balance perspective.<div id=3D"yd=
pdb28840fyiv1566047874yqtfd26387" class=3D"ydpdb28840fyiv1566047874yqt46667=
39767"><br clear=3D"none">
    <br clear=3D"none">
    <br clear=3D"none">
    <blockquote type=3D"cite">
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-seri=
f;font-size:13px;" class=3D"ydpdb28840fyiv1566047874ydpf6d16e8dyahoo-style-=
wrap">
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
      <fieldset class=3D"ydpdb28840fyiv1566047874moz-mime-attachment-header=
"></fieldset>
      <pre class=3D"ydpdb28840fyiv1566047874moz-quote-pre">________________=
_______________________________
USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users@list=
s.ettus.com" class=3D"ydpdb28840fyiv1566047874moz-txt-link-abbreviated" rel=
=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus.com</a>
To unsubscribe send an email to <a shape=3D"rect" href=3D"mailto:usrp-users=
-leave@lists.ettus.com" class=3D"ydpdb28840fyiv1566047874moz-txt-link-abbre=
viated" rel=3D"nofollow" target=3D"_blank">usrp-users-leave@lists.ettus.com=
</a>
</pre>
    </blockquote>
    <br clear=3D"none">
  </div></div></div><div class=3D"ydpdb28840fyqt4666739767" id=3D"ydpdb2884=
0fyqtfd44997">_______________________________________________<br clear=3D"n=
one">USRP-users mailing list -- <a shape=3D"rect" href=3D"mailto:usrp-users=
@lists.ettus.com" rel=3D"nofollow" target=3D"_blank">usrp-users@lists.ettus=
.com</a><br clear=3D"none">To unsubscribe send an email to <a shape=3D"rect=
" href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" target=
=3D"_blank">usrp-users-leave@lists.ettus.com</a><br clear=3D"none"></div></=
div>
            </div>
        </div></body></html>
------=_Part_469872_169682750.1691415701948--

--===============8595740985778511293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8595740985778511293==--
