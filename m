Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CF29E1FD7
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 15:43:38 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96E703858C9
	for <lists+usrp-users@lfdr.de>; Tue,  3 Dec 2024 09:43:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1733237017; bh=ECek9Vx84KvACTl1tz7fwQKoQQjSmqCRRpjFAIqOKhk=;
	h=Date:References:In-Reply-To:From:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=z2ktqnZAGDy3D5AKOpfjs3qwJK1LKIzLmGTfwOVMo+HRsAZ2EYhwvcSGqDySU4UtS
	 iosmLdXRe/gOu8iwws5MAnkcrmgayMSd4WKltN+ANPOVbcIoDlUMb7Ygt6ucWIdOS/
	 g5iXBKQe0KYuZaXgnVt4NQ49iFsakrJTeJG8+t4QxR/iUXXiB1QIrb9YDk825RJgsO
	 jF4jNrt+GDCLrkspECqaIYc3CI/oaT+DSFJ5uDMcONwzSO+ULeXkkAz/HC1F5NDIFj
	 masymG530hxycFmOjiuHfteIdmj7RR+N4rHlHpfGEz3TRvNU8MV+k+sAvvhwRRfkoN
	 BADeMKo0LXg/g==
Received: from mail-vk1-f200.google.com (mail-vk1-f200.google.com [209.85.221.200])
	by mm2.emwd.com (Postfix) with ESMTPS id 683FF3854BD
	for <usrp-users@lists.ettus.com>; Tue,  3 Dec 2024 09:41:56 -0500 (EST)
Received: by mail-vk1-f200.google.com with SMTP id 71dfb90a1353d-515143e74ffso1068135e0c.1
        for <usrp-users@lists.ettus.com>; Tue, 03 Dec 2024 06:41:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733236916; x=1733841716;
        h=cc:to:from:subject:message-id:in-reply-to:references:date
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=L6fcAL1thkXpuE+0zw8163COeihLEFl+u8HFwlrIZNg=;
        b=flUixlcVCjJCmzqBJGXV7rQrN5r6aUd3/CHq/mDyFnfgxClAGYvnPADJTN8Lm7T48H
         Nq8JjwVvzJ47SlZ0w19sqooATxywhVKv1XOZh1VuDMjRb7qhb4JR+MnfpbYDzzzmu0Kh
         nFE2sU4b7WFJKfxJ/t5vQm80VaY9Jsl7+M8KF5UVA06oyr6nTKOPx67m8IDGmr5nN3mv
         E96suOe7hRVVP6lsROlXnvfEDcIi2dat9GlN0ep7LIJ96gOg2ba8ICjgCsZQDYXdWIW8
         6YeGakrJ1LgAEu2OQr4SG6kHURt8QC8M5SMoOfKwiUSQSQvIdnV7w4Zfj9lTfM6V7GxR
         oIhw==
X-Gm-Message-State: AOJu0YyrFWmG2Zw1UXA5/CUZLafj5HJZc91WvDtC/B7jyl7RWE6UgZV5
	9ENhqVzYcEOeNnItLpZZW1GeHXHjChliClLuziP4eHsusknY9lCVXH5a6JQL2THvoxIj9zYCDhW
	A2lKNWWIkzvdbwohtdMxC1k3azuX113p/S2dNttKQkshvao9RQ6Lg1T97ZD1GWamoNGC84w==
X-Gm-Gg: ASbGncsTXII5vzKSbVJV/3+U3EvDdijYJWdIeQ3JbHzgU8Lkf0YG/FLOB1pV0A+l2VK
	6V0jA3oaOttR9rw==
X-Google-Smtp-Source: AGHT+IEVFf8W3rw/g+7ZuZ6hjFlcF4LkPjb+YneNnN+Waxi0UQfUrH2e4acGaVsTiInOT7YyQmCBqBEb3hSW4d7M0meTtbAXmJT5Kg==
X-Received: by 2002:a05:6122:1c89:b0:50d:39aa:787b with SMTP id 71dfb90a1353d-515cf36f4f7mr1234210e0c.0.1733236915622;
        Tue, 03 Dec 2024 06:41:55 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 3 Dec 2024 14:47:38 +0100
References: <DtNk1iz8cTkD8En5inQ2h3tIb7YhwyTY1NEIIFIgOlY@lists.ettus.com>
In-Reply-To: <DtNk1iz8cTkD8En5inQ2h3tIb7YhwyTY1NEIIFIgOlY@lists.ettus.com>
Message-ID: <CAO=xj9XHH+uYju64jMe7AT_vc9o_eU2ASdN76xeBPoZm=YEB-w@mail.gmail.com>
From: Houshang <houshang.azizi@accelleran.com>
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
Content-Type: multipart/mixed; boundary="===============3154391345512569952=="

--===============3154391345512569952==
Content-Type: multipart/alternative; boundary="00000000000090f36106285de857"

--00000000000090f36106285de857
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

--00000000000090f36106285de857
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

--00000000000090f36106285de857--

--===============3154391345512569952==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3154391345512569952==--
