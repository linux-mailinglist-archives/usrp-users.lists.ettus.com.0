Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2396514217
	for <lists+usrp-users@lfdr.de>; Sun,  5 May 2019 21:25:14 +0200 (CEST)
Received: from [::1] (port=58212 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hNMl5-0005VY-Nd; Sun, 05 May 2019 15:25:11 -0400
Received: from sonic307-21.consmr.mail.sg3.yahoo.com ([106.10.241.38]:37226)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.91) (envelope-from <rensisam@yahoo.co.in>)
 id 1hNMkX-0005EE-9s
 for usrp-users@lists.ettus.com; Sun, 05 May 2019 15:25:07 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
 t=1557084234; bh=L3dQh0bXsv/C5h8UeRIHWilSJjotyDAR6J/Q4JdDZUE=;
 h=Date:From:To:In-Reply-To:References:Subject:From:Subject;
 b=Neh/Yy81OlDz4owD8g+dC/ay4QkXCukMo1UBSeoYEPwe+5gSt2lU8pwPN831pJWZLr7rwb9nH9NE2AAbixiVKgNpD/VAM88CaFDHmWS9j1cV9goqWaETix4XndZ66iYQrgGOw54wQmOjuvIwx+IanDQqULdIT4YUVoCJ74+zxB/vdgT25QRUhfSe6g7SIP11O1T/34U8Dy30IYcclfpieyeWjvuLQYjWAplnTCcCwM9tg+JyAIKjvF47ov9+bKiS+3O4flM4Qqj7D2GAbV4C4UkHBbH2tlX23CXw8TbtVIk1C6NC3tXHncoUY+KOidoW9C/mmmHPRr6vCu2MzyYn6g==
X-YMail-OSG: tPxDaSwVM1lneiEHGq7_Z.iMmBB14UrTkxDsSUIMv2RIMfVIUKNZe.rjFzABe.J
 B0_efZVw0NQv3EEItygVQ0gjgXxB1_jnBJNxjXBhD5FGifXS5x4LNvyd_INcKF.odXISb9iL12aG
 C.NNiT.T5dxq_zbdG_O_hg40iyWJE_2xLzCaA.lfQ9FqO5_y_915pq4mCYiMSKJkQBB2kgDamVIh
 BuE.JXzUeP80qT4xT2VfXJB.uSb1xiJY5LVem2vWXxmk5JAN6Q.7hP9EBswzS1aRPWPEyBH3rJTn
 JtwWheXmWz9oDFs2oCZnOl7tYtWBLe64Mn0HIRG6gRY0KzpQU9Wk4pCsDXCdWhfc4qwlaImJI07F
 QR9ZyyHMrOFNRwJZg9s_P9kwu69Da30k6RwOtLasRpri1QxIWJiN65.xR7yUQMGQFL4JqrQiUHoI
 43NtKPCo1tXQzdAw.pBSbigGjOL1tmS4hxgS3fq2vouw_2U0Xw_w8XohS9fmYqI6l56sFs8J8b_6
 daO7AFNN46ZsXwfh68aEq0tXB94eDdkiaLz4XOoGDOqwuB4RNRYZ9.Wc7BZ352FghY2ldaVP5UOg
 wN8axb.vU3bZe0ypsyzltRke840KBZlRHVmziWcyz3N7_Xf.Uw4zf4dSlljcCeLH2NdOR8xrR8zO
 NDiBdQJROfuGotsxWMVZnjXozgHIZ_Te6eNFG1TTbCiTML9W1We_bM6pTxx9EJSv9xBWiv.dKtO3
 d00OMsgX0xl47xU8lSNfYs50Ez0Tk0z6UbqJOJaa4pA2avxI2_N27BfiK7mShKIjBiwydaNfXkY.
 9GNTtcniDlGcDHklTtPdBqRb9B5I5KqSC6YHvxWddwTOqoDsDbNcDSbmpGq.ttm2z68MJdAtPKyN
 BPUHfxemKIHhAV7UIMXbdsF2.jBSQE0o8JKtD8k2EPs3n90OCNibfKzUrlKX1Mxc6Y7B1CNZgcX9
 aRWuT.YuIMRtrqiZqrDyyGafUbtu7SaQpFgdezhoiLYFBUPoJCdYVsy72ITq2404bbSWMrkpguvQ
 zyCgWhTt6kqXRkWgfNNfoytYgtofIcMhjbzuG8Iw6PTlAwSfWNBXNGMULMSAGsQt.QilWOC3f.PK
 0tYNRC1n9pBDLB6jkEsEm.gCXBzFVTQuaDG3_fmCA1Sn9twEYSvdZGlPC0bZMC4.Pk.wnKR4rJXF
 7ShSF3wsKuCGea5025aPWn5I-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic307.consmr.mail.sg3.yahoo.com with HTTP; Sun, 5 May 2019 19:23:54 +0000
Date: Sun, 5 May 2019 19:23:49 +0000 (UTC)
To: Vsr Ravi via USRP-users <usrp-users@lists.ettus.com>, 
 Robin Coxe <robin.coxe@ettus.com>
Message-ID: <1512147364.461598.1557084229705@mail.yahoo.com>
In-Reply-To: <DM6PR03MB45560C798154B6FD08C115F4F2360@DM6PR03MB4556.namprd03.prod.outlook.com>
References: <1432742277.62002.1556943355674.ref@mail.yahoo.com>
 <1432742277.62002.1556943355674@mail.yahoo.com>
 <DM6PR03MB45560C798154B6FD08C115F4F2360@DM6PR03MB4556.namprd03.prod.outlook.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.13583 YMailNorrin Mozilla/5.0 (Windows NT 6.1; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131
 Safari/537.36
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] B200 Overrun
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rensi Mathew via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rensi Mathew <rensisam@yahoo.co.in>
Content-Type: multipart/mixed; boundary="===============8804172550715313014=="
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

--===============8804172550715313014==
Content-Type: multipart/alternative; 
	boundary="----=_Part_461597_442798020.1557084229704"
Content-Length: 4871

------=_Part_461597_442798020.1557084229704
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Yes USB 3.0.=C2=A0

The OS is Ubuntu 16.04 LTS=C2=A064-bit
Intel=C2=AE Core=E2=84=A2 i5-4570 CPU @ 3.20GHz =C3=97 4=C2=A0
Disk 309.6 GB
Memory=C2=A03.6 GiB
Could it because of memory problem?The yellow/orange light in the system bl=
inks when USRP runs(showing heavily loaded).
Rensi    On Saturday, 4 May, 2019, 10:09:03 am IST, Robin Coxe <robin.coxe@=
ettus.com> wrote: =20
=20
 Are you using USB 3.0? =C2=A0USB 2.0 will max out at about 8 Ms/s. =C2=A0


Robin Coxe | Chief R&D Program Manager, SDR | Santa Clara, CA | 408.610.636=
3=C2=A0From: USRP-users <usrp-users-bounces@lists.ettus.com> on behalf of R=
ensi Mathew via USRP-users <usrp-users@lists.ettus.com>
Sent: Friday, May 3, 2019 9:17 PM
To: Vsr Ravi via USRP-users
Subject: [USRP-users] B200 Overrun=C2=A0Dear sirI am using B200 SDR to run =
the program usrp_spectrum_sense.py with a sampling frequency of 16e6.I thin=
k I am using a fairly low sampling rate.
Still I am getting some 'OOOO'.
Could someone tell me the possible reasons for the same? And how I can avoi=
d the same?
Thanking youRensi Sam

 =20
------=_Part_461597_442798020.1557084229704
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpefd2b12cyahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div><div><div style=3D"font-family: Helvetica Neue, Helvetica, Ari=
al, sans-serif; font-size: 16px;">Yes USB 3.0.&nbsp;<br clear=3D"none"></di=
v><div style=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; =
font-size: 16px;"><br clear=3D"none"></div><div style=3D"font-family: Helve=
tica Neue, Helvetica, Arial, sans-serif; font-size: 16px;">The OS is Ubuntu=
 16.04 LTS&nbsp;64-bit<br clear=3D"none"></div><div style=3D"font-family: H=
elvetica Neue, Helvetica, Arial, sans-serif; font-size: 16px;">Intel=C2=AE =
Core=E2=84=A2 i5-4570 CPU @ 3.20GHz =C3=97 4&nbsp;<br clear=3D"none"><div>D=
isk 309.6 GB<br clear=3D"none"></div><div><div>Memory&nbsp;3.6 GiB</div><di=
v><br clear=3D"none"></div><div>Could it because of memory problem?</div><d=
iv>The yellow/orange light in the system blinks when USRP runs(showing heav=
ily loaded).</div></div></div></div><br></div><div>Rensi</div>
       =20
        </div><div id=3D"yahoo_quoted_7795705303" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Saturday, 4 May, 2019, 10:09:03 am IST, Robin Coxe &=
lt;robin.coxe@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv1710050451"><div>
<div>
<div>
<div>
<div style=3D"direction:ltr;">Are you using USB 3.0? &nbsp;USB 2.0 will max=
 out at about 8 Ms/s. &nbsp;</div>
<div><br clear=3D"none">
</div>
<div style=3D"direction:ltr;"></div>
<div><br clear=3D"none">
</div>
</div>
<div><br clear=3D"none">
</div>
<div class=3D"yiv1710050451ms-outlook-ios-signature">
<div style=3D"direction:ltr;">Robin Coxe | Chief R&amp;D Program Manager, S=
DR | Santa Clara, CA | 408.610.6363</div>
</div>
</div>
<div>&nbsp;</div>
<hr style=3D"display:inline-block;width:98%;" tabindex=3D"-1">
<div class=3D"yiv1710050451yqt0926039493" id=3D"yiv1710050451yqt92703"><div=
 id=3D"yiv1710050451divRplyFwdMsg"><font face=3D"Calibri, sans-serif" style=
=3D"font-size:11pt;" color=3D"#000000"><b>From:</b> USRP-users &lt;usrp-use=
rs-bounces@lists.ettus.com&gt; on behalf of Rensi Mathew via USRP-users &lt=
;usrp-users@lists.ettus.com&gt;<br clear=3D"none">
<b>Sent:</b> Friday, May 3, 2019 9:17 PM<br clear=3D"none">
<b>To:</b> Vsr Ravi via USRP-users<br clear=3D"none">
<b>Subject:</b> [USRP-users] B200 Overrun
</font><div>&nbsp;</div>
</div></div>
</div></div><div class=3D"yiv1710050451yqt0926039493" id=3D"yiv1710050451yq=
t51987"><div><div class=3D"yiv1710050451yahoo-style-wrap" style=3D"font-fam=
ily:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px;">
<div>
<div>
<div>Dear sir</div>
<div>I am using B200 SDR to run the program usrp_spectrum_sense.py with a s=
ampling frequency of 16e6.</div>
<div>I think I am using a fairly low sampling rate.<br clear=3D"none">
</div>
<div>Still I am getting some 'OOOO'.</div>
<div><br clear=3D"none">
</div>
<div>Could someone tell me the possible reasons for the same? And how I can=
 avoid the same?</div>
<div><br clear=3D"none">
</div>
<div>Thanking you</div>
<div>Rensi Sam<br clear=3D"none">
</div>
</div>
<br clear=3D"none">
</div>
</div>

</div></div></div></div>
            </div>
        </div></body></html>
------=_Part_461597_442798020.1557084229704--


--===============8804172550715313014==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8804172550715313014==--

