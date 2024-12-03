Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C62299E1E23
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 14:48:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7CE813852F3
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 08:48:39 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733233719; bh=BlmaFxLCcTRfLSac6pZDUttMkUm5rz9KTZAqSxoZkT4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=c1at3o8tDW16dtHrAbg+F3SLUdMKI0kgHzJqyOFs575ecAP4xN0ursoC/cGubOHhI
	 h3efG2fJpGbuzTuIiqS4gqMJb04JYwaq1c9g8qxsSaPCrNOzeuHXWyJqn1OHXV/ihu
	 jVI/ClXHQevAO+HVuOFjMnVLw3ljF1QWSWRQOle/ES1pk5af4c96iSj7Ti0LBb/Arq
	 aVev5nWsby6Ut3sVcei75OgT996DANSo/MyLMcmDoWAiQb8qJdxNKhXqjcSixIhn51
	 67KxhOS1cKTo9NEEfiFfRi04cSLjnK2O9huhBYXL6W0aYayozKhOJK6SfOoVKzPtOJ
	 QgYmqyHzqqC6A==
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D1163845D5
	for <usrp-users@lists.ettus.com>; Tue,  3 Dec 2024 08:47:50 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=accelleran-com.20230601.gappssmtp.com header.i=@accelleran-com.20230601.gappssmtp.com header.b="Z0l5RSO3";
	dkim-atps=neutral
Received: by mail-io1-f54.google.com with SMTP id ca18e2360f4ac-8419d05aa66so369491939f.0
        for <usrp-users@lists.ettus.com>; Tue, 03 Dec 2024 05:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=accelleran-com.20230601.gappssmtp.com; s=20230601; t=1733233669; x=1733838469; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=frd7hFRCNruVW6bIqKl9P/jshxJ/cd9ohbnk5dlFLZI=;
        b=Z0l5RSO3iFCY5fK0g+rrTKVzEuazvNJbF9o9X1vL4VtTNhY/B7LCI1x3vE7ocZ+sWf
         Sb3XTx/sCYdUnjqqKeGO61qyGhlLouExE2vEX9akCuXHirDK39kRuTQp+XOB5SSAJw+6
         0Wij8k19oi1kWLts2NUeijUMEw1xCji0RdGLBHajvGHfI8id+7PeatK2tMGPiWl0lAGs
         vi8+oJgk7pRm3qYkX+CVnaC+XfGh9D3dBVJZxCVhdPx8yYyEKRoovZXtIGTx+338lss5
         b8KW4FzXQvKIfx9w3zsJ5lSf+0RiSUGbSUSz17Isgj9c0txWbM+caJ38PsTqvKzzBXzz
         8DIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733233669; x=1733838469;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=frd7hFRCNruVW6bIqKl9P/jshxJ/cd9ohbnk5dlFLZI=;
        b=xB+FK8RnSWUXATx0LaMaCSgwJZz9IryuQ8Qvy5FKvVtQ2422g66AQFD2PObT7WESjY
         UZ8CQA0USvT6PF0L5i7dt5otNairsPvDzZggk1eHkVsVcnf3LphCFrCfyfaoudjBwVi2
         JX3mOgDUJKGKkHewLbewO4euVQIbTLLJyS0bjGIOHwlsv0GptQsDy1K1mHac6FFhN1Fe
         qrOQcKNDVceejwAuZ2T5louILm9/3k+wDWJPecSFZV6CsgwqBJLPzdx5ryotgElbrTkn
         DdKnhIHJFrk6VRyZDtzGNvq8dBGzMThhaGnd5DsXoDfMIC9hk8caZAZzJxDPiQjvDcpW
         kOJQ==
X-Gm-Message-State: AOJu0YzMTMzZ0m68nJ8sufcETHVQl0A0BtZHjS120tP1VCfBryLBQrjy
	QGm9qKSHun5HEvivLaQdauQ7GsvIm9mSVpn4I/UI06rSvCwKaKz6riJgSkIa5gcy3IzOu2m9A8a
	27kvdJ3uL/pKGyuoyalppuASx6xya1C5aR5OoNA==
X-Gm-Gg: ASbGncsDzXWbzsGuEBRlpOozTEKBVlPMvm3Ssk4wPND/0EGABcH1uoN1/Z6532FTU7N
	+KGHjQKUv2yGHj/uChgkTieWVLSQNlHEv
X-Google-Smtp-Source: AGHT+IEUoxUEnCI4mwJiqcLQmVyuzO1zwVyGmv/p10dhM6S3mkIYKZjFsXB6b8srA4YPg18DdvB37oRHdNbAGnyWJgg=
X-Received: by 2002:a05:6602:1485:b0:83a:b2c1:8b40 with SMTP id
 ca18e2360f4ac-84462a2ffaamr26710839f.13.1733233669545; Tue, 03 Dec 2024
 05:47:49 -0800 (PST)
MIME-Version: 1.0
References: <DtNk1iz8cTkD8En5inQ2h3tIb7YhwyTY1NEIIFIgOlY@lists.ettus.com>
In-Reply-To: <DtNk1iz8cTkD8En5inQ2h3tIb7YhwyTY1NEIIFIgOlY@lists.ettus.com>
From: Houshang <houshang.azizi@accelleran.com>
Date: Tue, 3 Dec 2024 14:47:38 +0100
Message-ID: <CAO=xj9XHH+uYju64jMe7AT_vc9o_eU2ASdN76xeBPoZm=YEB-w@mail.gmail.com>
To: joerg.hofrichter@emerson.com
Message-ID-Hash: GJM4ZNDOMS5LSODW4BDQNZHXRO54NMWE
X-Message-ID-Hash: GJM4ZNDOMS5LSODW4BDQNZHXRO54NMWE
X-MailFrom: houshang.azizi@accelleran.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD, DPDK compatibility question
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/GJM4ZNDOMS5LSODW4BDQNZHXRO54NMWE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1102672168013968024=="

--===============1102672168013968024==
Content-Type: multipart/alternative; boundary="0000000000002fc40506285de925"

--0000000000002fc40506285de925
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Many thanks for the reply! I have one more question: Are UHD
4.7.0.0-0ubuntu1~jammy1 and DPDK 24.07.0 also compatible?

On Tue, 3 Dec 2024 at 08:18, joerg.hofrichter--- via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Hi Houshang,
>
> yes, UHD 4.7.0.0 is compatible with DPDK 21.11.6
>
> Kind regards,
> J=C3=B6rg
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>


--=20

*Houshang Azizi*

*Test Engineer*

[image: logo] <https://www.accelleran.com/>

*(32) 492195241*

*houshang.azizi@accelleran.com <Email@accelleran.com>*



*www.accelleran.com* <http://www.accelleran.com/>

[image: linkedin icon] <https://www.linkedin.com/company/accelleran>    [im=
age:
twitter icon] <https://twitter.com/accelleran>    [image: youtube icon]
<https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVIEx2g?themeRefresh=3D1>

--0000000000002fc40506285de925
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Many thanks for the reply! I have one more question: Are <=
span style=3D"font-family:monospace">UHD 4.7.0.0-0ubuntu1~jammy1</span> and=
 <span style=3D"font-family:monospace">DPDK 24.07.0</span> also compatible?=
</div><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, 3 Dec 2024 at 08:18, joerg.hofrichter--- via =
USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lis=
ts.ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><p>Hi Houshang,</p><p>yes, UHD 4.7.0.0 is compatible with DPDK =
21.11.6</p><p>Kind regards,<br>J=C3=B6rg</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><div style=3D"text-align:left"><p class=3D"MsoNormal" style=
=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,sans-ser=
if"><b><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb=
(0,173,238)">Houshang Azizi</span></b><span style=3D"font-size:11pt;font-fa=
mily:Arial,sans-serif"></span></p><p class=3D"MsoNormal" style=3D"margin:0c=
m;line-height:normal;font-size:12pt;font-family:Aptos,sans-serif"><b><span =
style=3D"font-size:11pt;font-family:Arial,sans-serif;color:rgb(246,146,30)"=
>Test Engineer</span></b></p></div><p></p><a href=3D"https://www.accelleran=
.com/" rel=3D"noopener" style=3D"color:rgb(51,122,183);background-color:tra=
nsparent" target=3D"_blank"><font size=3D"2"><img border=3D"0" alt=3D"logo"=
 width=3D"143" src=3D"https://accelleran.com/wp-content/uploads/2024/04/Acc=
elleran_NewLogo_NoBaseline.png" style=3D"border: 0px; vertical-align: middl=
e; width: 143px; height: auto;"></font></a><div style=3D"text-align:left"><=
p class=3D"MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt=
;font-family:Aptos,sans-serif"><b><span style=3D"font-size:10pt;font-family=
:Arial,sans-serif;color:black">(32) 492195241</span></b><span style=3D"font=
-size:10pt;font-family:Arial,sans-serif"></span></p><p class=3D"MsoNormal" =
style=3D"margin:0cm;line-height:normal;font-size:12pt;font-family:Aptos,san=
s-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-serif"><b><sp=
an style=3D"color:black"><a href=3D"mailto:Email@accelleran.com" target=3D"=
_blank">houshang.azizi@accelleran.com</a></span></b></span></p><p class=3D"=
MsoNormal" style=3D"margin:0cm;line-height:normal;font-size:12pt;font-famil=
y:Aptos,sans-serif"><span style=3D"font-size:10pt;font-family:Arial,sans-se=
rif">=C2=A0</span></p><p class=3D"MsoNormal" style=3D"margin:0cm;line-heigh=
t:normal;font-size:12pt;font-family:Aptos,sans-serif"><span style=3D"font-s=
ize:10pt;font-family:Arial,sans-serif"><a href=3D"http://www.accelleran.com=
/" style=3D"color:rgb(17,85,204)" target=3D"_blank"><b><span style=3D"color=
:rgb(246,146,30)">www.accelleran.com</span></b></a></span></p></div><p styl=
e=3D"text-align:left;margin:20px 0px"><a href=3D"https://www.linkedin.com/c=
ompany/accelleran" rel=3D"noopener" style=3D"color:rgb(51,122,183);backgrou=
nd-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" alt=
=3D"linkedin icon" src=3D"https://www.mail-signatures.com/signature-generat=
or/img/templates/simple-and-light/ln.png" style=3D"border: 0px; vertical-al=
ign: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0=C2=A0<a hre=
f=3D"https://twitter.com/accelleran" rel=3D"noopener" style=3D"color:rgb(51=
,122,183);background-color:transparent" target=3D"_blank"><img border=3D"0"=
 width=3D"15" alt=3D"twitter icon" src=3D"https://www.mail-signatures.com/s=
ignature-generator/img/templates/simple-and-light/tt.png" style=3D"border: =
0px; vertical-align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=
=C2=A0=C2=A0<a href=3D"https://www.youtube.com/channel/UCrAEtqWp21cibZgSFVI=
Ex2g?themeRefresh=3D1" rel=3D"noopener" style=3D"color:rgb(51,122,183);back=
ground-color:transparent" target=3D"_blank"><img border=3D"0" width=3D"15" =
alt=3D"youtube icon" src=3D"https://www.mail-signatures.com/signature-gener=
ator/img/templates/simple-and-light/yt.png" style=3D"border: 0px; vertical-=
align: middle; height: 15px; width: 15px;"></a>=C2=A0=C2=A0=C2=A0 <br></p><=
/div></div>

--0000000000002fc40506285de925--

--===============1102672168013968024==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1102672168013968024==--
