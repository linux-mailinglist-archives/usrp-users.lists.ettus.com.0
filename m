Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C81DC49740A
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 19:01:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CF834384FEA
	for <lists+usrp-users@lfdr.de>; Sun, 23 Jan 2022 13:01:38 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ljCQpTlE";
	dkim-atps=neutral
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 050FB384590
	for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 13:00:42 -0500 (EST)
Received: by mail-qt1-f171.google.com with SMTP id e8so2907909qtq.2
        for <usrp-users@lists.ettus.com>; Sun, 23 Jan 2022 10:00:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to;
        bh=tO5ItKQlYxVSSsgdE/iO2e2K9nClIhMPgVW9bzAg75g=;
        b=ljCQpTlEgzmKTPXzkG05BluWfnSUDmIImo7i9C8QuX0+hz0neojbhZ73vu6Gk/wppb
         PqZpw1gvXEivQ0BuLem14bfGM06zO52vSeL8wbdoPCLNy4xd39znPXfbOK/zOguZZbuT
         RQABW0owplgsOswKo3Wgv7AlYWfsejdjF4oHJ6DfNlmEj2v4t3OnjYf05PDv3eqDc/Vh
         +EPZBBjWoiyQ3+l3pUQx7aBZlZ/FtDEjVTKh1hreFdXw/FTeMpRvBkTlUseOiIzb9+Yl
         18TAkiNSNHNudNNd0YrmbhBR4lOw9n4G/xBEh5uPOs/OsJwOkt/29keo2B9k8j6uVetQ
         gUUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to;
        bh=tO5ItKQlYxVSSsgdE/iO2e2K9nClIhMPgVW9bzAg75g=;
        b=AdT+T7UWOyelLQrKBFzZuVGncexJ37BphFodR25zFSdROd+2PJCkA7bFUcwkNQwidw
         OMJRtSHKHWByQkQdJMy+mEreeefJo/w/T/kD8ywq9jgrSNEqM9xH88/6tFm+OIKLn1hy
         EpgY4VbkitvGe8B5962Kkc2ujV3e9XhIah5cPBuPuvYb2hWB+borVcyXWfJhil4Qx6cV
         VidjkFDqNQISedW8haV2iWucWBMgqfsqEwMBhh5V4mqaQu8GWMT24RHJlh1NCswtK5l6
         LqYyITJhVbEmHY8U/noH7A91fZJYde4RNxUolvJh6eURUeNIY8HNd+WHOmlVSwtkysH1
         FiVQ==
X-Gm-Message-State: AOAM533nF36+JnKRXzvdxSuCsCPGos65xnVLO18QErR8V6Hp8jOjSh+F
	VUqB0Nbs/xiaBWuuDcaq987V5k7B9Kzo/A==
X-Google-Smtp-Source: ABdhPJxFm5ix3p5yUdJuxcunOy7ONGvgauPtGC4hLB4kWR9RLJHwuppPB5jg4383wuWV4qCuVzKoQg==
X-Received: by 2002:a05:622a:552:: with SMTP id m18mr10151563qtx.508.1642960842453;
        Sun, 23 Jan 2022 10:00:42 -0800 (PST)
Received: from [192.168.2.225] (bras-base-smflon1825w-grc-05-174-88-53-52.dsl.bell.ca. [174.88.53.52])
        by smtp.googlemail.com with ESMTPSA id c4sm6295634qkp.0.2022.01.23.10.00.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Jan 2022 10:00:41 -0800 (PST)
Message-ID: <db55693f-29e1-3f36-cbdd-c3cb3b1541bd@gmail.com>
Date: Sun, 23 Jan 2022 13:00:41 -0500
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
From: "Marcus D. Leech" <patchvonbraun@gmail.com>
In-Reply-To: <007d01d81082$81e12b00$85a38100$@sagaxcommunications.com>
Message-ID-Hash: DJLMYVIRGUILEPB5KSPLSW5PS7D3C4JL
X-Message-ID-Hash: DJLMYVIRGUILEPB5KSPLSW5PS7D3C4JL
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: N310 reachable no error windows
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/DJLMYVIRGUILEPB5KSPLSW5PS7D3C4JL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2270348482643457435=="

This is a multi-part message in MIME format.
--===============2270348482643457435==
Content-Type: multipart/alternative;
 boundary="------------NkSEOX700DJac9iz4FocQ4VY"
Content-Language: en-US

This is a multi-part message in MIME format.
--------------NkSEOX700DJac9iz4FocQ4VY
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2022-01-23 12:56, bertalan.eged@sagaxcommunications.com wrote:
>
> C:\Users\sgx>ping 192.168.10.2
>
> Pinging 192.168.10.2 with 32 bytes of data:
>
> Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
> Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
> Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
> Reply from 192.168.10.2: bytes=3D32 time=3D1ms TTL=3D64
>
> Ping statistics for 192.168.10.2:
>
> =C2=A0=C2=A0=C2=A0 Packets: Sent =3D 4, Received =3D 4, Lost =3D 0 (0% =
loss),
>
> Approximate round trip times in milli-seconds:
>
> =C2=A0=C2=A0=C2=A0 Minimum =3D 1ms, Maximum =3D 1ms, Average =3D 1ms
>
> C:\Users\sgx>
>
OK, so, it's likely a "blockage" by your firewall configuration on the=20
Windows PC.

if you:

uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310"

Is it still unable to establish a session?


If so, then this is almost certainly your firewall blocking ports used=20
by UHD to communicate with the N310

Your host needs to support UDP traffic on 49152 and 49153 ports.


--------------NkSEOX700DJac9iz4FocQ4VY
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body>
    <div class=3D"moz-cite-prefix">On 2022-01-23 12:56,
      <a class=3D"moz-txt-link-abbreviated" href=3D"mailto:bertalan.eged@=
sagaxcommunications.com">bertalan.eged@sagaxcommunications.com</a> wrote:=
<br>
    </div>
    <blockquote type=3D"cite"
      cite=3D"mid:007d01d81082$81e12b00$85a38100$@sagaxcommunications.com=
">
      <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DU=
TF-8">
      <meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
      <style>@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}@font-face
	{font-family:"Times New Roman \,serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}p.MsoNormal, li.MsoNormal, div.MsoNormal
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
      <div class=3D"WordSection1"><span style=3D"color:#1F497D"><o:p></o:=
p></span>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">C:\Users\sgx&gt;ping 192.168.10.2<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Pinging 192.168.10.2 with 32 bytes of
            data:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D32
            time=3D1ms TTL=3D64<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D32
            time=3D1ms TTL=3D64<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D32
            time=3D1ms TTL=3D64<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Reply from 192.168.10.2: bytes=3D32
            time=3D1ms TTL=3D64<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Ping statistics for 192.168.10.2:<o:p=
></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 Packets: Sent =3D =
4, Received =3D 4,
            Lost =3D 0 (0% loss),<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">Approximate round trip times in
            milli-seconds:<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">=C2=A0=C2=A0=C2=A0 Minimum =3D 1ms, M=
aximum =3D 1ms,
            Average =3D 1ms<o:p></o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D"><o:p>=C2=A0</o:p></span></p>
        <p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt"><span
            style=3D"color:#1F497D">C:\Users\sgx&gt;<o:p></o:p></span></p=
>
      </div>
    </blockquote>
    OK, so, it's likely a "blockage" by your firewall configuration on
    the Windows PC.<br>
    <br>
    if you:<br>
    <br>
    uhd_usrp_probe --args "addr=3D192.168.10.2,type=3Dn3xx,product=3Dn310=
"<br>
    <br>
    Is it still unable to establish a session?<br>
    <br>
    <br>
    If so, then this is almost certainly your firewall blocking ports
    used by UHD to communicate with the N310<br>
    <br>
    Your host needs to support UDP traffic on 49152 and 49153 ports.<br>
    <br>
    <br>
  </body>
</html>

--------------NkSEOX700DJac9iz4FocQ4VY--

--===============2270348482643457435==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2270348482643457435==--
