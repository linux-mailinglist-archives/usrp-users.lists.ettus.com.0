Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 920EDAB8FB1
	for <lists+usrp-users@lfdr.de>; Thu, 15 May 2025 21:09:32 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7414C385CD0
	for <lists+usrp-users@lfdr.de>; Thu, 15 May 2025 15:09:31 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747336171; bh=TSIEACjwWLEq+aIZeqA1/i434txDmEDSjTfHQC738AY=;
	h=References:In-Reply-To:Date:To:CC:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=nHlE2sa4DKy9v+vGIQ/FE0cn1d0RAp509sYQBsL05W9Xhy1deX8/pxTHvumm0CaPH
	 y7iE5XVQn3KjCVZI3uZcTOs/qjJhsT4arcu8L0iOhH5/JHwJ9Vo/5RvnfN/9oX6wg+
	 g9SEFxAe8F8LdC+gVyw5FAqZvXcV5sSeNwnRoeb3/nwWECI2888SxPfpcd0v+v7OYr
	 RgZZvplyONt6Yjo0GSULCbsr75WoXSErSIPVKNlH+VBTp2DjbnUCllbi3RqpV1K+9/
	 zTBK6LJDNd49scPeS0r+m/qzIsgnDbfnf3MhjXFfhd5ImiLgumU0gos8SnlCBc1cyP
	 Ry9YhzE6sZJvw==
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	by mm2.emwd.com (Postfix) with ESMTPS id AC2D53852E7
	for <usrp-users@lists.ettus.com>; Thu, 15 May 2025 15:08:50 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="XXlsNSCr";
	dkim-atps=neutral
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5fc3f0a5506so2599486a12.0
        for <usrp-users@lists.ettus.com>; Thu, 15 May 2025 12:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1747336129; x=1747940929; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tKDA0HA0aWBAKj2nfDAcFS/qR0gYkyRnpgiH4JSu+Ys=;
        b=XXlsNSCrIfZe2he1gXFlMpcFUBf/P6NKdsh9tvLM2bgmwCxzB3daeE0q7OJfUoKuT2
         BnxqmO9bbPAWsH/ivwkDjJ63t2UO8fgycBPgZJypyG2d01Ja7tXJ/4iLUh36KmHEwlBm
         5PSAG/fVYJSDY9ZbtzrM0VzNxu+tYXa+OqQWKzPqSnXkQfcoIp4IvBIbO40Dy3QjRpg0
         TZqALSHQwnR5HxM82/S3SYFk18tEf/eBVuZJ/aFzGb3Rm5MaPLbfJcY3t8yDxTlu9a+d
         tHkG24+8jGbseiqFhRnkM2fpCrxD+sl9EmUzRtF1LA2fpC/m2bv6/dL2+Aa6mr46X90d
         PfcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747336129; x=1747940929;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tKDA0HA0aWBAKj2nfDAcFS/qR0gYkyRnpgiH4JSu+Ys=;
        b=vWJVoOuMyJ5REUunLqLNUvJRx1OhPeAjDVHNdFjy4cMRc1jujG3usGyjDxyTsah2rH
         YiRJJqj3sB2GqyiTB1rN1cGoBnhsExqNs6QaZwCNHRqrGqYKJe7j9oMCKpv1B9pli+Mh
         2jUksoznp9eHnGmsnwJVj2TXLInR2nq2grSawsoLhOE/OyjJ52H1dGJ2URTuzGKgIGib
         i00fcbJMag3DUCvWY3uKPYPIA99WFcKZzg8Tzz8GT1tzNR3v4FzJW75g76sxreqbbskQ
         hv1HW1c9P5Rkkk6ekD2keAdi0bunM2kDoGOSiJoIqezhHVMmKZQjGXeJQRX/LUxft+nQ
         HsMw==
X-Forwarded-Encrypted: i=1; AJvYcCUJTafIWvpY9oaSCenbQAl67NHqv1EfPj+knCNLJXL+B6DeD87n+hgQsiKAz6xrih2tVNec/A3zTkA6@lists.ettus.com
X-Gm-Message-State: AOJu0Yx1h8NAaHzmujnjkRL3GBpegOaG/n5q5/R1PiXxXP7F/LBC7EaX
	Y+1zPZXuah/VHbP0gAan1GTAvIxFWVSGaRT8Hy2LPugHRAmFvrcip4po6Xz/MbJ6TpQlAO1VB2Z
	ggO0zDioe+D/Dkvir3NzhFSUEAmzDNkhJSciggO3S
X-Gm-Gg: ASbGnctWhD2oyD8KEcIIuSKkLYuGyIieLn7WB+TQXNNdnbB4BY6PZMj0CpK+JYzSbqi
	1emexue2QS5eL2mti43N/XB+NRJ3f497nX8QQMXxYPZ9V3fNtH8bJ+7q+AOkxzDJk6jg4QMTMnl
	mfQcf+jXRQlocgbaoYxSc5+qRCdUdHtzlv
X-Google-Smtp-Source: AGHT+IHdAk2MMDpKc1ASCb8cr/QmJBseYkt6UcpHw0vItX1my2+8xdC9kru0aHORTOdSTX2P2+w93hF9rVK/wf7uAJQ=
X-Received: by 2002:a05:6402:2805:b0:5f4:cad5:360f with SMTP id
 4fb4d7f45d1cf-60090122003mr489283a12.28.1747336129086; Thu, 15 May 2025
 12:08:49 -0700 (PDT)
MIME-Version: 1.0
References: <voC9QJV0N8NKBLnaXrJNzT6RLg22DVDfDllhAETU7A@lists.ettus.com>
 <CO6PR10MB56014184DD4F8BB453E47EAA8C96A@CO6PR10MB5601.namprd10.prod.outlook.com>
 <ef669644-e4c8-4b3a-93bf-1f65b1f89763@gmail.com>
In-Reply-To: <ef669644-e4c8-4b3a-93bf-1f65b1f89763@gmail.com>
Date: Thu, 15 May 2025 15:08:37 -0400
X-Gm-Features: AX0GCFveeFOI0hYVq0aBlBoKGnAl5u1D0tUKMLZU0cfOK_vzQGFp9oE_EDC_UIM
Message-ID: <CAB__hTSzWi35XfnCUANVcnchRZV3hW1mtOzQYQJBkZ11kO0Srw@mail.gmail.com>
To: carmix <carmixdev@gmail.com>
Message-ID-Hash: JH3YJGJ5SWCEKB4P3FCO4F25BQVTGZNV
X-Message-ID-Hash: JH3YJGJ5SWCEKB4P3FCO4F25BQVTGZNV
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Amsel, Lars" <lars.amsel@emerson.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Tx example with RFNoC missing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/JH3YJGJ5SWCEKB4P3FCO4F25BQVTGZNV/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============8864940003687456126=="

--===============8864940003687456126==
Content-Type: multipart/related; boundary="000000000000476fba06353165aa"

--000000000000476fba06353165aa
Content-Type: multipart/alternative; boundary="000000000000476fb906353165a9"

--000000000000476fb906353165a9
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

One good place to check for how to operate with RFNoC is the source file "
multi_usrp_rfnoc.cpp
<https://github.com/EttusResearch/uhd/blob/master/host/lib/usrp/multi_usrp_=
rfnoc.cpp>".
Under the hood, the multi_usrp object used by most users for a stock FPGA
image implements all functionality using RFNoC API calls for any of the
USRPs that use RFNoC. Thus, if the multi_usrp object can do something, then
it is equally possible with the RFNoC API.  I realize that this gets into
reverse-engineering code, but it is often a good place to look for an
example.
Rob

On Wed, May 14, 2025 at 4:11=E2=80=AFPM carmix <carmixdev@gmail.com> wrote:

> Yes, it is a good starting point indeed, but for example if one doesn't
> use the replay block it is not clear how to do the frequency tune.
>
> I had to discover myself that it is possible to send the tune request
> action also from the streamer and not from the replay block.
>
> For someone starting with the project it is not so clear.
>
>
> Regards,
>
>
> C.
> On 13/05/2025 08:52, Amsel, Lars wrote:
>
> Hi,
>
>
>
> Have you had a look into rfnoc_replay_samples_from_file.cpp? It shows
> basic TX setup and also utilizes the replay block.
>
>
>
> Regards
>
>
>
> Lars
>
>
>
>
>
> *[image: NI]*
>
>
>
>
>
>
>
> *Lars Amsel*
> Principal Software Engineer
> SDR
> Test & Measurement Group
>
> +49351206931427 | *ni.com <https://www.ni.com/>*
>
>
>
>
>
> *From:* carmixdev@gmail.com <carmixdev@gmail.com> <carmixdev@gmail.com>
> *Sent:* Montag, 12. Mai 2025 15:48
> *To:* usrp-users@lists.ettus.com
> *Subject:* [EXTERNAL] [USRP-users] Tx example with RFNoC missing
>
>
>
> Hi, I noticed that on the UHD repository examples there isn=E2=80=99t an =
example
> that shows how to setup a TX streaming using RFNoC. There is the example
> for the RX but not the one with TX.
>
> There=E2=80=99s an example for the replay block, but it can=E2=80=99t be =
used for
> transmitting a big file for instance.
>
> I searched through the mailing list and found some posts of user that
> attached some rfnoc_tx_from_file, but they did it in 2018 and it was on U=
HD
> 3, it obviously doesn=E2=80=99t work on UHD 4.
>
> Could someone post a simple example of transmitting from file using RFNoC
> 4?
>
> Maybe it is considered trivial, but it could help as a reference.
>
> Personally I tried to write a sample code, but as I stated in another
> thread I=E2=80=99m not sure it is working correctly.
>
> Could anyone help here?
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000476fb906353165a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>One good place to check for how to operate with RFNoC=
 is the source file &quot;<a href=3D"https://github.com/EttusResearch/uhd/b=
lob/master/host/lib/usrp/multi_usrp_rfnoc.cpp">multi_usrp_rfnoc.cpp</a>&quo=
t;.=C2=A0 Under the hood, the multi_usrp object used by most users for a st=
ock FPGA image implements all functionality using RFNoC API calls for any o=
f the USRPs that use RFNoC. Thus, if the multi_usrp object can do something=
, then it is equally possible with the RFNoC API.=C2=A0 I realize that this=
 gets into reverse-engineering code, but it is often a good place to look f=
or an example.</div><div>Rob</div><br><div class=3D"gmail_quote gmail_quote=
_container"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 14, 2025 at 4=
:11=E2=80=AFPM carmix &lt;<a href=3D"mailto:carmixdev@gmail.com">carmixdev@=
gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <p>Yes, it is a good starting point indeed, but for example if one
      doesn&#39;t use the replay block it is not clear how to do the
      frequency tune.</p>
    <p>I had to discover myself that it is possible to send the tune
      request action also from the streamer and not from the replay
      block.</p>
    <p>For someone starting with the project it is not so clear.</p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p><br>
    </p>
    <p>C.<br>
    </p>
    <div>On 13/05/2025 08:52, Amsel, Lars wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
     =20
     =20
      <div>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt=
">Hi,<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt=
"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt=
">Have you
            had a look into rfnoc_replay_samples_from_file.cpp? It shows
            basic TX setup and also utilizes the replay block.
            <u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt=
"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt=
">Regards<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt=
"><u></u>=C2=A0<u></u></span></p>
        <p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:11pt=
">Lars<u></u><u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0=
<u></u></span></p>
        <p class=3D"MsoNormal"><span style=3D"font-size:11pt"><u></u>=C2=A0=
<u></u></span></p>
        <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"45=
0" style=3D"width:337.5pt;border-collapse:collapse">
          <tbody>
            <tr style=3D"height:75pt">
              <td width=3D"100" valign=3D"top" style=3D"width:75pt;padding:=
0.75pt;height:75pt">
                <table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" wid=
th=3D"100" style=3D"width:75pt;border-collapse:collapse">
                  <tbody>
                    <tr style=3D"height:60pt">
                      <td width=3D"80" style=3D"width:60pt;padding:0.75pt;h=
eight:60pt">
                        <p class=3D"MsoNormal" align=3D"center" style=3D"te=
xt-align:center"><b><span style=3D"font-size:27pt;font-family:Arial,sans-se=
rif;color:black"><img width=3D"90" height=3D"90" style=3D"width: 0.9375in; =
height: 0.9375in;" id=3D"m_-4908072805245934906Picture_x0020_1322068996" sr=
c=3D"cid:ii_196d55380744cff311" alt=3D"NI"></span></b><b><span style=3D"fon=
t-size:27pt;font-family:Arial,sans-serif"><u></u><u></u></span></b></p>
                      </td>
                      <td width=3D"20" style=3D"width:15pt;padding:0.75pt;h=
eight:60pt">
                        <p class=3D"MsoNormal"><span style=3D"font-size:10p=
t;font-family:Arial,sans-serif;color:black">=C2=A0<u></u><u></u></span></p>
                      </td>
                    </tr>
                    <tr style=3D"height:15pt">
                      <td width=3D"80" style=3D"width:60pt;padding:0.75pt;h=
eight:15pt">
                        <p class=3D"MsoNormal"><span style=3D"font-size:10p=
t;font-family:Arial,sans-serif;color:black">=C2=A0<u></u><u></u></span></p>
                      </td>
                      <td width=3D"20" style=3D"width:15pt;padding:0.75pt;h=
eight:15pt">
                        <p class=3D"MsoNormal"><span style=3D"font-size:10p=
t;font-family:Arial,sans-serif;color:black">=C2=A0<u></u><u></u></span></p>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </td>
              <td width=3D"350" valign=3D"top" style=3D"width:262.5pt;paddi=
ng:0.75pt;height:75pt">
                <p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt"><b><sp=
an lang=3D"EN-US" style=3D"font-size:10pt;font-family:Arial,sans-serif;colo=
r:black">Lars
                      Amsel</span></b><span lang=3D"EN-US" style=3D"font-si=
ze:10pt;font-family:Arial,sans-serif;color:black"><br>
                    Principal Software Engineer<br>
                    SDR<br>
                    Test &amp; Measurement Group<u></u><u></u></span></p>
                <p class=3D"MsoNormal" style=3D"margin-bottom:4.5pt"><span =
style=3D"font-size:10pt;font-family:Arial,sans-serif">+49351206931427
                    |
                  </span><u><span style=3D"font-size:10pt;font-family:Arial=
,sans-serif;color:black"><a href=3D"https://www.ni.com/" title=3D"https://w=
ww.ni.com" target=3D"_blank"><span style=3D"color:black">ni.com</span></a><=
/span></u><span style=3D"font-size:10pt;font-family:Arial,sans-serif;color:=
black"><u></u><u></u></span></p>
              </td>
            </tr>
          </tbody>
        </table>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <p class=3D"MsoNormal"><span><u></u>=C2=A0<u></u></span></p>
        <div style=3D"border-right:none;border-bottom:none;border-left:none=
;border-top:1pt solid rgb(225,225,225);padding:3pt 0cm 0cm">
          <p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"font-size=
:11pt;font-family:Calibri,sans-serif">From:</span></b><span lang=3D"EN-US" =
style=3D"font-size:11pt;font-family:Calibri,sans-serif">
              <a href=3D"mailto:carmixdev@gmail.com" target=3D"_blank">carm=
ixdev@gmail.com</a> <a href=3D"mailto:carmixdev@gmail.com" target=3D"_blank=
">&lt;carmixdev@gmail.com&gt;</a>
              <br>
              <b>Sent:</b> Montag, 12. Mai 2025 15:48<br>
              <b>To:</b> <a href=3D"mailto:usrp-users@lists.ettus.com" targ=
et=3D"_blank">usrp-users@lists.ettus.com</a><br>
              <b>Subject:</b> [EXTERNAL] [USRP-users] Tx example with
              RFNoC missing<u></u><u></u></span></p>
        </div>
        <p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
        <div>
          <p class=3D"MsoNormal"><span style=3D"font-size:1pt;font-family:A=
rial,sans-serif;color:white"><u></u><u></u></span></p>
        </div>
        <div>
          <p class=3D"MsoNormal"><span style=3D"font-size:1pt;color:white">=
<u></u><u></u></span></p>
        </div>
        <p>Hi, I noticed that on the UHD repository examples there isn=E2=
=80=99t
          an example that shows how to setup a TX streaming using RFNoC.
          There is the example for the RX but not the one with TX.<u></u><u=
></u></p>
        <p>There=E2=80=99s an example for the replay block, but it can=E2=
=80=99t be used
          for transmitting a big file for instance.<u></u><u></u></p>
        <p>I searched through the mailing list and found some posts of
          user that attached some rfnoc_tx_from_file, but they did it in
          2018 and it was on UHD 3, it obviously doesn=E2=80=99t work on UH=
D 4.<u></u><u></u></p>
        <p>Could someone post a simple example of transmitting from file
          using RFNoC 4?<u></u><u></u></p>
        <p>Maybe it is considered trivial, but it could help as a
          reference.<u></u><u></u></p>
        <p><img border=3D"0" id=3D"m_-4908072805245934906_x0000_i1025">Pers=
onally I tried to write a sample
          code, but as I stated in another thread I=E2=80=99m not sure it i=
s
          working correctly.<u></u><u></u></p>
        <p>Could anyone help here?<u></u><u></u></p>
      </div>
    </blockquote>
  </div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>

--000000000000476fb906353165a9--

--000000000000476fba06353165aa
Content-Type: image/png; name="image001.png"
Content-Disposition: inline; filename="image001.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_196d55380744cff311>
X-Attachment-Id: ii_196d55380744cff311

iVBORw0KGgoAAAANSUhEUgAAAZAAAAGQCAYAAACAvzbMAAAACXBIWXMAAAsTAAALEwEAmpwYAAAE
9GlUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0w
TXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRh
LyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgOS4xLWMwMDIgNzkuYTZhNjM5NjhhLCAyMDI0LzAz
LzA2LTExOjUyOjA1ICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMu
b3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91
dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOmRjPSJo
dHRwOi8vcHVybC5vcmcvZGMvZWxlbWVudHMvMS4xLyIgeG1sbnM6cGhvdG9zaG9wPSJodHRwOi8v
bnMuYWRvYmUuY29tL3Bob3Rvc2hvcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2Jl
LmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RFdnQ9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEu
MC9zVHlwZS9SZXNvdXJjZUV2ZW50IyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3Ag
MjUuOSAoTWFjaW50b3NoKSIgeG1wOkNyZWF0ZURhdGU9IjIwMjQtMDctMDNUMTE6NTk6MTQrMDI6
MDAiIHhtcDpNb2RpZnlEYXRlPSIyMDI0LTA3LTAzVDExOjU5OjU4KzAyOjAwIiB4bXA6TWV0YWRh
dGFEYXRlPSIyMDI0LTA3LTAzVDExOjU5OjU4KzAyOjAwIiBkYzpmb3JtYXQ9ImltYWdlL3BuZyIg
cGhvdG9zaG9wOkNvbG9yTW9kZT0iMyIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDoxMTUzN2E0
ZS04Zjk3LTQ5OTItOTI1ZS02ZjhkZDFkNTA4YWUiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6
MTE1MzdhNGUtOGY5Ny00OTkyLTkyNWUtNmY4ZGQxZDUwOGFlIiB4bXBNTTpPcmlnaW5hbERvY3Vt
ZW50SUQ9InhtcC5kaWQ6MTE1MzdhNGUtOGY5Ny00OTkyLTkyNWUtNmY4ZGQxZDUwOGFlIj4gPHht
cE1NOkhpc3Rvcnk+IDxyZGY6U2VxPiA8cmRmOmxpIHN0RXZ0OmFjdGlvbj0iY3JlYXRlZCIgc3RF
dnQ6aW5zdGFuY2VJRD0ieG1wLmlpZDoxMTUzN2E0ZS04Zjk3LTQ5OTItOTI1ZS02ZjhkZDFkNTA4
YWUiIHN0RXZ0OndoZW49IjIwMjQtMDctMDNUMTE6NTk6MTQrMDI6MDAiIHN0RXZ0OnNvZnR3YXJl
QWdlbnQ9IkFkb2JlIFBob3Rvc2hvcCAyNS45IChNYWNpbnRvc2gpIi8+IDwvcmRmOlNlcT4gPC94
bXBNTTpIaXN0b3J5PiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4g
PD94cGFja2V0IGVuZD0iciI/Pigfu+MAAFg9SURBVHic7d13eFxnmffx7ynTZ9SLZcu23Etc49ix
kzg9JCGN0CEsnaUssMAC20JfYNldlqUu7PLSlxI6KSSk92o7jnuVZcuyujSafur7xxnJsuMiHUtW
8f25LmETa+Y8085vnnYfhd/efhdQCzgIIYQQp6cCzTpww1i3RAghxISzUgUOj3UrhBBCTDgH1bFu
gRBCiIlJAkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBF
AkQIIYQvEiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQv
EiBCCCF8kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8
kQARQgjhiwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjh
iwSIEEIIXyRAhBBC+CIBIoQQwhcJECGEEL5IgAghhPBFAkQIIYQvEiBCCCF8kQARQgjhiwSIEEII
XyRAhDgV1RnrFggxbkmACHEyCpSYOuB6/0cIcQwJECFORLeosDS+2DmVkKuCao11i4QYdyRAhDie
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
RU5ErkJggg==
--000000000000476fba06353165aa--

--===============8864940003687456126==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8864940003687456126==--
