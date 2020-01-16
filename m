Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D042B13D747
	for <lists+usrp-users@lfdr.de>; Thu, 16 Jan 2020 10:58:03 +0100 (CET)
Received: from [::1] (port=47440 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1is1uc-0002Qv-L7; Thu, 16 Jan 2020 04:58:02 -0500
Received: from sonic305-20.consmr.mail.ne1.yahoo.com ([66.163.185.146]:43641)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1is1uZ-0002Js-1P
 for usrp-users@lists.ettus.com; Thu, 16 Jan 2020 04:57:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1579168638; bh=nFTGuL4uI8dTBtXq+CZr27V5XhnToY4az/cLuWyFuhY=;
 h=Date:From:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=Fu+ff46sbzUohQbO6BaF8+VmLXC0iBtdl1r620/qa93/Q0xQ98tWL+r1dLaMaRorDDA731m2o24PpCh9KTn+7JBGUU7FedZ3lzqjno5+IhIrUKCB9lVFrXt2Ylre8Id/nm9ScXo8IoJlTUcBjuZ9kbiLJlOh0vpL0Hv0LzCH9dsKIG8cT6HsiThrduPlO9gVi/IiNrNtLDNRWA++PXcZdyd61XOrKjD6obW+J8Vi6To6/pQOJH+SbGrqHSbDuh6oU3MHYmQcpIJcMbOA89NWKCKBgadOUqlLGuo3nBVnKL+zPeDRen0Txik1HmpqOiDj+6N8xpaAzBphm7kjon2F6Q==
X-YMail-OSG: MuXkz4YVM1kAn1DU1_HZtk6EHncNbfqePTUvpVYwgkaP3xSRcLUCWQoPiLMXK1Z
 NbcuruhtcLMK8qApQmCZIydfGx3AhBnPy5epNfoEmmzfPLMvmkz34VDHeumJLtPGvDvnVMC2wykl
 ATuT3wKGrItkLlfSKp1USJ1tsZ9mF.EYF1_kMfIe_gT_RlYEpsa2bQRem9y26zlS5hTNdBvcdGbY
 EvnLXTCVhWmbep692KmLyb3ga3iw11Kyw40oK0AGQLG7yN0ilb_fFpngS9YzAi4uwT26OiKaAxaD
 cwFx2HyFIN221osyJglOpjvnskqShlPJuwU_Kix0KrkGyXITtqQaFRm4r_GVvF4Y.snyUhHsHmlT
 B915Pow4iUhUtaz1ADVxZtpYuAfwYPSf6gDsPEfik_EiXsxmZoXZSUOgbYsJkXjBOxAHvFKK7dC7
 FbBxUB3.T9eIXxV7i1Sa63UMIMX8xGoqkXKSLXP5qQ6VzCbGuhjRzWwYASNsWO5mSSEoVHBp4JbD
 Fyw0nZc8J4l5BpKvE4ppcRp5ZjzTAR4aCzS5wrRVvhKFESuRcoyX8nnpU30GORlplgW4B3nZUA.N
 aSAATI9GHws0o6h5RqTw4tULRwR4Y_7KUM9geWH0doMXMV1sFs67LMqHnlaBY6b1ceEWueesVeEg
 hiItxW1oF7e8bb.8CpVHacsPLvD.Agz1SxhDm9m_dJZymFrTRYI8V3bOSk3Ti.TcOjVWNTuhSvGI
 sAYtjswg9nukqiIPXRgNeLZW7SoyLtwh4uuM3.XBLmX5w_h1dKabHkf3c0dqi9lYoR.dVqIvl8iB
 P_wl2SWq5Xw1ZOAZxdg.ZqTBBF.RhdRs3WKjjsx5zvUokAai5QA.b9XrPrH.lPIbU2uxmhSTauwX
 4_78k_jTu8cMbglNQZrGrWBJXBZWUqNdO9XjMx3FZUWR.nP1.2UrGjwmYOjXY10Imgm06kj2OF2_
 w5k3HWV81sqyyLhLnPfWAlrmfJsF0DL8cED8KGVsg_aFZEK8xbTWYG1wkeHGG7WRIFPkV13vSV_t
 6TW1eih72CilUDKVVUozt9gDir9vZJFI4KxTM9Ji96G9A8HjZNO5IDZK_guZ0HKjj_kZuNR51KWY
 L4MxbM5xgByGfjs3AbRpozX22juOeG4G7uXdRueDB7gq.3OP9v7SYHlzLRWMHsZPfAn_TkIj.t74
 RlYWvikp2EqnLNkmbBsCC_o_kDlEaSN4wT777IZtvoFaaUnOkip4xfa1Yo18.RyoSqcXxtK2gsyt
 FY0yJJjanjHDO4_86kT1FE85cC0cT1ss.iMw4cyiIJbgfQn5UygpHEu2AUH9cHPxR4YIMNs545Ic
 0FhrGBJLyUvi5IZcJuhlehK_N1KEKi5YzSw--
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic305.consmr.mail.ne1.yahoo.com with HTTP; Thu, 16 Jan 2020 09:57:18 +0000
Date: Thu, 16 Jan 2020 09:57:14 +0000 (UTC)
To: Sam Reiter <sam.reiter@ettus.com>
Message-ID: <1898489352.210189.1579168634008@mail.yahoo.com>
In-Reply-To: <CANf970Z_4UwAS3gJnQmjB0GwNqVQGZSUjjOW-5FHOHcQyHSngw@mail.gmail.com>
References: <1991382912.12022218.1579112665200.ref@mail.yahoo.com>
 <1991382912.12022218.1579112665200@mail.yahoo.com>
 <CANf970Z_4UwAS3gJnQmjB0GwNqVQGZSUjjOW-5FHOHcQyHSngw@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.15038 YMailNorrin Mozilla/5.0 (Windows NT 10.0; Win64;
 x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.117
 Safari/537.36
Subject: Re: [USRP-users] Supported ethernet controllers : X300 and UBX
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: voonna santosh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: voonna santosh <santu_voonna@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8209386105094089903=="
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

--===============8209386105094089903==
Content-Type: multipart/alternative; 
	boundary="----=_Part_210188_1896435161.1579168634007"
Content-Length: 6854

------=_Part_210188_1896435161.1579168634007
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

 Hi Sam,=C2=A0 =C2=A0The reason for this is that, I am seeing something str=
ange here with fibre connection. The PC comes up and doesn't negotiate the =
speed with SDR. Now we are in a situation to find the root cause of this. E=
ither the HW/SW at PC side is causing the issue or HW/SW at PC side is not =
compatible with SDR.
I have tried following methods at PC side and no luck:Bring down the fibre =
interface and up againTurned on auto neg and at PC side and no luckUsed eth=
tool to set the speed and no luckMany other option being tried, but doesn't=
 help
All I want:What is(are) the Ethernet controller(s) being used in X300(HW an=
d SW if it is OK to reveal)? This will allow us to check with Intel to sele=
ct a right controller at PC side
What are the ethernet controllers that are being tested at PC side?=C2=A0
Any information in this front would be highly appreciated.
BR,Santosh
    On Wednesday, January 15, 2020, 07:07:58 PM GMT, Sam Reiter <sam.reiter=
@ettus.com> wrote: =20
=20
 Santosh,
That card should be fine for streaming, that controller just hasn't been ex=
plicitly tested as far as I know. Are you planning on using DPDK?
Sam Reiter=20

On Wed, Jan 15, 2020 at 12:26 PM voonna santosh via USRP-users <usrp-users@=
lists.ettus.com> wrote:

Hi There,=C2=A0 =C2=A0Good morning. As I could see in the documentation, Et=
tus recommends "X520 (Ethernet Controller)" at PC/host side. Is this a must=
?=C2=A0=C2=A0 =C2=A0We are planning to use X552 Ethernet Controller and I a=
m wondering will it cause any issue. Can you please let me know what are th=
e Ethernet Controllers can be used at PC side for SFP+ ports?BR,Santosh=C2=
=A0_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

 =20
------=_Part_210188_1896435161.1579168634007
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp36a7a3f2yahoo-style-wrap" style=
=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:16px=
;"><div></div>
        <div dir=3D"ltr" data-setdir=3D"false">Hi Sam,</div><div dir=3D"ltr=
" data-setdir=3D"false">&nbsp; &nbsp;The reason for this is that, I am seei=
ng something strange here with fibre connection. The PC comes up and doesn'=
t negotiate the speed with SDR. Now we are in a situation to find the root =
cause of this. Either the HW/SW at PC side is causing the issue or HW/SW at=
 PC side is not compatible with SDR.</div><div dir=3D"ltr" data-setdir=3D"f=
alse"><br></div><div dir=3D"ltr" data-setdir=3D"false">I have tried followi=
ng methods at PC side and no luck:</div><div dir=3D"ltr" data-setdir=3D"fal=
se">Bring down the fibre interface and up again</div><div dir=3D"ltr" data-=
setdir=3D"false">Turned on auto neg and at PC side and no luck</div><div di=
r=3D"ltr" data-setdir=3D"false">Used ethtool to set the speed and no luck</=
div><div dir=3D"ltr" data-setdir=3D"false">Many other option being tried, b=
ut doesn't help</div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div =
dir=3D"ltr" data-setdir=3D"false"><b>All I want:</b></div><div dir=3D"ltr" =
data-setdir=3D"false">What is(are) the Ethernet controller(s) being used in=
 X300(HW and SW if it is OK to reveal)? This will allow us to check with In=
tel to select a right controller at PC side</div><div dir=3D"ltr" data-setd=
ir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false">What are the =
ethernet controllers that are being tested at PC side?&nbsp;</div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">Any information in this front would be highly appreciated.</div><div d=
ir=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"=
false">BR,</div><div dir=3D"ltr" data-setdir=3D"false">Santosh</div><div><b=
r></div>
       =20
        </div><div id=3D"yahoo_quoted_9256781730" class=3D"yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, s=
ans-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Wednesday, January 15, 2020, 07:07:58 PM GMT, Sam Re=
iter &lt;sam.reiter@ettus.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"yiv4343609832"><div><div dir=3D"ltr"><div>S=
antosh,</div><div><br clear=3D"none"></div><div>That card should be fine fo=
r streaming, that controller just hasn't been explicitly tested as far as I=
 know. Are you planning on using DPDK?</div><div><br clear=3D"none"></div><=
div><div class=3D"yiv4343609832gmail_signature" dir=3D"ltr"><div dir=3D"ltr=
"><div><div dir=3D"ltr">Sam Reiter <br clear=3D"none"></div></div></div></d=
iv></div></div><br clear=3D"none"><div class=3D"yiv4343609832gmail_quote"><=
div class=3D"yiv4343609832yqt6093841100" id=3D"yiv4343609832yqt59140"><div =
class=3D"yiv4343609832gmail_attr" dir=3D"ltr">On Wed, Jan 15, 2020 at 12:26=
 PM voonna santosh via USRP-users &lt;<a rel=3D"nofollow" shape=3D"rect" ym=
ailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" href=3D"mailt=
o:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; wrote:<br =
clear=3D"none"></div><blockquote class=3D"yiv4343609832gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex;"><div><div style=3D"font-family:Helvetica Neue, Helvetica, Arial=
, sans-serif;font-size:16px;"><div dir=3D"ltr">Hi There,</div><div dir=3D"l=
tr">&nbsp; &nbsp;Good morning. As I could see in the documentation, Ettus r=
ecommends "X520 (Ethernet Controller)" at PC/host side. Is this a must?&nbs=
p;</div><div dir=3D"ltr">&nbsp; &nbsp;We are planning to use X552 Ethernet =
Controller and I am wondering will it cause any issue. Can you please let m=
e know what are the Ethernet Controllers can be used at PC side for SFP+ po=
rts?</div><div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santosh&nbsp;</div></d=
iv></div>_______________________________________________<br clear=3D"none">
USRP-users mailing list<br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:USRP-users@lists.ettus=
.com" target=3D"_blank" href=3D"mailto:USRP-users@lists.ettus.com">USRP-use=
rs@lists.ettus.com</a><br clear=3D"none">
<a rel=3D"nofollow" shape=3D"rect" target=3D"_blank" href=3D"http://lists.e=
ttus.com/mailman/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.co=
m/mailman/listinfo/usrp-users_lists.ettus.com</a><br clear=3D"none">
</blockquote></div></div></div></div></div>
            </div>
        </div></body></html>
------=_Part_210188_1896435161.1579168634007--


--===============8209386105094089903==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============8209386105094089903==--

