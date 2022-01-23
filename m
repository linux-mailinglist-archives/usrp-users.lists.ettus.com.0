Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C71384974CE
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 19:48:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A17C7384F6F
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 13:48:19 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="c2zCkbMj";
	dkim-atps=neutral
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
	by mm2.emwd.com (Postfix) with ESMTPS id C609B38468E
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 13:47:24 -0500 (EST)
Received: by mail-qv1-f44.google.com with SMTP id e20so9825060qvu.7
        for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 10:47:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=OHcLmKb9nQFJEKTD9nM3lTxy4sJx5RVMg0NRpjPYYdM=;
        b=c2zCkbMjiYNKaLpmiee525cUtuh0mI+85CE367SuFXbIcLCnVE4VeFj7gbmCADiLLX
         vGaRJJAzA3byb0cCO1JZIwABMh39VisP0d38CXA3KIpyZXMOPnjEfwQsUlSimWCi/RH8
         RGmHb28p9LSFzUkA/RxK8QuvEHr6qI83zvbbmbUJCCoqylFHeg7btxtcIXYrYZs9IQal
         vXFX6+bX2LFpsi2PjS2U47mtD7RgK49w5s2opg6mVU8WKMj1tlO9tYjE1/19IriKVFie
         QvH1/de1AGu6MoVbJaH0+6R9Y/XjtBBeSAExY80ISAQPgACNlVvFiLwA/rwopCAuOTyy
         Sv6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=OHcLmKb9nQFJEKTD9nM3lTxy4sJx5RVMg0NRpjPYYdM=;
        b=olXQDWBQf6av7lX+nX+ub50Rw+nUQgMItBDfFVUh2fdvUA8AfP4iHsHEU6R8QGo1We
         jIwZeG4G0341559E+TQZPSUlN6jXL3Y/RZ+376zGm4RughzqlPRzgPk9n6WuZgl5t6Nb
         AGBuOGWZr4FFtgAQjwzg+bqSSVezRJqt7Be5I5MgCUvCvXClVPc0fcDJ5K/cI9vgjRsT
         ujwteGt5Uq6Wy1E9kvdxLCjVQ55RKj3tWsulAwDLXA8/Vh++kZEa7R+vVDF+nJ7WwyTK
         75FbU9cmGbNeiqeUNFuDFxzy4jbNbAk3C4ldFS6/XRqPmGQYmJcoq3ju1M1ztdcBDdrX
         5WWw==
X-Gm-Message-State: AOAM533MUsAAntVDiphjJTRoVfTGk07/5qyihir0uCkI/Cf8pZ5+EHtm
	Yg3tubuZKMhQEuT6VMFX6x3P9hpsGI5ceg==
X-Google-Smtp-Source: ABdhPJwdZLu1K2ZCjYNYVPC6S8b8pn/dICnfHfJgbbGMLl3acRxEJst1lqoKyHQV/INKODmQOL+wZQ==
X-Received: by 2002:ad4:5bc1:: with SMTP id t1mr12129469qvt.87.1642963644167;
        Sun, 23 Jan 2022 10:47:24 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id q7sm6203907qkl.78.2022.01.23.10.47.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jan 2022 10:47:23 -0800 (PST)
Message-ID: <bec08fe4-8931-e3b8-1fbc-5178eeab666c@gmail.com>
Date: Sun, 23 Jan 2022 13:47:22 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: bertalan.eged@sagaxcommunications.com, usrp-users@lists.ettus.com
References: <074c01d80f78$17d64480$4782cd80$@sagaxcommunications.com>
 <3bef9952-3782-dace-bc6b-f32843ab6469@gmail.com>
 <002901d81059$502b5320$f081f960$@sagaxcommunications.com>
 <8bd2fc98-7216-937e-8710-58f15157818d@gmail.com>
 <005c01d8107b$2cb85790$862906b0$@sagaxcommunications.com>
 <e21e0da1-e55f-230f-a0a8-abccfa64220c@gmail.com>
 <007d01d81082$81e12b00$85a38100$@sagaxcommunications.com>
 <db55693f-29e1-3f36-cbdd-c3cb3b1541bd@gmail.com>
 <00c601d81089$1db82140$592863c0$@sagaxcommunications.com>
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <00c601d81089$1db82140$592863c0$@sagaxcommunications.com>
Message-ID-Hash: 2IDJUMNJ3GI6SIZGIAWI5DJCCU54WYQY
X-Message-ID-Hash: 2IDJUMNJ3GI6SIZGIAWI5DJCCU54WYQY
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2IDJUMNJ3GI6SIZGIAWI5DJCCU54WYQY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2574839002523150590=="

This is a multi-part message in MIME format.
--===============2574839002523150590==
Content-Type: multipart/alternative;
 boundary="------------xhSsPldwsdR09aIhAwbiCJ90"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------xhSsPldwsdR09aIhAwbiCJ90
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-23 13:43, bertalan.eged@sagaxcommunications.com wrote:
>
> *From:*Marcus D. Leech <patchvonbraun@gmail.com>
> *Sent:* Sunday, January 23, 2022 7:01 PM
> *To:* bertalan.eged@sagaxcommunications.com; usrp-users@lists.ettus.com
> *Subject:* Re: [USRP-users] Re: N310 reachable no error windows
>
> On 2022-01-23 12:56, bertalan.eged@sagaxcommunications.com wrote:
>
>     C:\Users\sgx>ping 192.168.10.2
>
>     Pinging 192.168.10.2 with 32 bytes of data:
>
>     Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
>     Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
>     Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
>     Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
>     Ping statistics for 192.168.10.2:
>
>     =C2=A0=C2=A0=C2=A0 Packets: Sent =3D 4, Received =3D 4, Lost =3D 0 =
(0% loss),
>
>     Approximate round trip times in milli-seconds:
>
>     =C2=A0=C2=A0=C2=A0 Minimum =3D 1ms, Maximum =3D 1ms, Average =3D 1m=
s
>
>     C:\Users\sgx>
>
> OK, so, it's likely a "blockage" by your firewall configuration on the=20
> Windows PC.
>
> if you:
>
> uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"
>
> Is it still unable to establish a session?
>
>
> If so, then this is almost certainly your firewall blocking ports used=20
> by UHD to communicate with the N310
>
> Your host needs to support UDP traffic on 49152 and 49153 ports.
>
> Sam as before:
>
> C:\Users\sgx>uhd_usrp_probe --args=20
> "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;=20
> UHD_4.1.0.4-release
>
> Error: LookupError: KeyError: No devices found for ----->
>
> Device Address:
>
> =C2=A0=C2=A0=C2=A0 addr: 192.168.10.2
>
> =C2=A0=C2=A0=C2=A0 type: n3xx
>
> =C2=A0=C2=A0=C2=A0 product: n310
>
> let me check the firewall, however I used this machine with X310 recent=
ly=E2=80=A6
>
> I switched off the firwall, and get other error:
>
> C:\Users\sgx>uhd_usrp_probe --args=20
> "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;=20
> UHD_4.1.0.4-release
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B3599,cl=
aimed=3DFalse,addr=3D192.168.10.2
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> Error: rpc::timeout: Timeout of 2000ms while calling RPC function=20
> 'set_device_id'
>
> C:\Users\sgx>uhd_usrp_probe
>
> [INFO] [UHD] Win32; Microsoft Visual C++ version 14.1; Boost_107000;=20
> UHD_4.1.0.4-release
>
> [INFO] [MPMD] Initializing 1 device(s) in parallel with args:=20
> mgmt_addr=3D10.1.3.82,type=3Dn3xx,product=3Dn310,serial=3D31B3599,claim=
ed=3DFalse,addr=3D192.168.10.2
>
> [WARNING] [MPM.RPCServer] A timeout event occured!
>
> Error: rpc::timeout: Timeout of 2000ms while calling RPC function=20
> 'set_device_id'
>
>
Check that the MTU on the N310 (defaults to 9000 for the SFP0 interface)=20
and the MTU on your host match.



--------------xhSsPldwsdR09aIhAwbiCJ90
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-23 13:43,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:bertalan.eged@=
sagaxcommunications.com">bertalan.eged@sagaxcommunications.com</a> wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:00c601d81089$1db82140$592863c0$@sagaxcommunications.com=
">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}span.E-mailStlus18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}span.E-mailStlus19
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-mailStlus20
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-mailStlus21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}span.E-mailStlus22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}div.WordSection1
	{page:WordSection1;}</style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
      <div class=3D"WordSection1">
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-G=
B"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal"><span style=3D"color:#1F497D" lang=3D"EN-G=
B"><o:p>=C2=A0</o:p></span></p>
        <div>
          <div style=3D"border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0in 0in 0in">
            <p class=3D"MsoNormal"><b><span lang=3D"HU">From:</span></b><=
span
                lang=3D"HU"> Marcus D. Leech
                <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:patchvo=
nbraun@gmail.com">&lt;patchvonbraun@gmail.com&gt;</a> <br>
                <b>Sent:</b> Sunday, January 23, 2022 7:01 PM<br>
                <b>To:</b> <a class=3D"moz-txt-link-abbreviated" href=3D"=
mailto:bertalan.eged@sagaxcommunications.com">bertalan.eged@sagaxcommunic=
ations.com</a>;
                <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:usrp=
-users@lists.ettus.com">usrp-users@lists.ettus.com</a><br>
                <b>Subject:</b> Re: [USRP-users] Re: N310 reachable no
                error windows<o:p></o:p></span></p>
          </div>
        </div>
        <p class=3D"MsoNormal"><o:p>=C2=A0</o:p></p>
        <div>
          <p class=3D"MsoNormal">On 2022-01-23 12:56, <a
              href=3D"mailto:bertalan.eged@sagaxcommunications.com"
              moz-do-not-send=3D"true" class=3D"moz-txt-link-freetext">be=
rtalan.eged@sagaxcommunications.com</a>
            wrote:<span style=3D"font-size:12.0pt"><o:p></o:p></span></p>
        </div>
        <blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">C:\Users\sgx&gt;ping 192.168.10.2</=
span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Pinging 192.168.10.2 with 32 bytes
              of data:</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D32
              time=3D1ms TTL=3D64</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D32
              time=3D1ms TTL=3D64</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D32
              time=3D1ms TTL=3D64</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D32
              time=3D1ms TTL=3D64</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Ping statistics for 192.168.10.2:</=
span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 Packets: Sent =3D=
 4, Received =3D 4,
              Lost =3D 0 (0% loss),</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">Approximate round trip times in
              milli-seconds:</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 Minimum =3D 1ms,=
 Maximum =3D 1ms,
              Average =3D 1ms</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">=C2=A0</span><o:p></o:p></p>
          <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
              style=3D"color:#1F497D">C:\Users\sgx&gt;</span><o:p></o:p><=
/p>
        </blockquote>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif">OK, so, it's likely a "blockage" by your
            firewall configuration on the Windows PC.<br>
            <br>
            if you:<br>
            <br>
            uhd_usrp_probe --args
            "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"<br>
            <br>
            Is it still unable to establish a session?<br>
            <br>
            <br>
            If so, then this is almost certainly your firewall blocking
            ports used by UHD to communicate with the N310<br>
            <br>
            Your host needs to support UDP traffic on 49152 and 49153
            ports.<br>
            <br>
            <o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Sam as before:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">C:\Users\sgx&gt;uhd_usrp_probe --args
            "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[INFO] [UHD] Win32; Microsoft Visual
            C++ version 14.1; Boost_107000; UHD_4.1.0.4-release<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Error: LookupError: KeyError: No
            devices found for -----&gt;<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Device Address:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 addr: 192.168.10.2=
<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 type: n3xx<o:p></o=
:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 product: n310<o:p>=
</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">let me check the firewall, however I
            used this machine with X310 recently=E2=80=A6<o:p></o:p></spa=
n></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">I switched off the firwall, and get
            other error:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">C:\Users\sgx&gt;uhd_usrp_probe --args
            "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"<o:p></o:p></=
span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[INFO] [UHD] Win32; Microsoft Visual
            C++ version 14.1; Boost_107000; UHD_4.1.0.4-release<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[INFO] [MPMD] Initializing 1 device(s=
)
            in parallel with args:
mgmt_addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310,serial=3D31B3599,clai=
med=3DFalse,addr=3D192.168.10.2<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[WARNING] [MPM.RPCServer] A timeout
            event occured!<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Error: rpc::timeout: Timeout of 2000m=
s
            while calling RPC function 'set_device_id'<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">C:\Users\sgx&gt;uhd_usrp_probe<o:p></=
o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[INFO] [UHD] Win32; Microsoft Visual
            C++ version 14.1; Boost_107000; UHD_4.1.0.4-release<o:p></o:p=
></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[INFO] [MPMD] Initializing 1 device(s=
)
            in parallel with args:
mgmt_addr=3D10.1.3.82,type=3Dn3xx,product=3Dn310,serial=3D31B3599,claimed=
=3DFalse,addr=3D192.168.10.2<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">[WARNING] [MPM.RPCServer] A timeout
            event occured!<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Error: rpc::timeout: Timeout of 2000m=
s
            while calling RPC function 'set_device_id'<o:p></o:p></span><=
/p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p><br>
            </o:p></span></p>
      </div>
    </blockquote>
    Check that the MTU on the N310 (defaults to 9000 for the SFP0
    interface) and the MTU on your host match.<br>
    <br>
    <br>
    <br>
  </body>
</html>

--------------xhSsPldwsdR09aIhAwbiCJ90--

--===============2574839002523150590==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2574839002523150590==--
