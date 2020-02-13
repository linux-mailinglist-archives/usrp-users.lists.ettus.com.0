Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 370CA15C18F
	for <lists+usrp-users@lfdr.de>; Thu, 13 Feb 2020 16:24:29 +0100 (CET)
Received: from [::1] (port=34228 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1j2GLo-0001wv-Eg; Thu, 13 Feb 2020 10:24:24 -0500
Received: from sonic306-21.consmr.mail.ne1.yahoo.com ([66.163.189.83]:35606)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <santu_voonna@yahoo.com>)
 id 1j2GLl-0001sj-Jw
 for usrp-users@lists.ettus.com; Thu, 13 Feb 2020 10:24:21 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1581607420; bh=zrKAXmvWMIx2QD12YJSeiJGvoh06IwBv+3zj+t9G4+I=;
 h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
 b=YA7GMEnOYxs6pPYbXXC0NjFDws1TzAhx6OI4vl/GlZnEw/Otl3UccOeQT8eQu1IHM2/BgpxFEH0Co92kREspoNGMO7UL5h+h0zI8myyU+YGc9Th/S7Dofprai2mUxJ7EOZu/eEjW7Bfizep5IibdwafnvWWpWVF93x524PnmkWo/XZi3S3H6XbUWfLa7GmdAsk4/aA/lK5CrvkntCGf+tofchDFPEUQLpCYptEF5ScIeibNtoqJXESvQJKWOE2j0pbRavegFJQdhBK/VhuHx8WW3JYjaODR8cHNkzZT9lJtD3Li3IifTI2vbF3KwwggnMBmZkBwOTK5siq2ko0uQkg==
X-YMail-OSG: U6VKk38VM1mNr6hREPr6spPH1.on_gvZd2t87BigIkVgzKqBMFWUWpuaTJZUl7i
 UEaU_qMYSM49jZbsLaIsjosPb8bgwkbVroH4ND93Os4xhF4UdVc5O0JV8Nt05lhwkkSd4qXzAnaG
 KkqfWLfT1s34lV2SZEROdq3ydXi7YSABFE3YGz6XzP4qYztfY6SzGN7DZ1cry1DOJ0nL.9WiMTcn
 WN4rD9ONCS6n.843GFUBPAMKTOAY3BgcjhbPaRp7_DrLsm1jKSWcHiwbiTQif_Qaf71EUOR_YLLg
 1L_CfkH5kzK5o49xP.XeecDe1KGcJiETOgia5mns2s.ucCGfRTkwrFoQjg7yu.h4GS80VRrU5Nzk
 ZfAxnm5E2fboO0muOar99qsHwh31ewF7S1mLB9sxeqmIE1rG.7fNvkkfelkaZPN8YituyQNv_0zQ
 vuktZsabgXqsAnR3ioQIYYG0ufkG395lYRBBiBmPAyi.syaR1E.b80iB24G_pD0IbQQLbrhsYqsO
 ZKgcTIj4vdkPS.fPSNkbzY8ekYTlPFWgxbmyDb8GKBCYyF7UrtELmOSRwUk.vsCigaT1mgWgMpQg
 SglvOXWiXUX006gcGNuyuUjzmgR1_PV2RCso8m2VshgM6vHDIWMyGV0l6IeuoFDrzNMgfn_.wp..
 trgeY33dCXYR93R0MSDY1TlZ3zjZb64sP5_6xiNznaAA3iNiDe02kwdJ_d61NLz4MN192hyrNyiE
 L1MWsR6yiF7DtnbFvBEX5CSM6M0R1QpCKvcsmzQ8ICucNK6gg4CAUj5mFAwB99EVflD_FhZ1n0H1
 XXR2kWBOodGwkuQx6JLxgFmN66pWErv8lfUG9SSOjnoYiiihaI4H8wrrtsIPL2Og5gvYvlXFBeAP
 L86LYe1Gug7Wsl.uvIUMXUEuP.7BXh_EhSzLELKcM733P8DIKaQtkJoOga4Z.QmSDX6718sabBUj
 eo0W5KcaO8l3bGzqBZDJvH5yC.4ZqTihksr8TTmzLxwulPqLf2s4_0Vuu9JpTbpkhHFpuCm29Zd0
 yT7u0NUvcCyj5Y5OaDqUJG2AfbcV_FHCX.z_RPi9p6U5qqJkABAx7Vna6K0ZJXH3tKjJqIArVsTl
 GdOMZG28XmDdx_xPwazeO.dyO4OSUn8SLIWpR1CEbEKRuEQZ5WquQRW38LwcqZFUMhaBQ.lEUMl6
 vrQbHf1mSd5kJ.WgPYoAU2Jx5re5hALuao5EPv7h9Az1hTEMW1I9OcAtU4i_6W7M8FmIQeaDs0o7
 MkbgJXCMmlWSC2bHz2xIMnM.tPmsgaMHkQel73egFaphXYbqFG3_lEXY1lcVm2NS3dCLn1SQZHGX
 Cezdm6sP8_lOvS05uRdP1RRp2JgqBFv4bkifL2OWpQl1.QR3n8NGnxIEFQqW9fr7F3TYtWqp57Bl
 r
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic306.consmr.mail.ne1.yahoo.com with HTTP; Thu, 13 Feb 2020 15:23:40 +0000
Date: Thu, 13 Feb 2020 15:23:34 +0000 (UTC)
To: "michael.dickens@ettus.com" <michael.dickens@ettus.com>
Message-ID: <579764302.2516796.1581607414995@mail.yahoo.com>
In-Reply-To: <CAGNhwTPdFcx2nJABMROdjmrbLSSVBBjpukcgH2YtkcL_uPUS=Q@mail.gmail.com>
References: <86368074.393649.1581004383613.ref@mail.yahoo.com>
 <86368074.393649.1581004383613@mail.yahoo.com>
 <151327143.2412159.1581586968416@mail.yahoo.com>
 <CAGNhwTPdFcx2nJABMROdjmrbLSSVBBjpukcgH2YtkcL_uPUS=Q@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.15199 YahooMailAndroidMobile YMobile/1.0
 (com.yahoo.mobile.client.android.mail/6.3.3; Android/10; QP1A.190711.020;
 beyond2; samsung; SM-G975F; 5.86; 2047x1080; )
Subject: Re: [USRP-users] Getting time from USRP X300
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
Reply-To: "santu_voonna@yahoo.com" <santu_voonna@yahoo.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6869424311152951426=="
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

--===============6869424311152951426==
Content-Type: multipart/alternative; 
	boundary="----=_Part_2516795_1978400206.1581607414993"
Content-Length: 9128

------=_Part_2516795_1978400206.1581607414993
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank u very much ...=C2=A0

Sent from Yahoo Mail on Android=20
=20
  On Thu, 13 Feb 2020 at 13:51, Michael Dickens<michael.dickens@ettus.com> =
wrote:   HI=C2=A0Santosh - Please see this reply to your original post. Mar=
cus didn't reply to you directly, just the USRP list. If you're not receivi=
ng emails from the list, then you should=C2=A0note so in your query so that=
 we know how to=C2=A0respond to you. Hope his reply is useful! - MLD

---------- Forwarded message ---------
From: Marcus D. Leech via USRP-users <usrp-users@lists.ettus.com>
Date: Thu, Feb 6, 2020 at 11:30 AM
Subject: Re: [USRP-users] Getting time from USRP X300
To: <usrp-users@lists.ettus.com>

  On 02/06/2020 10:53 AM, voonna santosh via USRP-users wrote:
 =20
  Hi There, =C2=A0 =C2=A0I would like to connect external GPS antenna to X3=
00 and get the time once GPS is locked. Can you please throw pointers on fo=
llowing things:    =20
   - Does X300 support specific GPS antennas? If so can you please let me k=
now ?
  =20
 Any of the dozens of active GPS antenna on the market will work just fine.

  =20
   - How do I know that X300's GPS is locked? Is there any API to query for=
 GPS lock status?
   - Once GPS is locked what is the API to get the time?   =20
=20
  =20
 The 'query_gpsdo_sensors' utility will show you how to use the GPSDO API.

  =20
   - Is it possible to use X300 as NTP server? If so how could I achieve it=
?
  =20
 No, it has no NTP support.=C2=A0=C2=A0 GPS-based NTP servers are now quite=
 cheap, so you should probably look into one of those.

  BR, Santosh
On Thu, Feb 13, 2020 at 4:43 AM voonna santosh via USRP-users <usrp-users@l=
ists.ettus.com> wrote:

 Hi There,=C2=A0 =C2=A0Will you be able to help me to resolve this?BR,Santo=
sh
    On Thursday, February 6, 2020, 03:53:03 PM GMT, voonna santosh <santu_v=
oonna@yahoo.com> wrote: =20
 Hi There,=C2=A0 =C2=A0I would like to connect external GPS antenna to X300=
 and get the time once GPS is locked. Can you please throw pointers on foll=
owing things:  =20
   - Does X300 support specific GPS antennas? If so can you please let me k=
now ?
   - How do I know that X300's GPS is locked? Is there any API to query for=
 GPS lock status?
   - Once GPS is locked what is the API to get the time?=C2=A0
   - Is it possible to use X300 as NTP server? If so how could I achieve it=
?
BR,Santosh
--=20
Michael Dickens
Ettus Research Technical Support
Email: support@ettus.com
Web: https://ettus.com/ =20

------=_Part_2516795_1978400206.1581607414993
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thank u very much ...&nbsp;<br><br><div id=3D"ymail_android_signature"><a i=
d=3D"ymail_android_signature_link" href=3D"https://go.onelink.me/107872968?=
pid=3DInProduct&amp;c=3DGlobal_Internal_YGrowth_AndroidEmailSig__AndroidUse=
rs&amp;af_wl=3Dym&amp;af_sub1=3DInternal&amp;af_sub2=3DGlobal_YGrowth&amp;a=
f_sub3=3DEmailSignature">Sent from Yahoo Mail on Android</a></div> <br> <bl=
ockquote style=3D"margin: 0 0 20px 0;"> <div style=3D"font-family:Roboto, s=
ans-serif; color:#6D00F6;"> <div>On Thu, 13 Feb 2020 at 13:51, Michael Dick=
ens</div><div>&lt;michael.dickens@ettus.com&gt; wrote:</div> </div> <div st=
yle=3D"padding: 10px 0 0 20px; margin: 10px 0 0 0; border-left: 1px solid #=
6D00F6;"> <div id=3D"yiv2084922939"><div><div dir=3D"ltr"><div dir=3D"ltr">=
HI&nbsp;Santosh - Please see this reply to your original post. Marcus didn'=
t reply to you directly, just the USRP list. If you're not receiving emails=
 from the list, then you should&nbsp;note so in your query so that we know =
how to&nbsp;respond to you. Hope his reply is useful! - MLD<br clear=3D"non=
e"><br clear=3D"none"><div class=3D"yiv2084922939gmail_quote"><div class=3D=
"yiv2084922939gmail_attr" dir=3D"ltr">---------- Forwarded message --------=
-<br clear=3D"none">From: <strong class=3D"yiv2084922939gmail_sendername">M=
arcus D. Leech via USRP-users</strong> <span>&lt;<a rel=3D"nofollow" shape=
=3D"rect" ymailto=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank" h=
ref=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt=
;</span><br clear=3D"none">Date: Thu, Feb 6, 2020 at 11:30 AM<br clear=3D"n=
one">Subject: Re: [USRP-users] Getting time from USRP X300<br clear=3D"none=
">To:  &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:usrp-users@=
lists.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.co=
m">usrp-users@lists.ettus.com</a>&gt;<br clear=3D"none"></div><br clear=3D"=
none">
 =20
   =20
 =20
  <div>
    <div>On 02/06/2020 10:53 AM, voonna santosh
      via USRP-users wrote:<br clear=3D"none">
    </div>
    <blockquote type=3D"cite">
      <div style=3D"">
        <div dir=3D"ltr">Hi There,</div>
        <div dir=3D"ltr">&nbsp; &nbsp;I would like to connect
          external GPS antenna to X300 and get the time once GPS is
          locked. Can you please throw pointers on following things:</div>
        <div dir=3D"ltr">
          <ul><li>Does X300 support specific GPS antennas? If so can you
              please let me know ?</li></ul>
        </div>
      </div>
    </blockquote>
    Any of the dozens of active GPS antenna on the market will work just
    fine.<br clear=3D"none"><blockquote type=3D"cite"><div style=3D""><div =
dir=3D"ltr"><ul><li>How do I know that X300's GPS is locked? Is there any
              API to query for GPS lock status?</li><li>Once GPS is locked =
what is the API to get the time? <br clear=3D"none">
            </li></ul>
        </div>
      </div>
    </blockquote>
    The 'query_gpsdo_sensors' utility will show you how to use the GPSDO
    API.<br clear=3D"none"><blockquote type=3D"cite"><div style=3D""><div d=
ir=3D"ltr"><ul><li>Is it possible to use X300 as NTP server? If so how
              could I achieve it?</li></ul>
        </div>
      </div>
    </blockquote>
    No, it has no NTP support.&nbsp;&nbsp; GPS-based NTP servers are now qu=
ite
    cheap, so you should probably look into one of those.<br clear=3D"none"=
><blockquote type=3D"cite">
      <div style=3D"">
       =20
        <div dir=3D"ltr">BR,</div>
        <div dir=3D"ltr">Santosh</div></div></blockquote></div></div></div>=
<div class=3D"yiv2084922939yqt1644008094 yQTDBase" id=3D"yiv2084922939yqt90=
839"><div class=3D"yiv2084922939gmail_quote"><div class=3D"yiv2084922939gma=
il_attr" dir=3D"ltr">On Thu, Feb 13, 2020 at 4:43 AM voonna santosh via USR=
P-users &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank" href=3D"mailto:usrp-users@lists.ettus.c=
om">usrp-users@lists.ettus.com</a>&gt; wrote:<br clear=3D"none"></div><bloc=
kquote class=3D"yiv2084922939gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex;"><div><div style=
=3D""><div></div>
        <div dir=3D"ltr">Hi There,</div><div dir=3D"ltr">&nbsp; &nbsp;Will =
you be able to help me to resolve this?</div><div dir=3D"ltr">BR,</div><div=
 dir=3D"ltr">Santosh</div><div><br clear=3D"none"></div>
       =20
        </div><div id=3D"yiv2084922939gmail-m_7770827662845014455yahoo_quot=
ed_2073502963">
            <div style=3D"">
               =20
                <div>
                    On Thursday, February 6, 2020, 03:53:03 PM GMT, voonna =
santosh &lt;<a rel=3D"nofollow" shape=3D"rect" ymailto=3D"mailto:santu_voon=
na@yahoo.com" target=3D"_blank" href=3D"mailto:santu_voonna@yahoo.com">sant=
u_voonna@yahoo.com</a>&gt; wrote:
                </div>
                <div><br clear=3D"none"></div>
                <div><div id=3D"yiv2084922939gmail-m_7770827662845014455yiv=
8388366916"><div><div style=3D""><div dir=3D"ltr">Hi There,</div><div dir=
=3D"ltr">&nbsp; &nbsp;I would like to connect external GPS antenna to X300 =
and get the time once GPS is locked. Can you please throw pointers on follo=
wing things:</div><div dir=3D"ltr"><ul><li>Does X300 support specific GPS a=
ntennas? If so can you please let me know ?</li><li>How do I know that X300=
's GPS is locked? Is there any API to query for GPS lock status?</li><li>On=
ce GPS is locked what is the API to get the time?&nbsp;</li><li>Is it possi=
ble to use X300 as NTP server? If so how could I achieve it?</li></ul></div=
><div dir=3D"ltr">BR,</div><div dir=3D"ltr">Santosh</div></div></div></div>=
</div></div></div></div></blockquote></div></div>-- <br clear=3D"none"><div=
 class=3D"yiv2084922939gmail_signature" dir=3D"ltr"><div dir=3D"ltr"><div><=
div dir=3D"ltr">Michael Dickens<br clear=3D"none">Ettus Research Technical =
Support<br clear=3D"none">Email: <a rel=3D"nofollow" shape=3D"rect" ymailto=
=3D"mailto:support@ettus.com" target=3D"_blank" href=3D"mailto:support@ettu=
s.com">support@ettus.com</a><br clear=3D"none">Web: <a rel=3D"nofollow" sha=
pe=3D"rect" target=3D"_blank" href=3D"https://ettus.com/">https://ettus.com=
/</a></div></div></div></div></div></div></div> </div> </blockquote>
------=_Part_2516795_1978400206.1581607414993--


--===============6869424311152951426==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6869424311152951426==--

