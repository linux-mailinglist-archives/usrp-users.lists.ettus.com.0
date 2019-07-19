Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FDDC6D7C6
	for <lists+usrp-users@lfdr.de>; Fri, 19 Jul 2019 02:31:04 +0200 (CEST)
Received: from [::1] (port=57798 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hoGna-0007s5-FT; Thu, 18 Jul 2019 20:30:58 -0400
Received: from mail-qt1-f173.google.com ([209.85.160.173]:46546)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1hoGnX-0007TQ-Fg
 for usrp-users@lists.ettus.com; Thu, 18 Jul 2019 20:30:55 -0400
Received: by mail-qt1-f173.google.com with SMTP id h21so29172345qtn.13
 for <usrp-users@lists.ettus.com>; Thu, 18 Jul 2019 17:30:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0F0rFfOTvIb5xVANe5UfjGSa31n4gHp6QcvF91E9usM=;
 b=giamLMc6zqMf/B7m/ZkUc1IZfnQq5Ab6pO1F6fMJ3lTQe/g7c5EQTthtBJCmFan5yz
 o887WsF8g3/8Vno6qZ+gY6zEN7qVF2F/8QxIKIvuXZ91aninJRV+Luv8szk7WkkfcqAv
 BYRSsVRc/d9SgiH7jSi346Gr9CPhjt4zKNzGT/l+DOn4v7+TMhu5hMysQ4I9e0F0SDcn
 gsdFiEM90V+OSoiYtBvHvoAaOMlgKI6DiUYL5E1hcuLWY2KYWnTCqQ9qNsN3p92qAWpZ
 PCCxvT9pYTzYJUUDZVV3Lcqx28KGcNiD132gonuTq/P98YkAjE7Ra61bPnACZWk6Hmow
 MVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0F0rFfOTvIb5xVANe5UfjGSa31n4gHp6QcvF91E9usM=;
 b=q+IXRpItmhpVW3pMT/F4FspfM1OJDVdCAEm2I90KmsriihBgOE2nyVsN6KtC6CQrBH
 dK1Qza0bK89f2ex/PQvYH1P1bIyNfRMZv+6lj+HDLnYw9sJxunGyteUrZ+Y7WRy9Uoa2
 1My7fgzLe3eZHcPPGIvhWLGaJWgBWPIj2nI0iz8RauN3r1b+Z8JQQZz0q1QM22GvGVYF
 sXrUPH2AcE4th6fGnVv4thOXbH/11ixbgws/ZvMQ3wtg1z+FEA61dWDAHgLPN5ZXpZsG
 0oj538nf7lEQQujHAD249xCv/aVqWtasCre7ivYGXroVJRsGjtjwRlorYadc9GOwIWxw
 wL7A==
X-Gm-Message-State: APjAAAVG+8RFVzr0NqAbKYrm8ZcEA+l8TpBfYQBJ9LWOtFQntzVa4hct
 YU+nKbDBuCAMPGTGBqMhMOIrOOT5
X-Google-Smtp-Source: APXvYqxcbe5TgXQVA9y8C490A6LsXZV2CebSTbNOmonFG8aqBe1ri8pk6fp+LukM99haCoTfypn5lA==
X-Received: by 2002:a0c:92ca:: with SMTP id c10mr34537849qvc.108.1563496214806; 
 Thu, 18 Jul 2019 17:30:14 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-20.dsl.bell.ca.
 [174.95.14.20])
 by smtp.gmail.com with ESMTPSA id o10sm14946552qti.62.2019.07.18.17.30.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 18 Jul 2019 17:30:14 -0700 (PDT)
Mime-Version: 1.0 (1.0)
X-Mailer: iPhone Mail (16F203)
In-Reply-To: <CAFB_ak+_x=neOMA--p-=WGzvmOoP5djT=W6hwzw4GGzfTLJ+TQ@mail.gmail.com>
Date: Thu, 18 Jul 2019 20:30:14 -0400
Message-Id: <FEB7DEA4-D740-483B-8D59-17AC7E3182D4@gmail.com>
References: <CAFB_ak+rtm3xVuF9GFkZ09qhUYLP1G1mzhAxDxeV7d-wR1LNmw@mail.gmail.com>
 <CAKJyDkKCRujVNv99RW594t7embavu4J=rAgu=vsOgkSHzg9Gyw@mail.gmail.com>
 <CAKJyDkLmZY-yw7QWMzg8oWRNzU4scuqkJC0Z9ErfxRKjKf+UCw@mail.gmail.com>
 <CAFB_ak+Nm5+VBi8F=UwtgerchzRGrXjTZYgWWA3Z45a+Nj=uPA@mail.gmail.com>
 <CAFB_akKiC_jtf0mMZK7Dk2JaJBi1BPTvfWM=4M=POWOfxmKhdw@mail.gmail.com>
 <CAKJyDk+4kYDLWypDhaPzEGhkjJLKNK0sEscT5dRSXCTYWU7mQA@mail.gmail.com>
 <C9ED4D1D-D79E-4A11-B294-0E606B0B3BD2@gmail.com>
 <CAFB_ak+_x=neOMA--p-=WGzvmOoP5djT=W6hwzw4GGzfTLJ+TQ@mail.gmail.com>
To: Taylor Eisman <tayloreisman2012@gmail.com>
Subject: Re: [USRP-users] Fwd: Ettus X300 -- NO TX/RX, RX2 Avaliability
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============2162798035623802369=="
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


--===============2162798035623802369==
Content-Type: multipart/alternative;
	boundary=Apple-Mail-DD49E9CE-17AA-4E57-892A-7F66A95D279D
Content-Transfer-Encoding: 7bit


--Apple-Mail-DD49E9CE-17AA-4E57-892A-7F66A95D279D
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

It wouldn=E2=80=99t and it doesn=E2=80=99t. Those are just the defaults brou=
ght up in the source and sink blocks because many of the cards have those fo=
r standard antenna names.=20

Sent from my iPhone

> On Jul 18, 2019, at 8:17 PM, Taylor Eisman via USRP-users <usrp-users@list=
s.ettus.com> wrote:
>=20
> I don=E2=80=99t want to make this about gnuradio, because this isn=E2=80=99=
t the place. However, why would gnuradio know to link the ab,a,b,ba antennas=
 to tx/rx and rx2?
>=20
>> On Thu, Jul 18, 2019 at 7:14 PM Marcus D Leech <patchvonbraun@gmail.com> w=
rote:
>> There IS no RX2 or TX/RX antenna names on Basic_rx or Basic_tx boards.=20=

>>=20
>> You can see In the probe output what the legit antenna names are for the b=
oards you have installed.=20
>>=20
>> Sent from my iPhone
>>=20
>>> On Jul 18, 2019, at 6:33 PM, Robin Coxe via USRP-users <usrp-users@lists=
.ettus.com> wrote:
>>>=20
>>> Sorry, I misunderstood your question-- did you set up the mode in UHD co=
rrectly?
>>> http://files.ettus.com/manual/page_dboards.html
>>>=20
>>> Also, you might want to double-check the SMA connections just in case.
>>> Not sure if the subdev spec has changed in the last year.  Someone who k=
nows the UHD codebase better than I do would have to answer that question.
>>>=20
>>>=20
>>>=20
>>>> On Thu, Jul 18, 2019 at 3:26 PM Taylor Eisman via USRP-users <usrp-user=
s@lists.ettus.com> wrote:
>>>>=20
>>>> Robin,=20
>>>>=20
>>>> We've set it up so that the RX Daughterboard connects to RX2 and the TX=
 Daughterboard connects to TX/RX. Previously, we've been able to use these p=
orts, but now it no longer identifies that we even have these ports. I don't=
 think the issue is the Daughterboard as this worked less than a year ago.
>>>>=20
>>>> Thanks,
>>>>=20
>>>> Taylor
>>>>=20
>>>> _______________________________________________
>>>> USRP-users mailing list
>>>> USRP-users@lists.ettus.com
>>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-DD49E9CE-17AA-4E57-892A-7F66A95D279D
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">It wouldn=E2=80=99t and it doesn=E2=80=99t.=
 Those are just the defaults brought up in the source and sink blocks becaus=
e many of the cards have those for standard antenna names.&nbsp;<br><br><div=
 id=3D"AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div><div dir=3D"=
ltr"><br>On Jul 18, 2019, at 8:17 PM, Taylor Eisman via USRP-users &lt;<a hr=
ef=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com</a>&gt; w=
rote:<br><br></div><blockquote type=3D"cite"><div dir=3D"ltr"><div><div dir=3D=
"auto">I don=E2=80=99t want to make this about gnuradio, because this isn=E2=
=80=99t the place. However, why would gnuradio know to link the ab,a,b,ba an=
tennas to tx/rx and rx2?</div></div><div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, 2019 at 7:14 PM Marcus D L=
eech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto">There=
 IS no RX2 or TX/RX antenna names on Basic_rx or Basic_tx boards.&nbsp;<div>=
<br></div><div>You can see In the probe output what the legit antenna names a=
re for the boards you have installed.&nbsp;<br><br><div id=3D"m_551104883806=
4977734AppleMailSignature" dir=3D"ltr">Sent from my iPhone</div></div></div>=
<div dir=3D"auto"><div><div dir=3D"ltr"><br>On Jul 18, 2019, at 6:33 PM, Rob=
in Coxe via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br><br></div><block=
quote type=3D"cite"><div dir=3D"ltr"><div dir=3D"ltr">Sorry, I misunderstood=
 your question-- did you set up the mode in UHD correctly?<div><a href=3D"ht=
tp://files.ettus.com/manual/page_dboards.html" target=3D"_blank">http://file=
s.ettus.com/manual/page_dboards.html</a><br></div><div><br></div><div>Also, y=
ou might want to double-check the SMA connections just in case.</div><div>No=
t sure if the subdev spec has changed in the last year.&nbsp; Someone who kn=
ows the UHD codebase better than I do would have to answer that question.<br=
></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 18, 2019 at 3:26 PM Taylor E=
isman via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" targe=
t=3D"_blank">usrp-users@lists.ettus.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><table=
 class=3D"m_5511048838064977734gmail-m_4732337847213854491gmail-cf m_5511048=
838064977734gmail-m_4732337847213854491gmail-gJ" cellpadding=3D"0"><tbody><t=
r class=3D"m_5511048838064977734gmail-m_4732337847213854491gmail-acZ"><td cl=
ass=3D"m_5511048838064977734gmail-m_4732337847213854491gmail-gF m_5511048838=
064977734gmail-m_4732337847213854491gmail-gK"><table class=3D"m_551104883806=
4977734gmail-m_4732337847213854491gmail-cf m_5511048838064977734gmail-m_4732=
337847213854491gmail-ix" cellpadding=3D"0"><tbody><tr><td class=3D"m_5511048=
838064977734gmail-m_4732337847213854491gmail-c2"><div>Robin, <br></div><div>=
<br></div><div>We've set it up so that the RX Daughterboard connects to RX2 a=
nd=20
the TX Daughterboard connects to TX/RX. Previously, we've been able to=20
use these ports, but now it no longer identifies that we even have these
 ports. I don't think the issue is the Daughterboard as this worked less
 than a year ago.<br><br></div><div>Thanks,<br><br></div><div>Taylor</div></=
td></tr></tbody></table></td><td class=3D"m_5511048838064977734gmail-m_47323=
37847213854491gmail-gH m_5511048838064977734gmail-m_4732337847213854491gmail=
-bAk"><br></td></tr></tbody></table></div></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@l=
ists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.co=
m" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>________=
_______________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"=
_blank">USRP-users@lists.ettus.com</a></span><br><span><a href=3D"http://lis=
ts.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_blank">=
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</a></span=
><br></div></blockquote></div></div></blockquote></div></div>
</div></blockquote><blockquote type=3D"cite"><div dir=3D"ltr"><span>________=
_______________________________________</span><br><span>USRP-users mailing l=
ist</span><br><span><a href=3D"mailto:USRP-users@lists.ettus.com">USRP-users=
@lists.ettus.com</a></span><br><span><a href=3D"http://lists.ettus.com/mailm=
an/listinfo/usrp-users_lists.ettus.com">http://lists.ettus.com/mailman/listi=
nfo/usrp-users_lists.ettus.com</a></span><br></div></blockquote></body></htm=
l>=

--Apple-Mail-DD49E9CE-17AA-4E57-892A-7F66A95D279D--


--===============2162798035623802369==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============2162798035623802369==--

