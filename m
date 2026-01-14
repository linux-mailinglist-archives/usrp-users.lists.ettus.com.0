Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FB4D1C8C7
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jan 2026 06:08:32 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 96E14386681
	for <lists+usrp-users@lfdr.de>; Wed, 14 Jan 2026 00:08:31 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1768367311; bh=qIQ9VFIhP4Vg54OK0Idu8MDLopVkSoPa06vVInUyGjw=;
	h=From:Date:To:Subject:List-Id:List-Archive:List-Help:List-Owner:
	 List-Post:List-Subscribe:List-Unsubscribe:From;
	b=gKKZdrY9/2notLtDZcciHeqy1l273FHVihd+7lciQTyrLBkVkVQVpQa+ZZMeG5xJP
	 Y+d5BQfrLcrklR/Dn7MFqXpC1G/B+5kIP5v29pmJdrtiX0p3ReK2uNX5ZME17qy/hw
	 6VSHSuFnW6MV4WQ60IXJQQ4zovbUX6AAopc9i1F7sStHVB85sp2Vwh8XiKNRe9Pr52
	 80rl17Fjjuf+hYouWKt+X/8OCH2FU1qydISY6bIfxhIxOOoIAiDfjvv19z16e8Eafa
	 d8BsNR6Gw5biuMe+U0MD65reue337xvATx6F1+saY+b+N8GPRRiePVUfvGJnOedYGq
	 tJ2qjJ2xlfr4g==
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 3A79E3863AE
	for <usrp-users@lists.ettus.com>; Wed, 14 Jan 2026 00:07:28 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="BjBl5E8Y";
	dkim-atps=neutral
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59b710d46ceso7300824e87.3
        for <usrp-users@lists.ettus.com>; Tue, 13 Jan 2026 21:07:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768367246; x=1768972046; darn=lists.ettus.com;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7+bjVSgkYPS1XMnlmUBoE6qJdoMMVJUZkG88gGNHg9k=;
        b=BjBl5E8Y7XZWGkbGZzzNcfj1R2oRfEgZCbRMPyQzcizgqvwU0GBSc7N9t0RBjadWr/
         nqJLJ+K2sMUMfB2Od+h1qi2VnmuUxbZKpZQfV/6HRxtXPVE9wiwVpDk3+d58ympqVQ50
         2hvuI4WmOxsbjJqTjz6inSGzGqfsAdzcaB+IgF+LxERNxcgFOdR1VjpcR0FozP+m75IT
         NEVoMFf5n5311Px7S/ffD7C/JDmIimsBH9S+z3MVgiGeXEGkxwClveJs1B+KIjYfyPcz
         ttKKEEk7rEafZm+z2f+6kmLmxZiNfvaMl8BuWxDVWksFcprXYikN/iH0dIsfH1iNVuf8
         9JaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768367246; x=1768972046;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7+bjVSgkYPS1XMnlmUBoE6qJdoMMVJUZkG88gGNHg9k=;
        b=lKkm/VEIFP1oZj2Tl6m0R7tfDiNQ9DWgF5pSSh0/hA5t7Y9dZCfvToKQ8dICMlDpoN
         swA/jZNnv4XawP3KfKL8EbWjOWspMpjqRtgxP0pyQog2k//GBBor584M2ABHHviXRnLa
         IUgoPgwZquneugDz1b287sbY/8z2nA4doUrfD+Z3fmcPWM0W9rYurj6IUsdi+o2zUSAH
         VheO1iisVDM89GQ/JpGSYMLYdX3h8OZcEZElgauTiqBS1t/HJ/CgnWkzOG4qQl5VpEet
         c/wA9i0qmbhJdqPl66L642bkyipxH4AO4XJvj/ClZKVjHtl93zwpB5RmHpd4kvdlk36O
         c2Kw==
X-Gm-Message-State: AOJu0YxLhGI888nzHBq8BMAsjQkimNvjDIyXRi9xppVcFHFzboiqd2lt
	YFtt6g30O9cjWUL4G8EblqWVscXAMgEAXeRhQWmavZGDvNc5AqLzGdUndcVNhmD3ANXgGTMGa3U
	7k8ganem1bvj0x0B4jbwMQvY7sKxr2pfYACoE
X-Gm-Gg: AY/fxX72qyXltmlcgyoReKtPzTBfeftSfxCGE4H+N7G7W3x+wDsBJoNJypEo4O9GWZ/
	v090DgLB2gdU8/NTJwmqHkOekXi9LIusbo42ZvQtbk6fLdgU2ZD9Z5GXpvfkljkDhd608jicJHr
	mwpp0knJFgbZvTpNEbu1K9rfZiz9UCgQcXsupUhkbLBSys+ZtPsfI021An9a338iPydT9J4T3jJ
	i/iRZdpBd96fH+Hhof33PvTv7CorHyCCTQg/U3NyyoBvhWcHEeBV6Ub74/5rq+O8YRoDI2S4czD
	/zwpcaUlw99PIFUtNb/u9N3G+lYgkuGPfloxVuuFk+kENlmrzOWBWHIlcw==
X-Received: by 2002:a05:6512:3da4:b0:598:f031:dc2e with SMTP id
 2adb3069b0e04-59ba0f5e2ccmr393919e87.1.1768367246347; Tue, 13 Jan 2026
 21:07:26 -0800 (PST)
MIME-Version: 1.0
From: Daniel Ozer <danielozer22@gmail.com>
Date: Wed, 14 Jan 2026 07:07:14 +0200
X-Gm-Features: AZwV_Qg-kMDroiY4UPJrryQF7wrLafrlyQkaRNp2rw9VtPReAjI8X2zx8At-OWU
Message-ID: <CAE_Rk571Jp1DPYM7+-EvBRRpysWH_=murK68afj-kU4RGZ7_9Q@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="0000000000008d29800648521599"
Message-ID-Hash: MTMZJOEGJ5KRCFIXYOE5KAZ7FOCTSYPE
X-Message-ID-Hash: MTMZJOEGJ5KRCFIXYOE5KAZ7FOCTSYPE
X-MailFrom: danielozer22@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] =?utf-8?q?X440_X4=5F400_with_DDC_not_working=E2=80=8F=E2=80=8F?=
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MTMZJOEGJ5KRCFIXYOE5KAZ7FOCTSYPE/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--0000000000008d29800648521599
Content-Type: multipart/alternative; boundary="0000000000008d297f0648521597"

--0000000000008d297f0648521597
Content-Type: text/plain; charset="UTF-8"

hi everyone,
Im trying to use a bitfile i made on the basis of the X4_400 variant which
connect 8 Rxs to a 8 ddcs then to eps (each chain is RX->DDC->ep).
when trying to upload samples using a cpp code that is based on the
rfnoc_rx_to_file.cpp i get no samples and also this error :
rfnocError: optimeout: control operation timed out waiting for  ACK.

the strange part is when i change the mcr to 245.72 the bitfile work
perfectly but when the mcr is 491.44 the bitfile dont work.(although the
end rate is the same )
im attaching my yaml to see if i did something wrong.

--0000000000008d297f0648521597
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div class=3D"gmail-ii gmail-gt" id=3D"gmail-:19u" style=
=3D"direction:rtl;margin:8px 0px 0px;padding:0px;font-size:0.875rem;overflo=
w-x:hidden;font-family:&quot;Google Sans&quot;,Roboto,RobotoDraft,Helvetica=
,Arial,sans-serif"><div class=3D"gmail-a3s gmail-aiL" id=3D"gmail-:19t" sty=
le=3D"direction:ltr;font-variant-numeric:normal;font-variant-east-asian:nor=
mal;font-variant-alternates:normal;font-size-adjust:none;font-kerning:auto;=
font-feature-settings:normal;font-stretch:normal;font-size:small;line-heigh=
t:1.5;font-family:Arial,Helvetica,sans-serif;overflow:auto hidden"><div id=
=3D"gmail-avWBGd-100"><div dir=3D"rtl"><p dir=3D"ltr" style=3D"margin:0px;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;font-variant-alte=
rnates:normal;font-size-adjust:none;font-kerning:auto;font-feature-settings=
:normal;font-stretch:normal;font-size:12px;line-height:normal;font-family:H=
elvetica">hi everyone,<br>Im trying to use a bitfile i made on the basis of=
 the X4_400 variant which connect 8 Rxs to a 8 ddcs then to eps (each chain=
 is RX-&gt;DDC-&gt;ep).<br>when trying to upload samples using a cpp code t=
hat is based on the rfnoc_rx_to_file.cpp i get no samples and also this err=
or :<br>rfnocError: optimeout: control operation timed out waiting for =C2=
=A0ACK.<br><br>the strange part is when i change=C2=A0the mcr to 245.72 the=
=C2=A0bitfile work perfectly but when the=C2=A0mcr is 491.44 the bitfile do=
nt work.(although the end rate is the same )<br>im attaching my yaml to see=
 if i did something wrong.</p></div><div class=3D"gmail-yj6qo"></div><div c=
lass=3D"gmail-adL"></div></div></div></div><div class=3D"gmail-hq gmail-gt"=
 id=3D"gmail-:1a3" style=3D"font-size:0.875rem;margin:15px 0px;clear:both;f=
ont-family:&quot;Google Sans&quot;,Roboto,RobotoDraft,Helvetica,Arial,sans-=
serif"><br class=3D"gmail-Apple-interchange-newline"></div></div>

--0000000000008d297f0648521597--

--0000000000008d29800648521599
Content-Type: application/x-yaml;
	name="x440_X4_400_8RX_8DDC_rfnoc_image_core (1) (1) (1).yml"
Content-Disposition: attachment;
	filename="x440_X4_400_8RX_8DDC_rfnoc_image_core (1) (1) (1).yml"
Content-Transfer-Encoding: base64
Content-ID: <f_mkdk6wsm0>
X-Attachment-Id: f_mkdk6wsm0

IyBHZW5lcmFsIHBhcmFtZXRlcnMKIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLQpzY2hlbWE6IHJmbm9jX2ltYWdlYnVpbGRlcl9hcmdzICAgICAgICAgICMgSWRlbnRp
ZmllciBmb3IgdGhlIHNjaGVtYSB1c2VkIHRvIHZhbGlkYXRlIHRoaXMgZmlsZQpjb3B5cmlnaHQ6
ID4tICAgICAgICAgICAgICAgICAgICAgICAgICAgICMgQ29weXJpZ2h0IGluZm9ybWF0aW9uIHVz
ZWQgaW4gZmlsZSBoZWFkZXJzCiAgQ29weXJpZ2h0IDIwMjMgRXR0dXMgUmVzZWFyY2gsIGEgTmF0
aW9uYWwgSW5zdHJ1bWVudHMgQnJhbmQKbGljZW5zZTogPi0gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAjIExpY2Vuc2UgaW5mb3JtYXRpb24gdXNlZCBpbiBmaWxlIGhlYWRlcnMKICBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogTEdQTC0zLjAtb3ItbGF0ZXIKdmVyc2lvbjogJzEuMCcgICAg
ICAgICAgICAgICAgICAgICAgICAgICAjIEZpbGUgdmVyc2lvbgpjaGRyX3dpZHRoOiAxMjggICAg
ICAgICAgICAgICAgICAgICAgICAgICMgQml0IHdpZHRoIG9mIHRoZSBDSERSIGJ1cyBmb3IgdGhp
cyBpbWFnZQpkZXZpY2U6ICd4NDQwJyAgICAgICAgICAgICAgICAgICAgICAgICAgICMgVVNSUCB0
eXBlCmltYWdlX2NvcmVfbmFtZTogJ3VzcnBfeDQ0MF9mcGdhX1g0XzQwMF84UlhfOEREQycgIyBO
YW1lIHRvIHVzZSBmb3IgdGhlIGdlbmVyYXRlZCBvdXRwdXQgZmlsZXMKZGVmYXVsdF90YXJnZXQ6
ICdYNDQwJyAgICAgICAgICAgICAgICAgICAjIERlZmF1bHQgbWFrZSB0YXJnZXQKaW5oZXJpdDoK
ICAtICd5YW1sX2luY2x1ZGUveDQ0MF9yYWRpb19iYXNlLnltbCcKICAtICd5YW1sX2luY2x1ZGUv
eDR4eF94NF9iYXNlLnltbCcKCnBhcmFtZXRlcnM6CiAgUkZfQlc6IDQwMAogIEVOQUJMRV9EUkFN
OiBGYWxzZQogIE5VTV9EUkFNX0JBTktTOiAwCiAgTlVNX0RSQU1fQ0hBTlM6IDAKICBEUkFNX1dJ
RFRIOiA2NAoKIyBBIGxpc3Qgb2YgYWxsIHN0cmVhbSBlbmRwb2ludHMgaW4gZGVzaWduCiMgLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpzdHJlYW1fZW5kcG9pbnRzOgog
IGVwMDogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIyBTdHJlYW0gZW5kcG9pbnQg
bmFtZQogICAgY3RybDogVHJ1ZSAgICAgICAgICAgICAgICAgICAgICAgICAgIyBFbmRwb2ludCBw
YXNzZXMgY29udHJvbCB0cmFmZmljCiAgICBkYXRhOiBUcnVlICAgICAgICAgICAgICAgICAgICAg
ICAgICAjIEVuZHBvaW50IHBhc3NlcyBkYXRhIHRyYWZmaWMKICAgIGJ1ZmZfc2l6ZV9ieXRlczog
NTI0Mjg4ICAgICAgICAgICAgICMgSW5ncmVzcyBidWZmZXIgc2l6ZTogNTEyIEtCIChpbmNyZWFz
ZWQgZm9yIHRyYW5zcG9ydCByZWxpYWJpbGl0eSkKICBlcDE6CiAgICBjdHJsOiBGYWxzZQogICAg
ZGF0YTogVHJ1ZQogICAgYnVmZl9zaXplX2J5dGVzOiA1MjQyODggICAgICAgICAgICAgIyA1MTIg
S0IgLSBsYXJnZXIgYnVmZmVycyByZWR1Y2Ugb3ZlcmZsb3cgcmlzawogIGVwMjoKICAgIGN0cmw6
IEZhbHNlCiAgICBkYXRhOiBUcnVlCiAgICBidWZmX3NpemVfYnl0ZXM6IDUyNDI4OAogIGVwMzoK
ICAgIGN0cmw6IEZhbHNlCiAgICBkYXRhOiBUcnVlCiAgICBidWZmX3NpemVfYnl0ZXM6IDUyNDI4
OAogIGVwNDoKICAgIGN0cmw6IEZhbHNlCiAgICBkYXRhOiBUcnVlCiAgICBidWZmX3NpemVfYnl0
ZXM6IDUyNDI4OAogIGVwNToKICAgIGN0cmw6IEZhbHNlCiAgICBkYXRhOiBUcnVlCiAgICBidWZm
X3NpemVfYnl0ZXM6IDUyNDI4OAogIGVwNjoKICAgIGN0cmw6IEZhbHNlCiAgICBkYXRhOiBUcnVl
CiAgICBidWZmX3NpemVfYnl0ZXM6IDUyNDI4OAogIGVwNzoKICAgIGN0cmw6IEZhbHNlCiAgICBk
YXRhOiBUcnVlCiAgICBidWZmX3NpemVfYnl0ZXM6IDUyNDI4OCAgICAgICAgICAgICAjIEFsbCBl
bmRwb2ludHMgaGF2ZSBlcXVhbCBidWZmZXIgc2l6ZQoKIyBBIHRhYmxlIG9mIHdoaWNoIGNyb3Nz
YmFyIHJvdXRlcyB0byBpbmNsdWRlCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLQojIFJvd3MgY29ycmVzcG9uZCB0byBpbnB1dCBwb3J0cyBhbmQgY29sdW1ucyBj
b3JyZXNwb25kIHRvIG91dHB1dCBwb3J0cy4KIyBFbnRlcmluZyBhIDEgaW5jbHVkZXMgYW5kIGEg
MCByZW1vdmVzIHRoYXQgcm91dGUgZnJvbSB0aGUgY3Jvc3NiYXIuCmNyb3NzYmFyX3JvdXRlczoK
ICAjICBldGgwICBldGgyICBkbWEgICBlcDEgICBlcDMgICBlcDUgICBlcDcKICAjICAgICBldGgx
ICBldGgzICBlcDAgICBlcDIgICBlcDQgICBlcDYKICAtIFsgMSwgMCwgMCwgMCwgMCwgMSwgMSwg
MSwgMSwgMSwgMSwgMSwgMSBdICMgZXRoMCAoUVNGUCBQb3J0IDAsIExhbmUgMCkKICAtIFsgMCwg
MSwgMCwgMCwgMCwgMSwgMSwgMSwgMSwgMSwgMSwgMSwgMSBdICMgZXRoMSAoUVNGUCBQb3J0IDAs
IExhbmUgMSkKICAtIFsgMCwgMCwgMSwgMCwgMCwgMSwgMSwgMSwgMSwgMSwgMSwgMSwgMSBdICMg
ZXRoMiAoUVNGUCBQb3J0IDAsIExhbmUgMikKICAtIFsgMCwgMCwgMCwgMSwgMCwgMSwgMSwgMSwg
MSwgMSwgMSwgMSwgMSBdICMgZXRoMyAoUVNGUCBQb3J0IDAsIExhbmUgMykKICAtIFsgMCwgMCwg
MCwgMCwgMSwgMSwgMSwgMSwgMSwgMSwgMSwgMSwgMSBdICMgZG1hCiAgLSBbIDEsIDEsIDEsIDEs
IDEsIDAsIDAsIDAsIDAsIDAsIDAsIDAsIDAgXSAjIGVwMCAocmFkaW8wLjAgLT4gZGRjMC4wKQog
IC0gWyAxLCAxLCAxLCAxLCAxLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwIF0gIyBlcDEgKHJhZGlv
MC4xIC0+IGRkYzAuMSkKICAtIFsgMSwgMSwgMSwgMSwgMSwgMCwgMCwgMCwgMCwgMCwgMCwgMCwg
MCBdICMgZXAyIChyYWRpbzAuMiAtPiBkZGMwLjIpCiAgLSBbIDEsIDEsIDEsIDEsIDEsIDAsIDAs
IDAsIDAsIDAsIDAsIDAsIDAgXSAjIGVwMyAocmFkaW8wLjMgLT4gZGRjMC4zKQogIC0gWyAxLCAx
LCAxLCAxLCAxLCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwIF0gIyBlcDQgKHJhZGlvMS4wIC0+IGRk
YzAuNCkKICAtIFsgMSwgMSwgMSwgMSwgMSwgMCwgMCwgMCwgMCwgMCwgMCwgMCwgMCBdICMgZXA1
IChyYWRpbzEuMSAtPiBkZGMwLjUpCiAgLSBbIDEsIDEsIDEsIDEsIDEsIDAsIDAsIDAsIDAsIDAs
IDAsIDAsIDAgXSAjIGVwNiAocmFkaW8xLjIgLT4gZGRjMC42KQogIC0gWyAxLCAxLCAxLCAxLCAx
LCAwLCAwLCAwLCAwLCAwLCAwLCAwLCAwIF0gIyBlcDcgKHJhZGlvMS4zIC0+IGRkYzAuNykKCiMg
QSBsaXN0IG9mIGFsbCBOb0MgYmxvY2tzIGluIGRlc2lnbgojIC0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0Kbm9jX2Jsb2NrczoKICByYWRpbzA6CiAgICBibG9ja19kZXNjOiAncmFk
aW8ueW1sJwogICAgcGFyYW1ldGVyczoKICAgICAgTlVNX1BPUlRTOiA0CiAgCiAgcmFkaW8xOgog
ICAgYmxvY2tfZGVzYzogJ3JhZGlvLnltbCcKICAgIHBhcmFtZXRlcnM6CiAgICAgIE5VTV9QT1JU
UzogNAogIAogIGRkYzA6CiAgICBibG9ja19kZXNjOiAnZGRjLnltbCcKICAgIHBhcmFtZXRlcnM6
CiAgICAgIE5VTV9QT1JUUzogOAoKIyBBIGxpc3Qgb2YgYWxsIHN0YXRpYyBjb25uZWN0aW9ucyBp
biBkZXNpZ24KIyAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KIyBG
b3JtYXQ6IEEgbGlzdCBvZiBjb25uZWN0aW9uIG1hcHMgKGxpc3Qgb2Yga2V5LXZhbHVlIHBhaXJz
KSB3aXRoIHRoZSBmb2xsb3dpbmcga2V5cwojICAgLSBzcmNibGsgID0gU291cmNlIGJsb2NrIHRv
IGNvbm5lY3QKIyAgIC0gc3JjcG9ydCA9IFBvcnQgb24gdGhlIHNvdXJjZSBibG9jayB0byBjb25u
ZWN0CiMgICAtIGRzdGJsayAgPSBEZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CiMgICAtIGRz
dHBvcnQgPSBQb3J0IG9uIHRoZSBkZXN0aW5hdGlvbiBibG9jayB0byBjb25uZWN0CmNvbm5lY3Rp
b25zOgogICMgUkYgQTowIFRYCgogICMgUkYgQTowIFJYIC0gcmFkaW8wIHBvcnQgMCAtPiBkZGMw
IHBvcnQgMCAtPiBlcDAKICAtIHsgc3JjYmxrOiByYWRpbzAsIHNyY3BvcnQ6IG91dF8wLCBkc3Ri
bGs6IGRkYzAsICAgZHN0cG9ydDogaW5fMCAgfQogIC0geyBzcmNibGs6IGRkYzAsICAgc3JjcG9y
dDogb3V0XzAsIGRzdGJsazogZXAwLCAgICBkc3Rwb3J0OiBpbjAgICB9CiAgCiAgIyBSRiBBOjEg
UlggLSByYWRpbzAgcG9ydCAxIC0+IGRkYzAgcG9ydCAxIC0+IGVwMQogIC0geyBzcmNibGs6IHJh
ZGlvMCwgc3JjcG9ydDogb3V0XzEsIGRzdGJsazogZGRjMCwgICBkc3Rwb3J0OiBpbl8xICB9CiAg
LSB7IHNyY2JsazogZGRjMCwgICBzcmNwb3J0OiBvdXRfMSwgZHN0YmxrOiBlcDEsICAgIGRzdHBv
cnQ6IGluMCAgIH0KICAKICAjIFJGIEE6MiBSWCAtIHJhZGlvMCBwb3J0IDIgLT4gZGRjMCBwb3J0
IDIgLT4gZXAyCiAgLSB7IHNyY2JsazogcmFkaW8wLCBzcmNwb3J0OiBvdXRfMiwgZHN0YmxrOiBk
ZGMwLCAgIGRzdHBvcnQ6IGluXzIgIH0KICAtIHsgc3JjYmxrOiBkZGMwLCAgIHNyY3BvcnQ6IG91
dF8yLCBkc3RibGs6IGVwMiwgICAgZHN0cG9ydDogaW4wICAgfQogIAogICMgUkYgQTozIFJYIC0g
cmFkaW8wIHBvcnQgMyAtPiBkZGMwIHBvcnQgMyAtPiBlcDMKICAtIHsgc3JjYmxrOiByYWRpbzAs
IHNyY3BvcnQ6IG91dF8zLCBkc3RibGs6IGRkYzAsICAgZHN0cG9ydDogaW5fMyAgfQogIC0geyBz
cmNibGs6IGRkYzAsICAgc3JjcG9ydDogb3V0XzMsIGRzdGJsazogZXAzLCAgICBkc3Rwb3J0OiBp
bjAgICB9CiAgCiAgIyBSRiBCOjAgUlggLSByYWRpbzEgcG9ydCAwIC0+IGRkYzAgcG9ydCA0IC0+
IGVwNAogIC0geyBzcmNibGs6IHJhZGlvMSwgc3JjcG9ydDogb3V0XzAsIGRzdGJsazogZGRjMCwg
ICBkc3Rwb3J0OiBpbl80ICB9CiAgLSB7IHNyY2JsazogZGRjMCwgICBzcmNwb3J0OiBvdXRfNCwg
ZHN0YmxrOiBlcDQsICAgIGRzdHBvcnQ6IGluMCAgIH0KICAKICAjIFJGIEI6MSBSWCAtIHJhZGlv
MSBwb3J0IDEgLT4gZGRjMCBwb3J0IDUgLT4gZXA1CiAgLSB7IHNyY2JsazogcmFkaW8xLCBzcmNw
b3J0OiBvdXRfMSwgZHN0YmxrOiBkZGMwLCAgIGRzdHBvcnQ6IGluXzUgIH0KICAtIHsgc3JjYmxr
OiBkZGMwLCAgIHNyY3BvcnQ6IG91dF81LCBkc3RibGs6IGVwNSwgICAgZHN0cG9ydDogaW4wICAg
fQogIAogICMgUkYgQjoyIFJYIC0gcmFkaW8xIHBvcnQgMiAtPiBkZGMwIHBvcnQgNiAtPiBlcDYK
ICAtIHsgc3JjYmxrOiByYWRpbzEsIHNyY3BvcnQ6IG91dF8yLCBkc3RibGs6IGRkYzAsICAgZHN0
cG9ydDogaW5fNiAgfQogIC0geyBzcmNibGs6IGRkYzAsICAgc3JjcG9ydDogb3V0XzYsIGRzdGJs
azogZXA2LCAgICBkc3Rwb3J0OiBpbjAgICB9CiAgCiAgIyBSRiBCOjMgUlggLSByYWRpbzEgcG9y
dCAzIC0+IGRkYzAgcG9ydCA3IC0+IGVwNwogIC0geyBzcmNibGs6IHJhZGlvMSwgc3JjcG9ydDog
b3V0XzMsIGRzdGJsazogZGRjMCwgICBkc3Rwb3J0OiBpbl83ICB9CiAgLSB7IHNyY2JsazogZGRj
MCwgICBzcmNwb3J0OiBvdXRfNywgZHN0YmxrOiBlcDcsICAgIGRzdHBvcnQ6IGluMCAgIH0KICAj
CiAgCiAgIwogICMgQlNQIGNvbm5lY3Rpb25zIGFyZSBpbmhlcml0ZWQgZnJvbSBZQU1MIGluY2x1
ZGUgZmlsZXMKCiMgQSBsaXN0IG9mIGFsbCBjbG9jayBkb21haW4gY29ubmVjdGlvbnMgaW4gZGVz
aWduCiMgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiMg
Rm9ybWF0OiBBIGxpc3Qgb2YgY29ubmVjdGlvbiBtYXBzIChsaXN0IG9mIGtleS12YWx1ZSBwYWly
cykgd2l0aCB0aGUgZm9sbG93aW5nIGtleXMKIyAgIC0gc3JjYmxrICA9IFNvdXJjZSBibG9jayB0
byBjb25uZWN0IChBbHdheXMgIl9kZXZpY2UiXykKIyAgIC0gc3JjcG9ydCA9IENsb2NrIGRvbWFp
biBvbiB0aGUgc291cmNlIGJsb2NrIHRvIGNvbm5lY3QKIyAgIC0gZHN0YmxrICA9IERlc3RpbmF0
aW9uIGJsb2NrIHRvIGNvbm5lY3QKIyAgIC0gZHN0cG9ydCA9IENsb2NrIGRvbWFpbiBvbiB0aGUg
ZGVzdGluYXRpb24gYmxvY2sgdG8gY29ubmVjdApjbGtfZG9tYWluczoKICAtIHsgc3JjYmxrOiBf
ZGV2aWNlXywgc3JjcG9ydDogY2UsICAgICAgICAgZHN0YmxrOiBkZGMwLCAgIGRzdHBvcnQ6IGNl
ICAgIH0KICAjIE90aGVyIGNsb2NrIGRvbWFpbnMgYXJlIGluaGVyaXRlZCBmcm9tIFlBTUwgaW5j
bHVkZSBmaWxlcwogICMgTm90ZTogcmFkaW8wLCByYWRpbzEgY2xvY2sgZG9tYWlucyBhcmUgaW5o
ZXJpdGVkIGZyb20gYmFzZSBmaWxlcwoK
--0000000000008d29800648521599
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--0000000000008d29800648521599--
