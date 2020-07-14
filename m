Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id C09BF21F419
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jul 2020 16:30:49 +0200 (CEST)
Received: from [::1] (port=50472 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jvLxH-0007Vf-11; Tue, 14 Jul 2020 10:30:47 -0400
Received: from mail-qv1-f54.google.com ([209.85.219.54]:34365)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <patchvonbraun@gmail.com>)
 id 1jvLxC-0007MK-Fe
 for USRP-users@lists.ettus.com; Tue, 14 Jul 2020 10:30:42 -0400
Received: by mail-qv1-f54.google.com with SMTP id t11so7564196qvk.1
 for <USRP-users@lists.ettus.com>; Tue, 14 Jul 2020 07:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=n16+J+uGEZcZ8DcZEdmyS0bm62rSPmx9hsrVpYYF4NM=;
 b=qhZB+7MZyrD+CtddFmr7KPe4uHI+pQuiNbJz9M8nYPq8T431PEeSPowWU4w7kes3k8
 pYotcyIN4OoEU/CyoCmdt9uS0PfGafFy0gVc6A9OWVizjci/sRhF44BRfgrjjqkrHchm
 w5OE+RE/0EoogBXcONmAo7gFWTkKPE/YmUPH/1wV79puk5Akwm1ySUb4NqzfNRVZvY0y
 ZELmnifpQicexMzElmzbGjgujYBb/NmKfOi9HhlWZ+gKv+htrGuqoFhcf3unOTXrw3HC
 O8rp9ewcjTVuQ4H/CM8PZt3SUWADW+g2tXPHrDQ7ZTJ+oTJK6Pl7Ae5Dv7jZI1i2W7Op
 2Oaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=n16+J+uGEZcZ8DcZEdmyS0bm62rSPmx9hsrVpYYF4NM=;
 b=qNAksX7rWROn5N5+hX5/yxBLHUC45los3mmI4VneQGqTJC39zWAHeLF0ztgGSoACFZ
 oP2gauaV/UEOU9GSlOw0k/Hv7F4rtbC8IldF3A2rhspbmNjrsU206yNrzPr90VZBth1q
 eNxyIYGTWQaphlb/5aK0HvZdBaFFbuoqOli0A66jVOHrIOjyc5Aki9Q83hjwiZGvobzH
 BC31EiGY/VGVCNr+id125syyJ//oMOauPQeX6DrlfujfcLzciIf2HA1nI9oPnSYmv7vI
 b3CpXfPY5c/9OH0hOzz52nGkWpoa4ck/OATonMdRsn7LinuouXUGTuhJGshJVM8eXbM2
 lrMA==
X-Gm-Message-State: AOAM53118ceu84Ro6VuI3NEh07h/lCfjUAbkoykXMs9h+6Vgj8oPWHOz
 ZwjThRDYGuOHCELgWkQAJsvnYxpw
X-Google-Smtp-Source: ABdhPJyq2lUU9rz3iDinyrSxNGMkBKuCNF4BzTF8G4zVFmGw462QXmMKVM9Rz743A74kSrgF3h8x9g==
X-Received: by 2002:a05:6214:130:: with SMTP id
 w16mr4859243qvs.69.1594737001599; 
 Tue, 14 Jul 2020 07:30:01 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-14-148.dsl.bell.ca.
 [174.95.14.148])
 by smtp.gmail.com with ESMTPSA id l202sm21884255qke.109.2020.07.14.07.30.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Jul 2020 07:30:00 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 14 Jul 2020 10:29:59 -0400
Message-Id: <6EDFF632-534F-4AA9-A733-050BCB2A9B33@gmail.com>
References: <04C32D5F-2C01-4683-9F96-86DCB43F5174@k5so.com>
Cc: USRP-users@lists.ettus.com
In-Reply-To: <04C32D5F-2C01-4683-9F96-86DCB43F5174@k5so.com>
To: Joe Martin <k5so@k5so.com>
X-Mailer: iPhone Mail (17F80)
Subject: Re: [USRP-users] USRP X310
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
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
Content-Type: multipart/mixed; boundary="===============7754285753223517512=="
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


--===============7754285753223517512==
Content-Type: multipart/alternative; boundary=Apple-Mail-80800E64-95BA-4C86-9C29-7EA3E0B7DAAA
Content-Transfer-Encoding: 7bit


--Apple-Mail-80800E64-95BA-4C86-9C29-7EA3E0B7DAAA
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Joe:

The input levels that cause distortion vary quite a bit from daughtercard to=
 daughtercard, and even within a daughtercard there will be variability depe=
nding on frequency.=20

The performance data can be consulted for this:

https://files.ettus.com/performance_data/

What you=E2=80=99re looking for is IP3 and P1dB data.=20

But =E2=80=9Cdamage limits=E2=80=9D are given=20
Sent from my iPhone

> On Jul 14, 2020, at 10:17 AM, Joe Martin <k5so@k5so.com> wrote:
>=20
> =EF=BB=BFArash,=20
>=20
> Marcus L.=E2=80=99s response has some definitive info in the links.  For e=
xample, in the TwinRX link it is stated:=20
>=20
>> Never apply more than +10 dBm of power into any RF input.
>=20
> So there you have it.  Thanks for the details Marcus.=20
>=20
> Regards,=20
>=20
> Joe
>=20
>> On Jul 14, 2020, at 7:55 AM, Marcus D. Leech via USRP-users <usrp-users@l=
ists.ettus.com> wrote:
>>=20
>>> On 07/14/2020 05:53 AM, Marcus M=C3=BCller via USRP-users wrote:
>>> Hi Arash,
>>>=20
>>> The input power is not defined by the motherboard (X310) you're using,
>>> but by the analog frontend daughterboard (like TwinRX, UBX-160, SBX,=E2=80=
=A6)
>>> you've plugged in to these.
>>>=20
>> For example, see the "Care and Handling" for the SBX here:
>>=20
>> https://kb.ettus.com/SBX_Getting_Started_Guides#Proper_Care_and_Handling
>>=20
>> And for the TwinRx
>>=20
>> https://kb.ettus.com/TwinRX_Getting_Started_Guides#Proper_Care_and_Handli=
ng
>>=20
>>=20
>> _______________________________________________
>> USRP-users mailing list
>> USRP-users@lists.ettus.com
>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>=20

--Apple-Mail-80800E64-95BA-4C86-9C29-7EA3E0B7DAAA
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Joe:<div><br></div><div>The input levels th=
at cause distortion vary quite a bit from daughtercard to daughtercard, and e=
ven within a daughtercard there will be variability depending on frequency.&=
nbsp;</div><div><br></div><div>The performance data can be consulted for thi=
s:</div><div><br></div><div><a href=3D"https://files.ettus.com/performance_d=
ata/">https://files.ettus.com/performance_data/</a></div><div><div><br></div=
><div>What you=E2=80=99re looking for is IP3 and P1dB data.&nbsp;</div><div>=
<br></div><div>But =E2=80=9Cdamage limits=E2=80=9D are given&nbsp;<br><div d=
ir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D=
"cite">On Jul 14, 2020, at 10:17 AM, Joe Martin &lt;k5so@k5so.com&gt; wrote:=
<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=
=BF<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8">=
Arash,&nbsp;<div class=3D""><br class=3D""></div><div class=3D"">Marcus L.=E2=
=80=99s response has some definitive info in the links. &nbsp;For example, i=
n the TwinRX link it is stated:&nbsp;</div><div class=3D""><br class=3D""></=
div><div class=3D""><blockquote type=3D"cite" class=3D""><span style=3D"font=
-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-se=
rif; font-size: 14px; background-color: rgb(255, 255, 255);" class=3D"">Neve=
r apply more than +10 dBm of power into any RF input.</span></blockquote><di=
v class=3D""><br class=3D""></div>So there you have it. &nbsp;Thanks for the=
 details Marcus.&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D=
"">Regards,&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D"">=
Joe</div><div class=3D""></div><div style=3D""><br class=3D""><blockquote ty=
pe=3D"cite" class=3D""><div class=3D"">On Jul 14, 2020, at 7:55 AM, Marcus D=
. Leech via USRP-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" cla=
ss=3D"">usrp-users@lists.ettus.com</a>&gt; wrote:</div><br class=3D"Apple-in=
terchange-newline"><div class=3D""><div class=3D"">On 07/14/2020 05:53 AM, M=
arcus M=C3=BCller via USRP-users wrote:<br class=3D""><blockquote type=3D"ci=
te" class=3D"">Hi Arash,<br class=3D""><br class=3D"">The input power is not=
 defined by the motherboard (X310) you're using,<br class=3D"">but by the an=
alog frontend daughterboard (like TwinRX, UBX-160, SBX,=E2=80=A6)<br class=3D=
"">you've plugged in to these.<br class=3D""><br class=3D""></blockquote>For=
 example, see the "Care and Handling" for the SBX here:<br class=3D""><br cl=
ass=3D""><a href=3D"https://kb.ettus.com/SBX_Getting_Started_Guides#Proper_C=
are_and_Handling" class=3D"">https://kb.ettus.com/SBX_Getting_Started_Guides=
#Proper_Care_and_Handling</a><br class=3D""><br class=3D"">And for the TwinR=
x<br class=3D""><br class=3D"">https://kb.ettus.com/TwinRX_Getting_Started_G=
uides#Proper_Care_and_Handling<br class=3D""><br class=3D""><br class=3D"">_=
______________________________________________<br class=3D"">USRP-users mail=
ing list<br class=3D"">USRP-users@lists.ettus.com<br class=3D"">http://lists=
.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com<br class=3D""></div><=
/div></blockquote></div><br class=3D""></div></blockquote></div></div></body=
></html>=

--Apple-Mail-80800E64-95BA-4C86-9C29-7EA3E0B7DAAA--


--===============7754285753223517512==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7754285753223517512==--

